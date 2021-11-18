//Phone stuff
if(!small_sprites) exit;

if(yoshi_drum_enabled) {
	//Advance music tracking timer
	yoshi_drum_timer += delta_time;
	
	//Process metadata if it hasn't yet been processed
	if(yoshi_drum_metadata == false) {
		yoshi_drum_metadata = {
			microseconds_per_bar: yoshi_drum_userdata.beats_per_bar * (60 / yoshi_drum_userdata.beats_per_minute) * 1000000,
			data_length: array_length_1d(yoshi_drum_userdata.data),
			data: [
				
			]
		}
		for(var incrementeroo = 0; incrementeroo < yoshi_drum_metadata.data_length; incrementeroo++;) {
			var copying_data = yoshi_drum_userdata.data[@incrementeroo], copying_data_length = array_length_1d(copying_data);
			array_push(yoshi_drum_metadata.data, [
		/*0: PLAYED*/	true,
		/*1: TIMING*/	(copying_data[@0] / yoshi_drum_userdata.beats_per_bar) * yoshi_drum_metadata.microseconds_per_bar,
		/*2: PITCH*/	copying_data_length > 1?copying_data[@1]:1,
		/*3: VOLUME*/	copying_data_length > 2?copying_data[@2]:1,
		/*4: SOUND*/	copying_data_length > 3?copying_data[@3]:sound_get("yoshi_drum2")
			]);
		}
		yoshi_drum_timer -= (yoshi_drum_userdata.delay_beats / yoshi_drum_userdata.beats_per_bar) * yoshi_drum_metadata.microseconds_per_bar;
	}
	
	//Cycle the drum timer back to the beginning when the bar ends
	if(yoshi_drum_timer > yoshi_drum_metadata.microseconds_per_bar) {
		yoshi_drum_timer -= yoshi_drum_metadata.microseconds_per_bar;
		for(var data_index = 0; data_index < yoshi_drum_metadata.data_length; data_index++;)
			yoshi_drum_metadata.data[@data_index][@0] = true;
	}
	
	//Play drum sounds
	if(yoshi_drum_playing) {
		for(var data_index = 0; data_index < yoshi_drum_metadata.data_length; data_index++;) {
			var current_data = yoshi_drum_metadata.data[@data_index];
			if(current_data[@0] && yoshi_drum_timer >= current_data[@1]) {
				current_data[@0] = false;
				if(current_data[3] > 1)
					repeat(current_data[3])
						sound_play(current_data[@4], false, 0, 1, current_data[2]);
				else
					sound_play(current_data[@4], false, 0, current_data[3], current_data[2]);
			}
		}
	}
}

with(pHitBox) if(player != 0 && player_id == other && type == 2 && !(attack == AT_NSPECIAL && hbox_num == 2) && !(attack == AT_JAB)) {
	switch(identity.name) {
		case "Koopa Troopa Shell":
			var arrow_colour = c_white;
			if(!can_hit_self) arrow_colour = get_player_hud_color(player);
			
			draw_sprite_ext(spr_arrow, 0, x - 7 - view_get_xview(), y - 28 - view_get_yview(), 1, 1, 0, arrow_colour, 1.0);
		break;
	}
}

phone_offscr_sprite = sprite_get("char_" + neo_char.prefix + neo_power_checked.prefix + "offscreen"); // icon to display
phone_offscr_index = 0; // image_index of the icon

//Error warning display
if(debug_error_data[0]) {
	debug_error_data[1]--;
	if(debug_error_data[1] == 0) debug_error_data[0] = false;
	draw_sprite_ext(debug_error_data[2], debug_error_data[3], view_get_wview() / 2, view_get_hview() / 2, 2, 2, 0, c_white, clamp(debug_error_data[1] / 10, 0, 1));
}

var cur_time = get_gameplay_time();

//HUD Portrait
var hud_image = free, hud_portrait_x = temp_x + 28, hud_portrait_y = temp_y + 40, hud_sprite_colour = c_white, hud_shake_frames = hud_shake_time - cur_time;
if(neo_state == "Helpless Aerial" || (neo_animstate_checked == "death")) hud_image = 2;
if(state == PS_HITSTUN || state == PS_HITSTUN_LAND) hud_image = 2;
if(hud_shake_frames > 0) {
	hud_image = 2;
	var shake_mult = hud_shake_frames / 38;
	hud_portrait_x += ((cur_time % 2 == 1)?1:-1) * random_func(0, floor(32 * shake_mult), true) - (16 * shake_mult);
	hud_portrait_y += ((cur_time % 2 == 1)?1:-1) * random_func(1, floor(32 * shake_mult), true) - (16 * shake_mult);
	hud_sprite_colour = c_ltgray;
}

var hud_sprite = sprite_get("char_" + neo_char.prefix + ((neo_char.use_alts && neo_power_checked.has_alts)?neo_power_checked.alt_prefix:neo_power_checked.prefix) + "hud"), hud_sprite_h = sprite_get_height(hud_sprite);
shader_start();
draw_sprite_part_ext(hud_sprite, hud_image, 0, 0, 47, hud_sprite_h, hud_portrait_x, hud_portrait_y - hud_sprite_h, 1, 1, hud_sprite_colour, 1.0);
shader_end();

//Reserve Box
var reserve_box_x = temp_x + (boss_hud?112:32), reserve_box_y = temp_y + (boss_hud?-10:0);

if(reserve_scale > 1) {
	reserve_scale /= 1.1;
	if(reserve_scale <= 1) reserve_scale = 1;
}

reserve_box_y -= reserve_scale * 32;

draw_sprite_ext(sprite_get("hud_reserve_box"), 0, reserve_box_x, reserve_box_y, reserve_scale * 2, reserve_scale * 2, 0.0, neo_data.hud_colour, 1.0);
if(instant_reserve_available) draw_sprite_ext(sprite_get("hud_reserve_box"), 0, reserve_box_x, reserve_box_y, reserve_scale * 2, reserve_scale * 2, 0.0, neo_data.hud_flash_colour, 1.05 - (get_gameplay_time() % 40) / 40);
if(reserve_slot != RESERVE_OBJ.empty) {
	draw_sprite_ext(reserve_slot.sprite, 0, reserve_box_x, reserve_box_y, reserve_scale * reserve_slot.sprite_scale, reserve_scale * reserve_slot.sprite_scale, 0.0, (get_gameplay_time() > reserve_lock_time)?c_white:c_ltgray, (get_gameplay_time() > reserve_lock_time)?1.0:0.75);
}

//Reserve Access Tip
var reserve_access_tip = "none", reserve_tip_x = reserve_box_x, reserve_tip_y = reserve_box_y - 14 - (14 * 2 * reserve_scale);
var peril_warning_x = temp_x + (boss_hud?148:104), peril_warning_y = temp_y - 32;
if(in_peril && peril_time % 56 < 28) {
	// draw_sprite_ext(sprite_get("hud_peril"), 0, peril_warning_x, peril_warning_y, boss_hud?1.5:2, 2, 0, c_white, 1.0);
	reserve_access_tip = "peril";
}
else if(instant_reserve_available && get_gameplay_time() > reserve_lock_time)
	reserve_access_tip = "quickswap";

switch(reserve_access_tip) {
	case "none":
		
	break;
	case "peril":
		draw_sprite_ext(sprite_get("hud_peril"), 0, reserve_tip_x, reserve_tip_y - 6, 2, 2, 0, c_white, 1.0);
	break;
	case "quickswap":
		draw_sprite_ext(sprite_get("hud_quickswap_col"), 0, reserve_tip_x, reserve_tip_y, 2, 2, 0, neo_data.hud_colour, 1.0);
		draw_sprite_ext(sprite_get("hud_quickswap_col"), 0, reserve_tip_x, reserve_tip_y, 2, 2, 0, neo_data.hud_flash_colour, 1.05 - (get_gameplay_time() % 40) / 40);
		draw_sprite_ext(sprite_get("hud_quickswap_nocol"), 0, reserve_tip_x, reserve_tip_y, 2, 2, 0, c_white, 1.0);
	break;
}

//Coins Counter
var coins_x = temp_x + (boss_hud?109:62), coins_y = temp_y + (boss_hud?-33:-20);
if(!boss_hud) draw_sprite_ext(sprite_get("hud_coins"), 0, coins_x, coins_y, 2, 2, 0, c_white, 1.0);
coins_x += 34; coins_y -= 30;
draw_sprite_ext(spr_hud_numbers_large, floor(neo_coins / 10), coins_x, coins_y, 3, 3, 0, $70d8f8, 1.0);
coins_x += 25;
draw_sprite_ext(spr_hud_numbers_large, neo_coins % 10, coins_x, coins_y, 3, 3, 0, $70d8f8, 1.0);

// draw_set_font(asset_get("roaMBLFont")); draw_set_halign(fa_left); draw_set_valign(fa_middle);
// draw_text_transformed_colour(coins_x + 38 + 4, coins_y + 4, string(neo_coins), 2, 2, 0, c_black, c_black, c_black, c_black, 0.75);
// draw_text_transformed_colour(coins_x + 38, coins_y, string(neo_coins), 2, 2, 0, $b6ffff, $19d4f7, $2e97d4, $00f8f8, 1.0);

//Points Counter
if(tallying_points) {
	var points_x = 0.5 * view_get_wview() - 56, points_y = 0.45 * view_get_hview(), display_val = display_points, display_subtrahend = points_reward_preview.threshold;
	draw_sprite_ext(spr_rewcap_ko, 0, 0.5 * view_get_wview(), points_y - 18, 2, 2, 0, c_white, 1.0);
}
else
	var points_x = temp_x + (boss_hud?82:62), points_y = temp_y + (boss_hud?-17:-60), display_val = neo_points, display_subtrahend = points_reward.threshold;

var progress = clamp(7 * ((display_val - display_subtrahend) / (points_reward_next.threshold - display_subtrahend)), 0, 7);
var flash_progress = 7 * (0 + clamp(score_flash_time, 0, 1));

progress = 0; //TODO: remove this line to enable point bar progression

draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 0, 1000000);
points_x += 16;
draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 1, 100000);
points_x += 16;
draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 2, 10000);
points_x += 16;
draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 3, 1000);
points_x += 16;
draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 4, 100);
points_x += 16;
draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 5, 10);
points_x += 16;
draw_score_digit(display_val, progress, flash_progress, points_x, points_y, 6, 1);
points_x += 16;
if(tallying_points) {
	points_y += 18;
	draw_sprite_ext(spr_hud_numbers_small, 10, 0.5 * view_get_wview() - 8 - 8, points_y, 2, 2, 0, c_white, 1.0);
	draw_sprite_ext(points_reward_preview.hud_sprite, points_reward_preview.animated?floor(get_gameplay_time() / points_reward_preview.anim_divisor):0, 0.5 * view_get_wview() - 8 + 8, points_y, 1, 1, 0, c_white, 1.0);
	points_y += 18;
	draw_sprite_ext(points_reward_preview.caption_sprite, 0, 0.5 * view_get_wview(), points_y, 2, 2, 0, c_white, 0.8);
	points_y += 18;
	draw_sprite_ext(points_reward_preview.game_sprite, 0, 0.5 * view_get_wview(), points_y, 2, 2, 0, c_white, 0.6);
}
else if(false) { //TODO: re-enable for point reward preview
	draw_sprite_ext(spr_hud_numbers_small, 10, points_x, points_y, 2, 2, 0, c_white, 1.0);
	points_x += 16;
	draw_sprite_ext(points_reward.hud_sprite, points_reward.animated?floor(get_gameplay_time() / points_reward.anim_divisor):0, points_x, points_y, 1, 1, 0, c_white, 1.0);
}
if(score_flash_time > 0) score_flash_time -= 0.125;


//user_event(11);
muno_event_type = 5; user_event(14); //Phone stuff

if(!phone_cheats[CHEAT_QDEBUGGER]) exit; //awful QDebugger that causes so many problems below this
if(qua_debug_enabled(qua_debug_needs_init)) {
	//#region Custom QDebugger Options
	qua_debug_needs_init = false;
	qua_debug_header(get_char_info(player, INFO_STR_NAME), " by floralQuaFloral");
	
	qua_debug_header("Basics:");
	// if(qua_debug_option("this thing has ", ["some arrays"], " (", ["OBJ object_containing_arrays"], ")") && qua_debug_data.selection == "3-0") {
	// 	qua_debug_enter_object_variables(CHAR_OBJ, "object_containing_arrays", id);
	// }
	
	if(qua_debug_option("Character: ", [neo_char.name], " (", ["OBJ neo_char"], ")") && qua_debug_data.selection == "3-0") {
		qua_debug_enter_object_variables(CHAR_OBJ, "neo_char", id);
	}
	
	if(qua_debug_option("Power: ", [neo_power.name], " (", ["OBJ neo_power"], ")") && qua_debug_data.selection == "4-0") {
		qua_debug_enter_object_variables(POWER_OBJ, "neo_power", id);
	}
	if(qua_debug_option("Reserve: ", [reserve_slot.name], " (", ["OBJ reserve_slot"], ")") && qua_debug_data.selection == "5-0") {
		qua_debug_enter_object_variables(RESERVE_OBJ, "reserve_slot", id);
	}
	qua_debug_option("Runes: ", ["OBJ RUNES_OBJ"]);
	
	qua_debug_header();
	
	if(qua_debug_option("Legacy HUD: ", ["TOGGLE debug_hud"], ", ", ["Config"]) && qua_debug_data.suboption == 1) {
		qua_debug_enter_object_variables(id);
		var new_array = [];
		for(var check_index = 0, total = array_length_1d(qua_debug_data.vars_array); check_index < total; check_index++;) {
			if(string_pos("debug_", qua_debug_data.vars_array[check_index]) != 0) {
				array_push(new_array, qua_debug_data.vars_array[check_index]);
			}
		}
		qua_debug_data.vars_array = new_array; qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
	}
	qua_debug_option("Mario: ", ["TOGGLE debug_mario_hud"], ", Multi: ", ["TOGGLE debug_multihud"]);
	qua_debug_option("Items: ", ["TOGGLE debug_items_hud"], ", Proj: ", ["TOGGLE debug_projectiles_hud"]);
	
	//#endregion
	
	qua_debug_finish();
}

#define draw_score_digit(display_val, progress, flash_progress, x, y, index, place_value)
	var render_image = floor(display_val / place_value) % 10;
	if(!tallying_points && score_old_render_images[index] != -1 && score_old_render_images[index] != render_image) {
		score_bounce_values[index] = pi;
	}
	if(score_bounce_values[index] > 0) {
		score_bounce_values[index] -= 0.16;
		y = max(0, y - sin(score_bounce_values[index]) * 6);
	}
	
	var sub_progress = progress - index, progression_colour = neo_data.hud_intense_colour, empty_colour = c_white;
	
	if(flash_progress - index > sub_progress) {
		sub_progress = flash_progress - index;
		// progression_colour = neo_data.hud_flash_colour;
		empty_colour = neo_data.hud_flash_colour;
	}
	
	score_old_render_images[index] = render_image;
	draw_sprite_ext(spr_hud_numbers_small, render_image, x, y, 2, 2, 0, (sub_progress >= 1)?progression_colour:empty_colour, 1.0);
	if(sub_progress > 0 && sub_progress < 1)
		draw_sprite_part_ext(spr_hud_numbers_small, render_image, 0, 0, sub_progress * 8, 8, x, y, 2, 2, progression_colour, 1.0);

//#region Qua Debug Infrastructure
//You should probably not edit any of these qua_debug functions.
//QDebugger Version: 0.1
#define qua_debug_enabled
/// qua_debug_enabled(needs_data = "qua_debug_data" not in self)
var needs_data = argument_count > 0 ? argument[0] : "qua_debug_data" not in self;
	if(clone || custom_clone) return(false);
	if(needs_data) {
		qua_debug_data = {
			enabled: false,
			on_player: 1,
			prev_key: 0,
			debug_data_owner: id,
			
			navigation_tip: 2,
			extra_height: 0,
			
			option: 0,
			suboption: 0,
			
			examination: "none", selection: "none",
			prev_examination: "none",
			
			render_x: 0, render_y: 0,
			render_col: my_hud_col,
			
			spr_slider_cap: sprite_add_base64(
				"iVBORw0KGgoAAAANSUhEUgAAAAUAAAAJCAYAAAD6reaeAAAAAXNSR0IArs4c6QAAAARnQU" +
				"1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAzSURBVBhXbcxRCgAgCATRvP+hp" +
				"1ZUYuv9GIO2HEfUOyloTuwgGe8g4UH+mzXfP5tfDIANITUj5HAQnJAAAAAASUVORK5CYII=",
				1, 0, 0),
			sfx_change: sound_get("qua_debug_change"),
			sfx_error: sound_get("qua_debug_error"),
			sfx_horiz: sound_get("qua_debug_horiz"),
			sfx_open: sound_get("qua_debug_open"),
			sfx_prompt: sound_get("qua_debug_prompt"),
			sfx_selection: sound_get("qua_debug_selection"),
			sfx_vert: sound_get("qua_debug_vert"),
			
			options_count: 0,
			input: "none", hard_input: "none", input_sustain: 0,
			horiz_dir: 0, vert_dir: 0,
			
			old_halign: fa_left, old_valign: fa_top,
			
			mode: "options list", block_additions: false,
			listing_vars_in: id, vars_array: [], vars_count: 0,
			
			changing_var: "x", changing_var_in: id,
			
			options_count: 0,
			
			is_manager: !(clone || custom_clone)
		};
		
		var my_hud_col = get_player_hud_color(player);
		qua_debug_local_data = {
			hud_col: my_hud_col,
			dark_col: make_colour_hsv(colour_get_hue(my_hud_col), colour_get_saturation(my_hud_col), 0.5 * colour_get_value(my_hud_col)),
		};
		
		//Limit it so there can only be one manager
		with(oPlayer) if(player != other.player && "qua_debug_data" in self && qua_debug_data.debug_data_owner == id) other.qua_debug_data.is_manager = false;
		//The manager is in charge of manipulating the debugger when it's configured to modify a player who doesn't have the debugger
	}
	
	if(keyboard_key == 114 && qua_debug_data.prev_key != 114) {
		qua_debug_data.enabled = !qua_debug_data.enabled;
		qua_debug_data.mode = "options list";
		qua_debug_data.option = 0; qua_debug_data.suboption = 0;
		sound_play(qua_debug_data.sfx_open);
	}
	
	if(qua_debug_data.enabled) {
		
		qua_debug_data.block_additions = false;
		//Process debug board inputs
		if(id == qua_debug_data.debug_data_owner) {
			if(keyboard_key == qua_debug_data.prev_key) qua_debug_data.input_sustain++;
			else qua_debug_data.input_sustain = 0;
			
			qua_debug_data.hard_input = "none"; qua_debug_data.input = "none"; switch(keyboard_key) {
				case 37: qua_debug_data.hard_input = "left"; break;
				case 39: qua_debug_data.hard_input = "right"; break;
				case 38: qua_debug_data.hard_input = "up"; break;
				case 40: qua_debug_data.hard_input = "down"; break;
				
				case 191: qua_debug_data.hard_input = "question mark"; break;
				case 32: case 13: qua_debug_data.hard_input = "enter"; break;
			}
			qua_debug_data.prev_key = keyboard_key;
			
			if(qua_debug_data.input_sustain == 0 || (qua_debug_data.input_sustain > 20 && qua_debug_data.input_sustain % 3 == 0) || qua_debug_data.input_sustain > 65) {
				qua_debug_data.input = qua_debug_data.hard_input;
			}
			
			qua_debug_data.horiz_dir = (qua_debug_data.input == "right") - (qua_debug_data.input == "left");
			qua_debug_data.vert_dir = (qua_debug_data.input == "down") - (qua_debug_data.input == "up");
		}
		
		//Run debug board on characters who don't have their own
		// if(qua_debug_data.is_manager && id == qua_debug_data.debug_data_owner) {
		// 	with(oPlayer) if(!clone && !custom_clone) {
		// 		var missing_data = "qua_debug_data" not in self;
		// 		if(missing_data || qua_debug_data.debug_data_owner != id) {
		// 			qua_debug_data = other.qua_debug_data;
		// 			if(missing_data) {
		// 				print(`Player ${player} has inherited player ${other.player}'s Qua Debug Data struct.`);
		// 				var my_hud_col = get_player_hud_color(player);
		// 				qua_debug_local_data = {
		// 					hud_col: my_hud_col,
		// 					dark_col: make_colour_hsv(colour_get_hue(my_hud_col), colour_get_saturation(my_hud_col), 0.5 * colour_get_value(my_hud_col)),
		// 				};
		// 			}
					
		// 			qua_debug_run();
		// 			qua_debug_finish();
		// 		}
		// 	}
		// }
		
		qua_debug_run();
		return(qua_debug_data.on_player == player);
	}
	qua_debug_data.prev_key = keyboard_key;
	return(false);

#define qua_debug_run
	var debug_me = qua_debug_data.on_player == player;
	var corner_x = (player - 1) * 220, corner_y = view_get_hview() - qua_debug_data.extra_height;
	draw_rectangle_colour(corner_x, corner_y, corner_x + 200, corner_y - 400, c_black, c_black, c_black, c_black, !debug_me);
	
	qua_debug_data.render_x = corner_x + 5;
	qua_debug_data.render_y = corner_y - 395;
	qua_debug_data.render_col = debug_me?qua_debug_local_data.hud_col:qua_debug_local_data.dark_col;
	
	// var vert_dir = (input == "down") - (input == "up"), horiz_dir = (input == "right") - (input == "left");
	
	qua_debug_data.options_count = 0;
	
	qua_debug_data.old_halign = draw_get_halign(); qua_debug_data.old_valign = draw_get_valign();
	draw_set_halign(fa_left); draw_set_valign(fa_top); draw_set_font(asset_get("fName"));
	
	qua_debug_data.examination = "none"; qua_debug_data.selection = "none";
	
	qua_debug_data.block_additions = false;
	switch(qua_debug_data.mode) {
		case "options list":
			qua_debug_data.listing_vars_in = id;
			
			qua_debug_header("floralQuaFloral Debug Menu");
			if(true || qua_debug_data.navigation_tip) {
				qua_debug_header("Arrow keys to navigate");
				qua_debug_header("Enter/Space Bar to select");
			}
			qua_debug_header("");
			qua_debug_header("Current selection: ", qua_debug_data.prev_examination);
			
			qua_debug_option("Debugging player: ", [qua_debug_data.on_player]);
			if(qua_debug_data.examination == "0-0" && qua_debug_data.horiz_dir != 0) {
				sound_play(qua_debug_data.sfx_change);
				qua_debug_data.on_player += qua_debug_data.horiz_dir;
				if(qua_debug_data.on_player < 1) qua_debug_data.on_player = 4;
				else qua_debug_data.on_player = (qua_debug_data.on_player - 1) % 4 + 1;
				
				//Sync the on_player value for everyone
				with(oPlayer) if("qua_debug_data" in self && is_object(qua_debug_data)) {
					qua_debug_data.on_player = other.qua_debug_data.on_player;
					qua_debug_data.examination = "none";
					qua_debug_data.prev_key = keyboard_key;
					qua_debug_data.input = "none"; qua_debug_data.horiz_dir = 0;
					qua_debug_data.input_sustain = 0;
				}
			}
			
			if(qua_debug_option(["Manipulate variables"])) {
				qua_debug_enter_object_variables(id);
			}
			if(qua_debug_option(["Instances List"])) {
				sound_play(qua_debug_data.sfx_selection);
				qua_debug_data.vars_array = [];
				with(all) array_push(other.qua_debug_data.vars_array, self);
				qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
				
				qua_debug_data.option = 0; qua_debug_data.suboption = 0;
				qua_debug_data.mode = "instances list";
			}
			// qua_debug_option("id: ", ["OBJ id"]);
			
			qua_debug_header();
			
			if(qua_debug_data.debug_data_owner != id) {
				//If we're borrowing someone else's debug data, we'll fill it in with some things automatically
				qua_debug_header(get_char_info(player, INFO_STR_NAME), " by ", get_char_info(player, INFO_STR_AUTHOR));
				qua_debug_header("state: ", get_state_name(state));
				qua_debug_option("pos: (", ["NUM x"], ", ", ["NUM y"], ")");
				qua_debug_option("vel: (", ["NUM hsp"], ", ", ["NUM vsp"], ")");
				qua_debug_option("facing: ", ["INVERT spr_dir"]);
				
				qua_debug_header();
				
				qua_debug_header("Properties:");
				qua_debug_option("dash speed: ", ["SLIDER dash_speed"]);
				qua_debug_option("jump height: ", ["SLIDER jump_speed"]);
				qua_debug_option("double jumps: ", ["SLIDER max_djumps"]);
				qua_debug_option("2x scale: ", ["TOGGLE small_sprites"]);
				qua_debug_option("Has Rock: ", ["TOGGLE has_rock"]);
				
				qua_debug_header();
				
				qua_debug_header("Actions:");
				if(qua_debug_option("Tilt: ", ["up"], " / ", ["side"], " / ", ["down"])) {
					set_attack([AT_UTILT, AT_FTILT, AT_DTILT][qua_debug_data.suboption]);
				}
				
				if(url == CH_ELLIANA) if(qua_debug_option("Overheat: ", [overheated?"true":"false"])) heat = overheated?0:1500;
				
				if(qua_debug_option(["K.O."])) create_deathbox(x - 10, y - 10, 20, 20, player, false, 0, 10, 0);
				if(is_real(url) && url < 30 && qua_debug_option(["Reset"])) init = false;
			}
		break;
		
		//#region Variables List
		case "variables list": case "select variable":
			var show_number = min(19, qua_debug_data.vars_count), start_at = clamp(qua_debug_data.option - floor(show_number / 2), 0, qua_debug_data.vars_count - show_number), end_at = start_at + show_number;
			qua_debug_data.options_count = start_at;
			
			qua_debug_header("floralQuaFloral Vars Menu");
			qua_debug_header(`Displaying ${start_at}-${end_at} of ${qua_debug_data.vars_count}`);
			qua_debug_header("Current selection: ", qua_debug_data.prev_examination);
			qua_debug_header();
			
			qua_debug_option("Search by ", ["Name"], " or ", ["Value"]);
			
			qua_debug_header();
			
			//Display search results / object contents
			if(!debug_me) {
				qua_debug_header("Player not selected.");
			}
			else if(end_at == 0) {
				qua_debug_option("No variables found. ", ["Reset?"]);
				if(qua_debug_data.selection == "1-0") {
					sound_play(qua_debug_data.sfx_selection);
					qua_debug_data.option = 0; qua_debug_data.suboption = 0;
					qua_debug_data.vars_array = variable_instance_get_names(qua_debug_data.listing_vars_in);
					qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
				}
			}
			else {
				for(var display_var = start_at; display_var < end_at; display_var++;) {
					var var_name = qua_debug_data.vars_array[display_var], var_value = variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[display_var]);
					
					if(qua_debug_data.mode == "select variable")
						var var_prefix = "SELECT ";
					else {
						var var_prefix = "VAL ";
						if(is_real(var_value)) var_prefix = "NUM ";
						else if(is_array(var_value)) var_prefix = "ARRAY ";
						else if(is_object(var_value) || qua_debug_is_instance(var_value)) var_prefix = "OBJ ";
					}
					
					if(qua_debug_option(`${var_name}: `, [var_prefix + var_name])) display_var = end_at + 12;
				}
				
				qua_debug_data.options_count = qua_debug_data.vars_count + 1;
			}
			
			//Going back functionality
			if(debug_me && qua_debug_data.input == "left") {
				if(qua_debug_data.examination == "0-1") {
					qua_debug_data.mode = "options list";
					qua_debug_data.option = 1; qua_debug_data.suboption = 0;
					sound_play(qua_debug_data.sfx_selection);
				}
				else if(qua_debug_data.option != 0) {
					qua_debug_data.option = 0; qua_debug_data.suboption = 0;
					sound_play(qua_debug_data.sfx_horiz);
				}
			}
			
			qua_debug_header();
			qua_debug_header("Press Left to go back.");
			
			//Searching functionality
			if(qua_debug_data.selection == "0-0" || qua_debug_data.selection == "0-1") {
				//Get search query
				sound_play(qua_debug_data.sfx_prompt);
				if(qua_debug_data.selection == "0-0")
					var search_prompt = "Enter the name or part of the name of a variable you're looking for.";
				else
					var search_prompt = `Enter the value of a variable you're looking for. If you enter a string, it will search for results that include the string. If you enter a number, it will search for results that match that number exactly. If you enter a variable name in parenthesis (i.e. "(x)"), it will search for variables that match that variable's value exactly. Alternatively, you can search "Booleans", "Strings", "Numbers", "Objects", or "Arrays" to find specific data types.`;
				
				var search_results = [], query = get_string(search_prompt, "");
				sound_play(qua_debug_data.sfx_selection);
				
				//Search by name
				if(qua_debug_data.suboption == 0) {
					for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
						if(string_pos(query, qua_debug_data.vars_array[incrementeroo]) != 0)
							array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
				}
				//Search by value
				else {
					var check_exact_matches = true, check_equals = null;
					switch(query) {
						case "undefined":	check_equals = undefined;	break;
						case "null":		check_equals = null;		break;
						case "noone":		check_equals = noone;		break;
						case "self":		check_equals = self;		break;
						case "true":		check_equals = true;		break;
						case "false":		check_equals = false;		break;
						
						case "Booleans":
							check_exact_matches = false;
							for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;) {
								var checking_value = variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo]);
								if(checking_value == true || checking_value == false)
									array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
							}
						break;
						case "Strings":
							check_exact_matches = false;
							for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
								if(is_string(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo])))
									array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
						break;
						case "Numbers":
							check_exact_matches = false;
							for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
								if(is_real(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo])))
									array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
						break;
						case "Objects":
							check_exact_matches = false;
							for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
								if(is_object(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo])))
									array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
						break;
						case "Arrays":
							check_exact_matches = false;
							for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
								if(is_array(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo])))
									array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
						break;
						case "Instances":
							check_exact_matches = false;
							for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;) {
								if(qua_debug_is_instance(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo])))
									array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
							}
						break;
						
						default:
							if(string_length(query) > 0 && string_is_real(query))
								check_equals = real(query);
							else if(string_char_at(query, 1) == "(" && string_char_at(query, string_length(query)) == ")")
								check_equals = variable_instance_get(qua_debug_data.listing_vars_in, string_delete(string_delete(query, string_length(query), 1), 1, 1));
							else {
								check_exact_matches = false;
								for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
									if(string_pos(query, string(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo]))) != 0)
										array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
							}
						break;
					}
					
					if(check_exact_matches)
						for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;)
							if(variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[incrementeroo]) == check_equals)
								array_push(search_results, qua_debug_data.vars_array[incrementeroo]);
				}
				
				//Apply search results
				qua_debug_data.option = 0; qua_debug_data.suboption = 0;
				qua_debug_data.vars_array = search_results;
				qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
			}
			
			qua_debug_data.block_additions = true;
		break;
		//#endregion
		
		//#region Instances List
		case "instances list":
			var show_number = min(19, qua_debug_data.vars_count), start_at = clamp(qua_debug_data.option - floor(show_number / 2), 0, qua_debug_data.vars_count - show_number), end_at = start_at + show_number;
			qua_debug_data.options_count = start_at;
			
			qua_debug_header("floralQuaFloral Vars Menu");
			qua_debug_header(`Displaying ${start_at}-${end_at} of ${qua_debug_data.vars_count}`);
			qua_debug_header("Current selection: ", qua_debug_data.prev_examination);
			qua_debug_header();
			
			if(qua_debug_option("Search by ", ["Known"])) {
				var new_array = []; end_at = undefined;
				for(var incrementeroo = 0, total = array_length_1d(qua_debug_data.vars_array); incrementeroo < total; incrementeroo++;) {
					if(variable_instance_exists(qua_debug_data.vars_array[incrementeroo], "object_index"))
						array_push(new_array, qua_debug_data.vars_array[incrementeroo]);
				}
				qua_debug_data.vars_array = new_array; qua_debug_data.vars_count = array_length_1d(new_array);
			}
			
			qua_debug_header();
			
			//Display search results / object contents
			if(!debug_me) {
				qua_debug_header("Player not selected.");
			}
			else if(end_at == undefined) {
				qua_debug_header("Searching...");
			}
			else if(end_at == 0) {
				qua_debug_header("No variables found.");
				// if(qua_debug_data.selection == "1-0") {
				// 	sound_play(qua_debug_data.sfx_selection);
				// 	qua_debug_data.option = 0; qua_debug_data.suboption = 0;
				// 	qua_debug_data.vars_array = variable_instance_get_names(qua_debug_data.listing_vars_in);
				// 	qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
				// }
			}
			else {
				for(var display_var = start_at; display_var < end_at; display_var++;) {
					var var_name = qua_debug_data.vars_array[display_var]; //var_value = variable_instance_get(qua_debug_data.listing_vars_in, qua_debug_data.vars_array[display_var]);
					
					// if(qua_debug_data.mode == "select variable")
					// 	var var_prefix = "SELECT ";
					// else {
					// 	var var_prefix = "VAL ";
					// 	if(is_real(var_value)) var_prefix = "NUM ";
					// }
					
					var display_object_index = variable_instance_get(var_name, "object_index", "???");
					switch(display_object_index) {
						case obj_article1: display_object_index = "obj_article1"; break;
						case obj_article2: display_object_index = "obj_article2"; break;
						case obj_article3: display_object_index = "obj_article3"; break;
						case obj_article_platform: display_object_index = "obj_article_platform"; break;
						case obj_article_solid: display_object_index = "obj_article_solid"; break;
						case obj_stage_article: display_object_index = "obj_stage_article"; break;
						case obj_stage_article_platform: display_object_index = "obj_stage_article_platform"; break;
						case obj_stage_article_solid: display_object_index = "obj_stage_article_solid"; break;
						case obj_stage_main: display_object_index = "obj_stage_main"; break;
						case pHitBox: display_object_index = "pHitBox"; break;
						case pHurtBox: display_object_index = "pHurtBox"; break;
						case hit_fx_obj: display_object_index = "hit_fx_obj"; break;
						
						case oPlayer:
							if(var_name.clone) display_object_index = "Forsburn Clone";
							else if(var_name.custom_clone) display_object_index = "Workshop Clone";
							else display_object_index = "oPlayer";
						break;
						case oTestPlayer:
							if(var_name.clone) display_object_index = "Playtest Forsburn Clone";
							else if(var_name.custom_clone) display_object_index = "Playtest Workshop Clone";
							else display_object_index = "oTestPlayer";
						break;
						
						case "???":
							if(!instance_exists(var_name)) display_object_index = "DELETED";
						break;
						
						default:
							if(display_object_index == asset_get("par_block")) display_object_index = "par_block";
							else if(display_object_index == asset_get("par_jumpthrough")) display_object_index = "par_jumpthrough";
							else if(display_object_index == asset_get("plant_obj")) display_object_index = "Lily";
							else if(display_object_index == asset_get("orb_follower_obj")) display_object_index = "Sein";
							else if(display_object_index == asset_get("pet_obj")) display_object_index = "pet_obj";
						break;
					}
					
					if(qua_debug_option(`${display_var}: `, [var_name], ` (${display_object_index})`)) {
						if(instance_exists(var_name)) {
							qua_debug_enter_object_variables(var_name);
							break;
						}
						else {
							sound_play(qua_debug_data.sfx_error);
							print(`QDebugger Error: Instance ${var_name} no longer exists.`);
						}
					}
					if(qua_debug_data.option == qua_debug_data.options_count - 1) {
						var can_draw_sprite_bounds = variable_instance_get(var_name, "sprite_index") != undefined;
						
						if(can_draw_sprite_bounds) {
							draw_set_alpha(0.45);
							var rectangle_x_factor = variable_instance_get((var_name.object_index == pHurtBox)?var_name.playerID:var_name, "spr_dir", 1);
							var rectangle_w_factor = variable_instance_get(var_name, "small_sprites", false)?2:1; var rectangle_h_factor = variable_instance_get(var_name, "small_sprites", false)?2:1;
							var corner_x = var_name.x - rectangle_x_factor * rectangle_w_factor * sprite_get_xoffset(var_name.sprite_index) - view_get_xview(), corner_y = var_name.y - rectangle_h_factor * sprite_get_yoffset(var_name.sprite_index) - view_get_yview();
							var rectangle_w = rectangle_w_factor * var_name.sprite_width, rectangle_h = rectangle_h_factor * var_name.sprite_height;
							
							
							var rectangle_col = [make_colour_hsv((get_gameplay_time() + 0) % 255, 255, 255), make_colour_hsv((get_gameplay_time() + 64) % 255, 255, 255), make_colour_hsv((get_gameplay_time() + 128) % 255, 255, 255), make_colour_hsv((get_gameplay_time() + 191) % 255, 255, 255)];
							
							draw_rectangle_colour(corner_x, corner_y, corner_x + rectangle_w, corner_y + rectangle_h, rectangle_col[0], rectangle_col[1], rectangle_col[2], rectangle_col[3], false);
							
							draw_set_alpha(1.0);
						}
						else if(instance_exists(var_name)) {
							draw_set_alpha(0.45);
							var rectangle_col = [make_colour_hsv((get_gameplay_time() + 0) % 255, 255, 255), make_colour_hsv((get_gameplay_time() + 64) % 255, 255, 255), make_colour_hsv((get_gameplay_time() + 128) % 255, 255, 255), make_colour_hsv((get_gameplay_time() + 191) % 255, 255, 255)];
							var circle_x = get_instance_x(var_name) - view_get_xview(), circle_y = get_instance_y(var_name) - view_get_yview();
							
							draw_circle_colour(circle_x, circle_y, 60, rectangle_col[0], rectangle_col[2], false);
							draw_set_alpha(1.0);
							
							draw_set_halign(fa_center); draw_set_valign(fa_middle);
							draw_text_transformed_colour(circle_x + 3, circle_y + 14, string(display_object_index), 3, 3, 0, rectangle_col[0], rectangle_col[1], rectangle_col[2], rectangle_col[3], 1.0);
							draw_set_halign(fa_left); draw_set_valign(fa_top);
						}
					}
				}
				
				qua_debug_data.options_count = qua_debug_data.vars_count + 1;
			}
			
			//Going back functionality
			if(debug_me && qua_debug_data.input == "left") {
				if(qua_debug_data.examination == "0-0") {
					qua_debug_data.mode = "options list";
					qua_debug_data.option = 2; qua_debug_data.suboption = 0;
					sound_play(qua_debug_data.sfx_selection);
				}
				else if(qua_debug_data.option != 0) {
					qua_debug_data.option = 0; qua_debug_data.suboption = 0;
					sound_play(qua_debug_data.sfx_horiz);
				}
			}
			
			qua_debug_header();
			qua_debug_header("Press Left to go back.");
			
			qua_debug_data.block_additions = true;
		break;
		//#endregion
		
		case "array viewer":
			var show_number = min(19, qua_debug_data.vars_count), start_at = clamp(qua_debug_data.option - floor(show_number / 2), 0, qua_debug_data.vars_count - show_number), end_at = start_at + show_number;
			qua_debug_data.options_count = start_at;
			
			qua_debug_header("floralQuaFloral Array Viewer");
			qua_debug_header(`Displaying ${start_at}-${end_at} of ${qua_debug_data.vars_count}`);
			qua_debug_header("Current selection: ", qua_debug_data.prev_examination);
			qua_debug_header();
			
			qua_debug_option("Press ", ["Left"], " to go back.");
			
			qua_debug_header();
			
			//Display search results / object contents
			if(!debug_me) {
				qua_debug_header("Player not selected.");
			}
			else if(end_at == 0) {
				qua_debug_option("No variables found. ", ["Reset?"]);
				if(qua_debug_data.selection == "1-0") {
					sound_play(qua_debug_data.sfx_selection);
					qua_debug_data.option = 0; qua_debug_data.suboption = 0;
					qua_debug_data.vars_array = variable_instance_get_names(qua_debug_data.listing_vars_in);
					qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
				}
			}
			else {
				for(var display_var = start_at; display_var < end_at; display_var++;) {
					var var_name = string(qua_debug_data.vars_array[display_var]), var_value = qua_debug_data.listing_indices_in[qua_debug_data.vars_array[display_var]];
					
					if(qua_debug_data.mode == "select variable")
						var var_prefix = "SELECT ";
					else {
						var var_prefix = "VAL ";
						// if(is_real(var_value)) var_prefix = "NUM ";
						// else if(is_array(var_value)) var_prefix = "ARRAY ";
						// else if(is_object(var_value) || qua_debug_is_instance(var_value)) var_prefix = "OBJ ";
					}
					
					// qua_debug_header(`${var_name}: ${var_value}`);
					qua_debug_option(`${var_name}:  ${var_value}`);
					// if() display_var = end_at + 12;
				}
				
				qua_debug_data.options_count = qua_debug_data.vars_count + 1;
				// qua_debug_data.options_count = 0;
			}
			
			//Going back functionality
			if(debug_me && qua_debug_data.input == "left") {
				if(qua_debug_data.option == 0) {
					qua_debug_data.mode = "options list";
					qua_debug_data.option = 1; qua_debug_data.suboption = 0;
					sound_play(qua_debug_data.sfx_selection);
				}
				else {
					qua_debug_data.option = 0; qua_debug_data.suboption = 0;
					sound_play(qua_debug_data.sfx_horiz);
				}
			}
			
			// qua_debug_header();
			// qua_debug_header("Press Left to go back.");
			
			qua_debug_data.block_additions = true;
		break;
		
		default:
			qua_debug_header("ERROR :(");
			qua_debug_header(`Invalid mode: ${qua_debug_data.mode}.`);
			qua_debug_header("Press F3 to close the board.");
			
			qua_debug_data.block_additions = true;
		break;
	}

#define qua_debug_finish
	draw_set_halign(qua_debug_data.old_halign); draw_set_valign(qua_debug_data.old_valign);
	qua_debug_data.prev_examination = qua_debug_data.examination;
	
	if(qua_debug_data.on_player == player && qua_debug_data.options_count > 1 && qua_debug_data.vert_dir != 0) {
		sound_play(qua_debug_data.sfx_vert);
		qua_debug_data.option += qua_debug_data.vert_dir;
		if(qua_debug_data.option < 0) qua_debug_data.option = qua_debug_data.options_count - 1;
		else qua_debug_data.option = qua_debug_data.option % qua_debug_data.options_count;
		qua_debug_data.suboption = 0;
		qua_debug_data.navigation_tip--;
	}

#define qua_debug_header
	if(qua_debug_data.block_additions) exit;
	
	var render_text = "", render_text_col = qua_debug_data.render_col;
	for(var incrementeroo = 0; incrementeroo < argument_count; incrementeroo++;) {
		var cur_arg = argument[incrementeroo];
		if(is_array(cur_arg)) render_text += qua_debug_parse_option_array(cur_arg, render_text, -1);
		else render_text += qua_debug_compact_option_array(cur_arg);
	}
	
	if(string_pos("floralQuaFloral", render_text) != 0 || render_text == "Press Left to go back.") render_text_col = $ee9bff;
	
	draw_text_transformed_colour(qua_debug_data.render_x, qua_debug_data.render_y, render_text, 1, 1, 0, render_text_col, render_text_col, render_text_col, render_text_col, (qua_debug_data.on_player == player)?1:0.3);
	qua_debug_data.render_y += 14;

#define qua_debug_option
	if(qua_debug_data.block_additions) exit;
	
	var zero_as_var = 0;
	var is_debug_player_switcher = (argument_count > 0 && argument[zero_as_var] == "Debugging player: ");
	var is_debug_vars_search = (argument_count > 0 && argument[zero_as_var] == "Search by ");
	var debug_me = qua_debug_data.on_player == player;
	
	if(is_debug_player_switcher && !debug_me && qua_debug_data.is_manager) {
		var force_debug_me = true;
		with(oPlayer) if(player == other.qua_debug_data.on_player && "qua_debug_data" in self) force_debug_me = false;
		
	}
	else var force_debug_me = false;
	
	var this_text_base_colour = is_debug_vars_search?$ee9bff:qua_debug_data.render_col;
	
	if(force_debug_me) {
		debug_me = true;
		draw_rectangle_colour(qua_debug_data.render_x - 5, qua_debug_data.render_y, qua_debug_data.render_x + 195, qua_debug_data.render_y + 14, c_black, c_black, c_black, c_black, false);
	}
	
	if(debug_me && qua_debug_data.option == qua_debug_data.options_count) {
		var texts = [["> ", -1]], suboptions_here = 0;
		for(var incrementeroo = 0; incrementeroo < argument_count; incrementeroo++;) {
			var cur_arg = argument[incrementeroo];
			if(is_array(cur_arg)) {
				qua_debug_parse_option_array(cur_arg, texts, suboptions_here);
				suboptions_here++;
			}
			else array_push(texts, [qua_debug_compact_option_array(cur_arg), -1]);
		}
		
		if(suboptions_here > 1 && qua_debug_data.horiz_dir != 0) {
			sound_play(qua_debug_data.sfx_horiz);
			qua_debug_data.suboption += qua_debug_data.horiz_dir;
			if(qua_debug_data.suboption < 0) qua_debug_data.suboption = suboptions_here - 1;
			else qua_debug_data.suboption = qua_debug_data.suboption % suboptions_here;
		}
		
		var neo_debug_x_temp = qua_debug_data.render_x;
		for(var incrementeroo = 0, total = array_length_1d(texts); incrementeroo < total; incrementeroo++;) {
			var this_suboption = qua_debug_data.suboption == texts[incrementeroo][1];
			var this_text_colour = (incrementeroo == 0 || this_suboption)?c_white:this_text_base_colour;
			
			var this_text_width = string_width(string(texts[incrementeroo][0]));
			
			if(neo_debug_x_temp + this_text_width > qua_debug_data.render_x + 200)
				draw_rectangle_colour(neo_debug_x_temp, qua_debug_data.render_y, neo_debug_x_temp + this_text_width, qua_debug_data.render_y + 14, c_black, c_black, c_black, c_black, false);
			
			draw_text_transformed_colour(neo_debug_x_temp, qua_debug_data.render_y, texts[incrementeroo][0], 1, 1, 0, this_text_colour, this_text_colour, this_text_colour, this_text_colour, (debug_me || is_debug_player_switcher)?1:0.3);
			if(texts[incrementeroo][1] != -1) {
				var line_start_x = neo_debug_x_temp - 1, line_end_x = neo_debug_x_temp + this_text_width - 3, line_y = qua_debug_data.render_y + 12;
				var line_start_col = this_text_colour, line_end_col = this_text_colour;
				if(texts[incrementeroo][2] == "slider") {
					line_start_x -= 2; line_end_x += 2;
					line_start_col = $ee9bff; line_end_col = $116400;
					draw_sprite_ext(qua_debug_data.spr_slider_cap, 0, line_start_x - 4, line_y - 3, 1, 1, 0, line_start_col, 1.0);
					draw_sprite_ext(qua_debug_data.spr_slider_cap, 0, line_end_x + 6, line_y - 3, -1, 1, 0, line_end_col, 1.0);
				}
				draw_line_width_colour(line_start_x, line_y, line_end_x, line_y, 2, line_start_col, line_end_col);
			}
			neo_debug_x_temp += this_text_width;
			
			
			if(this_suboption) {
				qua_debug_data.examination = `${qua_debug_data.options_count}-${qua_debug_data.suboption}`;
				
				if(texts[incrementeroo][2] == "slider" && qua_debug_data.horiz_dir != 0) {
					sound_play(qua_debug_data.sfx_horiz);
					variable_instance_set(qua_debug_data.listing_vars_in, texts[incrementeroo][3], variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3]) + qua_debug_data.horiz_dir);
				}
				
				if(qua_debug_data.input == "question mark") {
					get_string(`The value of ${texts[incrementeroo][3]} is:`, string(variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3])));
				}
				
				if(qua_debug_data.input == "enter") {
					qua_debug_data.selection = qua_debug_data.examination;
					
					switch(texts[incrementeroo][2]) {
						//Variable selection
						case "variable selection":
							qua_debug_enter_object_variables(id, texts[incrementeroo][3], qua_debug_data.listing_vars_in);
						break;
						case "selection":
							sound_play(qua_debug_data.sfx_selection);
							variable_instance_set(qua_debug_data.changing_var_in, qua_debug_data.changing_var, variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3]));
							qua_debug_data.mode = "options list"; qua_debug_data.option = 0; qua_debug_data.suboption = 0;
						break;
						case "enter object":
							qua_debug_enter_object_variables(variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3]));
						break;
						case "enter array":
							// sound_play(qua_debug_data.sfx_selection);
							// qua_debug_data.listing_vars_in
							
							sound_play(qua_debug_data.sfx_selection);
							qua_debug_data.listing_indices_in = variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3], []);
							
							var length_of_source = array_length(qua_debug_data.listing_indices_in);
							qua_debug_data.vars_array = array_create(length_of_source, undefined);
							qua_debug_data.vars_count = length_of_source;
							for(var subincrementeroo = 0; subincrementeroo < length_of_source; subincrementeroo++;) {
								qua_debug_data.vars_array[subincrementeroo] = subincrementeroo;
							}
							
							qua_debug_data.option = 0; qua_debug_data.suboption = 0;
							qua_debug_data.mode = "array viewer";
							
							// qua_debug_data.vars_array = [];
							// with(all) array_push(other.qua_debug_data.vars_array, self);
							// qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
							
							// qua_debug_data.option = 0; qua_debug_data.suboption = 0;
							// qua_debug_data.mode = "instances list";
							
							
							// enter_who, selecting = false, selecting_from_who = enter_who;
							// // if(!is_object(enter_who)) {
							// // 	sound_play(qua_debug_data.sfx_error);
							// // 	print(`QDebugger Error: ${enter_who} is not an object.`);
							// // 	exit;
							// // }
							
							// sound_play(qua_debug_data.sfx_selection);
							// qua_debug_data.listing_vars_in = enter_who;
							// qua_debug_data.vars_array = variable_instance_get_names(qua_debug_data.listing_vars_in);
							// qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
							// qua_debug_data.option = 0; qua_debug_data.suboption = 0;
							// if(selecting != false) {
							// 	qua_debug_data.mode = "select variable";
							// 	qua_debug_data.changing_var = selecting;
							// 	qua_debug_data.changing_var_in = selecting_from_who;
							// }
							// else qua_debug_data.mode = "variables list";
						break;
						
						//Popup prompts
						case "value prompt": case "number prompt": case "integer prompt":
							sound_play(qua_debug_data.sfx_prompt);
							var numbers_only = (texts[incrementeroo][2] != "value prompt"), desired_input = "value";
							if(texts[incrementeroo][2] == "number prompt") desired_input = "number";
							if(texts[incrementeroo][2] == "integer prompt") desired_input = "integer";
							
							var use_new_value = true, new_value = get_string(`Enter a new ${desired_input}. Alternatively, enter "variable" to select one of this instance's variables from a list, or the name of a variable in parenthesis (i.e. "(x)") to use that variable's value directly. Note: Macros/constants such as AT_JAB will not work.`, "");
							sound_play(qua_debug_data.sfx_selection);
							
							switch(new_value) {
								case "undefined":	new_value = undefined;	break;
								case "null":		new_value = null;		break;
								case "noone":		new_value = noone;		break;
								case "self":		new_value = self;		break;
								case "true":		new_value = true;		break;
								case "false":		new_value = false;		break;
								
								case "variable":
									use_new_value = false;
									qua_debug_enter_object_variables(id, texts[incrementeroo][3], qua_debug_data.listing_vars_in);
								break;
								
								default:
									if(string_length(new_value) > 0 && string_is_real(new_value)) new_value = real(new_value);
									else if(string_char_at(new_value, 1) == "(" && string_char_at(new_value, string_length(new_value)) == ")") {
										new_value = string_delete(string_delete(new_value, string_length(new_value), 1), 1, 1);
										
										new_value = variable_instance_get(id, new_value);
									}
								break;
							}
							
							if(use_new_value) {
								if(numbers_only && !is_real(new_value)) {
									use_new_value = false; sound_play(qua_debug_data.sfx_error);
									print(`QDebugger Error: Variable ${texts[incrementeroo][3]} can only be set to a number.`);
								}
								if(desired_input == "integer") use_new_value = round(use_new_value);
								
								if(use_new_value) variable_instance_set(qua_debug_data.listing_vars_in, texts[incrementeroo][3], new_value);
							}
						break;
						
						//Static modifications
						case "toggle bool":
							sound_play(qua_debug_data.sfx_selection);
							variable_instance_set(qua_debug_data.listing_vars_in, texts[incrementeroo][3], !variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3]));
						break;
						case "invert":
							sound_play(qua_debug_data.sfx_selection);
							variable_instance_set(qua_debug_data.listing_vars_in, texts[incrementeroo][3], -1 * variable_instance_get(qua_debug_data.listing_vars_in, texts[incrementeroo][3]));
						break;
					}
					
					qua_debug_data.render_y += 14; qua_debug_data.options_count++;
					return(true);
				}
			}
		}
	}
	else {
		var render_text = "";
		for(var incrementeroo = 0; incrementeroo < argument_count; incrementeroo++;) {
			var cur_arg = argument[incrementeroo];
			if(is_array(cur_arg)) render_text += qua_debug_parse_option_array(cur_arg, render_text, -1);
			else render_text += qua_debug_compact_option_array(cur_arg);
		}
		
		var this_text_width = string_width(render_text), this_text_colour = (render_text == "Search by Name or Value")?$ee9bff:qua_debug_data.render_col;
		if(debug_me && this_text_width > 190)
			draw_rectangle_colour(qua_debug_data.render_x, qua_debug_data.render_y, qua_debug_data.render_x + this_text_width, qua_debug_data.render_y + 14, c_black, c_black, c_black, c_black, false);
		draw_text_transformed_colour(qua_debug_data.render_x, qua_debug_data.render_y, render_text, 1, 1, 0, this_text_colour, this_text_colour, this_text_colour, this_text_colour, debug_me?1:0.3);
	}
	
	qua_debug_data.render_y += 14; qua_debug_data.options_count++;
	return(false);

#define qua_debug_enter_object_variables
/// qua_debug_enter_object_variables(enter_who, selecting = false, selecting_from_who = enter_who;)
var enter_who = argument[0];
var selecting = argument_count > 1 ? argument[1] : false;
var selecting_from_who = argument_count > 2 ? argument[2] : enter_who;;
	// if(!is_object(enter_who)) {
	// 	sound_play(qua_debug_data.sfx_error);
	// 	print(`QDebugger Error: ${enter_who} is not an object.`);
	// 	exit;
	// }
	
	sound_play(qua_debug_data.sfx_selection);
	qua_debug_data.listing_vars_in = enter_who;
	qua_debug_data.vars_array = variable_instance_get_names(qua_debug_data.listing_vars_in);
	qua_debug_data.vars_count = array_length_1d(qua_debug_data.vars_array);
	qua_debug_data.option = 0; qua_debug_data.suboption = 0;
	if(selecting != false) {
		qua_debug_data.mode = "select variable";
		qua_debug_data.changing_var = selecting;
		qua_debug_data.changing_var_in = selecting_from_who;
	}
	else qua_debug_data.mode = "variables list";

#define string_is_real
/// string_is_real(s)
var s = argument0;
var n = string_length(string_digits(s));
return n > 0 && n == string_length(s) - (string_ord_at(s, 1) == ord("-")) - (string_pos(".", s) != 0);

#define qua_debug_is_instance(check_id)
	with(all) if(self == check_id) return(true);
	return(false);

#define qua_debug_parse_option_array(option_array, push_to, suboption_number)
	var select_response = "nothing", insert_string = string(option_array[0]), associated_var = insert_string;
	if(is_string(option_array[0])) {
		//Variable selection
		if(string_pos("SELECT ", option_array[0]) == 1) {
			select_response = "selection";
			insert_string = string_delete(insert_string, 1, 7);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		if(string_pos("VAR ", option_array[0]) == 1) {
			select_response = "variable selection";
			insert_string = string_delete(insert_string, 1, 4);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		
		//Popup prompts
		if(string_pos("VAL ", option_array[0]) == 1) {
			select_response = "value prompt";
			insert_string = string_delete(insert_string, 1, 4);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		else if(string_pos("OBJ ", option_array[0]) == 1) {
			select_response = "enter object";
			insert_string = string_delete(insert_string, 1, 4);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		else if(string_pos("ARRAY ", option_array[0]) == 1) {
			select_response = "enter array";
			insert_string = string_delete(insert_string, 1, 6);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		else if(string_pos("NUM ", option_array[0]) == 1) {
			select_response = "number prompt";
			insert_string = string_delete(insert_string, 1, 4);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		else if(string_pos("INT ", option_array[0]) == 1) {
			select_response = "integer prompt";
			insert_string = string_delete(insert_string, 1, 4);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		
		//Static modification
		else if(string_pos("TOGGLE ", option_array[0]) == 1) {
			select_response = "toggle bool";
			insert_string = string_delete(insert_string, 1, 7);
			
			var associated_var = insert_string;
			insert_string = variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined");
			if(insert_string != "undefined") insert_string = insert_string?"true":"false";
		}
		else if(string_pos("INVERT ", option_array[0]) == 1) {
			select_response = "invert";
			insert_string = string_delete(insert_string, 1, 7);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		
		//Dynamic
		else if(string_pos("SLIDER ", option_array[0]) == 1) {
			select_response = "slider";
			insert_string = string_delete(insert_string, 1, 7);
			
			var associated_var = insert_string;
			insert_string = string(variable_instance_get(qua_debug_data.listing_vars_in, insert_string, "undefined"));
		}
		
		if(is_object(variable_instance_get(qua_debug_data.listing_vars_in, associated_var))) {
			insert_string = "{...}";
		}
	}
	
	if(select_response != "nothing")
		var true_value = variable_instance_get(qua_debug_data.listing_vars_in, associated_var);
	else
		var true_value = option_array[0];
	
	if(is_object(true_value)) {
		insert_string = "{...}";
		// select_response = "modify object";
	}
	else if(is_array(true_value)) {
		insert_string = `[...${array_length_1d(true_value)}]`;
		// select_response = "modify array";
	}
	else if(string_length(string(true_value)) > 100) {
		insert_string = "?!?!";
		// select_response = "nothing";
	}
	
	if(suboption_number == -1)
		return(insert_string);
	else
		array_push(push_to, [insert_string, suboption_number, select_response, associated_var]);

#define qua_debug_compact_option_array(compact_val)
	if(is_object(compact_val))
		return("{...}");
	else if(is_array(compact_val))
		return(`[...${array_length_1d(compact_val)}]`);
	else if(string_length(string(compact_val)) > 100)
		return("?!?!");
	
	return(string(compact_val));
//#endregion