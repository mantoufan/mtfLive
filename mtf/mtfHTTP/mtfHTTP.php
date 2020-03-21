<?php
class mtfHTTP{
	public function curl($_arv=array()) {
		$arv=array_merge(array('u'=>'','t'=>3,'p'=>'','f'=>''),$_arv);
		$ch=curl_init();
		curl_setopt($ch, CURLOPT_URL, $arv['u']);
		curl_setopt($ch, CURLOPT_HEADER, FALSE);
		curl_setopt($ch, CURLOPT_NOBODY, FALSE);
		
		if($arv['t']<1){
			curl_setopt($ch, CURLOPT_NOSIGNAL, 1);
			curl_setopt($ch, CURLOPT_TIMEOUT_MS, $arv['t']*1000);
		}else{
			curl_setopt($ch, CURLOPT_TIMEOUT, $arv['t']);
		}
		
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		@curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
		
		//兼容302CDN
		if($arv['f']){
			curl_setopt($ch, CURLOPT_MAXREDIRS, 2);
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
		}
		
		//加速POST，减少1秒延迟 Expect: 请求gzip，并解压
		curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1); //强制协议为1.1
		curl_setopt($ch, CURLOPT_HTTPHEADER, array("Expect: ","Accept-Encoding:gzip","SERVER: ".json_encode($_SERVER)));
		
		//开启GZIP解压，减少数据传输量
		curl_setopt($ch, CURLOPT_ENCODING, 'gzip');
		if(@$_SERVER['HTTP_COOKIE']){
			curl_setopt($ch, CURLOPT_COOKIE, $_SERVER['HTTP_COOKIE']);
		}

		if($arv['p']){
			curl_setopt($ch, CURLOPT_POST, 1);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $arv['p']);
		}
		
		$_h=curl_exec($ch);
		if(curl_errno($ch))
		{
			return 'error';
		}else{
			return $_h;
		}
	}
}
?>