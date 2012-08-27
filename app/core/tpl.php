<?php

/*
 * sutoocms: core/tpl.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author  phpox
 * @version v1.0 u20120827
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

final class core_tpl {
    
    public $_var;
    public $lang=array();
    public $isgzip = true;

    public function  __construct(core_control $ctl) {
        $this->_var=new stdClass();
        if($ctl->_style != '')
                $this->_style = $ctl->_style;
        if($ctl->_module){
        	$module_dir = $ctl->_module.'/';
        }
        $this->setTemplate($module_dir);
    }

    /**
     * 取得模版的模版文件
     */
    private function setTemplate($module_dir) {
        if (!$this->_style)
                $this->_style = core_config::get('template_dir');
		if(core_app::isadmin() && core_app::$get['adminact']){
			$this->_style = "admin";
		}
        $this->_tpl_ext='.html';
        $this->_tpl = $module_dir.core_app::$ctl.'_'.core_app::$act.$this->_tpl_ext;
    }

    /**
     * 编译并解析模版
     * @param <string> $tpl 模版文件
     * @return <string> 解析后的模版内容
     */
    public function fetch($tpl=null) {
        if(!$tpl){
            $tpl = $this->_tpl;
        }
        $file = TEMPLATE.'/'.$this->_style.'/'.$tpl;
        if (!file_exists($file)) {
            exit("模板不存在：$file");
            return;
        }
        $tfile = str_ireplace('.html', '.php', $tpl);
        $cachefile = ROOT.'/cache/template/'.$this->_style.'/'.$tfile;
        core_tool::mkdir(dirname($cachefile));
        if (!file_exists($cachefile) || filemtime($cachefile) < filemtime($file) || core_config::get('isdebug')) {
            $source = $this->compile(file_get_contents($file));
            file_put_contents($cachefile,$source);
        }else{
            $source = file_get_contents($cachefile);
        }
        $content = $this->execute($source,$cachefile);
       return $content;
    }

    /**
     * 解析模版
     * @param <string> $content 编译后的模版内容
     * @param <string> $file 编译后的模版文件
     * @return <string> 解析后的模版内容
     */
    private function execute($content,$file=null) {
        foreach ($this as $var=>$value){
            if (!preg_match('/^_/',$var)){
                    $$var=$value;
            }
        }
        if (is_object($this->_var)){
            foreach ($this->_var as $var=>$value){
                $$var=$value;
            }
        }
        ob_start();
        include $file;
        $content = ob_get_contents();
        ob_end_clean();
        $this->_var = new stdClass();
        return $content;
    }

    /**
     *  编译模版
     * @param <string> $source 模版内容
     * @return string 编译后的模版内容
     */
    private function compile($source) {
        $source = preg_replace("/\{php\s+(.+)\}/","<?php \\1?>",$source);
        $source = preg_replace("/\{if\s+(.+?)\}/","<?php if(\\1) { ?>",$source);
        $source = preg_replace("/\{else\}/","<?php } else { ?>",$source);
        $source = preg_replace("/\{elseif\s+(.+?)\}/","<?php } elseif (\\1) { ?>",$source);
        $source = preg_replace("/\{\/if\}/","<?php } ?>",$source);
        $source = preg_replace("/\{loop\s+(\\$\w+)\s+(\S+)\}/","<?php foreach(\\1 as \\2) { ?>",$source);
        $source = preg_replace("/\{loop\s+(\\$\w+)\s+(\S+)\s+(\S+)\}/","<?php foreach(\\1 as \\2 => \\3) { ?>",$source);
        $source = preg_replace("/\{loop\s+(\S+)\s+(\S+)\}/","<?php foreach(\\1 as \\2) { ?>",$source);
        $source = preg_replace("/\{loop\s+(\S+)\s+(\S+)\s+(\S+)\}/","<?php foreach(\\1 as \\2 => \\3) { ?>",$source);
        $source = preg_replace("/\{\/loop\}/","<?php } ?>",$source);
        $source = preg_replace("/([\n\r]+)\t+/s","\\1",$source);
        //$source = preg_replace("%\/\/\{(.+?)\}%","",$source);
        $source = preg_replace("/\{template\s+(.+)\}/","<?php echo template(\\1); ?>",$source);
        $source = preg_replace("/\{=(.+?)\}/","<?php echo \\1;?>",$source);
        $source = preg_replace("/\{([a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff:]*\(([^{}]*)\))\}/","<?php echo \\1;?>",$source);
        $source = preg_replace("/\{\\$([a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff:]*\(([^{}]*)\))\}/","<?php echo \\1;?>",$source);
        $source = preg_replace("/\{(\\$[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*)\}/","<?php echo \\1;?>",$source);
        $source = preg_replace("/\{(\\$[a-zA-Z0-9_\[\]\'\"\$\x7f-\xff]+)\}/s","<?php echo \\1;?>",$source);
        $source = preg_replace("/\{([A-Z_\x7f-\xff][A-Z0-9_\x7f-\xff]*)\}/s","<?php echo \\1;?>",$source);
        $source = preg_replace("/\{\\$([a-zA-Z_]+)\.([a-zA-Z_]+)\}/s","<?php echo \$\\1['\\2'];?>",$source);
        $source = preg_replace("/\{\\$([a-zA-Z_]+)\.(\\$[a-zA-Z_]+)\}/s","<?php echo \$\\1[\\2];?>",$source);
        $source = preg_replace("/\{\\$([a-zA-Z_]+)\.(\\$[a-zA-Z_]+)\.([a-zA-Z_]+)\}/s","<?php echo \$\\1[\\2]['\\3'];?>",$source);
        $source = preg_replace('/\{(\\$[a-zA-Z_]+)\.(\\$[a-zA-Z_]+)\|([^,}]+)(.*?)\}/i','<?php echo \\3(\\1[\\2]\\4);?>',$source);
        $source = preg_replace('/\{(\\$[a-zA-Z_]+)\.([a-zA-Z_]+)\|([^,}]+)(.*?)\}/i',"<?php echo \\3(\\1['\\2']\\4);?>",$source);
        $source = preg_replace('/\{(\\$[a-zA-Z_]+)\|([^,}]+)(.*?)\}/i',"<?php echo \\2(\\1\\3);?>",$source);
        $source = preg_replace("/\\$([a-zA-Z0-9_]+)\[([a-zA-Z0-9_]+)\]/s","\$\\1['\\2']",$source);
        if(core_config::get('gzip') && $this->isgzip){
            $tmp1 = "<?php if(Extension_Loaded('zlib')) ob_start('ob_gzhandler'); header(\"Content-type: text/html\"); ?>\r\n";
            $tmp2 = "<?php if(Extension_Loaded('zlib')) ob_end_flush(); ?>\r\n";
        }
        $source = "<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>\r\n".$tmp1.$source.$tmp2;
        return $source;
    }

    /**
     *  显示解析后的内容
     * @param <string> $tpl 模版文件
     */
    public function show($tpl=null){
        echo $this->fetch($tpl);
    }
}