<?php

function set_password() {
	global $db,$error,$error_messages;
	$old_password=$_POST['old_password'];
	$new_password1=$_POST['new_password1'];
	$new_password2=$_POST['new_password2'];

	if ($new_password1!=$new_password2) {
		$error=$error_messages['NEW_PASSWORD_MISMATCH'];
		return false;
	}
	$user_id=$_SESSION['user_id'];
	$login=$_SESSION['user_name'];
	if (!$user_id) {
		return false;
	}

	//old password check

        $q="select * from users where login='$login'";
        $set=$db->query($q);
        $set->next();
        if ($set->getString('password')!=md5($old_password)) {
                $error="bad password";
		return false;
	}

	//changing in LDAP
        require(SYSTEM_ROOT.'/inc/ldap.inc');
	LDAPuser::change_pass_forced($user_id,$new_password1);

	//changing in MySQL
	$password=md5($new_password1);
	$db->query("update users set password='$password' where user_id='$user_id'");
}

?>