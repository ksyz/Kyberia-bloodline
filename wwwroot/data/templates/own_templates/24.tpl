{if $header_id neq true}{include file="1549864.tpl"}{/if}

<table width=100%>
<tr><td valign='top' width=23%>
{include file="1549793.tpl"}
</td>
<td valign='top'>
<form enctype="multipart/form-data" action="/id/{$node.node_id}/{if $action neq false}{$action}{/if}" method="post" name="formular" id="formular">
{include file="1549897.tpl"}
{include file="1549888.tpl" listing_amount=$listing_amount offset=$offset}
</form>
</td></tr></table>

{include file="1549377.tpl"}