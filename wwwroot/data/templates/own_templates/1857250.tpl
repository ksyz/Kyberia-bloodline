{get_movement_params children_count=$node.node_children_count}
{include file="modules/header.tpl"}

{get_nodes_by_parent parent=21 listing_amount=$listing_amount offset=$offset}

{foreach from=$get_nodes_by_parent item=child}


<table>
<tr>
<td valign='top' rowspan='2'><img width='50' hspace='5' src='{get_image_link id=$child.node_creator}'>&nbsp;</td>
<td valign='top' width='100%'>
<table width='100%'><tr class='header' valign='top'>
<td align='center'>
<b><a href='/id/{$child.node_id}'>{$child.node_name}</a></b><br>
(written by <a href='/id/{$child.node_creator}'>{$child.login}</a> ,
viewed {$child.node_views} times, {$child.node_children_count} submissions
)
<tr><td>{$child.node_content|truncate:230|stripslashes}</td></tr>
</table>
</table>
{/foreach}

{include file="modules/footer.tpl"}

<form method='post' action='/id/{$node.node_id}'>
<br><br><center>pridaj dennik<br><br>{include file="modules/addnode.tpl"}</center>
</form>
