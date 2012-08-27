<?php

/*
 * sutoocms: default/admin.php
* ============================================================================
* 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
* -------------------------------------------------------
* 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
* ============================================================================
*
* @author:  phpox
* @version: v1.0 u20120827
*/

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class default_admin extends core_control {

    public $_tpl = '';
    public $_module = 'member';

    public function init() {
        parent::init();
        $this->table = 'table_admins';
        $this->_table = new $this->table;
        if (!$this->_table->getFields())
            exit('数据没找到');
    }

    public function index_act() {
        if (!$_SESSION['admin']) {
            core_url::redirect('admin', 'login', 0);
        }
    }

    public function login_act() {
        if ($_SESSION['admin']) {
            core_url::redirect('admin', 'index', 1);
        }
    }

    public function chklogin_act() {
        if (core_app::$post['submit']) {
            if (!core_authcode::check(core_app::$post['chkcode'])) {
                core_url::alerterror('验证码输入错误');
            }
            $row = $this->_table->getrow(array('username' => core_app::$post['adminname'], 'password' => md5(core_app::$post['adminpwd'])));
            if ($row) {
                $this->_table->rec_update(array('lasttime' => time(), 'lastip' => core_app::ip()), "uid={$row['uid']}");
                $_SESSION['admin'] = $row;
                $role = table_roles::getInstance();
                $row = $role->getrow(array('roleid' => $row['roleid']));
                $_SESSION['admin'] = array_merge($_SESSION['admin'], $row);
                core_url::redirect('admin', 'index', 1);
            } else {
                core_url::redirect('admin', 'login', 0);
            }
        }
        exit;
    }

    public function end() {
        //echo '这是页面的结束方法<br>';
        parent::end();
        $this->show($this->_tpl);
    }

}