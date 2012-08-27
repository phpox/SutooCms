<?php

/*
 * sutoocms: table/keywords.php
* ============================================================================
* 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
* -------------------------------------------------------
* 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
* ============================================================================
*
* @author:  phpox
* @version: v1.0 u20120711
*/

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_keywords extends core_table {

	static $me;

	public static function getInstance(){
		if(!self::$me){
			self::$me = new table_keywords();
		}
		return self::$me;
	}
}