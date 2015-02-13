<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
/**
 * @file index.php
 * @author Yuncong Zhang(zhangyuncong@baidu.com)
 * @date 2012/05/02 12:24:24
 * @version 1.0 
 * @brief 
 *  
 **/
$no_db = true;
include ("include/common.php");
////////////////// Edit Area Begin//////////////////////

$path=$app_path = $_GET['path']?$_GET['path']:"/DStream";
$TPL['menu']=array();
$TPL['menu_title']="Job Display";
$TPL['menu_title_link']="index.php?path=$path";

$TPL['title']="Job Display";
$TPL['right_menu']['Job Display']='index.php';
$TPL['right_menu']['Log Metrics Display']='log_metrics.php';
$TPL['active_right_menu']='Job Display';

$TPL['menu_search_form']=array();
$TPL['menu_search_form']['action']="";
$TPL['menu_search_form']['method']="GET";
$TPL['menu_search_form']['search_name']="path";
$TPL['menu_search_form']['default_text']="$path";

$appid=intval($_GET['appid']);
$processorid=intval($_GET['processorid']);

$str=shell_exec("cd bin;/bin/bash ./dumpshell.sh \"$app_path\" $appid ");
parse_all($str,$arr);
$cur_app=$arr['apps'][$appid];
$peidlist="";
if (isset($processorid)) {
    foreach ($cur_app['pelist'] as $tmp_pe){
        if ($processorid == $tmp_pe['processorid']) {
            $peidlist.=$delim.$tmp_pe['peid'];
            $delim=" ";
        }
    }
} else {
    foreach ($cur_app['pelist'] as $peid=>$pe){
        $peidlist.=$delim.$peid;
        $delim=" ";
    }
}
$TPL['tpl_name']='pelist';

////////////////// Edit Area End  //////////////////////
$tpl_name=$TPL['tpl_name'];
$tpl_dir=$GLOBALS['tpl_dir'];
include("$tpl_dir/header.tpl.php");
include("$tpl_dir/$tpl_name.tpl.php");
include("$tpl_dir/footer.tpl.php");

?>
