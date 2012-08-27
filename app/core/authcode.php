<?php

/*
 * sutoocms: core/authcode.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120827
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class core_authcode {

	private $fontPath;   //字体路径
	private $image;
	private $charLen 		= 6; //生成几位验证码
	private $arrChr			= array();//验证码字符
	private $width 			= 140; //图片宽
	private $height 		= 40; //图片高

	private $bgcolor 		    = "#ffffff"; //背景色
	private $showNoisePix 	= true; //生成杂点
	private $noiseNumPix 	  = 80; //生成杂点数量
	private $showNoiseLine 	= true; //生成杂线
	private $noiseNumLine 	= 8; //生成杂线数量
	private $showBorder 	  = TRUE; //边框，当杂点、线一起作用的时候，边框容易受干扰
	private $borderColor 	  = "#000000";

	public function __construct() {
		$this->fontPath = ROOT.'/skin/fonts/';	//字体文件
		//$this->arrChr 	= array_merge(range(1, 9) , range('A', 'Z'), range('a', 'z'));
		//$this->arrChr = range('A', 'Z');//纯字母验证码 $this->arrChr = range(0, 9);//纯数字验证码
		$this->arrChr = range('0', '9');
	}

	private function getColor($color) {
		$color = str_replace("#", "", $color);
		$r = $color[0] . $color[1];
		$r = hexdec($r);
		$b = $color[2] . $color[3];
		$b = hexdec($b);
		$g = $color[4] . $color[5];
		$g = hexdec($g);
		$color = imagecolorallocate($this->image, $r, $b, $g);
		return $color;
	}

	private function setNoisePix() {
		for($i = 0; $i < $this->noiseNumPix; $i ++) {
			$randColor = imageColorAllocate($this->image, rand(0, 255), rand(0, 255), rand(0, 255));
			imageSetPixel($this->image, rand(0, $this->width), rand(0, $this->height), $randColor);
		}
	}

	private function setNoiseLine() {
		for($i = 0; $i < $this->noiseNumLine; $i ++) {
			$randColor = imageColorAllocate($this->image, rand(0, 255), rand(0, 255), rand(0, 255));
			imageline($this->image, rand(1, $this->width), rand(1, $this->height), rand(1, $this->width), rand(1, $this->height), $randColor);
		}
	}
	/**
	 * 显示验证码
	 */
	public function show() {
		$this->image = imageCreate($this->width, $this->height);
		$this->back  = $this->getColor($this->bgcolor);

		imageFilledRectangle($this->image, 0, 0, $this->width, $this->height, $this->back);

		$size = $this->width / $this->charLen - 4;
		if ($size > $this->height) $size = $this->height;

		$left = ($this->width - $this->charLen * ($size + $size / 10)) / $size + 5;
		$code = '';
		for($i = 0; $i < $this->charLen; $i ++) {
			$randKey = rand(0, count($this->arrChr) - 1);
			$randText = $this->arrChr[$randKey];
			$code .= $randText;
			$textColor = imageColorAllocate($this->image, rand(0, 100), rand(0, 100), rand(0, 100));
			$font = $this->fontPath . '/' . rand(1, 5) . ".ttf";
			$randsize = rand($size - $size / 10, $size + $size / 10);
			$location = $left + ($i * $size + $size / 10);
			@imagettftext($this->image, $randsize, rand(- 18, 18), $location, rand($size - $size / 10, $size + $size / 10) + 2, $textColor, $font, $randText);
		}

		if ($this->showNoisePix == true) $this->setNoisePix();

		if ($this->showNoiseLine == true)	$this->setNoiseLine();

		if ($this->showBorder == true) {
			$this->borderColor = $this->getColor($this->borderColor);
			imageRectangle($this->image, 0, 0, $this->width - 1, $this->height - 1, $this->borderColor);
		}
		$_SESSION['auth_code'] = strtolower($code);
		//ob_clean();
		header("Content-type: image/jpeg");
		imagejpeg($this->image);
		imagedestroy($this->image);
	}

	/**
	 * 使用js调用验证码
	 */
	public function showScript(){
		echo "var img_src = '".url('validation','show')."&';\n";
		echo "document.writeln('<img id=\"validation\" src=\"' + img_src + Math.random() + '\" align=\"absmiddle\" style=\"cursor:pointer;\" onclick=\"this.src=img_src + Math.random();\" title=\"点击更换验证码\" alt=\"点击更换验证码\">');";
	}

	/**
	 * 检查验证码是否正确
	 *
	 * @param string $auth_code
	 * @return bool
	 */
	public static function check($auth_code = null){
		return ($_SESSION['auth_code'] && $auth_code) ? ($_SESSION['auth_code'] === $auth_code) : false;
	}
}
