{if $header_id neq true}
<html>
<head>
<META http-equiv="Default-Style" content="kyberia">
<meta http-equiv="Content-Type" content="text/html;
charset=windows-1250">
<link rel='stylesheet' title="kyberia" type='text/css'
href='/data/css/kyberia.css'>
<title>analyza dokazala hovno</title>
<script>
function vymena() {ldelim}
document.formular.mail_to.value = document.formular.mail_to.value.toLowerCase() ;
document.images['fricon'].src =
'/images/users/'+document.formular.mail_to.value+'.gif';
{rdelim}

function chngto(name,id) {ldelim}
document.formular.mail_to.value = name ;
name = name.toLowerCase() ;
document.images['fricon'].src = '/images/nodes/'
+id.substr(0,1)+'/'+id.substr(1,1)+'/'+id+'.gif';
{rdelim}
</script>
</head>

<body>
{if $user_id eq true}{* toolbar *}{include file="1549959.tpl"}{/if}
{if $error eq true}<center><span
class='most_important'>{$error}</span></center>{/if}
{if $new_mail eq true}<center><a href='/id/24/' class='mail'>u have
{$new_mail} new mail,last from {$new_mail_name}</a></center>{/if}
<!--<span class='most_important'>dnes v noci od 23:23 bude niekolko hodin
kyberia vypnuta, vdaka za pochopenie</span>-->
{/if}

<table style='width: 100%; align:center;' id='configure'>
<tr><td align='center'>

{if $node.node_creator eq $user_id}
{if $user_id eq false}
<center>{* loginbox *}{include
file="1549885.tpl"}</center><br><br>
{/if}

<form method='post' enctype="multipart/form-data"
action='/id/{$node.node_id}/'>
<table align='center'>
<tr><td><input type='text' name='node_name'
value='{$node.node_name}'>
<td><input type='submit' name='event'
value='configure_node_name'>
<tr><td><select name='node_system_access'>
<option value='public' {if $node.node_system_access eq
'public'}selected{/if}>public</option>
<option value='moderated' {if $node.node_system_access eq
'moderated'}selected{/if}>moderated</option>
<option value='private' {if $node.node_system_access eq
'private'}selected{/if}>private</option>
<option value='cube' {if $node.node_system_access eq
'cube'}selected{/if}>cube</option>
<option value='crypto' {if $node.node_system_access eq
'crypto'}selected{/if}>crypto</option>
</select></td>
<td><input type='submit' name='event'
value='configure_system_access'>
<tr><td><input name='node_external_access' type='checkbox'
value='yes' {if $node.node_external_access eq 'yes'}checked{/if}>
<td><input type='submit' name='event'
value='configure_external_access'>
<tr><td><input type='file' name='description_image'>
<td><input type='submit' name='event'
value='configure_image_new'>
<tr><td><input type='text' name='template_id'
value='{$node.template_id}'>
<td><input type='submit' name='event'
value='configure_template_id'>
</table>
<table><tr><td>apply on vector ??? <input type='checkbox'
name='apply_on_vector'> </td></tr></table>
</form>



<form action='/id/{$node.node_id}/' method='post'>
<table>
<tr><td colspan='2'>vector: {$node.node_vector} </td></tr>
<tr><td>
<input type='text' name='new_parent'
value='{$node.node_parent}'>
</td><td>
<input type='submit' name='event' value='set_parent'>
</td></tr>
<tr><td>
<input type='text' name='external_link'
value='{$node.external_link}'>
</td><td>
<input type='submit' name='event' value='set_external_link'>
</td></tr>
</table>
</form>

<form action='/id/{$node.node_id}/' method='post'>
<table>
<tr><td><input type='text' name='owner'
value='{$node.owner}'><input type='submit' name='event'
value='set_creator'>
</table>
</form>

<!--
<form action='/id/{$node.node_id}/' method='post'>
<table><tr><td>
<select name='template_id'>
{foreach key=key from=$types item=template_id}
<option value='{$key}'>{$template_id}</option>
{/foreach}
</select>
</td>
<td>
<input type='submit' name='event' value='set_type'>
</td></tr></table>
</form>
-->
<form method='post' enctype="multipart/form-data"
action='/id/{$node.node_id}/'>
{if $node.node_system_access eq 'crypto'}crypto password: {$crypto_pass}{/if}
<input type='file' name='data_file'>&nbsp;&nbsp;<input
type='submit' name='event' value='upload_data_file'>
<br><input type='checkbox' name='unzip'>unzip?
<input type='checkbox' name='gallery'>gallery<Br><br>
</form>

{if $user_id eq $node.node_id}
<form action='/id/{$node.node_id}/' method='post'>
<table align='center'>
<tr><td><input type='text' name='k_wallet'
value='{$k_wallet}'></td><td><input type='submit'
name='event' value='k_wallet'></td></tr>
<tr><td><input type='text' name='header_id'
value='{$header_id}'></td><td><input type='submit'
name='event' value='set_header_template'></td></tr>
<tr><td><input type='text' name='listing_amount'
value='{$listing_amount}'></td><td><input type='submit'
name='event' value='set_listing_amount'></td><
<tr><td><select name='listing_order'>
<option value='desc' {if $smarty.session.listing_order eq
'desc'}selected{/if}>najnovsie hore</option>
<option value='asc' {if $smarty.session.listing_order eq
'asc'}selected{/if}>najstarsie hore</option>
</select>
<td><input type='submit' name='event'
value='set_listing_order'></td></tr>
</table>
<br>
<table class='bordered'>
<tr><td>old password</td><td><input name='old_password'
type='password'></td></tr>
<tr><td>new password</td><td><input name='new_password1'
type='password'></td></tr>
<tr><td>new password (again)</td><td><input
name='new_password2' type='password'></td></tr>
<tr><td colspan='2' align='center'><input
type='submit' name='event'
value='set_password'></td></tr>
</table>
</FORM>
{/if}

{/if}

<form method='post'>
template_id: <input type='text' name='add_template_id'> <br>
<input type='submit' name='event' value='addTemplate'>
</form>

{if $node.node_creator eq $user_id or $node.node_permission eq 'master' or
$node.node_permission eq 'op'}
<form method='post' enctype="multipart/form-data"
action='/id/{$node.node_id}/'>
<input type='checkbox' name='no_html' value='yes'>&nbsp;NO
HTML &nbsp;&nbsp;
<input type='checkbox' name='code' value='yes'>&nbsp;code
&nbsp;&nbsp;
<input type='checkbox' name='wiki'
value='yes'>&nbsp;wiki<br><textarea class=node_content
name='node_content'>{$node.node_content|escape:"html"}</textarea><br>
<center><input type='submit' name='event'
value='configure_content'></center>
</form>
<br><br>

<form method='post' action='/id/{$node.node_id}'>
{get_node_commanders}
{include file="1549911.tpl"}
</form>
{/if}

</td></tr>
</table>



<center>&copy; kyberia.sk v2 - ergond's crypt<br>
prevadzkovatel stranky ruci za nic
</center>
<!-- NAJ.sk -->
<noscript>
<img src="http://www.naj.sk/hit?id=10686;n=1" width="1" height="1"
alt="" border="0">
</noscript>
<!-- NAJ.sk - konec -->

</body>
</html>