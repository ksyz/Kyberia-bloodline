
{* header *}{include file="1549864.tpl"}

{if $error eq true}
<center><font style='error'>{$error}</font></center>
{/if}

{if $user_id eq false}
<center>{* loginbox *}{include file="1549885.tpl"}</center>

{else}

<table width='100%'><tr>


<!--main central column-->
<td valign='top'>

<div align="center">
  <p><h3>Mireille</h3></p>
  <p><img src='http://kyberia.sk/images/nodes/1/8/1870296.gif'></p>
  <p>{include file="1549916.tpl"}
    {* shows what other friends think about users *}
    {get_children_by_external_link external_link='session://friend'
    listing_amount=$listing_amount offset=$offset orderby=desc}
    {foreach from=$get_children_by_external_link item=child}
    {/foreach} </p>
</div>
<!--end of central column--></td>
</tr></table>
{/if}

