{get_children listing_amount='232323' offset=$offset types=$children_types}

{foreach from=$get_children item=child}
{$child.depth}

{if $child.template_id eq 2}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	nodeshell:: <a class='important' href='/id/{$child.node_id}'>{$child.node_name}</a> ::
	(<a href='/id/{$child.node_id}/23'>posledne</a>,
	<a href='/id/{$child.node_id}/15'>k</a>)
	{if $child.lastdescendant_created > $child.last_visit}<span class='most_important'>&nbsp;&nbsp;NEW DESCENDANT</span>{/if}
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} --<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}
{elseif $child.template_id eq 3}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	&nbsp;forum:: <a href='/id/{$child.node_id}'>{$child.node_name|strip_tags}</a> ::
	({$child.node_children_count} children{if $child.node_user_subchild_count} <span class='most_important'> {$child.node_user_subchild_count} NEW</span>{/if})
	{if $child.lastdescendant_created > $child.last_visit}<span class='most_important'>&nbsp;&nbsp;NEW DESCENDANT</span>{/if}
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} --<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}
{elseif $child.template_id eq 5}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	&nbsp;article:: <a class='important' href='/id/{$child.node_id}'>{$child.node_name}</a>
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} --<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}
{elseif $child.template_id eq 12}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	&nbsp;data:: <a class='important' href='/id/{$child.node_id}'>{$child.node_name}</a>
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} --<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}
{elseif $child.template_id eq 14}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	&nbsp;template:: <a class='important' href='/id/{$child.node_id}'>{$child.node_name}</a>
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} -<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}

{elseif $child.template_id eq 4}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	&nbsp;submission:: <a class='important' href='/id/{$child.node_id}'>{$child.node_name}</a>
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} --<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}
{else}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$child.node_id}' name='node_chosen[]'>&nbsp;
	&nbsp;node:: <a class='important' href='/id/{$child.node_id}'>{$child.node_name}</a>
	(<a href='/id/{$child.node_creator}'>{$child.login}</a>){if $child.node_creator eq $user_id} --<a href='/id/{$child.node_id}/1961033'>conf</a>{/if}
{/if}
&nbsp;{if $child.k > 0}[{$child.k}K]{/if}<br/>
{/foreach}

{get_linked_nodes orderby=$listing_order}
{foreach from=$get_linked_nodes item=link}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$link.node_id}' name='node_chosen[]'>&nbsp;
	link:: <a class='important' href='/id/{$link.node_id}'>{$link.node_name}</a> ::
	(<a href='/id/{$link.node_id}/23'>posledne</a>,
	<a href='/id/{$link.node_id}/15'>k</a>)
	{if $link.synapse_created > $link.last_visit}<span class='most_important'>&nbsp;&nbsp;NEW LINK</span>{/if}
	(<a href='/id/{$link.synapse_creator}'>{$link.login}</a>){if $link.node_creator eq $user_id} --<a href='/id/{$link.node_id}/1961033'>conf</a>{/if}<br>
{/foreach}

{foreach from=$get_linked_bookmarks item=link}
<input style='height: 11px; width: 11px;' type='checkbox' value='{$link.node_id}' name='node_chosen[]'>&nbsp;
	bookmark:: <a class='important' href='/id/{$link.node_id}'>{$link.node_name}</a> ::
	(<a href='/id/23/{$link.node_id}'>posledne</a>,
	<a href='/id/15/{$link.node_id}'>k</a>)
	{if $link.synapse_created > $link.last_visit}<span class='most_important'>&nbsp;&nbsp;NEW LINK</span>{/if}
	(<a href='/id/{$link.synapse_creator}'>{$link.login}</a>){if $link.node_creator eq $user_id} --<a href='/id/{$link.node_id}/1961033'>conf</a>{/if}<br>
{/foreach}