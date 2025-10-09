//
draw_set_halign(fa_center)
draw_set_valign(fa_top)

switch(object_type) {
	case "printer":
		textDraw(x + 1, y - 21, "fName", rarity_colors[rarity], 1000, 1000, 1, true, true, "1 Item(s)");

		draw_sprite_ext(card_info.sprite, card_info.icon, x + 21, y - 44 + sin(get_gameplay_time() / 10) * 4, 2, 2, 0, c_white, true);
		/*
		if (should_draw_cards && card_info != -4) {
			draw_mini(card_info);
		}
		*/
	break;
	case "exit":
		if should_draw_cards {

		} else {
			//Hurry Up
			if (obj_stage_main.round_state_timer >= (obj_stage_main.bazaar_skip_timer * 1.5)) {
				textDraw(x + 1, y - 101, "fName", 	c_white, 1000, 1000, 1, 	true, true, 	string(bazaar_quote));
			} else {
				textDraw(x + 1, y - 101, "fName", 	c_white, 1000, 1000, 1, 	true, true, 	"Welcome to the Brook Bazaar");
				textDraw(x + 1, y - 81, "fName", 	c_white, 1000, 1000, 1, 	true, true, 	"Stand near me for information");
			}
		}
	break;
}


#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

#define draw_mini(_curr) {
	switch(_curr.rarity) {
		case "C":
			var _color = c_white;
			var _rar_spr = 0;
		break;
		case "R":
			var _color = c_blue;
			var _rar_spr = 1;
		break;
		case "E":
			var _color = c_purple;
			var _rar_spr = 2;
		break;
		case "L":
			var _color = c_yellow;
			var _rar_spr = 3;
		break;
	}
	var _x = x;
	var _y = y - 140;
	//var _y = y + 70;
	var _opacity = true;
	
	draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, c_black, _opacity )
	draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, _opacity )
	//
	draw_sprite_ext( sprite_get("icons"), _curr.icon, _x - 64, _y - 18, 2, 2, 0, c_white, true )
	draw_set_halign(fa_left);
	textDraw(_x - 36, _y - 46, "fName", c_white, 20, 150, 1, false, _opacity, "translated_name" in _curr ? _curr.translated_name : _curr.name);
	textDraw(_x - 36, _y - 30, "tinyFont", c_white, 20, 150, 1, false, _opacity, "Max: " + string(_curr.max));			
	draw_set_halign(fa_left);
	//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, false, 1, _curr.desc);
	if ("small_desc" in _curr) {
		textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, false, _opacity, _curr.small_desc);
	}	else {
		textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, false, _opacity, _curr.desc);
		//No Flavor text offline
	}	
}