<link rel='stylesheet' type='text/css' href='/id/404600/download'>
{include file="modules/header.tpl"}

<script language="javascript" src="/id/156968/download">
</script>

<div style="float:left; width:20%; text-align:center; margin-left:8px;" class='active_users'>

{get_userlist}
{if $active_friends eq true}

<span class='important'><center>friends</center></span>
{foreach from=$active_friends item=node_visitor}
<div class='active_user_img' style='float:left; margin:0px 1px 0 0;'><a href='/id/{$node_visitor.user_id}/'><img border='0' name='{$node_visitor.login}' width='50' height='50' alt='{$node_visitor.login}' title='{$node_visitor.login}' src='{get_image_link id=$node_visitor.user_id}'></a></div>
{/foreach}<br style="clear:left;">
{/if}
<span class='important'><center>users on.line</center></span>
{foreach from=$active_users item=node_visitor}
<a href='/id/{$node_visitor.user_id}'>{$node_visitor.login}</a><br>
{/foreach}

</div>





<div style="margin-left:20%; padding-left:10px;">

<div id='book'>

<span class='tt'>&nbsp</span>
{get_bookmarks}
{foreach from=$get_bookmarks item=bookmark_category}
<!-- <h2>X</h2> --><div class='b_cat'>
{* showing bookmark category  *}
{if $bookmark_category.node_name neq false}
<a href="javascript:chngbukcat('{$bookmark_category.node_id}')">#</a>kategoria::<a class='important' href='/id/{$bookmark_category.node_id}/'>{$bookmark_category.node_name}</a>
		{if $bookmark_category.sum neq false}
				:: <span class='most_important'> {$bookmark_category.sum} NEW</span>
		{/if}

{/if}
{if $bookmark_category.node_name neq true}
Unsorted
{/if}

<div class='b_item'>
{assign var=$okej value=1}
{foreach from=$bookmark_category.children item=bookmarks}
{if $bookmarks.node_name && $bookmarks.node_id}
<div class="b_node"><input style='height: 11px; width: 11px;' type='checkbox' name='bookmarks_chosen[]' value='{$bookmarks.node_id}'>
<a href='/id/{$bookmarks.node_id}'>{$bookmarks.node_name|strip_tags}</a>
{if $bookmarks.node_user_subchild_count neq false}
:: <span class='most_important'> {$bookmarks.node_user_subchild_count} N!</span>
{/if}
{if $bookmarks.lastdescendant_created > $bookmarks.last_visit}
:: <span class='most_important'>D!</span>
{if $bookmarks.given_k eq "yes"}
{get_nodes_by_parent parent=$bookmarks.node_id listing_amount=$bookmarks.node_children_count}{$bookmarks.k}K
{elseif ($bookmarks.given_k eq "no") and $bookmarks.k > 7}
{get_nodes_by_parent parent=$bookmarks.node_id listing_amount=$bookmarks.k}
{else}
{get_nodes_by_parent parent=$bookmarks.node_id listing_amount=8}
{/if}
{foreach name=reploop from=$get_nodes_by_parent item=child}
{if ($okej eq 1) and ($child.node_creator eq $user_id) and ($child.lastdescendant_created > $bookmarks.last_visit)}
{assign var=$okej value=0}
:: <span class='most_important'>r!</span>
{/if}
{/foreach}
{assign var=$okej value=1}
{/if}
{if $bookmarks.template_id eq 2}[<a href='/id/23/{$bookmarks.node_vector}' style="color:#666;">posledne</a>]{/if} <form action='/id/{$bookmarks.node_id}/' method='post' style="display: inline;"><input type='submit' name='event' value='unbook' style="border:0; font-size:6pt; height:13px; float:leftt; margin:0; position:absolute; right:200px;"></form>
 </div>{/if}
{/foreach}</div></div>

<br>

{/foreach}
 </div>




<form method='post' action='/id/{$node.node_id}'>

<div id='fix'>
{if $node.node_creator eq $user_id or $node.node_permission eq 'master' or $node.node_permission eq 'op'}<a href='/id/{$node.node_id}/configure'>configure</a>{/if} <a href='#top' class='top'>top</a> <input type='text' name='bookmark_category_id'><input type='submit' name='event' value='set_bookmark_category'></div>
</form>


