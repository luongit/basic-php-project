<?php 
function Url_to($label,$url='#',$option=false){
	global $config;
	$atr='';
	if($option && is_array($option)){
		foreach($option as $attr => $value){
			$atr = ' '.$attr.'="'.$value.'"';
		}
	}
	$href = '?r='.$url;
	if($config['rewrite_url_admin'] == true){
		$href = $url;
	}

	echo '<a href="'.$href.'"'.$atr.'>'.$label.'</a>';
}
?>