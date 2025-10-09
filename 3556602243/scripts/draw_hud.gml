//draw_debug_text( x + 200, y + 200, string( obj_stage_article_solid.stateMoveTimer ));
/*
//Temporary Code to create the number image
draw_sprite_ext(sprite_get("plat_mask"), 0, 480, 0, 10, 20, 0, c_white, true)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
for (var i = 0; i <= 99; i++) {
	textDraw(20 + (i % 10) * 30, 20 + floor(i / 10) * 14, "fName", c_white, 20, 500, 1, true, 1, "x" + string(i));
}

exit;
*/

//tierlist maker
/*
if true {
	tierlist_maker();
	exit;
}
*/
//if (true) {
//	var _icon_offset = 0;
//	rectDraw(0, 0, 1000, 1000, c_lime);
//	_icon_offset = draw_pool_icons(items_custom_commons, _icon_offset, 0, 30);
//	_icon_offset = draw_pool_icons(items_custom_rares, _icon_offset, 0, 30);
//	_icon_offset = draw_pool_icons(items_custom_epics, _icon_offset, 0, 30);
//	_icon_offset = draw_pool_icons(items_custom_legends, _icon_offset, 0, 30);
//	exit;
//}
//
//textDraw(100, 100, "font_chinese", c_white, 1000, 1000, 1, false, true, "abc你好34")
//exit;


//if (practice_mode && round_state != "alive") || round_state == "game_over" { //Final Graph Test
var _outline_spr = sprite_get("icons_outline");
var _num_spr = sprite_get("lag_numbers");
var _spr_black = sprite_get("sprblack");
var _icon = sprite_get("icons");


draw_set_halign(fa_center)
draw_set_valign(fa_top)

//print([real_world_time_current, real_world_time_start])
var _seconds = floor(real_world_time_current - real_world_time_start) % 60;
var _minutes = floor((real_world_time_current - real_world_time_start) / 60);

var _new_line = chr(10);
var _tab = chr(9);
var _quot = chr(39);
//
textDraw(480, 10, "fName", c_white, 20, 500, 1, true, 1, string(_minutes) + ":" + string(_seconds <= 9 ? "0" + string(_seconds) : _seconds) );
//

#region //Final Graphs
if (round_state == "game_over") { //Final Graph Test
	//Results Menu
	var _bar = 500;
	_max = end_of_game_max;
	var _x = 480
	var _y = 60
	rectDraw(_x - _bar / 2, _y + 5, _x + _bar / 2, _y + 10, c_maroon)
	rectDraw(_x - _bar / 2, _y + 5, (_x - _bar / 2) + (end_of_game_time / _max) * (_bar + 1), _y + 10, c_red)
	//
	textDraw(480, 30, "fName", c_white, 20, 500, 1, true, 1, "Results Screen" );
	textDraw(480, 50, "fName", c_white, 20, 500, 1, true, 1, "Hold Attack/Special/Jump/Shield/Taunt to End Game" );
	textDraw(480, 80, "fName", c_white, 20, 500, 1, true, 1, "Press Left/Right to change Graph" );
	//Graphs
	//draw_graph(obj_stage_main.final_graph_results, ["Round Number", "Total Points"]);
	//draw_graph();
	//draw_graph_ext(final_graph_points)
	for (var i = 0; i < array_length(final_graph); i++) {
		//	var _x = 130;
		//var _y = 540 - 80;
		if (i == selected_final_graph) { 
			var _color = c_white;
		} else {
			var _color = c_gray
		}
		draw_sprite_ext(final_graph[i][0, 1], final_graph[i][0, 2], 150 + (i * 40), 150, 2, 2, 0, _color, true);
	}
	//print(final_graph[i][0, 0])
	
	switch (final_graph[selected_final_graph][0, 0]) {
		case "Points":
		case "Items":
		case "Luck":
		case "Time":
			draw_graph_ext(final_graph[selected_final_graph]);
		break;
		default:
			draw_graph_box(final_graph[selected_final_graph], final_graph[selected_final_graph][0, 3]);
		break;
	}		
	exit;
} else {
	real_world_time_current = current_time / 1000;
}
#endregion

#region //Creative
if (round_state == "creative") {
	var _p_color = get_player_hud_color(ror_creative_player.player)
	draw_sprite_ext(_spr_black, 0, 480, 270, 10, 10, 0, c_black, .5);
	textDraw(480, 80, "roaLBLFont", _p_color, 20, 500, 1, true, 1, "Creative Mode Menu");
	textDraw(480, 120, "fName", _p_color, 20, 500, 1, true, 1, "Player " + string(ror_creative_player.player) + " | " + string(get_player_name(ror_creative_player.player)));
	textDraw(480, 140, "fName", _p_color, 20, 500, 1, true, 1, "Movement to Scroll | Attack to Choose");
	if ror_creative_type != "" {
		textDraw(480, 160, "fName", _p_color, 20, 500, 1, true, 1, "Choose (" + string(ror_choose_count) + ") : " + string(ror_creative_type));
	}
	var _size = floor(ror_creative_size / 2);	
	var _x_offset = 32;
	var _y_offset = 32;
	var _icon_x = 480;// - (_size * _x_offset);
	var _icon_y = 320;// - (_size * _y_offset);
	
	var _cursor_pos = ror_creative_pos;
	var _array = obj_stage_main.ror_creative_array;
	//print(["Cursor: " _cursor_pos])
	for (var i = -_size; i <= _size; i++) {
		for (var j = -_size; j <= _size; j++) {
			var _pos = ((_cursor_pos + j) + (((_size * 2 + 1) * i))) % array_length(_array);
			_pos = _pos >= 0 ? _pos % array_length(_array) : array_length(_array) + _pos;
			_cursor_pos = _cursor_pos >= 0 ? _cursor_pos % array_length(_array) : array_length(_array) + (_cursor_pos % array_length(_array)); //There must be a better way
			
			var _curr = _array[_pos];
			var _icon_color = c_white;
			var _icon_opacity = 	1;
			draw_sprite_ext( sprite_get("icons"), _curr.icon, _icon_x + (j * _x_offset), _icon_y + (i * _x_offset), 2, 2, 0, _icon_color, _icon_opacity );
			
			#region //Draw Card
			//print([_cursor_pos, _pos])
			if (_cursor_pos == _pos) {
				//Card
				var _have_outline = false;
				var _x = 800
				var _y = 200
				//
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
				//Big Cards
				draw_sprite_ext( sprite_get("card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, true )
				//
				draw_sprite_ext( sprite_get("icons"), _curr.icon, _x, _y - 16, 2, 2, 0, c_white, 1 )
				draw_set_halign(fa_center)
				textDraw(_x, _y, "fName", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
				textDraw(_x, _y + 20, "fName", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
				draw_set_halign(fa_left)
				//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
				textDraw(_x - 68, _y + 60, "fName", c_white, 20, 136, 1, _have_outline, 1, _curr.desc);
				if ("flavor" in _curr) { textDraw(_x - 68, _y + 140, "tinyFont", c_white, 8, 150, 1, _have_outline, 1, _curr.flavor) };
				//Tiny Card
				_y -= 120;
				draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, c_black, true )
				draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, true )
				//
				draw_sprite_ext( sprite_get("icons"), _curr.icon, _x - 64, _y - 18, 2, 2, 0, c_white, true )
				draw_set_halign(fa_left);
				textDraw(_x - 36, _y - 46, "fName", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
				textDraw(_x - 36, _y - 30, "tinyFont", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
				draw_set_halign(fa_left);
				//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
				if ("small_desc" in _curr) {
					textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, _have_outline, 1, _curr.small_desc);
				}	else {
					textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, _have_outline, 1, _curr.desc);
					//No Flavor text offline
				}
			}
			#endregion
		}
	}
	//Cursor
	var _cursor = sprite_get("cursor");
	draw_sprite_ext(_cursor, 0, _icon_x, _icon_y, 2, 2, 0, _p_color, 1);
	
	draw_set_halign(fa_center)
}
#endregion

#region //Shenron
if (round_state == "shenron") {
	//draw_sprite_ext(_shenron_spr, 0, get_marker_x(96), get_marker_y(96), 2, 2, 0, c_white, 1);
	if obj_stage_main.ror_wish_chosen {
		var _wish = obj_stage_main.ror_shenron_wishes[obj_stage_main.ror_shenron_choice, 0];
		//print(_wish);
		textDraw(480, 60, "roaLBLFont", c_white, 20, 500, 1, true, 1, _wish == "Hi Shenron!" ? "Uhh... Okay, Goodbye": "Consider it Granted");
	} else {
		if (round_state_timer >= 180) {
			textDraw(480, 60, "roaLBLFont", c_white, 20, 500, 1, true, 1, "Tell me your Wish");
			for (var i = 0; i < array_length(ror_shenron_wishes); i++) {
				var _font = i == ror_shenron_choice ? "roaLBLFont" : "fName";
				var _color = i == ror_shenron_choice ? c_white : c_dkgray;
				
				//Wishes
				var _adist = 200;
				var _aangle = i * 45;				
				var _ax = floor(lengthdir_x(_adist, _aangle) * 1.5);
				var _ay = floor(lengthdir_y(_adist, _aangle) * .5);			
				
				//print([i, _aangle, _ax, _ay])
				
				textDraw(480 - _ax, 340 - _ay, _font, _color, 20, 500, 1, true, 1, string(ror_shenron_wishes[i, 0]));
				
				
				/*
				if (i >= 3) {
					//textDraw(120 + i * 180, 360 - (i - 3) * 60, _font, _color, 20, 500, 1, true, 1, "I wish for: '" + string(ror_shenron_wishes[i, 0]) + "'");
					textDraw(120 + i * 180, 360 - (i - 3) * 60, _font, _color, 20, 500, 1, true, 1, string(ror_shenron_wishes[i, 0]));
				} else {
					//textDraw(120 + i * 180, 300 + i * 60, _font, _color, 20, 500, 1, true, 1, "I wish for: '" + string(ror_shenron_wishes[i, 0]) + "'");
					textDraw(120 + i * 180, 300 + i * 60, _font, _color, 20, 500, 1, true, 1, string(ror_shenron_wishes[i, 0]));
				}
				*/
				//
				
				if (i == obj_stage_main.ror_shenron_choice) {
					textDraw(480, 100, "fName", c_white, 20, 500, 1, true, 1, string(obj_stage_main.ror_shenron_wishes[i, 1]));
				}
			}
		}
	}
}
#endregion

#region //Shenron
if (round_state == "reconstruct") {
	var _p_color = get_player_hud_color(ror_reconstruct_player.player)
	draw_sprite_ext(_spr_black, 0, 480, 270, 10, 10, 0, c_black, .5);
	textDraw(480, 80, "roaLBLFont", _p_color, 20, 500, 1, true, 1, "Reconstruct Menu");
	textDraw(480, 120, "fName", _p_color, 20, 500, 1, true, 1, "Player " + string(ror_reconstruct_player.player) + " | " + string(get_player_name(ror_reconstruct_player.player)));
	textDraw(480, 140, "fName", _p_color, 20, 500, 1, true, 1, "Movement to Scroll | Attack to Confirm");
	
	var _text = "Changing "
	switch (ror_reconstruct_step) {
		case 0:
			_text += "Side Platforms" ;
			//
			var _x2 = (960 / 2) + (2 * 20);
			var _x2 = (960 / 2) + (2 * 20);
			var _y2 = (240);
			for (var i = 0; i < 10; i++) {
				var _plat_color = (obj_stage_main.plat_sides_pos == i) ? c_white : c_black;
				var _x = i % 5;
				var _y = floor(i / 5);
				rectDraw(_x2 - (_x * 20), _y2 - (_y * 20), (_x2 + 10) - (_x * 20), (_y2 + 10) - (_y * 20), _plat_color);
			}
			//Off
			_plat_color = (obj_stage_main.plat_sides_pos == "Off") ? c_white : c_black;
			_x = -2;
			_y = 1;
			rectDraw(_x2 + (_x * 20), _y2 + (_y * 20), (_x2 + 10) + (_x * 20), (_y2 + 10) + (_y * 20), _plat_color);
			//
		break;
		case 1: _text += "Center Platform" 
			//
			var _x2 = (960 / 2) + (2 * 20);
			var _y2 = (220);
			for (var i = 0; i < 2; i++) {
				var _plat_color = (obj_stage_main.plat_center_pos == i) ? c_white : c_black;
				var _x = 2;
				var _y = floor(i / 1);
				rectDraw(_x2 - (_x * 20), _y2 + (_y * 20), (_x2 + 10) - (_x * 20), (_y2 + 10) + (_y * 20), _plat_color);
			}
			//Off
			_plat_color = (obj_stage_main.plat_center_pos == "Off") ? c_white : c_black;
			_x = -2;
			_y = 2;
			rectDraw(_x2 + (_x * 20), _y2 + (_y * 20), (_x2 + 10) + (_x * 20), (_y2 + 10) + (_y * 20), _plat_color);
			//
		break;
		case 2: 
			_text += "Stage Art"
			//
			var _x2 = (960 / 2) + (2 * 20);
			var _y2 = (240);
			for (var i = 0; i < 5; i++) {
				var _plat_color = (obj_stage_main.stage_element == i) ? c_white : c_black;
				var _x = i % 5;
				var _y = floor(i / 5);
				rectDraw(_x2 - (_x * 20), _y2 - (_y * 20), (_x2 + 10) - (_x * 20), (_y2 + 10) - (_y * 20), _plat_color);
			}
			//Off
			if practice_mode {
				_plat_color = (obj_stage_main.stage_element == 5) ? c_white : c_black;
				_x = -2;
				_y = 1;
				rectDraw(_x2 + (_x * 20), _y2 + (_y * 20), (_x2 + 10) + (_x * 20), (_y2 + 10) + (_y * 20), _plat_color);
			}
			//		
		break;
	}
	
	textDraw(480, 200, "fName", _p_color, 20, 500, 1, true, 1, _text);
}
#endregion


//
var _is_online = game_online;

//Round Timer
if (round_state == "alive") {
	var _seconds2 = floor(clamp(round_state_timer - 120, 0, infinity) / 60) % 60;
	var _minutes2 = floor(clamp(round_state_timer - 120, 0, infinity) / 60 / 60);
} else {
	var _seconds2 = floor(round_state_timer / 60) % 60;
	var _minutes2 = floor(round_state_timer / 60 / 60);
}
textDraw(480, 30, "fName", c_white, 20, 500, 1, true, 1, string(_minutes2) + ":" + string(_seconds2 <= 9 ? "0" + string(_seconds2) : _seconds2) );

//
if (round_state == "game_start" || round_state == "choose_item") || game_paused {
	draw_cards();
	
	textDraw(480, _is_online ? 60 : 25, "fName", c_yellow, 20, 500, 1, true, 1, "Shield + Taunt to toggle Settings");	
	
	if (frontload_items && frontload_count >= 0) {
		textDraw(480, 20, "roaLBLFont", c_green, 20, 500, 1, true, 1, string("Item Draft Round: " + string(20 - frontload_count) + " / 20"));
	}
}
//
if !game_paused && ((obj_stage_main.round_state == "choose_item") || (obj_stage_main.round_state == "game_start" && get_gameplay_time() >= 120)) {
	//textDraw(480, 30, "medFont", c_white, 20, 500, 1, true, 1, "Choose Time: " + (string(floor(choose_timer / 60))));
	var _choose_display = "" 
	if (!game_online) {
		var _choose_display = "["
		for (var i = 0; i < array_length(main_players); i++) {
			if (i + 1 < array_length(main_players)) {			
				//_choose_display += string(clamp(choose_amount[main_players[i].player], 1, 5)) + ", ";
				_choose_display += string(check_choice_count(main_players[i].player)) + ", ";
			} else {
				_choose_display += string(check_choice_count(main_players[i].player));
			}
		}
		_choose_display += "]"
	} else {
		_choose_display += string(check_choice_count(device_player));
	}
	//
	var _reroll_display = "" 
	if (!game_online) {
		var _reroll_display = "["
		for (var i = 0; i < array_length(main_players); i++) {
			if (i + 1 < array_length(main_players)) {			
				_reroll_display += string(main_players[i].ror_rerolls) + ", ";
			} else {
				_reroll_display += string(main_players[i].ror_rerolls);
			}
		}
		_reroll_display += "]"
	} else {
		var _reroll_count = 0;
		with oPlayer {
			if other.device_player == player {
				_reroll_count = ror_rerolls;
			}
		}
		_reroll_display += string(_reroll_count);
	}
	
	if (game_online) {
		textDraw(480, 30, "roaLBLFont", c_white, 20, 500, 1, true, 1, (string(floor(choose_timer / 60))));
		textDraw(480, 340, "fName", c_white, 20, 500, 1, true, 1, "Choose: " + _choose_display + " | Rerolls: " + _reroll_display);
		textDraw(480, 360, "fName", c_lime, 20, 500, 1, true, 1, "Press Attack to Choose");
		textDraw(480, 380, "fName", c_red, 20, 500, 1, true, 1, "Hold Special to Skip");
		textDraw(480, 400, "fName", c_aqua, 20, 500, 1, true, 1, "Press Jump to Reroll");
		textDraw(480, 420, "fName", c_yellow, 20, 500, 1, true, 1, "Hold Taunt to Display Extra Info");
	} else {
		textDraw(480, 30, "roaLBLFont", c_white, 20, 500, 1, true, 1, (string(floor(choose_timer / 60))));
		textDraw(480, 135, "fName", c_white, 20, 500, 1, true, 1, "Choose: " + _choose_display + " | Rerolls: " + _reroll_display);
		textDraw(480, 245, "fName", c_white, 20, 500, 1, true, 1, "Press Attack to Choose | Hold Special to Skip | Press Jump to Reroll");
		textDraw(480, 355, "fName", c_yellow, 20, 500, 1, true, 1, "Hold Taunt to Display Extra Info");
	}
	if (practice_mode) {
		textDraw(480, 440, "fName", c_yellow, 20, 500, 1, true, 1, "Hold Shield + Press Up/Down to Change Item");
	}
}
//
if (game_paused) {
	//Pause Thingy
	draw_sprite_ext(_spr_black, 0, 480, 270, 10, 10, 0, c_black, .5);
	//
	textDraw(480, 40, "fName", c_white, 20, 500, 1, true, 1, "Start Menu (Shield + Left/Right for Pages)");
	var _p_color = get_player_hud_color(pause_player)
	
	var _anim = get_gameplay_time() % 60 < 30 ? " " : "";
	
	//menu_pages[menu_page]
	var _page_info = menu_pages[menu_page];
	
	textDraw(480, 80, "fName", c_white, 20, 500, 1, true, 1, _page_info[0]);
	//
	var _draw_card_list = false;
	//
	for (var i = 0; i < array_length(menu_pages); i++) {
		if (i == menu_page) {
			var _s_color = c_white;
		} else {
			var _s_color = c_gray;
		}
		//
		rectDraw(40 + (i * 20), 60, 50 + (i * 20), 70, _s_color);
	}
	//textDraw(480, 80, "fName", c_white, 20, 500, 1, true, 1, "Page " + string(menu_page + 1));
	for (var i = 0; i < array_length(_page_info[1]); i++) {	
		var _curr_info = _page_info[1, i];
		var _text = _curr_info[1] == "" ? string(_curr_info[0]) : string(_curr_info[0]) + ": " + string(_curr_info[1]);
		
		if (_curr_info[0] == "") { //Drawing Item Pools
			_draw_card_list = true;
		} else {
			//Pause Color
			var _curr_color = (
				_curr_info[1] == "Off" || //Normal
				_curr_info[1] == "None (0)" || //Reroll Count
				_curr_info[1] == "Never (0)" || //Bazaar Count
				_curr_info[1] == "0" //Zero
			) ? c_gray : _p_color;
			//
			if (i == menu_pos) {
				textDraw(480, 100 + i * 20, "fName", _curr_color, 20, 800, 1, true, 1, ">" + string(_anim) + _text + string(_anim) + "<");
				//Draw Extra Info
				if (array_length(_curr_info) > 2) {
					draw_set_halign(fa_left);
					textDraw(20, 100, "fName", c_white, 20, 300, 1, true, 1, string(_curr_info[2]));
					draw_set_halign(fa_center);
				}
				//
			} else {
				textDraw(480, 100 + i * 20, "fName", _curr_color, 20, 800, 1, true, 1, _text);
			}
		}
	}
	//Item Pools
	if (_draw_card_list) {
		if practice_mode && is_aether_stage() {
			rectDraw(0, 0, 1000, 1000, c_lime);
		}
		var _menu_offset = (i - 1) * 20;
		////Common
		var _icon_offset = 0;
		//
		/*
		if practice_mode && is_aether_stage() {
			_icon_offset = draw_pool_icons(items_custom_commons, 	_icon_offset, _menu_offset, 0);
			_icon_offset = draw_pool_icons(items_custom_rares, 		_icon_offset, _menu_offset, 1);
			_icon_offset = draw_pool_icons(items_custom_epics, 		_icon_offset, _menu_offset, 2);
			_icon_offset = draw_pool_icons(items_custom_legends,	_icon_offset, _menu_offset, 3);
		} else {
			_icon_offset = draw_pool_icons(items_custom_commons, 	_icon_offset, _menu_offset);
		}
		*/
		var _dict_rarity = obj_stage_main.menu_options.item_dictionary[1];
		switch (_dict_rarity) {
			case "Commons":
				_icon_offset = draw_pool_icons(items_custom_commons, 	_icon_offset, _menu_offset, 0);
			break;							
			case "Rares":
				_icon_offset = draw_pool_icons(items_custom_rares, 	_icon_offset, _menu_offset, 0);
			break;							
			case "Epics":
				_icon_offset = draw_pool_icons(items_custom_epics, 	_icon_offset, _menu_offset, 0);
			break;							
			case "Legendaries":
				_icon_offset = draw_pool_icons(items_custom_legends, 	_icon_offset, _menu_offset, 0);
			break;
		}
	}
	exit;
}
//
//Display Icons Counts
var _display = 10;//12
var _display_offset = 22;//16
var _display_offset_y =  18;
//var _icon = sprite_get("icons");
var _taunt_image = sprite_get("taunt_display");

var _opacity = round_state == "alive" ? 1 : 0;

//
var _display_hud = obj_stage_main.round_state == "alive" ? true : false;
var _display_stats = false;
var _bazaar = obj_stage_main.round_state == "break_round" || obj_stage_main.round_state == "choose_item" || obj_stage_main.round_state == "shenron" || obj_stage_main.round_state == "creative" || obj_stage_main.round_state == "reconstruct";
with oPlayer {
	if ((player == other.device_player || !_is_online) && taunt_down) && !(obj_stage_main.round_state == "alive" || obj_stage_main.round_state == "title_screen") {
		_display_hud = true;
		_display_stats = true;
	}
}
//
var _hud_offset = 240

with oPlayer {
if !ror_clone {
	draw_set_halign(fa_left)
	//Draw Player Name and Points
	if (ror_points + 1 == obj_stage_main.points_to_win) {
		//textDrawYellow((60 + (player - 1) * _hud_offset), _is_online ? 40 : 15, "fName", get_player_hud_color(player), 20, 500, 1, true, 1, string(get_char_info(player, INFO_STR_NAME) + " : " + string(ror_points) + "/" + string(obj_stage_main.points_to_win)));	
		textDrawYellow((60 + (player - 1) * _hud_offset), _is_online ? 40 : 15, "fName", get_player_hud_color(player), 20, 500, 1, true, 1, string(get_char_info(player, INFO_STR_NAME) + " : " + string(ror_points) + "/" + string(obj_stage_main.points_to_win)));	
	} else {
//textDraw((60 + (player - 1) * _hud_offset), _is_online ? 40 : 15, "fName", get_player_hud_color(player), 20, 500, 1, obj_stage_main.light_weight_mode == "Off", 1, string(get_char_info(player, INFO_STR_NAME) + " : " + string(ror_points) + "/" + string(obj_stage_main.points_to_win)));
		//textDraw((60 + (player - 1) * _hud_offset), _is_online ? 40 : 15, "fName", get_player_hud_color(player), 20, 500, 1, true, 1, string(get_char_info(player, INFO_STR_NAME) + " : " + string(ror_points) + "/" + string(obj_stage_main.points_to_win)));
		textDraw((60 + (player - 1) * _hud_offset), _is_online ? 40 : 15, "fName", get_player_hud_color(player), 20, 500, 1, true, 1, string(get_char_info(player, INFO_STR_NAME) + " : " + string(ror_points) + "/" + string(obj_stage_main.points_to_win)));
	}
	draw_set_halign(fa_center)
	//

	if (_display_hud) {
		//var _draw_array = obj_stage_main.round_state == "choose_item" ? ror_items : ror_items_from_round
		//var _display_icons = obj_stage_main.show_icons;
		var _display_rares = obj_stage_main.show_rares || _bazaar;
		var _display_numbers = obj_stage_main.show_numbers || _bazaar;

		var _index = 0;
		
		var _array = obj_stage_main.show_icons || _bazaar ? ror_items : ror_items_from_round;
		//
		for (var i = 0; i < array_length(_array); i++) {
			var _count = 1;
			var _draw_name = _array[i].name
			var _scale = 2;
			//
			switch(_array[i].rarity) {
				case "C":
					var _outline_color = c_white;
				break;
				case "R":
					var _outline_color = c_blue;
				break;
				case "E":
					var _outline_color = c_purple;
				break;
				case "L":
					var _outline_color = c_yellow;
				break;
			}
			var _display_temp_outline = false;
			/*
			for (var j = 0; j < array_length(ror_items_from_round); j++) {
				if (_array[i].name == ror_items_from_round[j].name) { _display_temp_outline = true}
			}
			*/
			//print([_array[i].name , _array[i].new_item] );
			//1 Item Per
			var _item_num = i;
			if "new_item" in _array[i] && _array[i].new_item {
				_display_temp_outline = true;
			}
			while (i + 1 < array_length(_array) && _array[i + 1].name == _draw_name) {
				i++;
				if "new_item" in _array[i] && _array[i].new_item {
					_display_temp_outline = true;
				}
				_count++
			}

			//	
			var _xpos = (20 + (player - 1) * _hud_offset) + (_index % _display) * _display_offset;
			var _ypos = 90 + floor(_index / _display) * (_display_offset_y);
			if (_display_rares || obj_stage_main.round_state == "choose_item" || _display_temp_outline) {
				draw_sprite_ext(_outline_spr, _array[_item_num].icon, _xpos, _ypos, _scale, _scale, 0, _outline_color, true);
			}	
			//Always Draw
			draw_sprite_ext( _array[_item_num].sprite, _array[_item_num].icon, _xpos, _ypos, _scale, _scale, 0, c_white, true)
			

			
			//Draw Text
			if _display_numbers {
				draw_sprite_ext(_num_spr, _count, _xpos - 18, _ypos - 40, 2, 2, 0, c_white, true)
			}
			
			_index++
		}
		//
		draw_set_halign(fa_center)
	}

	//Taunt Display
	if (_display_stats) {
		//_hud_offset = 240;
		var _stat_rows = ceil(_index / _display);
		draw_sprite_ext( _taunt_image, 0, (120 + (player - 1) * _hud_offset), 100 + _stat_rows * _display_offset_y, 1, 1, 0, get_player_hud_color(player), .5  )
		draw_set_halign(fa_left)
		textDraw((20 + (player - 1) * _hud_offset), 100 + _stat_rows * _display_offset_y, "fName", c_white, 20, 500, 1, false, 1, "Page " + string(obj_stage_main.stats_page_num[obj_stage_main.device_player] + 1) + "/" + string(array_length(obj_stage_main.stat_pages)) + " " + string(obj_stage_main.stat_pages[obj_stage_main.stats_page_num[obj_stage_main.device_player]]));
		_stat_rows++
		textDraw((20 + (player - 1) * _hud_offset), 100 + _stat_rows * _display_offset_y, "fName", c_white, 20, 500, 1, false, 1, "-Use Left/Right to Scroll-");
		_stat_rows += 2;
		//draw_sprite_ext( _taunt_image, 0, (140 + (player - 1) * _hud_offset), 100 + _rows * _display_offset_y + (_stat_row * 16), 1, 1, 0, get_player_hud_color(player), .5  )	
		var _i_damage = 3;
		var _i_start_up = 4;
		var _i_whiff = 5;
		var _stat_text = "";
		switch(obj_stage_main.stat_pages[obj_stage_main.stats_page_num[obj_stage_main.device_player]]) {
			case "Luck": //Luck
				draw_set_halign(fa_center)
				var _luck = luck_math(ror_luck);
				textDraw((120 + (player - 1) * _hud_offset), 100 + _stat_rows * _display_offset_y, "fName", ror_luck && ror_luck % 21 == 0 ? c_yellow : c_white, 20, 500, 1, false, 1, 	"Luck: " + string(ror_luck));
				if (ror_luck == 0) { //0 Luck
					textDraw((120 + (player - 1) * _hud_offset), 120 + _stat_rows * _display_offset_y, "fName", c_white, 20, 500, 1, false, 1, 	"Black Jack: 0 / 21");
				} else if (ror_luck) { //Positive Luck
					textDraw((120 + (player - 1) * _hud_offset), 120 + _stat_rows * _display_offset_y, "fName", ror_luck && ror_luck % 21 == 0 ? c_yellow : c_white, 20, 500, 1, false, 1, 	"Black Jack: " + string(ror_luck % 21 == 0 ? 21 : ror_luck % 21) + " / 21");
				} else { //Negative Luck
					textDraw((120 + (player - 1) * _hud_offset), 120 + _stat_rows * _display_offset_y, "fName", c_red, 20, 500, 1, false, 1, "Negative Luck");
				}
				
				textDraw((120 + (player - 1) * _hud_offset), 150 + _stat_rows * _display_offset_y, "fName", c_white, 20, 500, 1, false, 1, 		string(_luck[0]) + "%");
				textDraw((120 + (player - 1) * _hud_offset), 170 + _stat_rows * _display_offset_y, "fName", c_blue, 20, 500, 1, false, 1, 		string(_luck[1]) + "%");
				textDraw((120 + (player - 1) * _hud_offset), 190 + _stat_rows * _display_offset_y, "fName", c_purple, 20, 500, 1, false, 1, 	string(_luck[2]) + "%");
				textDraw((120 + (player - 1) * _hud_offset), 210 + _stat_rows * _display_offset_y, "fName", c_yellow, 20, 500, 1, false, 1, 	string(_luck[3]) + "%");	
				//
				
				draw_set_halign(fa_left);
				textDraw((20 + (player - 1) * _hud_offset), 270 + _stat_rows * _display_offset_y, "fName", c_white, 20, 500, 1, false, 1, 	"Rerolls: " + string(ror_rerolls) + " / " + string(ror_max_rerolls));	


				//
			break;
			case "Stats": //Stats
				draw_set_halign(fa_left)
				for (var i = 0; i < array_length(ror_display_stats); i++) {
					textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 500, 1, false, 1, string(ror_display_stats[i, 0]) + ": " + string(ror_display_stats[i, 1]));
					_stat_rows++;
				}
			break;
			case "Damage Buffs": //Damage Buffs
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, _i_damage] != 0) {
						_stat_text += "-" + string(ror_valid_attack_array[i, 0]) + " (" + string(ror_valid_attack_array[i, _i_damage]) + ")" + "
						";
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _stat_text);
			break;
			case "Start Up Buffs": //Start Up
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, _i_start_up] != 0) {
						_stat_text += "-" + string(ror_valid_attack_array[i, 0]) + " (" + string(ror_valid_attack_array[i, _i_start_up]) + ")" + "
						";
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _stat_text);
			break;
			case "Whifflag Removal": //Whifflag
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, _i_whiff] != 0) {
						_stat_text += "-" + string(ror_valid_attack_array[i, 0]) + "
						";
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _stat_text);
			break;
			case "Rogue Install": //Rogue Install
				/*
				_new_line = chr(10);
				_tab = chr(9);
				_quot = chr(39);
				*/
				/*
				[X] ror_card_install_burst
				[X] ror_card_install_impulse
				[X] ror_card_install_sturdy
				[X] ror_card_install_slide
				[X] ror_card_install_stopwatch
				[X] ror_card_install_objection
				[X] ror_card_install_shine
				[X] ror_card_install_charge
				[X] ror_card_install_turnabout
				[x] ror_card_install_slow_start
				[X] ror_card_install_rise_from_ash
				[X] ror_card_install_static
				[X] ror_card_install_blood_clotting
				[X] ror_card_install_peach
				[X] ror_card_install_black_jack
				[X] ror_card_install_ant
				[X] ror_card_install_nothing
				[X] ror_card_install_recharge
				[X] ror_card_install_training
				//
				[X] ror_card_install_platypus
				[X] ror_card_install_fast_food
				[]	ror_card_install_charge_champ
				[]	ror_card_install_abyss_boost
				[]	ror_card_install_magic_missile
				
				*/
				//Basic Info
				if (ror_install_cards) {
					var _slow_start = (ror_card_install_slow_start + 1);
					#region //Meter and Install
					_stat_text += "Meter Requirement: " + string(ror_install_meter_max) + _new_line;
					_stat_text += "Install Duration (s): " + string(ror_install_timer_length / 60) + _new_line;
					//Other ways to gain Meter
					_stat_text += "Damage to Meter: " + "1:1" + _new_line;
					_stat_text += (ror_card_install_charge_champ) ? "Extra Meter # Gain: +" + string(ror_card_install_charge_champ) + _new_line : "";
					_stat_text += (ror_card_install_abyss_boost) ? "Extra Meter % Gain: +" + string(ror_card_install_abyss_boost * 2) + "0%" + _new_line : "";
					_stat_text += (ror_card_install_objection) ? "Counter Multi: +" + string(ror_card_install_objection * 33) + "%" + _new_line : "";
					_stat_text += (ror_card_install_fast_food) ? "Start with Meter: +" + string(ror_card_install_fast_food * 20) + "%" + _new_line : "";
					_stat_text += (ror_card_install_static) ? "Dash Dance gives Meter" + _new_line : "";
					_stat_text += (ror_card_install_blood_clotting) ? "Healing gives Meter" + _new_line : "";
					_stat_text += (ror_card_install_nothing) ? "Stillness gives Meter" + _new_line : "";
					_stat_text += (ror_card_install_nothing) ? "Actions lose Meter" + _new_line : "";
					_stat_text += (ror_card_install_turnabout) ? "Taking Damage gives Meter" + _new_line : "";
					_stat_text += (ror_card_install_platypus) ? "Parry gives Meter" + _new_line : "";
					_stat_text += (ror_card_install_magic_missile) ? "Fire a Missile on Activation" + _new_line : "";
					#endregion
					
					#region //Stats
					//Base Damage (Always a thing)
					_stat_text += "Base Damage: " + string(
						1 +
						ror_card_install_training
					) + _new_line;
					//Damage Multiplier
					_stat_text += (ror_card_install_impulse) ? "DMG Multiplier: +" + string(ror_card_install_impulse * 25 * _slow_start) + "%" + _new_line : "";				
					//Weight Change
					_stat_text += (ror_card_install_sturdy) ? "Weight Increase: " + string((.2 + (ror_card_install_sturdy - 1) * .1) * _slow_start) + _new_line : "";
					//Ground Speed
					_stat_text += (ror_card_install_burst) ? "Ground Speed: +" + string(ror_card_install_burst * _slow_start) + _new_line : "";
					//Air Speed
					_stat_text += (ror_card_install_burst) ? "Air Speed: +" +	 string(ror_card_install_burst * .5 * _slow_start) + _new_line : "";
					#endregion
					
					#region //Install Abilities
					//Black Jack
					_stat_text += (ror_card_install_peach) ? "Black Jack? " + string(ror_luck && ror_luck % 21 = 0 ? "Yes" : "No") + _new_line : "";
					//Recharge
					_stat_text += (ror_card_install_recharge) ? "Hits Charge Install: " + string(((3 + ror_card_install_recharge)) * _slow_start) + "x" + _new_line : "";	
					//Carco
					_stat_text += (ror_card_install_ant) ? "Die on Uninstall" + _new_line : "";	
					//Rise and Shine
					_stat_text += (ror_card_install_shine) ? "Heal " + string(ror_card_install_shine * _slow_start) + " Every Second" + _new_line : "";
					//Mokou
					_stat_text += (ror_card_install_rise_from_ash) ? "Heal while Burned" + _new_line : "";
					//Jump Cancels
					_stat_text += (ror_card_install_peach) ? "Jump Cancels on Hit" + _new_line : "";
					//Slip n Slide
					_stat_text += (ror_card_install_slide) ? "Slippery" + _new_line : "";
					//Slow Start
					_stat_text += (ror_card_install_slow_start) ? "Slow Start" + _new_line : "";
					#endregion
				} else {
					_stat_text = "Pick up an Install Card First";
				}
				
				
				//
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _stat_text);
			break;
			case "Movement Attacks": //Movement Attacks
				var _sweet_text = "";
				for (var i = 0; i < array_length(ror_info_speed); i++) {
					_sweet_text += "-" + string(ror_info_speed[i]) + " 
					";
				}	
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _sweet_text);
			break;
			case "Sweetspots": //Sweetspot
				var _sweet_text = "";
				//print(ror_sweet_spots)
				for (var i = 0; i < array_length(ror_sweet_spots); i++) {
					_sweet_text += "-" + string(ror_sweet_spots[i]) + " 
					";
				}	
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _sweet_text);
			break;
			case "Grab-Like Attacks":
			
				//Usable Attack
				var _help_text = "Green = Activated Effects" + _new_line + "Yellow = Needs more Time" + _new_line + "Red = Didn't Apply at All";
				textDraw((20 + (player - 1) * _hud_offset), 100 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _help_text);
				//
				var _grab_y = 60;
				var _grab_new_offset = 0;

				//Green
				var _grab_text = "";
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, 12] == 2) {
						_grab_text += "-" + string(ror_valid_attack_array[i, 0]) + " 
						";
						_grab_new_offset += _display_offset_y + 2;
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), _grab_y + 100 + (_stat_rows) * _display_offset_y, "fName", c_lime, 20, 200, 1, false, 1, _grab_text);	
				//Post Draw Offset
				_grab_y += _grab_new_offset;	
				_grab_new_offset = 0;				
				//Yellow
				var _grab_text = "";
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, 12] == 1) {
						_grab_text += "-" + string(ror_valid_attack_array[i, 0]) + " 
						";
						_grab_new_offset += _display_offset_y + 2;
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), _grab_y + 100 + (_stat_rows) * _display_offset_y, "fName", c_yellow, 20, 200, 1, false, 1, _grab_text);		
				//Post Draw Offset
				_grab_y += _grab_new_offset;	
				_grab_new_offset = 0;	
				//Red
				var _grab_text = "";
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, 12] == 0) {
						_grab_text += "-" + string(ror_valid_attack_array[i, 0]) + " 
						";
						_grab_new_offset += _display_offset_y + 2;
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), _grab_y + 100 + (_stat_rows) * _display_offset_y, "fName", c_red, 20, 200, 1, false, 1, _grab_text);
				//Post Draw Offset
				_grab_y += _grab_new_offset;	
				_grab_new_offset = 0;	
				//Undetermined
				_grab_text = "";
				for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
					if (ror_valid_attack_array[i, 12] == -4) {
						_grab_text += "-" + string(ror_valid_attack_array[i, 0]) + " 
						";
					}
				}	
				textDraw((20 + (player - 1) * _hud_offset), _grab_y + 100 + (_stat_rows) * _display_offset_y, "fName", c_dkgray, 20, 200, 1, false, 1, _grab_text);
			break;
			case "Quick Info":
			
			break;
			case "Attack Info":
				if array_length(ror_valid_attack_array) {
					var _attack_num = obj_stage_main.ror_taunt_attack_display[player];
					var _attack_info = ror_valid_attack_array[_attack_num];
					var _attack = ror_valid_attack_array[_attack_num, 1];
					var _stat_text = "(" + string(_attack_num + 1) + "/" + string(array_length(ror_valid_attack_array)) + "): " + string(ror_valid_attack_array[_attack_num, 0]);
					_stat_text += _new_line + _new_line;
					//
					var _max = clamp(_attack_info[4], 0, _attack_info[6] - 1)
					//Changable Stats
					_stat_text += "Start Up: " + string(_attack_info[6]) + string(_attack_info[4] == 0 ? "" : " - " + string(_max) + " = " + string(_attack_info[6] - _max)) + _new_line;
					_stat_text += "Has Whifflag: " + string(_attack_info[_i_whiff] ? "No" : "Yes") + _new_line;
					_stat_text += "Damage Buff: " + string(_attack_info[_i_damage]) + _new_line;
					//Hitbox Info
					_stat_text += "Vertical Hitbox: " + string(_attack_info[7] ? "Yes" : "No") + _new_line;
					_stat_text += "Horizontal Hitbox: " + string(_attack_info[8] ? "Yes" : "No") + _new_line;
					_stat_text += "Spike Hitbox: " + string(_attack_info[9] ? "Yes" : "No") + _new_line;
					_stat_text += "Physical Hitbox: " + string(_attack_info[10] ? "Yes" : "No") + _new_line;
					_stat_text += "Projectile Hitbox: " + string(_attack_info[11] ? "Yes" : "No") + _new_line;
					//Sprite of Attack
					//print(_attack)
					if (get_attack_value(_attack, AG_SPRITE ) > 0) {
						var _spr = get_attack_value(_attack, AG_SPRITE);
						var _scale = ("small_sprites" in ror_modified_stats) && small_sprites ? 1 : .5;
						draw_sprite_ext(_spr, floor(get_gameplay_time() / 5), (20 + (player - 1) * _hud_offset) + 100, 140 + (_stat_rows) * _display_offset_y, _scale, _scale, 0, c_white, 1);
					}
				} else {
					var _stat_text = "Please wait a second"
				}
				//
				//if 
				//

				//
				textDraw((20 + (player - 1) * _hud_offset), 150 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _stat_text);
			break;
			case "Item Inventory":
				if (array_length(ror_taunt_item_array)) {
					var _item_num = 0;
					if (obj_stage_main.game_online || obj_stage_main.practice_mode) {
						var _a_size = array_length(ror_taunt_item_array);
						var _a_count = obj_stage_main.device_player_obj.ror_taunt_item_value;
						_item_num = _a_count >= 0 ? _a_count % _a_size : ((_a_size * 1000) + _a_count) % _a_size;
						//_item_num = clamp(obj_stage_main.device_player_obj.ror_taunt_item_value, 0, array_length(ror_taunt_item_array) - 1)
					} else {
						//_item_num = ror_taunt_item_value;
						var _a_size = array_length(ror_taunt_item_array);
						var _a_count = ror_taunt_item_value;
						_item_num = _a_count >= 0 ? _a_count % _a_size : ((_a_size * 1000) + _a_count) % _a_size;
					}
					//		
					print(["Menu: ", _item_num, _a_size, _a_count, (_a_size * 1000) + _a_count])
					
					var _stat_text = "Press Up/Down to Browse"
					//
					
					//
					var _curr_item = ror_taunt_item_array[_item_num, 0];
					var _curr_count = ror_taunt_item_array[_item_num, 1];
					with obj_stage_main {
						draw_single_card(
							(120 + (other.player - 1) * _hud_offset),
							200 + (_stat_rows) * _display_offset_y,
							_curr_item
						)
					}
					//
					textDraw((20 + (player - 1) * _hud_offset), 250 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, "Item Number: " + string(1 + _item_num) + " / " + string(array_length(ror_taunt_item_array)));
					textDraw((20 + (player - 1) * _hud_offset), 270 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, "Item Count: " + string(_curr_count));
				} else {
					var _stat_text = "Please acquire items"
				}
				textDraw((20 + (player - 1) * _hud_offset), 120 + (_stat_rows) * _display_offset_y, "fName", c_white, 20, 200, 1, false, 1, _stat_text);
			break;
			default:
			
			break;
		}
		draw_set_halign(fa_center)
	}

}
}

//Brook Info
if ror_show_brook_info {
	draw_set_halign(fa_center);
	draw_sprite_ext(sprite_get("ror_brook_speech"), 0, 480, 300, 1, 1, 0, c_white, .8);
	
	var _y = 110;
	//var _x = 280;
	var _x = 480;
	//
	textDraw(_x, _y + 000, "fName", c_yellow, 1000, 1000, 1, 	false, true, 	"Hold Crouch near Objects");
	textDraw(_x, _y + 050, "fName", c_white, 1000, 1000, 1,		false, true, 	"(90%) Printers: Delete Item of the same Rarity : Create Item");
	//textDraw(_x, _y + 060, "fName",	c_white, 1000, 1000, 1, 	false, true, 	"(30%) Pools: Delete 3 Lower Rarity Items : Create Item");
	textDraw(_x, _y + 070, "fName",	c_white, 1000, 1000, 1, 	false, true, 	"(10%) Scrappers: Choose Item to turn into 'Crazy Luck'");
	textDraw(_x, _y + 120, "fName", c_white, 1000, 1000, 1, 	false, true, 	"All Objects prioritize 'Crazy Luck' Items");
	textDraw(_x, _y + 160, "fName", c_yellow, 1000, 1000, 1, 	false, true, 	"Hold Crouch near me to Exit (All Players must Confirm)");
	textDraw(_x, _y + 175, "tinyFont", c_yellow, 1000, 1000, 1, 	false, true, 	"If you Exit you can Press Shield to Cancel");
	//
}

#region //Loading Messages
if (obj_stage_main.round_state == "loading") {
	textDraw(480, 140, "roaLBLFont", c_white, 30, 800, 1, true, 1, string(quirky_dia[loading_text_num]) + "... (" + string(round_state_timer) + "/50)");
}
#endregion //Loading Messages

#region //Countdown
if (obj_stage_main.round_state == "alive" && round_state_timer <= 150) {
	draw_set_halign(fa_center);
	if round_state_timer < 30 { draw_countdown = "" } else 
	if round_state_timer == 30 { draw_countdown = "3" } else 
	if round_state_timer == 60 { draw_countdown = "2" } else 
	if round_state_timer == 90 { draw_countdown = "1" } else 
	if round_state_timer >= 120 { draw_countdown = "GO" }

	textDraw(480, 270, "roaLBLFont", c_white, 20, 500, 1, true, 1, string(draw_countdown));
}
#endregion

if (obj_stage_main.round_state == "break_round") {
	draw_set_halign(fa_center);
	textDraw(480, 470, "fName", c_yellow, 20, 720, 1, true, 1, "Shield + Taunt to Toggle Settings");
	if (round_state_timer <= 90) {
		textDraw(480, 220, "roaLBLFont", c_white, 20, 500, 1, true, 1, "Welcome to the Brook Bazaar");
		textDraw(480, 250, "fName", c_white, 20, 500, 1, true, 1, "Fighting is Prohibited!");
	} else {//if (round_state_timer >= bazaar_skip_timer) {
		textDraw(480, 450, "fName", c_white, 20, 720, 1, true, round_state_timer >= bazaar_skip_timer ? 1 : .2, "After 60 Seconds : Hold Special for 3 seconds to Skip Brook Bazaar for everyone");
	}
}

if practice_mode {
	//draw_graph_ext(final_graph_points)
}

if ror_timeout_detected {
	textDraw(480, 140, "roaLBLFont", c_white, 20, 800, 1, true, 1, "Please Try Interacting Next Round");
}

#region //Title Screen
/*
if (obj_stage_main.round_state == "title_screen") {
	textDraw(480, 80, "roaLBLFont", c_white, 20, 800, 1, true, 1, "Rivals Rogue");
	var _title_y_offset = 80;
	for (var i = 0; i < array_length(ror_title_screen_options); i++) {
		//
		var _number_options = array_length(ror_title_screen_options[i, 1]);
		//textDraw(480, 300 + i * 50, "fName", c_white, 20, 800, 1, true, 1, string(ror_title_screen_options[i, 0]));
		//if (i !== 0) {
			textDraw(480, 200 + i * _title_y_offset, "fName", c_white, 20, 800, 1, true, 1, string(ror_title_screen_options[i, 0]));
		//}
		for (var j = 0; j < _number_options; j++) {
			var _curr_option = ror_title_screen_options[i, 1][j];
			textDraw(480 - ((_number_options - 1) * 150) + (j * 300), (200 + i * _title_y_offset) + (_title_y_offset / 2), "fName", c_white, 20, 800, 1, true, 1, string(_curr_option));
		}
	}
}
*/
if ror_css_bug {
	draw_sprite_ext(_spr_black, 0, 480, 270, 10, 10, 0, c_black, .8);
	
	draw_set_halign(fa_center);
	
	var _new_line = chr(10);
	var _tab = chr(9);
	
	var _string = "Hello, I am sorry to admit this, but you have ran into a major game breaking bug." + _new_line
	_string += "Due to an oversight early on when coding Rivals Rogue I didn't account for skipping a player slot on the Character Select Screen." + _new_line;
	_string += "In order to fix this yourself please make sure players slots are filled without skipping one." + _new_line;
	_string += "Below is an example of what to do. Please do what is highlighted with a Green Checkmark and avoid Red X's." + _new_line;
	_string += "I wanted to fix this bug before release, but it is too big of an issue." + _new_line;
	
	textDraw(480, 100, "fName", c_white, 20, 1000, 1, false, 1, _string);
	
	if get_gameplay_time() >= 120 {
		textDraw(480, 220, "fName", c_lime, 20, 1000, 1, false, 1, "When you are done reading the message please press the [Attack] button to go to the results screen.");
	}
	
	//Good
	draw_sprite_ext(sprite_get("ror_css"), 0, 		160, 250, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("ror_css"), 1, 		160, 340, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("ror_css"), 2, 		160, 430, 1, 1, 0, c_white, 1);
	
	//Bad
	draw_sprite_ext(sprite_get("ror_css"), 3, 		510, 250, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("ror_css"), 4, 		810, 250, 1, 1, 0, c_white, 1);
	//
	draw_sprite_ext(sprite_get("ror_css"), 5, 		510, 320, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("ror_css"), 6, 		810, 320, 1, 1, 0, c_white, 1);	
	//
	draw_sprite_ext(sprite_get("ror_css"), 7, 		510, 390, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("ror_css"), 8, 		810, 390, 1, 1, 0, c_white, 1);
	//
	draw_sprite_ext(sprite_get("ror_css"), 9, 		660, 460, 1, 1, 0, c_white, 1);

	
	exit;
}


if (get_gameplay_time() <= 120 || obj_stage_main.round_state == "title_screen") {
	//
	draw_sprite_ext(_spr_black, 0, 480, 270, 10, 10, 0, c_black, .8);
	draw_set_halign(fa_right);
	textDraw(940, 50, "fName", c_white, 20, 800, 1, false, 1, "Last updated: " + string(ror_patch_latest));
	textDraw(940, 90, "fName", c_white, 20, 800, 1, false, 1, "Last patch was " + string(ror_days_since_patch) + " day(s) ago!");

	if !ror_patch_note_show && (ror_days_since_patch <= 3) {
		textDraw(940, 110, "fName", c_lime, 20, 800, clamp(abs(sin(get_gameplay_time() / 60) * 1.5), 1, 12), false, 1, "Check Patch Notes!");
	}

	//Test
	//draw_set_halign(fa_left);
	//textDraw(20, 50, "roaLBLFont", c_white, 20, 800, 1, true, 1, "BOSS MODE");
	//draw_set_halign(fa_right);
	//test
	
	if ror_patch_note_show {
		#region //Credits / Patch Notes
		var _shown_notes = ror_patch_note_show_array;
		draw_set_halign(fa_center);
		textDraw(480, 30, "fName", c_white, 20, 800, 1, false, 1, "Press Special to Back Out");
		textDraw(480, 50, "fName", c_white, 20, 800, 1, false, 1, "Scroll with Up and Down");
		draw_set_halign(fa_left);
		var _offset = 50;
		for (var i = obj_stage_main.ror_patch_note_scroll; i < array_length(_shown_notes); i++) {
			for (var j = 0; j < array_length(_shown_notes[i]); j++) {
				//textDraw(480, 220, "fName", c_white, 20, 800, 1, true, 1, "(Crashing and lag can be expected)");
				var _curr = _shown_notes[i, j];
				var _color = _curr[0];
				var _text = _curr[2];
				switch(_curr[1]) {
					case 3: //Large Font
						var _font = "roaLBLFont";
						var _size = 30;
						var _indent = 0;
					break;				
					case 2: //Medium
						var _font = "medFont";
						var _size = 24;
						var _indent = 20;
					break;				
					case 1: //Small
						var _font = "fName";
						var _size = 14;
						var _indent = 40;
					break;				
					case 0: //Tiny
					default:
						var _font = "tinyFont";
						var _size = 8;
						var _indent = 60;
					break;
				}
				textDraw(20 + _indent, 30 + _offset, _font, _color, 20, 800, 1, false, 1, string(_text));
				_offset += _size;
			}
			_offset += 10;
		}
		#endregion
	} else {
		draw_set_halign(fa_center);
		draw_sprite_ext(sprite_get("ror_title"), 0, 480, 20, 1, 1, 0, c_white, 1);

		textDraw(480, 220, "fName", c_white, 20, 800, 1, true, 1, "(Crashing and lag can be expected)");
		
		//
		var _title_offset = 0;
		switch(obj_stage_main.ror_title_depth) {
			case 1:
				var _title_array = obj_stage_main.ror_gamemodes;
			break;
			default:
			case 0:	
				var _title_array = obj_stage_main.ror_title_menu;
			break;	
		}
		/*
		if get_gameplay_time() % 120 == 119 {
			ror_title_option++;
		}
		*/
		for (var i = 0; i < array_length(_title_array); i++) {
			draw_set_halign(fa_center);
			if (i == ror_title_option) {
				textDraw(480, 300 + _title_offset, "roaLBLFont", c_white, 20, 800, 1, false, 1, ">" + string(_title_array[i, 0]) + "<");
				draw_set_halign(fa_left);
				textDraw(20, 200, "fName", c_white, 20, 300, 1, false, 1, string(_title_array[i, 1]));
				_title_offset += 40;
			} else {
				textDraw(480, 300 + _title_offset, "fName", c_white, 20, 800, 1, false, 1, string(_title_array[i, 0]));
				_title_offset += 20;
			}
		}
	}
}
#endregion



//Start of Functions

#define draw_title_button(_check, _spr, _x, _y) {
	var _title_spr = sprite_get("title_buttons");
	var _x_offset = _x * 60;
	var _y_offset = _y * 60;
	_x += 480 + _x_offset;
	_y += 270 + _y_offset;
	//
	draw_sprite_ext(_title_spr, 0, _x, _y, 2, 2, 0, _check ? c_lime : c_red, 1);
	draw_sprite_ext(_title_spr, _spr, _x, _y, 2, 2, 0, c_white, 1);
}

#define textDrawYellow(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

//

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

switch(font) {
	case "font_chinese":
		draw_set_font(font_get(font));
	break;
	default:
		draw_set_font(asset_get(argument[2]));
	break;
}

//draw_set_font(font_get("font_chinese"));
//
//print(["China: ", font_get("font_chinese")])
//print(["fName: ", asset_get("roaLBLFont")])

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define luck_math(_luck) {
	//Luck Math
	var _common_rate = 50;
	var _rare_rate = 30;
	var _epic_rate = 16;

	var _total_luck = _luck
	var _luck_sign = sign(_luck) 
	for (var L = abs(_luck); L > 0; L--) {
		if (_common_rate > 12) {
			_common_rate -= 1 * _luck_sign;
			_rare_rate += .5 * _luck_sign;
			_epic_rate += .3 * _luck_sign;
			//_legend_rate += .2
		} else if (_rare_rate > 6) {
			_common_rate = 12;
			_rare_rate -= 1;
			_epic_rate += .75;
		} else if (_epic_rate > 2) {
			_rare_rate = 6;
			_epic_rate -= 1;
			if (_epic_rate < 2) {
				_epic_rate = 2;
			}
		} else {
			_epic_rate = 2;
			L = 0;
		}
	}
	
	var _legend_rate = 100 - (_common_rate + _rare_rate + _epic_rate);
	//
	_common_rate = round(clamp(_common_rate, 0, 100));
	_rare_rate = round(clamp(_rare_rate, 0, 100));
	_epic_rate = round(clamp(_epic_rate, 0, 100));
	_legend_rate = round(clamp(_legend_rate, 0, 100));
	//print([_total_luck, "Total: " + string(_common_rate + _rare_rate + _epic_rate + _legend_rate), _common_rate, _rare_rate, _epic_rate, _legend_rate])
	
	return [_common_rate, _rare_rate, _epic_rate, _legend_rate];
}

#define draw_pool_icons(_array, _offset, _menu_offset, _row_num) {
	//
	//rectDraw(0, 0, 1000, 1000, c_lime);
	//
	var _p_color = get_player_hud_color(pause_player)
	var _row_length = 20;
	var _x = 20 + (i % _row_length)  * 32;
	var _y = 140 + _offset * 32 + _menu_offset;
	//
	if practice_mode && is_aether_stage() {
		var _curr = _array[0, 0];
		switch(_curr.rarity) {
			case "C":
				var _color = 1;
			break;
			case "R":
				var _color = 2;
			break;
			case "E":
				var _color = 3;
			break;
			case "L":
				var _color = 4;
			break;
		}
		rectDraw(4, _y - 32, 643, _y + 1000, _color);
	}
	//
	for (var i = 0; i < array_length(_array); i++) {
		if (i > 0 && i % _row_length == 0) {
			_offset++
		}
		_x = 20 + (i % _row_length)  * 32;
		_y = 140 + _offset * 32 + _menu_offset;
		draw_sprite_ext( _array[i, 0].sprite, _array[i, 0].icon, _x, _y, 2, 2, 0, c_white, _array[i, 1] ? 1 : .25 )
		//
		var _item_mode = obj_stage_main.menu_pages[obj_stage_main.menu_page, 1][obj_stage_main.menu_pos, 0] == "";
		//if (menu_pos == array_length(menu_text) - 1) && (pool_cursor[0] == i && pool_cursor[1] == _row_num) {
		if (_item_mode) && (pool_cursor[0] == i && pool_cursor[1] == _row_num) {
			//Cursor
			var _cursor = sprite_get("cursor");
			draw_sprite_ext( _cursor, 0, _x, _y, 2, 2, 0, _p_color, 1 )
			//Card
			var _have_outline = false;
			var _x = 800
			var _y = 200
			//
			var _curr = _array[i, 0];
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
			//Big Cards
			draw_sprite_ext( sprite_get("card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, true )
			//
			draw_sprite_ext( sprite_get("icons"), _curr.icon, _x, _y - 16, 2, 2, 0, c_white, 1 )
			draw_set_halign(fa_center)
			textDraw(_x, _y, "fName", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
			textDraw(_x, _y + 20, "fName", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
			draw_set_halign(fa_left)
			//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
			textDraw(_x - 68, _y + 60, "fName", c_white, 20, 136, 1, _have_outline, 1, _curr.desc);
			if ("flavor" in _curr) { textDraw(_x - 68, _y + 140, "tinyFont", c_white, 8, 150, 1, _have_outline, 1, _curr.flavor) };
			//Tiny Card
			_y -= 120;
			draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, c_black, true )
			draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, true )
			//
			draw_sprite_ext( sprite_get("icons"), _curr.icon, _x - 64, _y - 18, 2, 2, 0, c_white, true )
			draw_set_halign(fa_left);
			textDraw(_x - 36, _y - 46, "fName", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
			textDraw(_x - 36, _y - 30, "tinyFont", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
			draw_set_halign(fa_left);
			//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
			if ("small_desc" in _curr) {
				textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, _have_outline, 1, _curr.small_desc);
			}	else {
				textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, _have_outline, 1, _curr.desc);
				//No Flavor text offline
			}
		}
	}	
	_offset++
	return _offset;
}

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);


#define draw_cards() {
	if obj_stage_main.game_paused { exit; }
	
	var _have_outline = false;
	var _device_player = obj_stage_main.device_player;
	var _is_online = obj_stage_main.game_online;
	
	var _display_items = true;
	with oPlayer {
		if (player == obj_stage_main.device_player) || !_is_online {
			if (taunt_down) {
				_display_items = false;
			}
		}
	}
	
	var x1 = 480
	var y1 = 160
	if ((obj_stage_main.round_state == "choose_item") || (obj_stage_main.round_state == "game_start" && get_gameplay_time() >= 120)) && _display_items {
		draw_set_valign(fa_top)
		if (_is_online) {
			y1 = 200
			
			//var _test_b = instance_exists(obj_stage_main.last_alive) && get_player_team(_device_player) != get_player_team(obj_stage_main.last_alive.player);
			//print([obj_stage_main.winner_chooses, obj_stage_main.last_alive == -4, _test_b])
			
			if (
					//obj_stage_main.choices_on_win || //Gamemode
					obj_stage_main.last_alive == -4 || //First Round
					(obj_stage_main.choices_on_win && get_player_team(_device_player) == get_player_team(obj_stage_main.last_alive.player)) || //Winner of Round
					(obj_stage_main.choices_on_loss && get_player_team(_device_player) != get_player_team(obj_stage_main.last_alive.player)) //Loser of Round
					//get_player_team(_device_player) != get_player_team(obj_stage_main.last_alive.player) //Not winner of the round
				) 
			{
				for (var i = 0; i < array_length(obj_stage_main.item_select[_device_player]); i++) {
					var _curr = obj_stage_main.item_select[_device_player, i];
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
					var _offset = 190;
					var _x = x1 + (i - 2) * _offset;
					var _y = y1 - 60;
					var _opacity = obj_stage_main.item_choice[_device_player, i] ? 1 : .25;
					//Cards
					draw_sprite_ext( sprite_get("card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, _opacity )
					//
					draw_sprite_ext( sprite_get("icons"), _curr.icon, _x, _y - 16, 2, 2, 0, c_white, 1 )
					draw_set_halign(fa_center)
					textDraw(_x, _y, "fName", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
					textDraw(_x, _y + 20, "fName", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
					draw_set_halign(fa_left)
					//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
					textDraw(_x - 68, _y + 60, "fName", c_white, 20, 136, 1, _have_outline, 1, _curr.desc);	
					if ("flavor" in _curr) { textDraw(_x - 68, _y + 140, "tinyFont", c_white, 8, 150, 1, _have_outline, 1, _curr.flavor) };
					//
					//Cursor
					var _cursor = sprite_get("cursor");
					with obj_stage_main.main_players[_device_player - 1] {
						if (obj_stage_main.last_alive != self || obj_stage_main.choices_on_win) {
							//if ((!_is_online) || (player == _device_player)) && !obj_stage_main.ready_players[player] {
							//if ((!_is_online) || (player == _device_player)) && (obj_stage_main.last_alive == -4 || get_player_team(obj_stage_main.last_alive.player) != get_player_team(player)) {
							if (
								//obj_stage_main.choices_on_win || //Gamemode
								obj_stage_main.last_alive == -4 || //First Round
								//get_player_team(obj_stage_main.last_alive.player) != get_player_team(player) //Not winner of the round
								//
								(obj_stage_main.choices_on_win && get_player_team(player) == get_player_team(obj_stage_main.last_alive.player)) || //Winner of Round
								(obj_stage_main.choices_on_loss && get_player_team(player) != get_player_team(obj_stage_main.last_alive.player))//Loser of Round
							) {
								var _x = x1 + (obj_stage_main.cursor_pos[player] - 2) * _offset;
								var _y = y1 - 60;
								draw_sprite_ext( _cursor, 0, _x, _y - 16, 2, 2, 0, get_player_hud_color( player ), 1 )
							}
						}
					}
					//
				}
			}
		} else {
			for (var j = 1; j <= 4; j++) {
				var _curr_player = j;
				if is_player_on(j) {
					//Color
					//print(sin(round_state_timer))
					//var _dark = clamp(150, sin(round_state_timer/ 15) * 50 + 200, 255);
					//var _dark = 120;
					var _dark = 50;
					var _red = 		clamp(color_get_red(get_player_hud_color(j)) - _dark, 0 , 255);
					var _green = 	clamp(color_get_green(get_player_hud_color(j))- _dark, 0 , 255);
					var _blue =		clamp(color_get_blue(get_player_hud_color(j))- _dark, 0 , 255);
					var _hud_color = make_color_rgb(_red, _green, _blue);
					//
					//var _y = y1 - 60 + (j - 1) * 104;
					var _y = y1 - 60 + (j - 1) * 110;
					rectDraw(0, _y - 60, 960, _y + 39, _hud_color)
					for (var i = 0; i < array_length(obj_stage_main.item_select[_curr_player]); i++) {
						var _curr = obj_stage_main.item_select[_curr_player, i];
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
						var _offset = 190;
						var _x = x1 + (i - 2) * _offset;
						var _opacity = obj_stage_main.item_choice[_curr_player, i] ? 1 : .5;
						//Cards
						var _last_alive = false;
						
						with oPlayer {
							if instance_exists(obj_stage_main.last_alive) && (get_player_team(obj_stage_main.last_alive.player) == get_player_team(player) && player == j) {
								_last_alive = true;
							}
						}
						//
						//if !(_last_alive) || obj_stage_main.choices_on_win {
						if  
							(obj_stage_main.choices_on_win && _last_alive) || //Winner of Round
							(obj_stage_main.choices_on_loss && !_last_alive)//Loser of Round
						{
							/*
							draw_sprite_ext( sprite_get("mini_card"), 0, _x, _y - 16, 2, 2, 0, _color, _opacity )
							//
							draw_sprite_ext( sprite_get("icons"), _curr.icon, _x - 60, _y - 14, 2, 2, 0, c_white, 1 )
							draw_set_halign(fa_left)
							textDraw(_x - 26, _y - 40, "tinyFont", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
							textDraw(_x - 26, _y - 30, "tinyFont", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
							draw_set_halign(fa_left)
							//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
							textDraw(_x - 68, _y, "tinyFont", c_white, 8, 136, 1, _have_outline, 1, _curr.desc);
							*/
							draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, c_black, true )
							draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, _opacity )
							//
							draw_sprite_ext( sprite_get("icons"), _curr.icon, _x - 64, _y - 18, 2, 2, 0, c_white, true )
							draw_set_halign(fa_left);
							textDraw(_x - 36, _y - 46, "fName", c_white, 20, 150, 1, _have_outline, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
							textDraw(_x - 36, _y - 30, "tinyFont", c_white, 20, 150, 1, _have_outline, 1, "Max: " + string(_curr.max));			
							draw_set_halign(fa_left);
							//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, _have_outline, 1, _curr.desc);
							if ("small_desc" in _curr) {
								textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, _have_outline, 1, _curr.small_desc);
							}	else {
								textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, _have_outline, 1, _curr.desc);
								//No Flavor text offline
							}
						}
						//
						//Cursor
						var _cursor = sprite_get("cursor");
						with obj_stage_main.main_players[_curr_player - 1] {
							//if (obj_stage_main.last_alive != self || obj_stage_main.choices_on_win) {
								//if ((!_is_online) || (player == _curr_player)) && !obj_stage_main.ready_players[player] {
								//if ((!_is_online) || (player == _curr_player)) && (obj_stage_main.last_alive == -4 || get_player_team(obj_stage_main.last_alive.player) != get_player_team(player)) {
								if (
									//obj_stage_main.choices_on_win || //Gamemode
									obj_stage_main.last_alive == -4 || //First Round
									(obj_stage_main.choices_on_win && _last_alive) || //Winner of Round
									(obj_stage_main.choices_on_loss && !_last_alive)//Loser of Round
								) {
									var _x = x1 + (obj_stage_main.cursor_pos[player] - 2) * _offset;
									draw_sprite_ext( _cursor, 0, _x - 64, _y - 18, 2, 2, 0, get_player_hud_color( player ), 1 )
								}
							//}
						}
						//
					}
				}
			}
		}
		draw_set_halign(fa_right)	
	}
	
	draw_set_halign(fa_center)
}

#define attack_to_name(_attack) {
	switch(_attack) {
		case AT_JAB: return "Jab" break;
		case AT_DATTACK: return "Dash Attack" break;
		case AT_TAUNT: return "Taunt" break;
		case AT_TAUNT_2: return "Taunt 2" break;
		//Tilts
		case AT_FTILT: return "Forward Tilt" break;
		case AT_DTILT: return "Down Tilt" break;
		case AT_UTILT: return "Up Tilt" break;
		//Strong
		case AT_FSTRONG: return "Forward Strong" break;
		case AT_FSTRONG_2: return "Forward Strong 2" break;
		case AT_DSTRONG: return "Down Strong" break;
		case AT_DSTRONG_2: return "Down Strong 2" break;
		case AT_USTRONG: return "Up Strong" break;
		case AT_USTRONG_2: return "Up Strong 2" break;
		//Specials
		case AT_NSPECIAL: return "Neutral Special" break;
		case AT_NSPECIAL_2: return "Neutral Special 2" break;
		case AT_NSPECIAL_AIR: return "Neutral Special (Air)" break;
		case AT_FSPECIAL: return "Forward Special" break;
		case AT_FSPECIAL_2: return "Forward Special 2" break;
		case AT_FSPECIAL_AIR: return "Forward Special (Air)" break;
		case AT_DSPECIAL: return "Down Special" break;
		case AT_DSPECIAL_2: return "Down Special 2" break;
		case AT_DSPECIAL_AIR: return "Down Special (Air)" break;
		case AT_USPECIAL: return "Up Special" break;
		case AT_USPECIAL_2: return "Up Special 2" break;
		case AT_USPECIAL_GROUND: return "Up Special (Grounded)" break;
		//Aerials
		case AT_NAIR: return "Neutral Aerial" break;
		case AT_FAIR: return "Forward Aerial" break;
		case AT_DAIR: return "Down Aerial" break;
		case AT_BAIR: return "Back Aerial" break;
		case AT_UAIR: return "Up Aerial" break;
		//Throws
		case AT_NTHROW: return "Neutral Throw" break;
		case AT_FTHROW: return "Forward Throw" break;
		case AT_DTHROW: return "Down Throw" break;
		case AT_UTHROW: return "Up Throw" break;
		//Extras
		case AT_EXTRA_1: return "Extra 1" break;
		case AT_EXTRA_2: return "Extra 2" break;
		case AT_EXTRA_3: return "Extra 3" break;
		default: return _attack break;
	}	
}

#define draw_graph_ext(_array) {
	if !array_length(_array) {
		return;
	}
	
	textDraw(480, 100, "fName", c_white, 20, 500, 1, true, 1, string(_array[0, 0] + " Graph"));
	//Variable Setting
	var _x = 130;
	var _gw = graph_width;
	var _y = 540 - 80;
	var _gh = graph_height;
	var _border = 4;
	var _icon_spr = sprite_get("icons");
	//Graph Values
	//print(_array[0, 0]);
	switch(_array[0, 0]) {
		case "Time":
			var _x_axis_min = 1;
			var _x_axis_max = obj_stage_main.round_number;
			var _x_axis_title = "Round Number"
			//
			var _min_value = infinity;
			var _max_value = -infinity
			with oPlayer {
				for (var i = 0; i < array_length(_array[player]); i++) {
					if _array[player, i] < _min_value {
						_min_value = _array[player, i];
					}
					if _array[player, i] > _max_value {
						_max_value = _array[player, i];
					}
				}
			}
			//
			var _y_axis_min = _min_value;
			var _y_axis_max = _max_value;
			var _y_axis_title = "Total Time"
			//Hard Coded Sprite Indicator
			//draw_sprite_ext(_icon_spr, 111, _x + 20, _y - _gh - 10, 2, 2, 0, c_white, true);
		break;
		case "Luck":
			var _x_axis_min = 0;
			var _x_axis_max = obj_stage_main.round_number;
			var _x_axis_title = "Round Number"
			//
			var _min_value = infinity;
			var _max_value = -infinity
			with oPlayer {
				for (var i = 0; i < array_length(_array[player]); i++) {
					if _array[player, i] < _min_value {
						_min_value = _array[player, i];
					}
					if _array[player, i] > _max_value {
						_max_value = _array[player, i];
					}
				}
			}
			//
			var _y_axis_min = _min_value;
			var _y_axis_max = _max_value;
			var _y_axis_title = "Total Luck"
			//Hard Coded Sprite Indicator
			//draw_sprite_ext(_icon_spr, 38, _x + 20, _y - _gh - 10, 2, 2, 0, c_white, true);
		break;
		case "Items":
			var _x_axis_min = 0;
			var _x_axis_max = obj_stage_main.round_number;
			var _x_axis_title = "Round Number"
			//
			var _min_value = infinity;
			var _max_value = -infinity
			with oPlayer {
				for (var i = 0; i < array_length(_array[player]); i++) {
					if _array[player, i] < _min_value {
						_min_value = _array[player, i];
					}
					if _array[player, i] > _max_value {
						_max_value = _array[player, i];
					}
				}
			}
			//
			var _y_axis_min = _min_value;
			var _y_axis_max = _max_value;
			var _y_axis_title = "Total Luck"
			//Hard Coded Sprite Indicator
			//draw_sprite_ext(_icon_spr, 59, _x + 20, _y - _gh - 10, 2, 2, 0, c_white, true);
		break;
		case "Points":
		default:
			var _x_axis_min = 0;
			var _x_axis_max = obj_stage_main.round_number;
			var _x_axis_title = "Round Number"
			//
			var _y_axis_min = 0;
			var _y_axis_max = obj_stage_main.points_to_win;
			var _y_axis_title = "Total Points"
			//Hard Coded Sprite Indicator
			//draw_sprite_ext(_icon_spr, 2, _x + 20, _y - _gh - 10, 2, 2, 0, c_white, true);
		break;
		
	}
	var _x_diff = _x_axis_max - _x_axis_min;
	var _y_diff = _y_axis_max - _y_axis_min;
	//Draw Basic Graph
	draw_rectangle_colour(_x - _border, _y + _border, _x + _gw + _border, _y - _gh - _border, c_black, c_black, c_black, c_black, false);
	draw_rectangle_colour(_x, _y, _x + _gw, _y - _gh, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	//Vertical Lines
	for (var i = 0; i <= 4; i++) {
		if (i > 0 && i < 4) {
			draw_line_width_colour(
				_x + (i / 4) * (graph_width),
				_y ,
				_x + (i / 4) * (graph_width),
				_y - graph_height,
				2,
				c_ltgray,
				c_ltgray
			);
		}
		textDraw(_x + (i / 4) * (graph_width), _y + 10, "fName", c_red, 20, 500, 1, true, 1, string( round((i * _x_diff / 4) + _x_axis_min)) );
	}
	//Horizontal Lines
	for (var i = 0; i <= 4; i++) {
		if (i > 0 && i < 4) {
			draw_line_width_colour(
				_x ,
				_y - (i / 4) * (graph_height),
				_x + graph_width,
				_y - (i / 4) * (graph_height),
				2,
				c_ltgray,
				c_ltgray
			);
		}
		textDraw(_x + graph_width + 20, _y - (i / 4) * (graph_height + 5), "fName", c_lime, 20, 500, 1, true, 1, string( round((i * _y_diff / 4) + _y_axis_min)) );
	}
	//Player Lines

	var _test_num = 999
	with oPlayer {
		var _last_point = [_x_axis_min, _array[0, 0] == "Time" ? _array[player, 1] : _y_axis_min];
		for (var i = _x_axis_min; i < array_length(_array[player]); i++) {
			if !(_array[0, 0] == "Time" && _array[player, i] == 0) {
				draw_line_width_colour(
					_x + ((_last_point[0] - _x_axis_min ) / _x_diff) * _gw,
					//_y - (_last_point[1] / _y_diff),
					_y - ((_last_point[1] - _y_axis_min) / _y_diff) * _gh,
					_x + ((i - _x_axis_min) / _x_diff) * _gw,
					_y - ((_array[player, i]  - _y_axis_min)/ _y_diff) * _gh,
					2,
					get_player_hud_color(player),
					get_player_hud_color(player)
				);
				_last_point = [i, _array[player, i]];
			} else {
				_last_point[0] = i;
			}
		}
	}

	//
}

#define draw_graph_box(_array, _num) {
	textDraw(480, 100, "fName", get_player_hud_color(main_players[_num].player), 20, 500, 1, true, 1, string(_array[0, 0]) + " " + string(_array[0, 3] + 1) + " Stats Graph");
	//Variable Setting
	var _x = 130;
	var _gw = graph_width;
	var _y = 540 - 80;
	var _gh = graph_height;
	var _border = 4;
	var _icon_spr = sprite_get("icons");
	var _outline_spr = sprite_get("icons_outline");
	//Graph Values
	//Draw Basic Graph
	draw_rectangle_colour(_x - _border, _y + _border, _x + _gw + _border, _y - _gh - _border, c_black, c_black, c_black, c_black, false);
	draw_rectangle_colour(_x, _y, _x + _gw, _y - _gh, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	//
	var _index = 0;
	var _max_i = 20;
	var _ioffset = 24;
	var _xpos = 150;
	var _ypos = 200;
	
	for (var i = 0; i < array_length(main_players[_num].ror_items); i++) {
		var _icon = main_players[_num].ror_items[i].icon;
		var _count = 1;
		var _iarray = main_players[_num].ror_items
		var _draw_name = _iarray[i].name		
		//1 Item Per
		var _item_num = i;
		while (i + 1 < array_length(_iarray) && _iarray[i + 1].name == _draw_name) {
			i++;
			_count++
		}
		
		switch(_iarray[i].rarity) {
			case "C":
				var _color = c_white;
			break;
			case "R":
				var _color = c_blue;
			break;
			case "E":
				var _color = c_purple;
			break;
			case "L":
				var _color = c_yellow;
			break;
		}
		
		//var
		var _ix = _index % _max_i;
		var _iy = floor(_index / _max_i);	

		
		draw_sprite_ext(_outline_spr, _icon, _xpos + (_ix * _ioffset), _ypos + (_iy * _ioffset), 2, 2, 0, _color, true);
		draw_sprite_ext(_icon_spr, _icon, _xpos + (_ix * _ioffset), _ypos + (_iy * _ioffset), 2, 2, 0, c_white, true);
		//draw_sprite_ext(_num_spr, _count, _xpos - 18, _ypos - 40, 2, 2, 0, c_white, true);
		draw_set_halign(fa_right);
		textDraw(_xpos + 18 + (_ix * _ioffset), _ypos - 40 + (_iy * _ioffset), "fName", c_white, 200, 1500, 1, true, 1, "x" + string(_count));
		
		_index++;
	}
	
	//
	draw_set_halign(fa_left)
	_xpos = _xpos + ((_max_i + 1) * _ioffset);
	_ypos = _ypos - 24;
	textDraw(_xpos, _ypos + 24 * 0, "fName", c_white, 200, 1500, 1, true, 1, "Damage Taken: ");
	textDraw(_xpos, _ypos + 24 * 1, "fName", c_white, 200, 1500, 1, true, 1, string(main_players[_num].ror_final.ror_total_damage_taken) + "%");	
	textDraw(_xpos, _ypos + 24 * 2, "fName", c_white, 200, 1500, 1, true, 1, "Damage Given: ");
	textDraw(_xpos, _ypos + 24 * 3, "fName", c_white, 200, 1500, 1, true, 1, string(main_players[_num].ror_final.ror_total_damage_given) + "%");	
	textDraw(_xpos, _ypos + 24 * 4, "fName", c_white, 200, 1500, 1, true, 1, "Damage Healed: ");
	textDraw(_xpos, _ypos + 24 * 5, "fName", c_white, 200, 1500, 1, true, 1, string(main_players[_num].ror_final.ror_total_damage_healed) + "%");
	//
	
	return;

}

#define tierlist_maker() {
	var _outline_spr = sprite_get("icons_outline");
	
	var _arrays = [
		[items_custom_commons, c_white], 
		[items_custom_rares, c_blue], 
		[items_custom_epics, c_purple], 
		[items_custom_legends, c_yellow]
	];
	
	var _item_count = 0;
	var _scale = .5;
	var _shift = 10;
	var _max = 40;
	
	rectDraw(0, 0, 1000, 1000, c_green);
	rectDraw(.5, 1.5, (_shift - 1) * _max - .5, _shift * _max, c_lime);
	
	for (var i = 0; i < array_length(_arrays); i++) {
		var _color = _arrays[i, 1];
		var _array = _arrays[i, 0]
		for (var j = 0; j < array_length(_arrays[i, 0]); j++) {
			var _xpos = (5) + (_item_count % _max) * (_shift - 1);
			var _ypos = _shift + floor(_item_count / _max) * (_shift - 1);
			var _item = _array[j, 0]
			draw_sprite_ext(_outline_spr, _item.icon, _xpos, _ypos, _scale, _scale, 0, _color, true);
			draw_sprite_ext(_item.sprite, _item.icon, _xpos, _ypos, _scale, _scale, 0, c_white, true)
			//
			_item_count++;
		}
	}
//if (true) {
//	var _icon_offset = 0;
//	rectDraw(0, 0, 1000, 1000, c_lime);
//	_icon_offset = draw_pool_icons(items_custom_commons, _icon_offset, 0, 30);
//	_icon_offset = draw_pool_icons(items_custom_rares, _icon_offset, 0, 30);
//	_icon_offset = draw_pool_icons(items_custom_epics, _icon_offset, 0, 30);
//	_icon_offset = draw_pool_icons(items_custom_legends, _icon_offset, 0, 30);
//	exit;
//}
}

#define draw_single_card(_x, _y, _curr) {
	//
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
	//
	draw_set_halign(fa_left);
	draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, c_black, true )
	draw_sprite_ext( sprite_get("tiny_card"), _rar_spr, _x, _y - 16, 2, 2, 0, _color, true )
	//
	draw_sprite_ext( sprite_get("icons"), _curr.icon, _x - 64, _y - 18, 2, 2, 0, c_white, true )
	draw_set_halign(fa_left);
	textDraw(_x - 36, _y - 46, "fName", c_white, 20, 150, 1, false, 1, "translated_name" in _curr ? _curr.translated_name : _curr.name);
	textDraw(_x - 36, _y - 30, "tinyFont", c_white, 20, 150, 1, false, 1, "Max: " + string(_curr.max));			
	draw_set_halign(fa_left);
	//
	if ("small_desc" in _curr) {
		textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, false, 1, _curr.small_desc);
	}	else {
		textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, false, 1, _curr.desc);
		//No Flavor text offline
	}
}

#define check_choice_count(_player) {
	with obj_stage_main {
		//print(choose_extra);
		var _amount = 0;
		if obj_stage_main.round_state == "game_start" || obj_stage_main.round_state == "title_screen" {
			_amount = obj_stage_main.choices_on_start;
		} else if (instance_exists(last_alive) && get_player_team(_player) == get_player_team(last_alive.player)) {
			_amount = obj_stage_main.choices_on_win;
		} else {
			_amount = obj_stage_main.choices_on_loss;
		}
		if _amount {
			for (var _c = 0; _c < array_length(main_players); _c++) {
				if main_players[_c].player == _player {	
					//Dragon Balls
					if main_players[_c].ror_limitless_max { _amount = 999; }
					//
					//print(["Choices: ", clamp(_amount + choose_extra[i], 1, 5)]);
					//print(["Extra Choices: ", choose_extra[i]]);
					return clamp(_amount + choose_extra[_player], 1, 5);
				}
			}
		}
		//print(["Choices: ", clamp(_amount + choose_extra[_player], 1, 5)]);
	}	
	return 0;
}