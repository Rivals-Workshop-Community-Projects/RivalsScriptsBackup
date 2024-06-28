/*
*             ----------- post_draw.gml ------------
*       Use this file to draw sprites on top of your character.
*       Example: This will draw sandberts jab projectile on top of your character.
*       draw_sprite_ext(sprite_get("jab_proj"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
*/

//pokemon code
if(display_level > 0){
	shader_start();
	draw_sprite_ext(sprite_get("level"), 0, x, y-char_height*1.5, 1, 1, 0, c_white, 1);
	shader_end();
}


//
if (ssl_hud_toggle) {
	//get_player_name( player )
	var _name = get_player_name(player)
	var _name_width = 0; 
	for (var i = 0; i < string_length(_name); i++) {
		var _char = string_char_at(_name, i)
		if (ord(_char) >= ord("A") && ord(_char) <= ord("Z")) {
			if (_char == "W" || _char == "M") {
				_name_width += 5;
			} else {
				_name_width += 3;
			}
		} else if (ord(_char) >= ord("0") && ord(_char) <= ord("9")) {
			_name_width += 3;
		} else {
			_name_width += 5;
		}
		if (i != 0) {
			_name_width++
		}
	}
	_name_width += 2;
	
	shader_start();
	draw_set_halign(fa_center);
	var _show_bg = (get_player_damage(player) >= 100);
	var _damage_width = _show_bg ? 17 : 0
	
	//ssl_hud_colors
	var _offset_x = x + 0;
	var _offset_y = y - 4;
	//Arrow
	draw_sprite_ext(sprite_get("ssl_hud_arrow"), 0, _offset_x - 10, _offset_y - char_height - 30, 4, 4, 0, c_white, 1);
	//Name
	switch(_name) {
		case "":
		case "P1":
		case "P2":
		case "P3":
		case "P4":	
			_offset_y += 24;
		break;
		default:
			rectDraw(_offset_x - _name_width * 2, _offset_y - char_height - 30, _offset_x + (_name_width * 2) - 1, _offset_y - char_height - 59, ssl_hud_colors[0]);
			textDraw(_offset_x + 2, _offset_y - char_height - 56, "fName", ssl_hud_colors[3], 100, 100, 2, false, true, _name)
		break;	
	}
	//Damage
	rectDraw(_offset_x - _damage_width * 2, _offset_y - char_height - 54, _offset_x + (_damage_width * 2) - 1, _offset_y - char_height - 83, ssl_hud_colors[0]);
	textDraw(_offset_x + 2, _offset_y - char_height - 80, "fName", ssl_hud_colors[3], 100, 100, 2, !_show_bg, true, string(get_player_damage(player)) + "%")
	
	
	shader_end();
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	var _outline_color = ssl_hud_colors[0];
    draw_set_font(asset_get(argument[2]));
    if argument[7]{ //outline. doesn't work lol
        for (i = -1; i < 2; i++){
            for (j = -1; j < 2; j++){
                draw_text_ext_transformed_color(argument[0] + i * 4, argument[1] + j * 4, argument[9], argument[4], argument[5], argument[6], argument[6], 0, _outline_color, _outline_color, _outline_color, _outline_color, 1);
            }
        }
    }
    draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
    return string_width_ext(argument[9], argument[4], argument[5]);

    //FONT LIST:
    //medFont
    //fName
    //roundFont
    //roaMBLFont
    //roaLBLFont
    //tinyFont
}

#define rectDraw(x1, y1, x2, y2, color)
{
    draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
}