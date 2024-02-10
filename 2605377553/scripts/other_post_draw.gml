if malsick == true
{
with (other_player_id)
    {
    	
    	var a = other.statuslog_timer/10;
    	draw_sprite_ext(sprite_get("sick"), image_index, other.x-20, other.y-20, 1, 1, 0, c_white, a);
    	
        if other.statuslog_timer >= 1
    	{
    		var charname = get_char_info(other.player,INFO_STR_NAME)
        	textDraw(other.x,other.y+8, "fName", c_white, 0, 1000, 1, true, a, charname);
        	if (get_char_info( other.player, INFO_PLURAL) == true
        	|| get_char_info(other.player,INFO_STR_NAME) == "Ori & Sein") {
        		textDraw(other.x,other.y+24, "fName", c_white, 0, 1000, 1, true, a, "were Hexed with Nausea!");
        	} else {
        		textDraw(other.x,other.y+24, "fName", c_white, 0, 1000, 1, true, a, "was Hexed with Nausea!");
        	}
    	}
    }
}

if (strongStunnedTimer > 0)
{
	var a = 1;
	var centerX = x;
	var distX = 20;//the positions from each side to move from
	var angle = point_direction(x,y,x+distX,y-char_height)+360;
	with(other_player_id)
	{
	
		draw_sprite_ext(sprite_get("chain_link"), get_gameplay_time()/10, centerX-distX, other.y, 1, 1, angle, c_white, a);
		draw_sprite_ext(sprite_get("chain_link"), get_gameplay_time()/10, centerX+distX, other.y, 1, 1, 180-angle, c_white, a);
	}
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

