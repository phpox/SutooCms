<?php

/*
 * sutoocms: core/watermark.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 * @author phpox
 * @version v1.0 u20120722
 */

if (! defined ( 'SUTOOCMS' ))
	exit ( 'Can\'t Access !' );
class core_watermark {
	
	public $errorinfo = ''; //错误信息
	public $filename = ''; //生成后的图片
	
	/**
	 * 构造函数
	 * @param  $groundImage 生成后的图片目录
	 * @param  $groundImage 原图
	 * @param  $waterPos    位置
	 * @param  $waterImage  水印图
	 * @param  $waterText   水印文本
	 * @param  $textFont    字体大小
	 * @param  $textColor   字体颜色
	 * @param  $transparent 水印透明度
	 * @param  $quality     质量
	 */
	public function __construct($path,$wpath,$groundImage, $waterPos = 0, $waterImage = "", $waterText = "", $textFont = 15, $textColor = "#FFFFFF", $transparent = 100, $quality = 100) {
		$this->errorinfo = $this->makewm($path,$wpath,$groundImage, $waterPos, $waterImage, $waterText, $textFont, $textColor, $transparent, $quality);
	}
	
	//制作水印 完成后生成原名_w.扩展名
	public function makewm($path,$wpath,$groundImage, $waterPos = 0, $waterImage = "", $waterText = "", $textFont = 15, $textColor = "#FFFFFF", $transparent = 100, $quality = 100) {
		$isWaterImage = FALSE;
		$filename = $groundImage;
		core_tool::mkdir($wpath);
		$groundImage = $path.'/'.$groundImage;
		if (! empty ( $waterImage ) && file_exists ( $waterImage )) {
			$isWaterImage = TRUE;
			$water_info = getimagesize ( $waterImage );
			$water_w = $water_info [0];
			$water_h = $water_info [1];
			switch ($water_info [2]) {
				case 1 :
					$water_im = imagecreatefromgif ( $waterImage );
					break;
				case 2 :
					$water_im = imagecreatefromjpeg ( $waterImage );
					break;
				case 3 :
					$water_im = imagecreatefrompng ( $waterImage );
					break;
				default :
					return 'error image type';
			}
		}
		if (! empty ( $groundImage ) && file_exists ( $groundImage )) {
			$ground_info = getimagesize ( $groundImage );
			$ground_w = $ground_info [0];
			$ground_h = $ground_info [1];
			switch ($ground_info [2]) {
				case 1 :
					$ground_im = imagecreatefromgif ( $groundImage );
					break;
				case 2 :
					$ground_im = imagecreatefromjpeg ( $groundImage );
					break;
				case 3 :
					$ground_im = imagecreatefrompng ( $groundImage );
					break;
				default :
					return 'error image type';
			}
		} else {
			return 'not source image';
		}
		if ($isWaterImage) {
			$w = $water_w;
			$h = $water_h;
		} else {
			$temp = @imagettfbbox ( ceil ( $textFont * 2.5 ), 0, "./cour.ttf", $waterText );
			$w = $temp [2] - $temp [6];
			$h = $temp [3] - $temp [7];
			unset ( $temp );
		}
		if (($ground_w < $w) || ($ground_h < $h)) {
			return 'image size < watermark size';
		}
		switch ($waterPos) {
			case 0 :
				$posX = rand ( 0, ($ground_w - $w) );
				$posY = rand ( 0, ($ground_h - $h) );
				break;
			case 1 :
				$posX = 0;
				$posY = 0;
				break;
			case 2 :
				$posX = ($ground_w - $w) / 2;
				$posY = 0;
				break;
			case 3 :
				$posX = $ground_w - $w;
				$posY = 0;
				break;
			case 4 :
				$posX = 0;
				$posY = ($ground_h - $h) / 2;
				break;
			case 5 :
				$posX = ($ground_w - $w) / 2;
				$posY = ($ground_h - $h) / 2;
				break;
			case 6 :
				$posX = $ground_w - $w;
				$posY = ($ground_h - $h) / 2;
				break;
			case 7 :
				$posX = 0;
				$posY = $ground_h - $h;
				break;
			case 8 :
				$posX = ($ground_w - $w) / 2;
				$posY = $ground_h - $h;
				break;
			case 9 :
				$posX = $ground_w - $w;
				$posY = $ground_h - $h;
				break;
			default :
				$posX = rand ( 0, ($ground_w - $w) );
				$posY = rand ( 0, ($ground_h - $h) );
				break;
		}
		if ($posX < 20)
			$posX = 20;
		if ($posY < 20)
			$posY = 20;
		if ($posX > $ground_w - $w - 20)
			$posX = $ground_w - $w - 20;
		if ($posY > $ground_h - $h - 20)
			$posY = $ground_h - $h - 20;
		imagealphablending ( $ground_im, true );
		if ($isWaterImage) {
			imagecopymerge ( $ground_im, $water_im, $posX, $posY, 0, 0, $water_w, $water_h, $transparent );
		} else {
			if (! empty ( $textColor ) && (strlen ( $textColor ) == 7)) {
				$R = hexdec ( substr ( $textColor, 1, 2 ) );
				$G = hexdec ( substr ( $textColor, 3, 2 ) );
				$B = hexdec ( substr ( $textColor, 5 ) );
			} else {
				return "watermark text color format error";
			}
			imagestring ( $ground_im, $textFont, $posX+1, $posY+1, $waterText, imagecolorallocate ( $ground_im, 0, 0, 0 ) );
			imagestring ( $ground_im, $textFont, $posX, $posY, $waterText, imagecolorallocate ( $ground_im, $R, $G, $B ) );
		}
		$groundImage = $wpath.'/'.$filename;
		switch ($ground_info [2]) {
			case 1 :
				imagegif ( $ground_im, $groundImage );
				break;
			case 2 :
				imagejpeg ( $ground_im, $groundImage, $quality);
				break;
			case 3 :
				imagepng ( $ground_im, $groundImage );
				break;
			default :
				return 'error image for gd function';
		}
		if (isset ( $water_info ))
			unset ( $water_info );
		if (isset ( $water_im ))
			imagedestroy ( $water_im );
		unset ( $ground_info );
		$this->filename = $groundImage;
		imagedestroy ( $ground_im );
		return '';
	}
}