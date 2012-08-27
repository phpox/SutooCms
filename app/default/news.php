<?php

/*
 * sutoocms: default/news.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120725
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class default_news extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_news::getInstance();
        if (!$this->_table->getFields())
            exit('数据没找到!');
    }
    
    public function help_act(){
    	$cates = getsubcates(162);
    	$obj_cate = table_category::getInstance();
    	$catids = $obj_cate->sons(get('siteid'),162);
    	$ids = implode(',', $catids);
    	$row = $this->_table->getrows("catid in ($ids)",0,'id ASC');
    	$elite = core_tool::array_group_by($row, 'iselite');
    	$row = core_tool::array_group_by($row, 'catid');
    	if(get('id')){
    		$arr = core_tool::array_key_values($row[get('catid')], 'id',get('id'));
    	}
    	$this->tpl->elite = $elite;
    	$this->tpl->arr = $arr;
    	$this->tpl->row = $row;
    	$this->tpl->cates = $cates;
    	
    	if(get('keywords') != ''){
    		$row1 = $this->_table->getrows("catid in ($ids) AND title LIKE '%".get('keywords')."%'",0,'id ASC');
    		$this->tpl->searchs = $row1;
    	}
    }
    
    public function infodel_act(){
    	$id = intval(core_app::$get['id']);
    	$row = $this->_table->getrow($id);
    	$st_user = $this->tpl->st_user;
    	if($st_user['uid'] != $row['uid'] && !$_SESSION['admin']['uid']){
    		core_url::alerterror('본인과 관리원만이 삭제할수 있습니다');
    	}
    	if($this->_table->rec_delete($id)){
    		core_url::redirect('news','infolist');
    	}else{
    		core_url::alerterror('操作失败');
    	}
    }
    
    public function infoview_act(){
    	$id = intval(core_app::$get['id']);
    	$row = $this->_table->getrow($id);
    	$st_user = $this->tpl->st_user;
    	if($row['islock'] && $st_user['uid'] != $row['uid'] && !$_SESSION['admin']['uid']){
    		core_url::alerterror('锁定信息只有本人和管理员可以浏览');
    	}
    	$this->upHits($row['id']);
    	$this->tpl->news = $row;
    	$this->tpl->brandies = core_tool::rdcache('brand');
    	$this->tpl->categories = core_tool::rdcache('category');
    	$this->tpl->types = core_tool::rdcache('type');
    	
    	$arr = $this->_table->getrows(array('pid'=>$row[id]),0,'id DESC');
    	$this->tpl->replies = $arr;
    	$this->getCorp();
    }
    
    public function infoedit_act(){
    	$id = intval(core_app::$get['id']);
    	$row = $this->_table->getrow($id);
    	$st_user = $this->tpl->st_user;
    	if($st_user['uid'] != $row['uid'] && !$_SESSION['admin']['uid']){
    		core_url::alerterror('본인과 관리원만이 수정할수 있습니다');
    	}
    	$this->tpl->row = $row;
    	
    	if(core_app::$post){
    		if($this->_table->rec_update(core_app::$post,$id)){
    			core_url::redirect('news','infolist');
    		}else{
    			core_url::alerterror('操作失败');
    		}
    	}
    	$obj_brands = new table_brands();
    	$brands = $obj_brands->getrows('',0,'brandname ASC',$obj_brands->getcols('option'));
    	$this->tpl->brands = $brands;
    	
    	$obj_category = new table_category();
    	$where = "modelid=3 AND parentid=0";
    	$cates = $obj_category->getrows($where,0,'catid ASC',$obj_category->getcols('option'));
    	$this->tpl->cates = $cates;
    	
    	$where = "modelid=3 AND parentid={$row['pcatid']}";
    	$cates = $obj_category->getrows($where,0,'catid ASC',$obj_category->getcols('option'));
    	$this->tpl->subcates = $cates;
    	 
    	$this->tpl->types = table_types::getselect(1,$row[typeid]);
    }
    
    private function getCorp(){
    	$obj_corp = table_shopmember::getInstance();
    	$row = $obj_corp->getrows('status=2',4,'uid DESC');
    	$this->tpl->elitecorp = $row;
    }
    
    private function getNewsseller(){
    	$obj_newsseller = table_news::getInstance();
    	$sql = "SELECT count(*) as num,username FROM `stcms_news` where typeid in(1,5,6,7) GROUP BY uid order by num desc LIMIT 0,10";
    	$row = $obj_newsseller->rec_query($sql);
    	$this->tpl->newsseller = $row;
    }
    
    public function infolist_act(){
    	$obj_news = table_news::getInstance();
    	$prefix = $obj_news->prefix;
    	if($typeid=get('typeid')){
    		$where = "typeid = $typeid";
    	}else{
    		$where = "typeid in(1,5,6,7)";
    	}
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	//$sql = "SELECT * FROM {$prefix}news t1 LEFT JOIN {$prefix}types t2 ON t1.typeid=t2.typeid LEFT JOIN {$prefix}category t3 ON t1.pcatid=t3.catid LEFT JOIN {$prefix}category t4 ON t1.catid=t4.catid WHERE $where ORDER BY id DESC LIMIT ".$pager->limit;
    	$row = $obj_news->getrows($where,$pager->limit,'id DESC');
    	$this->tpl->page = $pager->multi(url('news','infolist'));
    	$this->tpl->infos = $row;
    	$this->tpl->brandies = core_tool::rdcache('brand');
    	$this->tpl->categories = core_tool::rdcache('category');
    	$this->tpl->types = core_tool::rdcache('type');
    	$this->getCorp();
    	$this->getNewsseller();
    }
    
    public function goodsqalist_act(){
    	$order = 'id DESC';
    	$where['catid'] = '174';
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	$row = $this->_table->getrows($where,$pager->limit,'id DESC','id,title,shopid');
    	$this->tpl->news = $row;
    	$this->tpl->page = $pager->multi(url('news','goodsqalist'));
    }
    
    public function sellergoodsqalist_act(){
    	if(!$this->tpl->st_user['username']){
    		core_url::alertinfo('请先登录', url('user','login'),'',url('news','sellergoodsqalist'));
    	}
    	if(core_app::$post){
    		core_app::$post['addtime'] = date('Y-m-d H:i:s');
    		core_app::$post['uid'] = $this->tpl->st_user['uid'];
    		core_app::$post['catid'] = 174;
    		core_app::$post['ip'] = core_app::ip();
    		core_app::$post['username'] = $this->tpl->st_user['username'];
    		if($this->_table->rec_insert(core_app::$post)){
    			core_url::redirectfrom();
    		}else{
    			core_url::alerterror('판매자답변 실패하였습니다');
    		}
    	}
    	$order = 'id DESC';
    	$where['catid'] = '174';
    	$where['sellerid'] = $this->tpl->st_user['uid'];
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	$row = $this->_table->getrows($where,$pager->limit,'id DESC','id,title,shopid,username,addtime,content,islock');
    	$this->tpl->news = $row;
    	$this->tpl->page = $pager->multi(url('news','sellergoodsqalist'));
    }
    
    public function buyergoodsqalist_act(){
    	if(!$this->tpl->st_user['username']){
    		core_url::alertinfo('请先登录', url('user','login'),'',url('news','buyergoodsqalist'));
    	}
    	$order = 'id DESC';
    	$where['catid'] = '174';
    	$where['uid'] = $this->tpl->st_user['uid'];
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	$row = $this->_table->getrows($where,$pager->limit,'id DESC','id,title,shopid,username,addtime,content,islock');
    	$this->tpl->news = $row;
    	$this->tpl->page = $pager->multi(url('news','buyergoodsqalist'));
    }
    
    public function infoadd_act(){
    	if(!$this->tpl->st_user['username']){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	if(core_app::$post){
    		core_app::$post['uid'] = $this->tpl->st_user['uid'];
    		core_app::$post['username'] = $this->tpl->st_user['username'];
    		core_app::$post['author'] = $this->tpl->st_user['username'];
    		core_app::$post['addtime'] = date('Y-m-d H:i:s');
    		core_app::$post['ip'] = core_app::ip();
    		$setArray = core_config::get('upload_news');
    		if($_FILES['pic']['name']){
    			$obj = new core_upload($setArray, $_FILES['pic']);
    			core_app::$post['pic'] = $obj->fullfilename;
    		}
    		if ($this->_table->rec_insert(core_app::$post)) {
    			core_url::alertinfo('명품지식 등록 성공',url('news','infolist',0,array('catid'=>core_app::$post['catid'])));
    		} else {
    			core_url::alerterror('명품지식 등록 실패');
    		}
    	}
    	 
    	$obj_brands = new table_brands();
    	$brands = $obj_brands->getrows('',0,'brandname ASC',$obj_brands->getcols('option'));
    	$this->tpl->brands = $brands;
    	 
    	$obj_category = new table_category();
    	$where = "modelid=3 AND parentid=0";
    	$cates = $obj_category->getrows($where,0,'catid ASC',$obj_category->getcols('option'));
    	$this->tpl->cates = $cates;
    	
    	$this->tpl->types = table_types::getselect(1);
    }
    
    public function inforeplyadd_act(){
    	if(!$this->tpl->st_user['username']){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	if(core_app::$post){
    		core_app::$post['uid'] = $this->tpl->st_user['uid'];
    		core_app::$post['username'] = $this->tpl->st_user['username'];
    		core_app::$post['author'] = $this->tpl->st_user['username'];
    		core_app::$post['addtime'] = date('Y-m-d H:i:s');
    		core_app::$post['ip'] = core_app::ip();
    		$setArray = core_config::get('upload_news');
    		if($_FILES['pic']['name']){
    			$obj = new core_upload($setArray, $_FILES['pic']);
    			core_app::$post['pic'] = $obj->fullfilename;
    		}
    		if ($this->_table->rec_insert(core_app::$post)) {
    			core_url::alertinfo('명품지식 답변 성공',url('news','infoview',0,array('id'=>core_app::$post['pid'])));
    		} else {
    			core_url::alerterror('명품지식 답변 실패');
    		}
    	}
    }
    
    public function qaadd_act(){
    	if($this->tpl->st_user['uid'] == ''){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	if(core_app::$post){
    		core_app::$post['uid'] = $this->tpl->st_user['uid'];
    		core_app::$post['username'] = $this->tpl->st_user['username'];
    		core_app::$post['author'] = $this->tpl->st_user['username'];
    		core_app::$post['catid'] = 155;
    		core_app::$post['addtime'] = date('Y-m-d H:i:s');
    		if(core_app::$post['title'] == ''){
    			core_url::alerterror('标题不能为空');
    		}
    		if(core_app::$post['content'] == ''){
    			core_url::alerterror('内容不能为空');
    		}
    		if($this->_table->rec_insert(core_app::$post)){
    			core_url::alertinfo('发布提问成功',url('news','qalist'));
    		}else{
    			core_url::alerterror('发布提问失败');
    		}
    	}
    }
    
    public function reply_act(){
    	if($this->tpl->st_user['uid'] == ''){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	$this->tpl->pid = core_app::$get['id'];
    	if(core_app::$post){
    		core_app::$post['uid'] = $this->tpl->st_user['uid'];
    		core_app::$post['username'] = $this->tpl->st_user['username'];
    		core_app::$post['author'] = $this->tpl->st_user['username'];
    		core_app::$post['catid'] = 155;
    		core_app::$post['addtime'] = date('Y-m-d H:i:s');
    		if(core_app::$post['title'] == ''){
    			core_url::alerterror('标题不能为空');
    		}
    		if(core_app::$post['content'] == ''){
    			core_url::alerterror('内容不能为空');
    		}
    		if($this->_table->rec_insert(core_app::$post)){
    			core_url::alertinfo('发布回复成功',url('news','qalist',0,array('id'=>core_app::$post['pid'])));
    		}else{
    			core_url::alerterror('发布回复失败');
    		}
    	}
    }
    
    private function upHits($id){
    	$this->_table->rec_update("hits=hits+1",$id);
    }
    
    public function qalist_act(){  	
    	$this->tpl->curpos = '게시판';
    	$catid = intval(core_app::$get['catid']);
    	$order = 'id DESC';
    	$where['catid'] = '155';
    	$where['pid'] = '0';
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	$row = $this->_table->getrows($where,$pager->limit,'id DESC',$this->_table->getcols('list'));
    	$this->tpl->news = $row;
    	$this->tpl->page = $pager->multi(url('news','qalist'));
    }
    
    public function qaview_act(){
    	$id = intval(core_app::$get['id']);
    	$row = $this->_table->getrow($id);
    	$st_user = $this->tpl->st_user;
    	if($row['islock'] && $st_user['uid'] != $row['uid'] && !$_SESSION['admin']['uid']){
    		core_url::alerterror('锁定信息只有本人和管理员可以浏览');
    	}
    	$this->upHits($row['id']);
    	$this->tpl->news = $row;
    }
    
    public function noticelist_act(){
    	$catid = intval(core_app::$get['catid']);
    	$order = 'id DESC';
    	$where['catid'] = '29';
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	$row = $this->_table->getrows($where,$pager->limit,'id DESC',$this->_table->getcols('list'));
    	$this->tpl->news = $row;
    	$this->tpl->page = $pager->multi(url('news','noticelist'));
    }
    
    public function noticeview_act() {
    	$id = intval(core_app::$get['id']);
    	$this->upHits($id);
    	$row = $this->_table->getrow($id);
    	$this->tpl->news = $row;
    }
    
    public function list_act() {

    }
    
    public function view_act() {
    	$id = intval(core_app::$get['id']);
    	$row = $this->_table->getrow($id);
    	$this->tpl->news = $row;
    }
    
    public function viewwin_act() {
    	$id = intval(core_app::$get['id']);
    	$row = $this->_table->getrow($id);
    	$row['addtime'] = substr($row['addtime'], 0,10);
    	$this->tpl->news = $row;
    }

    public function index_act() {
        /*if (!$_SESSION['admin']) {
            core_url::redirect('admin', 'login', 0);
        }*/
    }

    public function end() {
        //echo '这是页面的结束方法<br>';
        parent::end();
        $this->show($this->_tpl);
    }

}