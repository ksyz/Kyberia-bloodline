<html>
<head>
<meta http-equiv="Cache-Control" content="Public">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
<link href='http://www.lidldollys.com/users/ach/truu.css' rel='stylesheet' type='text/css'>
<!--
YOU CAN PUT YOUR OWN CSS SKIN HERE!!!
<link rel='stylesheet' type='text/css' href='/data/css/zabke.css'>
-->
<title>kyb�rija.sk: chat pre cel� rodinu</title>
{if $node.node_name eq 'mail'}
<script>
function vymena() {ldelim}
document.formular.mail_to.value = document.formular.mail_to.value.toLowerCase() ;
document.images['fricon'].src = '/images/users/'+document.formular.mail_to.value+'.gif';
{rdelim}

function chngto(name,id) {ldelim}
document.formular.mail_to.value = name ;
name = name.toLowerCase() ;
document.images['fricon'].src = '/images/nodes/' +id.substr(0,1)+'/'+id.substr(1,1)+'/'+id+'.gif';
{rdelim}
</script>
{/if}


</head>

<body>
<!--<center><span align='center' class='most_important'>42</span></center>-->
<!-- here you can realize yourself -->
<center>
<form enctype="multipart/form-data" action='/id/193/' method='post'>
<a href='/id/1/'>hlavn�</a> ---
<a href='/id/101/'>klubostrom</a> ---
<a href='/id/19'>booknut�</a> ---
<a href='/id/24'><span class='most_important'>po�t�</span></a> ---
<a href='/id/23'>posledn�</a> ---
<a href='/id/15'>karma</a> ---
<a href='/id/27'>akt�vny</a> ---
<!-- <a href='/id/20'>clanky</a> --- -->
<a href='/id/21'>�erven� kni�nica</a> ---
<a href='/id/29'>rss k�menie</a> ---
<a href='/id/25'>vyh�ad�vanie</a> ---
<a href='/id/1017832'>help klub</a> ---
<a href='/id/{$user_id}/configure'>nastavenia</a> ----
<form><!--<input type='submit' value='logout' name='event' tabindex='23'>�s? het<br>-->
<BUTTON name="event" value="logout" type="submit">�s? het</BUTTON>
</center>
</form>
{if $new_mail eq true}
<center><a href='/id/24' class='mail'>u have {$new_mail} new mail,last from {$new_mail_name}</a></center>
{/if}

{if $error eq true}
<center><span align='center' class='most_important'>{$error}</span></center>
{/if}





























