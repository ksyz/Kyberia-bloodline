{get_nodes_by_parent parent=1662468 listing_amount=1 offset=0}
{section name='node' loop=$get_nodes_by_parent start=0 max=1}
{explode string=$get_nodes_by_parent[node].node_content separator=';'}
{section name='link' loop=$explode start=0}
{/section}
{/section}
{math equation="x - 1" x=$smarty.section.link.loop assign='max'}
{rand min=0 max=$max}

<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0' width='468' height='60'><param name='movie' value='{$explode[$rand]}'><param name='quality' value='high'><embed src='{$explode[$rand]}' quality=high width='468' height='60' type='application/x-shockwave-flash' pluginspace='http://www.macromedia.com/go/getflashplayer'></embed></object>
