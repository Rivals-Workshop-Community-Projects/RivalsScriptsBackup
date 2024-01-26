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
		// Genesis glitch code
		if get_player_color(player_id.player) == 25 && random_func(4+i, 6, 1) == 0{
		    var fs = random_func(0, 128 -1, 1);
		    draw_sprite_part_ext(bubble.sprite_index,bubble.image_index,0,fs, abs(128), random_func(1, 60, 1)+1, (bubble.x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(bubble.sprite_index), bubble.y+fs - sprite_get_yoffset(bubble.sprite_index), 1, 1, random_func(5+i, 2, 1) == 0 ? c_red : c_blue, 0.8);
		}
		
		draw_sprite_ext( bubble.sprite_index,bubble.image_index,bubble.x,bubble.y,bubble.image_xscale,1,0,c_white,player_id.bubble_opacity);
	}
}
//#endregion Drawing Bubbles


