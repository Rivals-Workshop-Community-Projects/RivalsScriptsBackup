var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "2.0.2";
patch_day = "11";
patch_month = "APR";

var num_alts = 32;
var alt_cur = get_player_color(player);

/*
if "timer" !in self {
	timer = 0;
} else {
	timer += 1
	print(timer);
}
*/
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Hatsune Miku" //Hatsune Miku
alt_name[1]  = "Strawberry"
alt_name[2]  = "Green Apple"
alt_name[3]  = "Blueberry"
alt_name[4]  = "Cookies & Cream"
alt_name[5]  = "Grape" //This is just a purple alt and if anyone says otherwise I am going to remove it.
alt_name[6]  = "Banana" //Hiyoko Saionji
alt_name[7]  = "Cupcake" //Natsuki
alt_name[8]  = "Bubblegum"
alt_name[9]  = "Mint"
alt_name[10] = "Lemon" //Rin & Len
alt_name[11] = "Cherry" //Teto
alt_name[12] = "Coconut" //Donkey Kong
alt_name[13] = "Bread"
alt_name[14] = "Chestnut" //Chihiro Fujisaki
alt_name[15] = "Carrot" //Creeper Mob Talker

alt_name[16]  = "Prune" //Cave Spider Mob Talker
alt_name[17]  = "Peach" //Princess Peach
alt_name[18]  = "Daisy"
alt_name[19]  = "Lavender"
alt_name[20]  = "Three Musketeers"
alt_name[21]  = "Watermelon"
alt_name[22]  = "Candy" //Callie
alt_name[23]  = "Cotton Candy"
alt_name[24]  = "Pink Lemonade"
alt_name[25]  = "Funky!"
alt_name[26]  = "Lucina"
alt_name[27] 	= "Chrom"
alt_name[28] 	= "Melody Rhythm"
alt_name[29] 	= "Ninja"
alt_name[30] 	= "Photographer"
alt_name[31] 	= "Rainbow"

//Dino Gaming
//dino_game()


//Patch
	//sprite_change_offset("taunt_dance", 162, 192);
	//draw_sprite_ext(sprite_get("taunt_dance"), alt_cur, x + 192, y, 1, 1, 0, c_white, 1);
//if !game_show {
	draw_set_halign(fa_left);

	textDraw(temp_x + 6, temp_y + 35, "fName", c_white, 0, 1000, 1, true, 1, patch_ver);

	textDraw(temp_x + 6, temp_y + 51, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
//}


//Alt

if (!browser_show) {
	for(i = 0; i < num_alts; i++){
		var draw_color = (i == alt_cur) ? c_white : c_gray;
		if i > 15 {
			var draw_x = temp_x + 2 + 10 * (i - 16);
			rectDraw(draw_x, temp_y - 16, draw_x + 7, temp_y - 13, draw_color);
		} else {
			var draw_x = temp_x + 2 + 10 * i;
			rectDraw(draw_x, temp_y - 22, draw_x + 7, temp_y - 19, draw_color);
		}
	}
}

draw_set_halign(fa_left);

//include alt. name
//if !game_show {
	textDraw(temp_x + 6, temp_y + 67, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);
//}

//exclude alt. name
//textDraw(temp_x + 6, temp_y + 82, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

//Browser

db_show();
	
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	draw_sprite_ext(sprite_get("css_browser"), 1, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("css_browser"), 0, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
}



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

return string_width_ext(argument[9], argument[4], argument[5]);




#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);

#define db_show() {
	var temp_x = x + 8;
	var temp_y = y + 9;

	if browser_show {
		draw_sprite_ext(sprite_get("css_window"), 0, x, y, 1, 1, 0, c_white, 1);
		
		//Search 1
		/*
		successful_search = 0;
		for (k = 0; k < search_max; k++) { //Max Results
			if (k < array_length(info_text)) { //Array Count
				if (search_string(info_text[k], search_term)) {
					textDraw(temp_x + 4, temp_y + 33 + successful_search * 14, "fName", c_white, 0, 200, 1, true, 1, info_text[k]);
					successful_search += 1;
				}
			}
		}
		*/
		
		//Page Change
		if (menu_rb_pressed) {
			menu_rb_pressed = false;
			sound_play(asset_get("mfx_forward"));
			search_page += 1;
			new_input()
		}
		if (menu_lb_pressed) {
			menu_lb_pressed = false;
			sound_play(asset_get("mfx_forward"));
			search_page -= 1;
			new_input()
		}
		if (array_length(used_pages) && array_length(used_pages)) {
			search_page = search_page % array_length(used_pages);
			if (search_page < 0) {
				search_page = array_length(used_pages) - 1;
			}
		} else {
			search_page = search_page % array_length(pages);
			if (search_page < 0) {
				search_page = array_length(pages) - 1;
			}
		}

		//Menu Typing
		if (keyboard_lastkey != -1) {
			print(keyboard_lastkey);
			if (
				keyboard_lastkey == 8 || //Backspace
				(keyboard_lastkey >= 65 && keyboard_lastkey <= 90) || //Letters
				(keyboard_lastkey >= 48 && keyboard_lastkey <= 57) || //Numbers
				(keyboard_lastkey >= 96 && keyboard_lastkey <= 105) //Numpad
			) 
			{ //Keyboard Check
				search_page = 0;
				switch(keyboard_lastkey) {
					case 8: //backspace
						search_term = string_delete( search_term, string_length(search_term), 1 );
						sound_play(asset_get("mfx_back"));
					break;
					default: //Letter Key
						search_term += keyboard_lastchar;
						sound_play(asset_get("mfx_coin"));
					break;
				}
			}
			keyboard_lastkey = -1;
			new_input()
		}

		//Page Type
		draw_set_halign(fa_center);
		textDraw(temp_x + 100, temp_y - 22 + 0 * 14, "fName", c_white, 14, 200, 1, false, 1, browser_type);
		draw_set_halign(fa_left);
		if (browser_type == "Info Deluxe") {
			if (array_length(used_pages)) {
				textDraw(temp_x + 4, temp_y + 33 + 0 * 14, "fName", c_white, 14, 200, 1, false, 1, used_pages[search_page, 0]);
				textDraw(temp_x + 4, temp_y + 33 + 1 * 14, "fName", c_white, 14, 200, 1, false, 1, used_pages[search_page, 1]);
				draw_set_halign(fa_right);
				textDraw(temp_x + 40, temp_y - 20 + 0 * 14, "fName", c_white, 14, 200, 1, false, 1, string(search_page + 1) + "/" + string(array_length(used_pages)));
				draw_set_halign(fa_left);
			} else if (search_term == "") {
				//array_push(used_pages, [pages[0, 0], pages[0, 1]]); //Default
				textDraw(temp_x + 4, temp_y + 33 + 0 * 14, "fName", c_white, 14, 200, 1, false, 1, pages[search_page, 0]);
				textDraw(temp_x + 4, temp_y + 33 + 1 * 14, "fName", c_white, 14, 200, 1, false, 1, pages[search_page, 1]);
				draw_set_halign(fa_right);
				textDraw(temp_x + 40, temp_y - 22 + 0 * 14, "fName", c_white, 14, 200, 1, false, 1, string(search_page + 1) + "/" + string(array_length(pages)));
				draw_set_halign(fa_left);
			}
		} else if (browser_type == "Frame Data") {
			//draw_sprite_ext(_sprite, (text_timer / idle_anim_speed) % idle_frame_count, temp_x + 100, temp_y + 100, .5 + (small_sprites * .5), .5 + (small_sprites * .5), 0, c_white, 1);
			//Attack Sprite
			draw_sprite_ext(hitbox_list[0, 1], hitbox_list[0, 2], temp_x + 100, temp_y + 100, .5 + (small_sprites * .5), .5 + (small_sprites * .5), 0, c_white, 1);
			//Hurtbox
			draw_sprite_ext(hitbox_list[0, 2], hitbox_list[0, 2], temp_x + 100, temp_y + 100, .5 + (small_sprites * .5), .5 + (small_sprites * .5), 0, c_white, .8);
			//Hitbox
			draw_sprite_ext(
				sprite_get("boxCircle"), 
				0,
				temp_x + 100 + hitbox_list[0, css_x] / 2, 
				temp_y + 100 + hitbox_list[0, css_y] / 2, 
				hitbox_list[0, css_w] / 400, 
				hitbox_list[0, css_h] / 400,  
				0, 
				c_white, 
				.5
			);
			//draw_sprite_ext(_sprite, 2, temp_x + 100, temp_y + 100, .5 + (small_sprites * .5), .5 + (small_sprites * .5), 0, c_white, 1);
		}
		textDraw(temp_x + 4, temp_y + 33 + (search_max) * 14, "fName", c_white, 0, 200, 1, false, 1, ">" + string(search_term));
		/*
		if ((floor(text_timer / 30) % 2)) {
			textDraw(temp_x + 12 + (string_length(search_term) * 8), temp_y + 35 + (search_max) * 14, "fName", c_white, 0, 200, 1, true, 1, "_");
		}
		*/
	} 
}

#define new_input() {
	successful_search = 0;
	used_pages = [];
	for (k = 1; k < array_length(pages); k++) { //Max Results
		if (k < array_length(pages)) { //Array Count
			if (search_string(pages[k, 0], search_term) || search_string(pages[k, 1], search_term)) {
				//textDraw(temp_x + 4, temp_y + 33 + successful_search * 14, "fName", c_white, 0, 200, 1, true, 1, info_text[k]);
				array_push(used_pages, [pages[k, 0], pages[k, 1]])
				successful_search += 1;
			}
		}
	}
}

#define search_string(_str, _search) {
	//print("TESTING THE STRING: " + string(_str));
	_upper = string_upper(_search);
	_lower = string_lower(_search);
	var _length = 1;
	for (zi = 1; zi <= string_length(_str); zi++) { //Searching each letter in a string
		for (zj = 0; zj <= string_length(_search); zj++) { //Searching from each letter that is in the search term
			//print(string_char_at(_str, zi + zj) + string_char_at(_search, _length))
			if (string_char_at(_str, zi + zj) == string_char_at(_upper, _length) || string_char_at(_str, zi + zj) == string_char_at(_lower, _length)) { //Searches if char is the letter regardless of case.
				//print("Next")
				if (_length >= string_length(_search)) { //Search Successful
					//print(string_length(_search))
					//print("Return: " + string(_str));
					return true;
				}
				_length += 1;
			} else {			
				zj = string_length(_search);
			}
		}		
		//Search Reset
		_length = 1;
	}
	return false;
}