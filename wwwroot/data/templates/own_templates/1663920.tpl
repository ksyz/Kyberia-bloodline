<link rel='stylesheet' type='text/css' href='http://www.mic.jablonka.org/kyberia/css/bookmarks.css'>
<script language="javascript" src="http://www.mic.jablonka.org/kyberia/js/bookmarks.js"></script>

<table width=80% cellpadding='5' cellspacing='0' border="0">
<tr>

<td valign="top" width="15%">
{include file="modules/get_userlist.tpl"}
</td>

<td width="5%">&nbsp;</td>

<td valign='top' width=60%>

<form method='post' action='/id/{$node.node_id}'>
<span class='tt'><h1>Bookmarks:</h1></span>
{get_bookmarks}
{foreach from=$get_bookmarks item=bookmark_category}
<div class='b_cat'>
{* showing bookmark category  *}
{if $bookmark_category.node_name neq false}
&nbsp;<a href="javascript:chngbukcat('{$bookmark_category.node_id}')">kategoria:</a>&nbsp;<a class='important' href='/id/{$bookmark_category.node_id}/'>{$bookmark_category.node_name}</a>   
		{if $bookmark_category.sum neq false}
				: <span class='newdesc'> {$bookmark_category.sum}new</span>
		{/if}

 
{/if}
{if $bookmark_category.node_name neq true}
<span style="color:white;">&nbsp;&nbsp;nezatriedené ***</span>
{/if}



<div class='b_item'>
{foreach from=$bookmark_category.children item=bookmarks}
{if $bookmarks.node_name neq false && $bookmarks.node_id neq ''}
<input style='height: 11px; width: 11px;' type='checkbox' name='bookmarks_chosen[]' 
value='{$bookmarks.node_id}'>
<a href='/id/{$bookmarks.node_id}'>{$bookmarks.node_name|strip_tags}</a>
{if $bookmarks.node_user_subchild_count neq false}<span class='newdesc'> {$bookmarks.node_user_subchild_count}new</span>
{/if}
{if $bookmarks.lastdescendant_created > $bookmarks.last_visit}<span class='newdesc'>.desc.</span>
{/if}
<br>
{/if}
{/foreach}</div></div>

<br>

{/foreach}
<input type='text' name='bookmark_category_id'><input type='submit' name='event' value='set_bookmark_category'>
</form>



</td></tr></table>



