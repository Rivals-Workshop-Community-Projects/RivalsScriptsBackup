//postdraws (draws over) other players
if ("twenny_text_timer" not in self || !instance_exists(other)) exit;
	
if (twenny_text_timer > 0 && twenny_hex_owner == other_player_id.player) with (other_player_id) {
    var a = other.twenny_text_timer > 10 ? 1 : other.twenny_text_timer/10;
    
	draw_sprite_ext(sprite_get("sick"), image_index, other.x-20, other.y-20, 1, 1, 0, c_white, a);
	
	var charname = get_char_info(other.player,INFO_STR_NAME)
	textDraw(other.x,other.y+8, "fName", c_white, 0, 1000, 1, true, a, charname);
	if (get_char_info( other.player, INFO_PLURAL) == true
	|| get_char_info(other.player,INFO_STR_NAME) == "Ori & Sein") {
		textDraw(other.x,other.y+24, "fName", c_white, 0, 1000, 1, true, a, "were Hexed with Brittle!");
	} else {
		textDraw(other.x,other.y+24, "fName", c_white, 0, 1000, 1, true, a, "was Hexed with Brittle!");
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