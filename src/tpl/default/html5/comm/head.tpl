{header content_type="text/html" charset="utf-8"}
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="{$page.mime};charset=utf-8"/>{if $time !== null}<meta http-equiv="refresh" content="{$time};url={if $url === null}{page::geturl()|code}{else}{$url|code}{/if}"/>{/if}
{if $css === null}{$css="css.wap.{$BID}.{$smarty.get.css}.css"}{/if}
<link rel="stylesheet" type="text/css" href="{$css|code}"/>
<meta name='viewport' content='width=device-width' />
<script type="text/javascript">var STYLEID = '3', STATICURL = 'static/', IMGDIR = 'static/image/common', VERHASH = 'AZW', charset = 'gbk', discuz_uid = '0', defaultstyle = '', REPORTURL = 'aHR0cDovL3dhcC53YXB2eS5jbi8=', SITEURL = 'http://hu60.org/', JSPATH = 'data/cache/';</script>
<script src="/tpl/default/css/html5/dz_common.js" type="text/javascript"></script>
<script src="/tpl/default/css/html5/common.js?ai=1404525616" type="text/javascript"></script>
<script src="/tpl/default/css/html5/swipe.js?ai=1404525616" type="text/javascript"></script>
<link rel="stylesheet" href="/tpl/default/css/html5/style_symple.css" />

<title>{$title|code}</title>
</head>
<body class="pg_index">
<a id="top" href="#bottom" accesskey="6"></a>
<div id="append_parent"></div><div id="ajaxwaitid"></div><div id="swap_content"><div class="tophd"></div><div class="hd cl"><div class="logo"><a  href="javascript:;" onclick="location.href='/'" title="手机版"><img src="/tpl/default/html5/comm/logo.png"style=""width="100"heigth="38"><span></span></a></div><div class="login">
{if !$base}
{if !$no_user && is_object($user)}<div class="tip">
{if $user->uid}
{if $user->islogin}
<a href="user.index.{$bid}">{$user->name|code}</a>
<!--<a href="msg.list.{$bid}">内信</a>
<a href="msg.atlist.{$bid}">动态</a>--!>
<a href="user.exit.{$bid}?u={urlencode($page->geturl())}">退出</a>
{else}
已掉线，<a href="user.login.{$bid}?u={urlencode($page->geturl())}">重新登陆</a>
{/if}

{else}
<a href="user.login.{$bid}?u={urlencode($page->geturl())}" title="登录" style="margin-right:10px">登录</a>
<a href="user.reg.{$bid}?u={urlencode($page->geturl())}" title="立即注册">立即注册</a>{/if}
</div>{/if}
{/if}
    </div></div>
<div class="wp">