{get_movement_params children_count=$node.node_children_count}
{* header *}{include file="1549864.tpl"}
<table><tr><td valign='top' width='23%'>{* get_userlist *}{include file="1549848.tpl"}</td>
<td>
<center><span class='important'>
<span class='important'>newly CREATED K-valued nodes
<form method='post'>Interval: <input type='text' name='interval'><input type='submit' value='Days'></form>
<br/>newly K-VALUED nodes <a href='/id/788016'>here</a>
</span>
{get_k}
</span>
{* movement *}{include file="1549913.tpl"}
<br style='clear:left;'>
</center>

{foreach from=$get_k item=k}
{if $fook[$k.node_parent] neq true and $fook[$k.node_id] neq true and $ignore[$k.node_creator] neq true}
<table class='bordered'>
<tr>
<td align='center' rowspan='2' valign='top'>
<img border='0' hspace='5' width='50' src={get_image_link id=$k.node_creator}>
<span class='most_important'>{$k.k} k</span>
<form action='/id/{$k.node_id}' method='post'><input type='submit' name='event' value='K'></form>
</td>
<td class='header' width='100%'><a href='/id/{$k.node_id}/'>{$k.node_name}</a>
in <a href='/id/{$k.node_parent}'>{$k.parent_name}</a> by <a href='/id/{$k.node_creator}'>{$k.creator}</a></td>
<tr><td valign='top'>
{if $k.node_parent eq 63837}<h1>Uchylarium content detected.Not showing....</h1>
{else}{$k.node_content|stripslashes|nl2br}
{/if}</td></tr>
</tr>
</table>
<br>
{/if}
{/foreach}
</td></tr></table>
{*footer*}{include file="1549377.tpl"}