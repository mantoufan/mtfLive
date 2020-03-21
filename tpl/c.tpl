<html>
<head>
<meta charset="utf-8">
<title>{{#nc}}{{nc}}_{{/nc}}{{n}}</title>
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="applicable-device" content="pc,mobile">
<meta name="MobileOptimized" content="width"/>
<meta name="HandheldFriendly" content="true"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="x5-fullscreen" content="true"><meta name="full-screen" content="yes">
<link rel="stylesheet" href="//cdnjs.loli.net/ajax/libs/pure/1.0.0/pure-min.css">
<!--[if lte IE 8]>
    <link rel="stylesheet" href="//cdnjs.loli.net/ajax/libs/pure/1.0.0/grids-responsive-old-ie-min.css">
<![endif]-->
<!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="//cdnjs.loli.net/ajax/libs/pure/1.0.0/grids-responsive-min.css">
<!--<![endif]-->
<style>
	.pure-menu{
		height:50px;
		line-height: 30px;
	}
	.m-av{
		border-radius:50%;
		width:20px;
		height:20px;
	}
	a{
		color:#333333;
	}
	body{
		margin:0 0 30px 0;
		background:#FFFFFF;
	}
	.m-f-r{
		float:right;
	}
	#m-l a{
		text-decoration:none;
	}
	#m-l div{
		padding:10px;
		border-radius: 5px;
		box-shadow: 0 1px 6px #D6D6D6;
	}
	#m-l span{
		white-space:nowrap;
		overflow:hidden;
	}
	#m-l h2{
		text-align:center;
		margin:0;
		padding:0;
		white-space:nowrap;
		font-size:16px;
		overflow:hidden;
	}
	#m-l span:last-child{
		text-align:right;
	}
	#m-l img:first-child{
		width:100%;
		vertical-align:middle;
	}
	#m-l img:last-child{
		width:25px;
		height:25px;
		border-radius:50%;
	}
	.m-p{
		text-align:center;
		margin:15px 0;
	}
	.m-p a{
		border-radius: 5px;
		box-shadow: 0 1px 6px #D6D6D6;
		text-decoration: none;
		padding: 5px 8px;
		margin: 0 2px;
	}
	.m-page-current{
		font-weight:bolder;
	}
	.m-tip div{
		margin:-10px;
		font-size:14px;
		box-shadow:none !important;
	}
	.pure-menu-disabled, .pure-menu-heading, .pure-menu-link{
		padding:.5em;
	}
	.none{
		display:none;
	}
</style>
</head>
<body>
<div class="pure-menu pure-menu-horizontal">
    <a href="javascript:" class="pure-menu-heading pure-menu-link">{{nc}}</a>
    <ul class="pure-menu-list">
        <li class="pure-menu-item"><a href="/" class="pure-menu-link">分类</a></li>
		<li class="pure-menu-item"><a href="dianshi" class="pure-menu-link">电视</a></li>
    </ul>
	<a href="javascript:history.back()" class="pure-menu-link m-f-r">返回</a>
</div>
<div class="pure-g" id="m-l">
{{#tip}}
	<div class="pure-u-1 m-tip">{{{tip}}}</div>
{{/tip}}
{{#data}}
    <a href="{{#PC}}{{h}}{{/PC}}{{^PC}}{{#hm}}{{hm}}{{/hm}}{{^hm}}{{h}}{{/hm}}{{/PC}}" class="pure-u-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5">
		<div>
			{{#i}}<img src="{{i}}" alt="{{t}}"/>{{/i}}
			<h2 class="pure-u-1">{{t}}</h2>
			<span class="pure-u-2-3">{{#a}}<img src="{{a}}" alt="{{p}}"/>{{/a}}{{p}}</span><span class="pure-u-1-3">{{nw}}</span>
		</div>
	</a>
{{/data}}
{{#cat}}
	{{#a}}
	<div class="pure-u-1">{{a}}</div>
	{{/a}}
	{{^a}}
	<a href="/{{h}}" class="pure-u-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5">
		<div>{{n}}</div>
	</a>
	{{/a}}
{{/cat}}
</div>
{{#query}}
 <div class="m-p">
    {{#pages}}
        <a class="m-button{{#c}} m-page-current{{/c}}" href="{{query}}{{#p}}&page={{p}}{{/p}}">{{{s}}}</a>
    {{/pages}}
</div>
{{/query}}
<script type="text/javascript" src="//cdn.dm126.com/share/mtfFrame.js" ></script>
<script>mtfFrame.menu();mtfFrame.refresh();mtfFrame.update(1);mtfFrame.pm();mtfFrame.pwa.p();
var a=document.getElementById('m-l').getElementsByTagName('a'),l=a.length;
for (var i=0;i<l;i++)
{
	a[i].onclick=function(){
		mtfFrame.openWin(this.href);
		return false;
	}
}
var juws = 'http:', juwp = window.location.protocol;
if (juwp != juws){
	window.location.href = juws + window.location.href.substring(juwp.length);
}
</script>
<div class="none"><script src="https://s11.cnzz.com/z_stat.php?id=1259839027&web_id=1259839027" language="JavaScript"></script></div>
</body>