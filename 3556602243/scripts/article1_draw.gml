//
draw_set_halign(fa_center)
draw_set_valign(fa_top)

var _have_outline = false;
var _device_player = obj_stage_main.device_player;
var _is_online = obj_stage_main.game_online;
var _assist_img = sprite_get("ror_assists")
var _outline_spr = sprite_get("icons_outline");
var _icon_spr = sprite_get("icons");
var _num_spr = sprite_get("lag_numbers");
var _dragoon_spr = sprite_get("dragoon_icon");
var _cursor = sprite_get("cursor");
var _ice_spr = sprite_get("ror_ice");
var _decay_spr = sprite_get("ror_decay_icon");
var _shield_spr = sprite_get("ror_shield");
var _wave_spr = sprite_get("ror_waves");
var _floaty_spr = sprite_get("ror_floaty");
var _yield_spr = sprite_get("ror_yield");
var _shenron_spr = sprite_get("ror_shenron");
//print("hi")
//print(obj_stage_main.item_select)

if obj_stage_main.game_paused { exit; }

var _display_items = true;

var _dragoon_owner = -4;
with oPlayer {
	var _offset = 0;
	//Display Items
	if (player == obj_stage_main.device_player) {
		if (taunt_down) {
			_display_items = false;
		}
	}
	//Dragoon
	if ror_dragoon_state != -4 {
		_dragoon_owner = self;
	}
}


//Shield
depth = -100;
with oPlayer {
	if ror_is_shielding {
		draw_sprite_ext(_shield_spr, 0, x, y - char_height / 2, 2, 2, 0, get_player_hud_color(player), clamp((ror_shield_strength / ror_shield_strength_max), .2, .8))
	}
}

//

if instance_exists(_dragoon_owner) {
	switch(_dragoon_owner.ror_dragoon_state) {
		case "start":
			//
			var _dragoon_offset = _dragoon_owner.state_timer >= 20 ? _dragoon_owner.state_timer - 20 : 0;
			if !_dragoon_offset {
				draw_sprite_ext(sprite_get("dragoon"), 1, _dragoon_owner.x - (40 - _dragoon_owner.state_timer), _dragoon_owner.y - (40 - _dragoon_owner.state_timer), 1, 1, 0, c_white, true);
				draw_sprite_ext(sprite_get("dragoon"), 2, _dragoon_owner.x + (40 - _dragoon_owner.state_timer), _dragoon_owner.y - (40 - _dragoon_owner.state_timer), 1, 1, 0, c_white, true);
				draw_sprite_ext(sprite_get("dragoon"), 0, _dragoon_owner.x + 00, _dragoon_owner.y + (40 - _dragoon_owner.state_timer), 1, 1, 0, c_white, true);
			} else {
				draw_sprite_ext(sprite_get("dragoon_full"), 0, _dragoon_owner.x, _dragoon_owner.y - 20 - _dragoon_offset * 40, 1, 1, 0, c_white, true)
			}
			//
			with _dragoon_owner {
				shader_start();
			}
			draw_sprite_ext(_dragoon_owner.sprite_index, _dragoon_owner.image_index, _dragoon_owner.x, _dragoon_owner.y - _dragoon_offset * 40, _dragoon_owner.spr_dir * (_dragoon_owner.small_sprites ? 2 : 1), _dragoon_owner.small_sprites ? 2 : 1, 0, c_white, true)
			with _dragoon_owner {
				shader_end();
			}
		break;
		case "cursor":
			draw_sprite_ext( _cursor, 0, obj_stage_main.dragoon_x, obj_stage_main.dragoon_y, 4, 4, 0, get_player_hud_color( _dragoon_owner.player ), 1 );
		break;
		case "shoot":
			//
			var _dragoon_offset = _dragoon_owner.state_timer - 4; //10
			draw_sprite_ext(sprite_get("dragoon_full"), 0, obj_stage_main.dragoon_x, obj_stage_main.dragoon_y - 20 - _dragoon_offset * 64, 1, 1, 0, c_white, true)
			with _dragoon_owner {
				shader_start();
			}
			draw_sprite_ext(_dragoon_owner.sprite_index, _dragoon_owner.image_index, obj_stage_main.dragoon_x, obj_stage_main.dragoon_y - 20 - _dragoon_offset * 64, _dragoon_owner.spr_dir * (_dragoon_owner.small_sprites ? 2 : 1), _dragoon_owner.small_sprites ? 2 : 1, 0, c_white, true)
			with _dragoon_owner {
				shader_end();
			}
		break;
	}
}

//waves
if (obj_stage_main.waves_active) {
	var _middle = room_width / 2;
	var _wave_height = obj_stage_main.wave_height;
	var _wave_color = c_blue;
	var _wave_speed = get_gameplay_time() / 8;
	//Lag Machine
	for (var i = -3; i <= 3; i++) {
		draw_sprite_ext(_wave_spr, _wave_speed, _middle - 256 * i, _wave_height, 2, 2, 0, _wave_color, .5);
	}
	//
	with oPlayer {
		var _float_max = ror_swim_timer_max + (60 * (ror_card_floatation_device - 1));
		if (visible && ror_card_floatation_device) && ror_swim_timer < _float_max {
			draw_sprite_ext(_floaty_spr, 0, x, y - char_height * .25, 1, 1, 0, get_player_hud_color(player), ((_float_max - ror_swim_timer) / _float_max) + .25);
		}
	}
	//
}

/*
if (obj_stage_main.round_state == "shenron") {
	draw_sprite_ext(_shenron_spr, 0, get_marker_x(96), get_marker_y(96), 2, 2, 0, c_white, 1);
}
*/


//Player Visuals
var num_player_objs = instance_number(oPlayer);
for (var pnum = 0; pnum < num_player_objs; pnum++) with instance_find(oPlayer, pnum) {
	if !visible { continue; };
	//print(["Reals", "ror_card_back" in self])
	
	if (ror_card_back) {
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && check_attack_array(attack, ror_attacks_fstrong)) {
			//
			shader_start();
			draw_sprite_ext(sprite_index, image_index, x, y, -spr_dir * (1 + small_sprites), (1 + small_sprites), 0, c_white, true);
			shader_end();
		}
	}
	
	
	/*
	if ("ror_card_transparent" in self && ror_card_transparent && spr_dir == 0) {
		shader_start();
		draw_sprite_ext( sprite_index, image_index, x, y, prev_spr_dir * (small_sprites + 1), (small_sprites + 1), 0, c_white, .5);
		shader_end();
	}
	*/
	var _bar = 60;
	var _max = 0;
	var _offset = 0;
	
	//Freeze Stacks
	if ror_freeze_stacks { 
		for (var i = 0; i < ror_freeze_stacks; i++) {
			draw_sprite_ext(_ice_spr, 0, x - 35 + i * 15, y + 15 + _offset, 1, 1, 0, c_white, true);
		}
		_offset += 20; 
	}
	//	
	
	//Freeze Stacks
	if ror_decay_health { 
		var _decay_offset = -(char_height + 64 + 
			!(
				get_player_name(player) == "" ||
				get_player_name(player) == "P1" ||
				get_player_name(player) == "P2" ||
				get_player_name(player) == "P3" ||
				get_player_name(player) == "P4"			
			) * 16
		);
		//print(_decay_offset)
		draw_sprite_ext(_decay_spr, 0, x - 20, y + _decay_offset, 1, 1, 0, c_green, true);
		//draw_sprite_ext(_decay_spr, 0, x + 20, y - char_height - 20, 1, 1, 0, c_purple, true);
		draw_set_halign(fa_left);
		textDraw(x, y + _decay_offset, "fName", c_green, 20, 150, 1, true, 1, string(ror_decay_health) + "%");
	}
	//
	
	//Bazaar
	if (obj_stage_main.round_state == "break_round") {
		//
		if (ror_card_great_asset) {
			draw_sprite_ext(_yield_spr, 0, x, y - char_height - 50, 1, 1, 0, c_white, true);
		}		
		//
		var _dave = obj_stage_main.card_common_luck.icon;
		//ror_card_daves
		var _dave_x = -65;
		//Commons
		draw_sprite_ext(_outline_spr, 	_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_white, true);
		draw_sprite_ext(_icon_spr, 		_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_white, true);
		draw_sprite_ext(_num_spr, 		ror_card_daves[0], 	x + _dave_x, y + 20, 2, 2, 0, c_white, true)
		_dave_x += 40;		
		//Rares
		draw_sprite_ext(_outline_spr, 	_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_blue, true);
		draw_sprite_ext(_icon_spr, 		_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_white, true);
		draw_sprite_ext(_num_spr, 		ror_card_daves[1], 	x + _dave_x, y + 20, 2, 2, 0, c_white, true)
		_dave_x += 40;	
		//Epics
		draw_sprite_ext(_outline_spr, 	_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_purple, true);
		draw_sprite_ext(_icon_spr, 		_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_white, true);
		draw_sprite_ext(_num_spr, 		ror_card_daves[2], 	x + _dave_x, y + 20, 2, 2, 0, c_white, true)
		_dave_x += 40;	
		//Legend
		draw_sprite_ext(_outline_spr, 	_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_yellow, true);
		draw_sprite_ext(_icon_spr, 		_dave, 				x + _dave_x, y + 40, 2, 2, 0, c_white, true);
		draw_sprite_ext(_num_spr, 		ror_card_daves[3], 	x + _dave_x, y + 20, 2, 2, 0, c_white, true)
		_dave_x += 40;
		//
		_offset += 40
		//
		if url == 2390163800 { //Segerak
			textDraw(x, y + _offset + 8, "fName", 	  c_white, 1000, 1000, 1, 	true, true, 	"Segerak Only: Hold Up to use Objects");
			_offset += 10;
		}
	}

	//Dragoons
	var _dragoon_count = 0;
	for (var i = 0;i < array_length(ror_dragoon_parts); i++) {
		if (ror_dragoon_parts[i] == true) {
			draw_sprite_ext(_dragoon_spr, i, x - 32 + (_dragoon_count * 32), y + 32 + _offset, 1, 1, 0, c_white, true);
			_dragoon_count++;
		}
	}
	if (_dragoon_count) {
		_offset += 32;
	}
	
	//End of Dragoons
		
		
	if (obj_stage_main.round_state == "game_start" || obj_stage_main.round_state == "choose_item") {
		if (special_down && ror_cancel) && ((obj_stage_main.last_alive != self && !obj_stage_main.ready_players[player]) || obj_stage_main.choices_on_win) && get_gameplay_time() >= 120 && (obj_stage_main.round_state_timer >= 60) {
			rectDraw(x - ror_cancel_max / 2, y + 5, x + ror_cancel_max / 2, y + 10, c_maroon)
			rectDraw(x - ror_cancel_max / 2, y + 5, (x - ror_cancel_max / 2) + (ror_cancel_max - ror_cancel), y + 10, c_red)
			//
			_offset += 10;
		}
	}
	
	if (bazaar_skip_hold) {
		rectDraw(x - bazaar_skip_hold_max / 2, y + 5, x + bazaar_skip_hold_max / 2, y + 10, c_maroon)
		rectDraw(x - bazaar_skip_hold_max / 2, y + 5, (x - bazaar_skip_hold_max / 2) + (bazaar_skip_hold_max - bazaar_skip_hold), y + 10, c_red)
		//
		_offset += 10;
	}	
	
	if ror_scrapper_mode {
		var _array = ror_items
		var _pos = 0;
		/*
		for (var i = 0; i < array_length(ror_items); i++) {
			var _draw_name = ror_items[i].name;
			//Always Draw
			if (
				_draw_name == "Crazy Luck" ||
				_draw_name == "Crazy Luck+" ||
				_draw_name == "Crazy Luck++" ||
				_draw_name == "Crazy Luck+++"
			) {
				//1 Item Per
				while (i + 1 < array_length(ror_items) && ror_items[i + 1].name == _draw_name) {
					i++;
				}
				continue;
			}
			draw_sprite_ext( ror_items[i].sprite, ror_items[i].icon, x + _pos * 32, y + 32, 2, 2, 0, c_white, _pos == 0 ? 1 : .5)
			
			//1 Item Per
			while (i + 1 < array_length(ror_items) && ror_items[i + 1].name == _draw_name) {
				i++;
			}
			_pos++
		}
		*/
		//for (var i = 0; i < array_length(ror_scrap_draw_array); i++) {
		var _max_show = clamp(array_length(ror_scrap_draw_array) - 1, 0, 2);
		
		//var _x = x;
		//var _y = y;
		var _x = view_get_xview() + 120 + 240 * (player - 1);
		var _y = view_get_yview() + 60;
		for (var i = -_max_show; i <= _max_show; i++) {	
			draw_set_halign(fa_center);
			var _pos = (ror_scrap_pos + i + array_length(ror_scrap_draw_array)) % array_length(ror_scrap_draw_array)
			
			switch(ror_scrap_draw_array[_pos, 0].rarity) {
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
			
			draw_sprite_ext( _outline_spr, ror_scrap_draw_array[_pos, 0].icon, _x + i * 32, _y + 32, 2, 2, 0, _outline_color, i == 0 ? 1 : .5)
			draw_sprite_ext( ror_scrap_draw_array[_pos, 0].sprite, ror_scrap_draw_array[_pos, 0].icon, _x + i * 32, _y + 32, 2, 2, 0, c_white, i == 0 ? 1 : .5)
			//Amount of item
			draw_sprite_ext(_num_spr, ror_scrap_draw_array[_pos, 2], _x + i * 32, _y + 36, 2, 2, 0, c_white, true);

			
			//Number Display for Scrap
			//var _count = 1;
			//var _draw_name = _array[i].name
			////1 Item Per
			//while (i + 1 < array_length(_array) && _array[i + 1].name == _draw_name) {
			//	i++;
			//	_count++
			//}
			
			//
			
			
			if i == 0 {
				draw_mini(ror_scrap_draw_array[_pos, 0], _x, _y + 180);
				draw_set_halign(fa_center);
			}
		}
		
		//Icons
		/*
		for (var j = array_length(_array) > 1 ? -1 : 0; j < array_length(_array); j++) {
			var _card_num = (j + array_length(_array)) % array_length(_array);
			draw_sprite_ext( _array[_card_num].sprite, _array[_card_num].icon, x + j * 32, y + 32 + _offset, 2, 2, 0, c_white, j == 0 ? 1 : .5 );
		}
		*/
		draw_sprite_ext( _cursor, 0, _x, _y + 32, 2, 2, 0, get_player_hud_color( player ), 1 );
		//Text
		textDraw(_x, _y + 55, "fName", 	  c_red, 1000, 1000, 1, 	true, true, 	"Press Shield/Up to Exit");
		textDraw(_x, _y + 75, "fName", 	c_white, 1000, 1000, 1, 	true, true, 	"Press Left/Right to Scroll");
		textDraw(_x, _y + 95, "fName", 	c_green, 1000, 1000, 1, 	true, true, 	"Press Attack to Scrap");
		//_offset	+= 85;
	}
	
	if (ror_print_timer < ror_print_timer_max) {
		//print(ror_print_timer)
		_max = ror_print_timer_max;
		rectDraw(x - _bar / 2, y + 5 + _offset, x + _bar / 2, y + 10 + _offset, c_gray)
		rectDraw(x - _bar / 2, y + 5 + _offset, (x + _bar / 2) - clamp((ror_print_timer / _max), 0, 1) * (_bar + 1), y + 10 + _offset, c_purple)
		_offset += 8;
	}
	
	if (ror_is_ghost) {
		_max = ror_card_ghost * 180;
		rectDraw(x - _bar / 2, y + 5 + _offset, x + _bar / 2, y + 10 + _offset, c_gray)
		rectDraw(x - _bar / 2, y + 5 + _offset, (x - _bar / 2) + clamp((ror_ghost_timer / _max), 0, 1) * (_bar + 1), y + 10 + _offset, c_white)
		_offset += 8;
	}
	
	//Rogue Install
	if (ror_install_cards) {
		var _install 		= ror_install_active ? ror_install_timer		: ror_install_meter;
		var _install_max 	= ror_install_active ? ror_install_timer_length : ror_install_meter_max;
		var _install_color 	= ror_install_active ? c_aqua 					: c_blue;
		//_bar = 70;
		rectDraw(x - _bar / 2, y + 5 + _offset, x + _bar / 2, y + 10 + _offset, c_navy)
		if _install {
			rectDraw(
				(x - _bar / 2),
				y + 5 + _offset,
				(x - _bar / 2) + clamp((_install / _install_max), 0, 1) * (_bar + 1),
				y + 10 + _offset,
				_install_color
			);
		}
		
		/*
		if (ror_card_install_black_jack && ror_install_active) {
			draw_sprite_ext(
				sprite_index, 
				image_index,
				x + 2, 
				y + 2, 
				image_xscale, 
				image_yscale,  
				0, 
				c_yellow, 
				1
			);
		}
		*/
		/*
		print(
			[
				string(ror_install_cards ? "Install" : "Meter Building"),
				_install, 
				_install_max
			]
		)
		*/
		
		/*
		if (ror_install_timer <= 0){
			if (ror_install_meter > 0){
				rectDraw(x - _bar / 2, y + 5 + _offset, (x - _bar / 2) + (ror_install_meter / (ror_install_meter_max  * (ror_card_slow_start + 1) - ror_card_install_lower_max * install_lower_max_change)) * (_bar + 1), y + 10 + _offset, c_blue);
			}
		} else{
				rectDraw(x - _bar / 2, y + 5 + _offset, (x - _bar / 2) + (ror_install_timer / (ror_install_length * (ror_card_slow_start + 1) + ror_card_install_time * ror_install_time_change)) * (_bar + 1), y + 10 + _offset, c_aqua);
		}
		*/
		_offset += 8;
	}
	//_bar = 60;
	//
	
	if (ror_card_roman) {
		rectDraw(x - _bar / 2, y + 5 + _offset, x + _bar / 2, y + 10 + _offset, c_gray)
		if (ror_roman_meter) {
			rectDraw(x - _bar / 2, y + 5 + _offset, (x - _bar / 2) + clamp((ror_roman_meter / ror_roman_meter_max), 0, 1) * (_bar + 1), y + 10 + _offset, ror_roman_meter >= ror_roman_meter_cost ? c_lime : c_red);
		}
		_offset += 8;
	}
	
	if (ror_card_assist) {
		var _assist_count = 3;
		
		for (var i = 0; i < _assist_count; i++ ) {
			draw_sprite_ext(_assist_img, (ror_assist_char + i) % ror_assists_total, x + (i - 1) * 40, y + 10 + _offset, 1, 1, 0, i == 0 ? c_white : c_gray, true)
		}		
		_offset += 40;
		if (ror_assist_cooldown) {
			_max = 600 - (ror_card_assist - 1) * 90;
			rectDraw(x - _bar / 2, y + 5 + _offset, x + _bar / 2, y + 10 + _offset, c_gray)
			if (ror_card_assist) {
				rectDraw(x - _bar / 2, y + 5 + _offset, (x + _bar / 2) - clamp(((_max - ror_assist_cooldown) / _max), 0, 1) * (_bar + 1), y + 10 + _offset, c_blue);
			}
			_offset += 8;
		}
	}
	
    //r-00
    if (ror_card_r00){
        _bar = 50;
        rectDraw(x - _bar / 2, y + 5 + _offset, x + _bar / 2, y + 10 + _offset, c_gray)
        rectDraw(x - _bar / 2, y + 5 + _offset, (x + _bar / 2) - clamp(((ror_card_r00 - ror_flip_count) / ror_card_r00), 0, 1) * (_bar + 1), y + 10 + _offset, c_green);
        _offset += 8;
    }
    _bar = 60;
	
	if (obj_stage_main.show_hitbox) {
		if (ror_card_fools_gold || ror_card_blob_expansion) {
			draw_hitboxes();
		}
	}
}


#region 
if obj_stage_main.round_state == "break_round" {
	with obj_stage_article {
		if "object_type" in self && object_type = "printer" {
			if (should_draw_cards && card_info != -4) {
				draw_mini(card_info, x, y - 140);
			}
		}
	}
}
#endregion

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

return string_width_ext(argument[9], argument[4], argument[5]);

#define draw_hitboxes() {
	with pHitBox {
		// player == other.player { 
		//if player == player_id.player { 
		if player == other.player { 
			if (sprite_index == asset_get("hitbox_square_spr")) {
				var _sprite = 1;
			} else if (sprite_index == asset_get("hitbox_rounded_rectangle")) {
				var _sprite = 2;
			} else {
				var _sprite = 0;
			}
			var _angle = kb_angle
			if (kb_angle == 361) {
				_angle = 45;
			}
			//if (hitbox_timer > 1 || other.window_reset != true) {
			var _color = c_red;
			if (effect == 11) {
				_color = c_aqua;
			}
			if (type == 1 || mask_index == -1) {
				draw_sprite_ext(
					obj_stage_main.spr_shapes[_sprite], 
					0,
					x, 
					y, 
					image_xscale, 
					image_yscale,  
					0, 
					_color, 
					.5
				);
			}
		}
	}
}


#define draw_mini(_curr, _x, _y) {
	switch(_curr.rarity) {
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
	var _opacity = true;
	
	draw_sprite_ext( obj_stage_main.spr_tiny_card, 0, _x, _y - 16, 2, 2, 0, c_black, _opacity )
	draw_sprite_ext( obj_stage_main.spr_tiny_card, 0, _x, _y - 16, 2, 2, 0, _color, _opacity )
	//
	draw_sprite_ext( _curr.sprite, _curr.icon, _x - 64, _y - 18, 2, 2, 0, c_white, true )
	draw_set_halign(fa_left);
	textDraw(_x - 36, _y - 46, "fName", c_white, 20, 150, 1, true, _opacity, "translated_name" in _curr ? _curr.translated_name : _curr.name);
	textDraw(_x - 36, _y - 30, "tinyFont", c_white, 20, 150, 1, true, _opacity, "Max: " + string(_curr.max));			
	draw_set_halign(fa_left);
	//textDraw(_x - _offset / 2, _y + 60, "fName", _color, 20, 150, 1, true, 1, _curr.desc);
	if ("small_desc" in _curr) {
		textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, true, _opacity, _curr.small_desc);
	}	else {
		textDraw(_x - 76, _y - 8, "fName", c_white, 20, 150, 1, true, _opacity, _curr.desc);
		//No Flavor text offline
	}	
}

#define check_attack_array(_value, _array) {
	//_value is usually attack
	for (var _i = 0; _i < array_length(_array); _i++) {
		if (_array[_i] == _value) {
			return true;
		}
	}
	return false;
}