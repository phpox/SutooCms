<?php

/*
 * sutoocms: config/config.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120619
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !'); return array (
  'admin_title'=>'HDPLUS ADMIN',
  'base_dir'=>'/pet/',
  'admin_email'=>'admin@sutoo.com',
  'isdebug'=>'1',
  'url_type'=>'rewrite',
  'lang_type'=>'cn',
  'pagesize'=>'24',
  'gzip'=>'0',
  'admin_log'=>'1',
  'maxloginfailedtimes'=>'8',
  'admin_url'=>'',
  'database'=>array(
    'host'=>'localhost',
    'user'=>'root',
    'password'=>'root',
    'database'=>'pet',
    'prefix'=>'stcms_',
    'encoding'=>'utf8',
  ),
  'upload_shop'=>array(
    'path'=>'./shoppic',
    'length'=>'2000',
    'type'=>'jpg&gif&png',
    'isrename'=>'1',
    'thumb'=>'1',
    'width'=>'200',
    'height'=>'300',
    'thumbpath'=>'./shoppic_s',
    'ratio'=>'0',
    'wmpath'=>'./shoppic_w',
  ),
  'upload_news'=>array(
    'path'=>'./newspic',
    'length'=>'2000',
    'type'=>'jpg&gif&png',
    'isrename'=>'1',
    'thumb'=>'1',
    'width'=>'200',
    'height'=>'300',
    'thumbpath'=>'./newspic_s',
    'ratio'=>'0',
    'wmpath'=>'',
  ),
  'upload_biz'=>array(
    'path'=>'./bizpic',
    'length'=>'2000',
    'type'=>'jpg&gif&png',
    'isrename'=>'1',
    'thumb'=>'0',
    'width'=>'',
    'height'=>'',
    'thumbpath'=>'',
    'ratio'=>'0',
    'wmpath'=>'',
  ),
);?>