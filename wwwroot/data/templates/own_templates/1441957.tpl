{get_movement_params children_count=$node.node_children_count}
{include file="modules/header.tpl"}

{if $error eq true}
<center><font style='error'>{$error}</font></center>
{/if}


{if $user_id eq false}
<center>{include file="modules/loginbox.tpl"}</center><br><br>
{/if}

<table width='100%'><tr>

<!--left column-->
<td valign='top' align='center' width='23%'>
{* show node info *}
{include file="modules/node_settings.tpl"}


{* showing poll *}
{include file="modules/get_poll_box.tpl"}
<br>
{*showing bookmark_statistics*}
{include file="modules/get_bookmark_statistics_box.tpl"}
</td>
<!--end of left column-->

<!--main central column-->
<td valign='top'>
{*showing node_content*}
{include file="modules/node_content.tpl"}

<!--end of central column-->
</td></tr></table>

{include file="modules/footer.tpl"}

