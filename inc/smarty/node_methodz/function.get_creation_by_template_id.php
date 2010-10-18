<?php

	function smarty_function_get_creation_by_template_id($params,&$smarty) {

		if ($params['listing_amount']=='all') $listing_amount='2323';
		else $listing_amount=$params['listing_amount'];

		if (empty($params['offset'])) $offset=0;
		else $offset=$params['offset'];

		global $db,$node;
		if (is_numeric($params['creator_id'])) $creator_id=$params['creator_id'];
		else $creator_id=$node['node_id'];
		$template_id=$_GET['action'];
		$user_id=$_SESSION['user_id'];

		$q="select parent.node_name as parent_name,nodes.*  from nodes left  join nodes as parent on parent.node_id=nodes.node_parent where nodes.node_creator='$creator_id'  and
nodes.template_id='$template_id' and
nodes.node_system_access!='private' order by
nodes.node_created desc LIMIT $offset,$listing_amount";
//		echo $q;
		$set=$db->query($q);
		while ($set->next()) $pole[]=$set->getRecord();
		$smarty->assign('get_creation_by_template_id',$pole);
	}
?>