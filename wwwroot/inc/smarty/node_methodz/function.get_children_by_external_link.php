<?php
function smarty_function_get_children_by_external_link($params,&$smarty) {
	global $db,$node;

	if ($params['orderby']=='desc') $orderby="desc";
	$external_link=$params['external_link'];

	if ($params['listing_amount']=='all') $listing_amount='23232323232323323';
	else $listing_amount=$params['listing_amount'];

	if (empty($params['offset'])) $offset=0;
	else $offset=$params['offset'];

	if (empty($params['orderby_type'])) $orderby_type = 'node_created';
	else $orderby_type = $params['orderby_type'];

	// if (!$params['parent_id']) {
	$parent_id=$node['node_id'];
	// }
	// else $parent_id=$params['parent_id'];

	$user_id=$_SESSION['user_id'];

	$q="select users.*,nodes.* from nodes left
join users on users.user_id=nodes.node_creator where node_parent='$parent_id'
and external_link='$external_link' order by $orderby_type $orderby LIMIT $offset,$listing_amount";

	$set=$db->query($q);
	while ($set->next()) $pole[]=$set->getRecord();
	$smarty->assign('get_children_by_external_link',$pole);
}
?>
