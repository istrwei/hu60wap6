{config_load file="conf:site.info"}
{if $fid == 0}
{$fName=#BBS_INDEX_NAME#}
{else}
{$fIndex.0.name=#BBS_INDEX_NAME#}
{/if}
{include file="tpl:comm.head" title="{$tMeta.title|code} - {$fName} - {#BBS_NAME#}"}
<!--导航栏-->
<div class="pt">
<div class="cr180_ptzmenu">
    <a href="index.index.{$BID}">首页</a>
    {foreach $fIndex as $forum}
        <a href="{$CID}.forum.{$forum.id}.{$BID}">{$forum.name|code}</a>
        {if $forum.id != $fid}<!-- --!>{/if}
    {/foreach}
    {if !$forum.notopic}<a href="{$CID}.newtopic.{$forum.id}.{$BID}">发帖</a>{/if}
</div>
</div>
<div class="vt" id="th_list" style="margin-top:0">
    <div class="bm">
        <div class="cr180_title" >
        <a  id="thread_subject" > {$tMeta.title|code}</a></div>
    {foreach $tContents as $v}
                    <div class="cr180_postbox nos ">
                    <div id="post_2837" class="cr180_v_bmh cl">
                    <div class="cr180_avatar">
                    <a href="" target="_blank" ><img src="http://www.wapvy.cn/uc_server/avatar.php?uid=1261&size=small" /></a>
                    </div>
                    <div class="z cr180_member_jon">
                    <a href="" target="_blank" >{$v.uinfo.name|code}</a>
                    <p class="cl"><em class="dateline cus">{date('Y-m-d H:i:s',$v.mtime)}</em></p>
                    </div><a  class="view_author">{if $v.floor == 0}楼主{else}{$v.floor}楼{/if}</a></div>
<div class="pbody cl">
<div class="pbody_s1"></div>
<div class="pbody_s2 cl">
<div class="mes">
<div id="postmessage_{$tid}" class="postmessage">{$ubb->display($v.content,true)}</div>
</div></div></div>
    {/foreach}
    <!--发帖框-->
<div id="Cr180return_commentform" style="display:none"></div>
<div class="ft">
        {if $USER->islogin}
            {form method="post" action="{$CID}.newreply.{$fid}.{$tid}.{$p}.{$BID}"}
 <div class="cr180_form">
                <textarea class="txt" name="content" style="width:100%;height:100px;">{$smarty.post.content}</textarea>
                {input type="hidden" name="token" value=$token->token()}
                </div><div class="o pns cl"><button type="submit" class="submit_ye" value="true" name="go" tabindex="3"><span>评论该帖子</span></button></div></form>
            {/form}
        {else}
{div class="forum_login"}
            回复需要<a href="user.login.{$BID}?u={$PAGE->geturl()|urlencode}">登录</a>。
{/div}
        {/if}
</div>
</div>
</div>
{include file="tpl:comm.foot"}