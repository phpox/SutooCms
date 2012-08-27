<?php

/*
 * sutoocms: stsession.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120331
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

final class core_stsession { 
	private $_path = null; 
	private $_name = null; 
	private $_db = null; 
	private $_ip = null; 
	private $_maxtime = 0; 
	private $_prefix = '';
	
	public function __construct($db) { 
		session_set_save_handler( 
			array($this, 'open'), 
			array($this, 'close'), 
			array($this, 'read'), 
			array($this, 'write'), 
			array($this, 'destroy'), 
			array($this, 'gc') 
		);
		$this->_db = $db;
		$this->_ip = core_app::ip();
		$this->_maxtime = ini_get('session.gc_maxlifetime');
		$config = core_config::get('database');
        $this->_prefix = isset($config['prefix']) ? $config['prefix'] : '';
        session_start();
        $this->refresh(session_id());
	} 

	public function open($path,$name) { 
		return true; 
	} 

	public function close(){ 
		return true; 
	} 

	public function read($id) 
	{ 
		$sql = "SELECT * FROM {$this->_prefix}sessions where PHPSESSID = '$id'"; 
		$res = $this->_db->query($sql);
		if (!$row = $this->_db->fetch_array($res)) { 
			return null; 
		} elseif ($this->_ip != $row['client_ip']) { 
			return null; 
		} elseif ($row['update_time']+$this->_maxtime < time()){ 
			$this->destroy($id); 
			return null; 
		} else { 
			return $row['data']; 
		} 
	} 

	public function write($id,$data) { 
		$sql = "SELECT * FROM {$this->_prefix}sessions where PHPSESSID = '$id'"; 
		$res = $this->_db->query($sql);
		$time = time();
		if ($row = $this->_db->fetch_array($res)) { 
			if ($row['data'] != $data) { 
				$sql = "UPDATE {$this->_prefix}sessions SET update_time='$time',data='$data' WHERE PHPSESSID = '$id'"; 
				$this->_db->query($sql);
			} 
		} else { 
			if (!empty($data)) { 
				$sql = "INSERT INTO {$this->_prefix}sessions (PHPSESSID, update_time, client_ip, data) VALUES ('$id','$time','$this->_ip','$data')"; 
				$this->_db->query($sql);
			}
		} 
		return true; 
	} 

	public function destroy($id) { 
		$sql = "DELETE FROM {$this->_prefix}sessions WHERE PHPSESSID = '$id'"; 
		$this->_db->query($sql); 
		return true; 
	}
    
    public function refresh($id){
        $time = time();
        $sql = "UPDATE {$this->_prefix}sessions SET update_time='$time' WHERE PHPSESSID = '$id'"; 
		$this->_db->query($sql);
    }

	public function gc($maxtime){
		$time = time() - $maxtime;
		$sql = "DELETE FROM {$this->_prefix}sessions WHERE update_time < '$time'"; 
		$this->_db->query($sql);  
		return true; 
	} 
}