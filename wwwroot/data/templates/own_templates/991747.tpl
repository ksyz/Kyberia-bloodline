
{get_movement_params children_count=$node.node_children_count}
{include file="modules/header.tpl"}

{if $error eq true}
<center><font style="">{$error}</font></center>
{/if}

{if $user_id eq false}

<center>{include file="modules/loginbox.tpl"}</center><br><br>
{/if}



<!--left column-->

<!--end of left column-->

<!--main central column-->
<table width="100%"><tbody><tr><td align="center" valign="top" width="23%">
{* show node info *}
{include file="modules/node_settings.tpl"}


{* showing poll *}
{include file="modules/get_poll_box.tpl"}
<br>
{*showing bookmark_statistics*}
{include file="modules/get_bookmark_statistics_box.tpl"}
</td><td valign="top" width="66%">
{*showing node_content*}
{include file="modules/node_content.tpl"}
{*showing form for adding child node*}

<form enctype="multipart/form-data" action="/id/{$node.node_id}/&lt;br /&gt;
{if $action neq false}{$action}{/if}" method="post" name="formular">

{if $permissions.w eq true}{include file="modules/addnode.tpl"}{/if}
{include file="modules/get_threaded_children.tpl"}
</form>
<!--end of central column-->

</td></tr></tbody></table>

{include file="modules/footer.tpl"}