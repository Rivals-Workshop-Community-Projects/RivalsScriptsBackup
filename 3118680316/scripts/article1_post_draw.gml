// a1 post draw

//#region Drawing Bubbles
var bubble_list_size = ds_list_size(player_id.soap_bubbles);

var i = 0;
for (i = 0; i < bubble_list_size; i++) 
{
	var bubble = player_id.soap_bubbles[|i];
	
	// DEBUG
	// if(player_id.permitted_bubble == bubble)
	// {
	// 	draw_rectangle_color(bubble.x-(10*bubble.size),bubble.y-(10*bubble.size),bubble.x+(10*bubble.size),bubble.y+(10*bubble.size),c_green,c_green,c_green,c_green,true);
	// }
	
	if(!bubble.flag_delete)
	{
		draw_sprite_ext( bubble.sprite_index,bubble.image_index,bubble.x,bubble.y,bubble.image_xscale,1,0,c_white,player_id.bubble_opacity);
	
		if(bubble.hitpause == 0)
		{
			if(bubble.image_index > sprite_get_number(bubble.sprite_index)) bubble.image_index = 0;
		}
	}
}
//#endregion Drawing Bubbles


