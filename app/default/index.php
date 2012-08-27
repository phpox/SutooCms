<?php

/*
 * sutoocms: default/index.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120628
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class default_index extends core_control{
    public $_tpl = '';

    public function init(){
        parent::init();
    }
    
    private function getNotice($limit){
    	$obj_news = table_news::getInstance();
    	$order = 'id DESC';
    	$where = "WHERE catid=29";
    	$sql = "SELECT id,title,addtime FROM {$obj_news->prefix}news $where ORDER BY $order LIMIT 0,$limit";
    	$rs = $obj_news->query($sql);
    	while($arr = $obj_news->fetch_array($rs)){
    		$arr['addtime'] = date('m-d',strtotime($arr['addtime']));
    		$row[] = $arr;
    	}
    	$this->tpl->news = $row;
    }

    public function index_act(){
    	$this->tpl->curpos = '홈';
    	$obj_shop = table_shops::getInstance();
    	$order = 'id DESC';
    	$sql = "SELECT t1.id,g_code,g_name,g_photo1,g_price,t2.brandname,username FROM {$obj_shop->prefix}shops t1 LEFT JOIN {$obj_shop->prefix}brands t2 ON t1.brandid=t2.id WHERE t1.status=1 ORDER BY t1.toptime DESC LIMIT 0,18";
    	$rs = $obj_shop->query($sql);
    	while($arr = $obj_shop->fetch_array($rs)){
    		$arr['g_photo1'] = str_replace('shoppic_w', 'shoppic_s', $arr['g_photo1'] );
    		$row[] = $arr;
    	}
    	$this->tpl->shops = $row;
    	$this->getNotice(5);
    	$this->getNewShop(36);
    	$this->getSearchBrands();
    	//$this->getKeywords();
    	$this->getInfo();
    	$this->getCorp();
    	$this->getCorpImg();
    	$this->getNewOrder();
		$this->getOrdersseller();
		$this->getNewsseller();
    }
    
    private function getNewOrder(){
    	$obj_order = table_orders::getInstance();
    	$where = array('status'=>'6');
    	$row = $obj_order->getrow($where);
    	$tmp = explode('-',$row['shopname']);
    	$row['brandname'] = $tmp[0];
    	$row['g_name'] = $tmp[1];
    	$this->tpl->order = $row;
    }
    
    private function getCorp(){
    	$obj_corp = table_shopmember::getInstance();
    	$row = $obj_corp->getrows('status=2',4,'uid DESC');
    	$this->tpl->elitecorp = $row;
    }
    
    private function getCorpImg(){
    	$obj_corp = table_shopmember::getInstance();
    	$row = $obj_corp->getrows('status=2',6,'uid DESC');
    	$this->tpl->corps = $row;
    }
    
	private function getNewsseller(){
    	$obj_newsseller = table_news::getInstance();
    	$sql = "SELECT count(*) as num,username FROM `stcms_news` where typeid in(1,5,6,7) GROUP BY uid order by num desc";
    	$row = $obj_newsseller->rec_query($sql);
    	$this->tpl->newsseller = $row;		
	}
    
	private function getOrdersseller(){
    	$obj_orders = table_orders::getInstance();
    	$sql = "SELECT count(*) as num,selleruid,sellerusername,addtime FROM `stcms_orders` where addtime  GROUP BY selleruid order by num desc";
    	$row = $obj_orders->rec_query($sql);
    	$this->tpl->orders = $row;		
	}
    
    private function getInfo(){
    	$obj_news = table_news::getInstance();
    	$prefix = $obj_news->prefix;
    	$where = "t1.typeid in(1,5,6,7)";
    	$sql = "SELECT t1.*,t2.typename,t3.catename as pcatename,t4.catename as catename FROM {$prefix}news t1 LEFT JOIN {$prefix}types t2 ON t1.typeid=t2.typeid LEFT JOIN {$prefix}category t3 ON t1.pcatid=t3.catid LEFT JOIN {$prefix}category t4 ON t1.catid=t4.catid WHERE $where ORDER BY id DESC";
    	$row = $obj_news->rec_query($sql);
    	$this->tpl->infos = $row;
    }
	
    private function getKeywords(){
    	$obj_keywords = table_keywords::getInstance();
    	$where = "uptime >= uptime-86400";
    	$row = $obj_keywords->getrows($where,5,'num,uptime DESC');
    	$this->tpl->keywordsarr = $row;
    }
    
    private function getSearchBrands(){
    	$obj_serachbrands = table_searchbrands::getInstance();
    	$where = "uptime >= uptime-86400";
    	$row = $obj_serachbrands->getrows($where,5,'num DESC');
    	$this->tpl->searchbrands = $row;
    }
    
    private function getNewShop($limit){
    	$obj_shop = table_shops::getInstance();
    	$order = 't1.id DESC';
    	$sql = "SELECT t1.id,g_name,g_photo1,g_price,t2.brandname,username FROM {$obj_shop->prefix}shops t1 LEFT JOIN {$obj_shop->prefix}brands t2 ON t1.brandid=t2.id WHERE t1.status=1 ORDER BY $order LIMIT 0,$limit";
    	$rs = $obj_shop->query($sql);
    	while($arr = $obj_shop->fetch_array($rs)){
    		$arr['g_photo1'] = str_replace('shoppic_w', 'shoppic_s', $arr['g_photo1'] );
    		$arr['g_price'] = number_format($arr['g_price']);
    		$row[] = $arr;
    	}
    	$this->tpl->newshops = $row;
    }

    public function end(){
        parent::end();
        $this->show($this->_tpl);
    }
}