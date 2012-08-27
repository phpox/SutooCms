<?php

/*
 * sutoocms: fields.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120410
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class table_fields extends core_table {

    static $me;

    public static function getInstance() {
        if (!self::$me) {
            self::$me = new table_fields();
        }
        return self::$me;
    }

    function getcols($act) {
        switch ($act) {
            case 'manage':
                return '`modelid`,`modelname`,`tbname`,`intro`,`state`,`rownum`';
            case 'modify':
                return '`modelid`,`modelname`,`tbname`,`intro`,`state`,`rownum`';
        }
    }
    
    function getTypeList(){
        $arr['text'] = '单行文本';
        $arr['textarea'] = '多行文本';
        $arr['editor'] = '编辑器';
        $arr['option'] = '选项';
        $arr['image'] = '图片';
        $arr['images'] = '多图片';
        $arr['int'] = '整数';
        $arr['number'] = '数字';
        $arr['datetime'] = '日期和时间';
        $arr['downfiles'] = '多文件上传';
        return $arr;
    }

    function getHtml($field, $value = '', $ext = '') {
        switch ($field['formtype']) {
            case 'text':
                $str = '<input type="text" id="' . $field['name'] . '" name="' . $field['name'] . '" value="' . $value . '" ' . $ext . ' /> ' . $field['tips'];
                return $str;
            case 'number':
                $str = '<input type="text" id="' . $field['name'] . '" name="' . $field['name'] . '" value="' . $value . '" ' . $ext . ' /> ' . $field['tips'];
                return $str;
            case 'datetime':
            	$str = "<link rel=\"stylesheet\" href=\"js/themes/ui-lightness/jquery.ui.all.css\">\r\n";
            	$str .= "<script src=\"js/ui/minified/jquery.ui.core.min.js\"></script>\r\n";
            	$str .= "<script src=\"js/ui/minified/jquery.ui.widget.min.js\"></script>\r\n";
            	$str .= "<script src=\"js/ui/minified/jquery.ui.datepicker.min.js\"></script>\r\n";
            	$str .= "<script src=\"js/ui/i18n/jquery.ui.datepicker-zh-CN.js\"></script>\r\n";
            	$str .= "<script>\r\n";
            	$str .= "jQuery(function($) {\r\n";
            	$str .= "$.datepicker.setDefaults($.datepicker.regional['zh-CN']);\r\n";
				$str .= "	$(\"#{$field['name']}\").datepicker();\r\n";
            	$str .= "});\r\n";
               	$str .= "</script>\r\n";
               	$str .= '<input readonly="readonly" type="text" id="' . $field['name'] . '" name="' . $field['name'] . '" style="width:200px;height:20px;" value="' . $value . '"/>';
               	return $str;
            case 'editor':
                $str = "<script>\r\n";
                $str .= "  var {$field['name']}_obj;\r\n";
                $str .= "  KindEditor.ready(function(K) {\r\n";
                $str .= "    {$field['name']}_obj = K.create('#{$field['name']}');\r\n";
                $str .= "  });\r\n";
                $str .= "</script>\r\n";
                $str .= '<textarea id="' . $field['name'] . '" name="' . $field['name'] . '" style="width:700px;height:300px;">' . $value . '</textarea>';
                return $str;
            case 'option':
                $fields = unserialize($field['setting']);
                if ($fields['ds'] == 'm') {
                    $row = array();
                    $r = explode("\n", $fields['oplist']);
                    $i=0;
                    foreach ($r as $v){
                        $t = explode('|', $v);
                        $row[$i]['val'] = str_replace(array("\n","\r"),"", $t[1]);
                        $row[$i]['view'] = str_replace(array("\n","\r"),"", $t[0]);
                        $i++;
                    }
                } else {
                    $model = new table_model();
                    $model->name = $fields['tbname'];
                    $arr = $model->getrows();
                    if (is_array($arr) && !empty($arr)) {
                        foreach ($arr as $key => $value1) {
                            $row[$key ]['val'] = $value1[$fields['valname']];
                            $row[$key ]['view'] = $value1[$fields['viewname']];
                        }
                    }
                }
                if ($fields['optype'] == 'select') {
                    $str = '<select id="' . $field['name'] . '" name="' . $field['name'] . '">';
                    if (is_array($row) && !empty($row)) {
                        foreach ($row as $key => $value2) {
                            if($value2['val'] == $value){
                                $selected = "selected";
                            }
                            $str .= "<option value=\"{$value2['val']}\" $selected>{$value2['view']}</option>\r\n";
                            $selected = "";
                        }
                    }
                    $str .= '</select>';
                    return $str;
                }
                if ($fields['optype'] == 'radio') {
                    if (is_array($row) && !empty($row)) {
                        foreach ($row as $key => $value3) {
                            if($value3['val'] == $value){
                                $checked = "checked";
                            }
                            $str .= '<input '.$checked.' type="radio" id="' . $field['name'] . '" name="' . $field['name'] . '" value="'.$value3['val'].'" /> '.$value3['view'] ." ";
                            $checked = "";
                        }
                    }
                    return $str;
                }
            default :
                return '';
        }
    }

}