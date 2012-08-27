<?php

/*
 * sutoocms: core/upload.php
* ============================================================================
* 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
* -------------------------------------------------------
* 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
* ============================================================================
*
* @author  phpox
* @version v1.0 u20120713
*/

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class core_upload {
	
	private $file; //上传的文件数组
	private $filename; //上传的文件名
	public  $upfilename; //上传后的文件名
	public  $fullfilename; //上传后的完整文件名
	private $filetype; //上传的文件类型
	private $filesize; //上传的文件大小
	private $filetemp; //上传的临时文件
	private $fileerror; //上传文件的错误信息
	private $ftypelimit; //允许的上传类型
	private $filelength; //允许上传的大小
	private $filepath; //上传文件的保存路径
	private $filerename; //是否重命名
	private $thumb; //是否生成缩略图
	private $width; //缩略图最大宽度
	private $height; //缩略图最大高度
	private $thumbpath; //缩略图保存路径
	private $ratio; //是否固定大小缩放
	
	public function __construct($setArray,$upfile){
		$this->upfilename = '';
		$this->setUploadConfig($setArray);
		$this->setUploadArray($upfile);
		$this->move();
	}
	
	/**
	 * 设置上传数组
	 */
	public function setUploadArray($upfile){
		$this->file = $upfile;
		$this->filename = $this->file['name'];
		$this->filetemp = $this->file['tmp_name'];
		$this->filesize = $this->file['size'];
		$this->fileerror= $this->file['error'];
	}
	
	/**
	 * 设置上传配置
	 */
	public function setUploadConfig($setArray){
		$this->filelength = $setArray['length'] * 1024;
		$this->ftypelimit = explode('&',$setArray['type']);
		$this->filepath = $setArray['path'].'/'.date('Ym').'/';
		$this->filerename = $setArray['isrename'];
		$this->thumb = $setArray['thumb'];
		$this->width = $setArray['width'];
		$this->height = $setArray['height'];
		$this->thumbpath = $setArray['thumbpath'].'/'.date('Ym').'/';
		$this->ratio = $setArray['ratio'];
	}
	
	/**
	 * 获取上传文件的扩展名
	 */
	private function getfiletype(){
		$this->filetype = end(explode('.',$this->filename));
	}
	
	/**
	 * 检查保存文件的路径
	 */
	private function ispath(){
		core_tool::mkdir($this->filepath);
		return is_dir($this->filepath);
	}
	
	/**
	 * 判断是不是从表单传过来的文件
	 */
	private function isupload(){
		return is_uploaded_file($this->filetemp);
	}
	
	/**
	 * 检查文件的类型是否在允许范围内
	 */
	private function istype(){
		return in_array(strtolower($this->filetype),$this->ftypelimit);
	}
	
	/**
	 * 检查上传文件大小
	 */
	private function isbig(){
		return $this->filesize > $this->filelength;
	}
	
	/**
	 * 处理上传的错误信息
	 */
	private function checkError(){
		switch ($this->fileerror){
			case 0:
				return true;
			case 1:
				core_url::alerterror('上传的文件超过限制!');
			case 2:
				core_url::alerterror('上传的文件超过限制!');
			case 3:
				core_url::alerterror('文件只有部分被上传!');
			case 4:
				core_url::alerterror('没有文件被上传!');
			case 6:
				core_url::alerterror('找不到临时文件夹!');
			case 7:
				core_url::alerterror('文件写入失败!');
			default:
				return true;
		}
	}
	
	/**
	 * 上传文件
	 */
	public function move() {
		$this->checkError();
		$this->getfiletype();
		if($this->filerename){
			$createfilename = md5(time()).mt_rand(1000,9999);
			$rfilename = $createfilename.'.'.$this->filetype;
		}else{
			$rfilename = $this->filename.'.'.$this->filetype;
		}
		$temppath = $this->filepath.$rfilename;
		if(!$this->ispath()){
			core_url::alerterror('文件保存路径错误');
			return false;
		}
		if(!$this->istype()){
			core_url::alerterror('不是有效的文件类型');
			return false;
		}
		if ($this->isbig()){
			core_url::alerterror('文件大小超过限制了');
			return false;
		}
		if(!$this->isupload()){
			core_url::alerterror('不是从表单过来的文件');
			return false;
		}
		if (move_uploaded_file($this->filetemp,$temppath)){
			$this->upfilename = $rfilename;
			$this->fullfilename = $temppath;
			if($this->thumb) return $this->makethumb();
			return true;
		}
		return false;
	}
	
	/**
	 * 生成缩略图
	 */
	private function makethumb(){
		$srcfile = $this->filepath.$this->upfilename;
		core_tool::mkdir($this->thumbpath);
		$dstfile = $this->thumbpath.$this->upfilename;
	
		if(!file_exists($srcfile)){
			return false;
		}
		$im = '';
		if($data = @getimagesize($srcfile)) {
			if($data[2] == 1) {
				if(function_exists("imagecreatefromgif")) {
					$im = imagecreatefromgif($srcfile);
				}
			}elseif($data[2] == 2) {
				if(function_exists("imagecreatefromjpeg")) {
					$im = imagecreatefromjpeg($srcfile);
				}
			} elseif($data[2] == 3) {
				if(function_exists("imagecreatefrompng")) {
					$im = imagecreatefrompng($srcfile);
				}
			}
		}
		if(!$im) return false;
		$srcw = $data[0];
		$srch = $data[1];
		$towh = $this->width/$this->height;
		$srcwh = $srcw/$srch;
		if($towh <= $srcwh){
			$ftow = $this->width;
			$ftoh = $ftow*($srch/$srcw);
		}else{
			$ftoh = $this->height;
			$ftow = $ftoh*($srcw/$srch);
		}
		if($this->ratio){
			$ftow = $this->width;
			$ftoh = $this->height;
		}
		//缩小图片
		if($srcw > $this->width || $srch > $this->height || $this->ratio) {
			if(function_exists("imagecreatetruecolor") && function_exists("imagecopyresampled") && @$ni = imagecreatetruecolor($ftow, $ftoh)) {
				imagecopyresampled($ni, $im, 0, 0, 0, 0, $ftow, $ftoh, $srcw, $srch);
			}elseif(function_exists("imagecreate") && function_exists("imagecopyresized") && @$ni = imagecreate($ftow, $ftoh)) {
				imagecopyresized($ni, $im, 0, 0, 0, 0, $ftow, $ftoh, $srcw, $srch);
			}else {
				return false;
			}
			if(function_exists('imagejpeg')) {
				imagejpeg($ni, $dstfile);
			} elseif(function_exists('imagepng')) {
				imagepng($ni, $dstfile);
			}
		}else {
			//小于尺寸直接复制
			copy($srcfile,$dstfile);
		}
		imagedestroy($im);
		return file_exists($dstfile);
	}
}