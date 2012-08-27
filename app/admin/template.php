<?php

/*
 * sutoocms: site.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这不是一个自由软件！也不是一个开源软件！您不能在任何目的的前提下对程序代码进行破解、修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 *
 * @version:    v1.0 u20120322
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class admin_template extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
    }

    //模版列表
    public function list_act() {
        $list = core_tool::listdir('./template/');
        $row = array();
        foreach ($list as $v) {
            if($v == 'admin') continue;
            $tmp = core_tool::listdir('./template/' . $v);
            if (!empty($tmp) && is_array($tmp)) {
                foreach ($tmp as $k) {
                    if ($k == 'intro.xml') {
                        $row[] = core_tool::readxml('./template/' . $v . '/' . $k);
                    }
                }
            }
        }
        $this->tpl->row = $row;
    }

    //详细文件列表
    public function xlist_act() {
        $dir = './template/' . core_app::$get['skin'];
        $tmp = (array) core_tool::readxml($dir . '/' . 'list.xml');
        $list = core_tool::listdir($dir);
        $row = array();
        $i = 0;
        foreach ($list as $v) {
            if (end(explode('.', $v)) != 'html')
                continue;
            $row[$i]['name'] = $v;
            $row[$i]['intro'] = core_tool::getintro($tmp['file'], $v);
            $i++;
        }
        $this->tpl->row = $row;
        $this->tpl->skin = core_app::$get['skin'];
        $this->tpl->intro = core_app::$get['intro'];
    }

    //编辑模版
    public function edit_act() {
        if (core_app::$post['sub']) {
            $filename = './template/' . core_app::$post['data']['skin'] . '/' . core_app::$post['data']['name'] . '.html';
            $data = stripslashes(core_app::$post['data']['data']);
            if (file_put_contents($filename, htmlspecialchars_decode($data))) {
                core_url::closeiframe(false);
            } else {
                core_url::alerterror('修改模版失败');
            }
        }
        $filename = './template/' . core_app::$get['skin'] . '/' . core_app::$get['name'];
        $data = file_get_contents($filename);
        $this->tpl->row['name'] = core_app::$get['name'];
        $tmp = explode('.', core_app::$get['name']);
        array_pop($tmp);
        $this->tpl->row['namenoext'] = implode('.', $tmp);
        $this->tpl->row['skin'] = core_app::$get['skin'];
        $this->tpl->row['data'] = $data;
    }

    //添加模版
    public function add_act() {
        if (core_app::$post['sub']) {
            $filename = './template/' . core_app::$post['skin'] . '/' . core_app::$post['name'] . '.html';
            $tmp = (array)core_tool::readxml('./template/' . core_app::$post['skin'] . '/' . 'list.xml');
            $arr = array();
            foreach ($tmp['file'] as $v) {
                if ($v->name == core_app::$post['name'] . '.html') {
                    core_url::alerterror('已存在该模板文件');
                }
                $arr[] = (array) $v;
            }
            $arr[] = array('name' => core_app::$post['name'] . '.html', 'intro' => core_app::$post['intro']);
            core_tool::writexml('./template/' . core_app::$post['skin'] . '/' . 'list.xml', $arr);
            $data = stripslashes(core_app::$post['data']);
            if (file_put_contents($filename, htmlspecialchars_decode($data))) {
                core_url::closeiframe(true);
            } else {
                core_url::alerterror('添加模版失败');
            }
        }
        $this->tpl->skin = core_app::$get['skin'];
    }

    //添加模版目录
    public function addskin_act() {
        if (core_app::$post['sub']) {
            $dirname = './template/' . core_app::$post['skin'];
            if (is_dir($dirname)) {
                core_url::alerterror('已存在该模板目录');
            }
            if (core_tool::mkdir($dirname)) {
                core_tool::writedirxml($dirname . '/intro.xml', core_app::$post);
                core_url::closeiframe(true);
            } else {
                core_url::alerterror('添加模版目录失败');
            }
        }
    }

    //删除模版
    public function del_act() {
        if (core_app::$get['skin'] && core_app::$get['name']) {
            $filename = './template/' . core_app::$get['skin'] . '/' . core_app::$get['name'];
            if (unlink($filename)) {
                core_tool::delxml('./template/' . core_app::$get['skin'] . '/' . 'list.xml', core_app::$get['name']);
                core_url::alertinfo('删除模版成功', url('template', 'xlist', 1, array('skin' => core_app::$get['skin'],'intro'=>  core_app::$get['intro'])));
            }
        }
        alerterror('删除失败');
    }

    //删除模版目录
    public function delskin_act() {
        if (core_app::$get['skin']) {
            if (is_dir('./template/' . core_app::$get['skin'])) {
                $list = core_tool::listdir('./template/' . core_app::$get['skin']);
                foreach ($list as $v) {
                    unlink('./template/' . core_app::$get['skin'].'/'.$v);
                }
            }
            if (rmdir('./template/' . core_app::$get['skin'])) {
                core_url::alertinfo('删除模版目录成功', url('template', 'list',1));
            }
        }
        alerterror('删除失败');
    }

    //批量修改模板描述
    public function upxlistfile_act() {
        if (is_array(core_app::$post['name']) && !empty(core_app::$post['name'])) {
            $arr = array();
            foreach (core_app::$post['name'] as $k => $v) {
                $arr[] = array('name' => $k, 'intro' => $v);
            }
            core_tool::writexml('./template/' . core_app::$get['skin'] . '/list.xml', $arr);
            core_url::redirect('template', 'xlist', 1, array('skin' => core_app::$get['skin'], 'intro' => core_app::$get['intro']));
        } else {
            alerterror('没有选中任何资料');
        }
    }
    
    //批量修改模板目录描述
    public function uplistfile_act() {
        if (is_array(core_app::$post['name']) && !empty(core_app::$post['name'])) {
            $arr = array();
            foreach (core_app::$post['name'] as $k => $v) {
                $str = file_get_contents('./template/' . $k . '/intro.xml');
                $str = preg_replace('#<name>(.*?)</name>#', "<name>{$v}</name>", $str);
                file_put_contents('./template/' . $k . '/intro.xml',$str);
            }
            core_url::redirect('template', 'list', 1);
        } else {
            alerterror('没有选中任何资料');
        }
    }

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}