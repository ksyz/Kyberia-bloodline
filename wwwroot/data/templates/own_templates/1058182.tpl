{get_movement_params children_count=$node.node_children_count}
{* header *}{include file="1549864.tpl"}

<table><tr><td align='top'>
{* node_settings *}{include file="1549925.tpl"}
</td><td>
<form method='post'>
<table align='center'><tr>
<td><input type='hidden' name='get_children_offset' value='{$offset}'></td>
<td><input type='submit' name='get_children_move' value='<'</td>
<td><input type='submit' name='get_children_move' value='>'</td>
</tr></table>
</form>

{get_linked_nodes}
	<br><center><span class='important' align='center'>latest forumz</span></center>
	{foreach from=$get_linked_nodes item=child }
		<table width='100%' class='bordered'>
			<tr><td><img width=75 src='{get_image_link id=$child.node_id}' align='left' hspace='5' vspace='5' border='0'>
			<a href='/id/{$child.node_id}'>{$child.node_name}</a><br>
			{$child.node_content|truncate:330|stripslashes|strip_tags:false}
			<br><br><i>node created by <a href='/id/{$child.node_creator}'>{$child.login}</a></i>
			</td></tr>
		</table><br>
	{/foreach}

</td></tr></table>
