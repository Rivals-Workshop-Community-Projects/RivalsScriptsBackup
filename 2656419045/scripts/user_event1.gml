spr_missing = sprite_get("this sprite doesn't exist");
sfx_missing = sprite_get("this sound doesn't exist");

player_instances = [noone, noone, noone, noone, noone];

sfx_ice_escape = sound_get("ice_escape");
sfx_shell_spin = sound_get("shell_spin");
sfx_1up = sound_get("1up");
sfx_1up_coins = sound_get("1up_coins");

spr_mask_frozen_player = sprite_get("mask_frozen_player");
spr_pmask_ice = sprite_get("pmask_ice");
spr_mask_dead = sprite_get("mask_dead");
spr_pmask_holp = sprite_get("pmask_holp");
spr_hud_escape_tip = [sprite_get("hud_escape_tip"), sprite_get("hud_mario_escape_tip")];
spr_decal_points = sprite_get("decal_points");
spr_decal_1up = sprite_get("decal_1up");
spr_hud_numbers_small = sprite_get("hud_numbers_small");
spr_hud_numbers_large = sprite_get("hud_numbers_large");
spr_item_coin = sprite_get("item_coin");

spr_rewcap_ko = sprite_get("rewcap_ko");

asset_par_block = asset_get("par_block");
asset_par_jumpthrough = asset_get("par_jumpthrough");
asset_rock_obj = asset_get("rock_obj");
asset_pillar_obj = asset_get("pillar_obj");
asset_puddle_obj = asset_get("puddle_obj");
asset_wolf_grass_obj = asset_get("wolf_grass_obj");

//#mark Self Neo Data
neo_data = {
	is_robot: (get_player_hud_color(player) == c_gray),
	is_abyss_robot: (player > 4 && player <= 10),
	add_to_instance_array: (!clone && !custom_clone),
	
	hud_colour: get_player_hud_color(player),
	hud_flash_colour: (colour_get_saturation(get_player_hud_color(player)) == 0)?c_white:make_colour_hsv(
		(colour_get_hue(get_player_hud_color(player)) + 128) % 255,
		255,
		255
	),
	hud_intense_colour: (colour_get_saturation(get_player_hud_color(player)) == 0)?c_dkgray:make_colour_hsv(
		colour_get_hue(get_player_hud_color(player)),
		clamp(colour_get_saturation(get_player_hud_color(player)) + 42, 0, 255),
		colour_get_value(get_player_hud_color(player))
	),
	hud_bright_flash_colour: (colour_get_saturation(get_player_hud_color(player)) == 0)?c_yellow:make_colour_hsv(
		(colour_get_hue(get_player_hud_color(player)) + 128) % 255,
		40,
		255
	),
	
	frozen_by_id: noone,
	frozen_frames: 0,
	frozen_ice_instance: noone,
	frozen_data: {
		sprite: sprite_index,
		image: image_index,
		mask: mask_index,
		state: PS_IDLE,
		state_timer: 0,
		window: 1,
		window_timer: 1
	},
	tracked_by_floor: noone,
	
	launched_by_id: noone,
	
	healed_by_id: noone,
	healed_time: 0,
	
	carried_by_id: noone,
	last_escapable_time: -100,
	thrown_by_id: noone,
	
	starman_from_id: noone,
	starman_time: 0,
	starman_stats_on: 0,
	starman_stats_obj: {},
	prestarman_stats_obj: {},
	starman_hitbox_id: noone,
	starman_hits: 0,
	
	etalus_window_freezer: noone,
	etalus_window_frames: 0,
	
	hit_by_shell: false,
	hit_by_star: false,
	
	moving_plat_subpixel: 0
};

//Prepare Yoshi Drums data (secret!)
if(get_gameplay_time() > 2 || true) {
	yoshi_drum_enabled = false;
}
else switch(get_stage_data(SD_ID)) {
	case 2: //Fire Capital
		yoshi_drum_enabled = true;
		yoshi_drum_timer = -2 * 1000000;
		
		yoshi_drum_userdata = {
			beats_per_minute: 140,
			beats_per_bar: 8,
			delay_beats: 4 + 0.375,
			data: [
				[0, 1, 2],
				
				// [0 + 0.125, 1, 1, sound_get("yoshi_drum3")],
				
				[2, 1, 0.7, sound_get("yoshi_drum6")],
				[2.45, 1, 0.7, sound_get("yoshi_drum10")],
				
				[4, 1, 2],
				
				[5, 1, 1, sound_get("yoshi_drum9")],
				
				[6, 1.1, 1],
				// [0.75 + 0.125, 1, 0.7, sound_get("yoshi_drum3")],
				// [0, 1.1, 1, sound_get("yoshi_drum10")],
				// [0, 1.1, 1, sound_get("yoshi_drum10")],
				// [0.125, 1, 1, sound_get("yoshi_drum6")],
				// [0.5, 0.85, 1, sound_get("yoshi_drum4")],
				// [0.5, 0.85, 1, sound_get("yoshi_drum4")],
				// [0.5, 1, 1, sound_get("yoshi_drum9")],
			]
		}
		yoshi_drum_metadata = false;
	break;
	case 3: //Aerial Armada
		print("Aerial Armada yoshi data loaded");
		yoshi_drum_enabled = true;
		yoshi_drum_timer = -2 * 1000000;
		
		yoshi_drum_userdata = {
			beats_per_minute: 170,
			beats_per_bar: 4,
			delay_beats: 1,
			data: [
				[0],
				// [0.25, 1.25],
				[0.5, 1.25],
				// [0.75, 1.25]
			]
		}
		yoshi_drum_metadata = false;
	break;
	case 4: //Rock Wall
		
	break;
	case 5: //Merchant Port
		
	break;
	case 1: //Treetop Lodge
		
	break;
	case 7: //Blazing Hideout
	
	break;
	case 9: //Tempest Peak
		
	break;
	case 10: //Frozen Fortress
		
	break;
	case 8: //Tower of Heaven
		
	break;
	case 11: //Aethereal Gates
		
	break;
	case 12: //The Endless Abyss
		
	break;
	case 15: //The Spirit Tree
		
	break;
	case 19: //The Forest Floor
		
	break;
	case 20: //Julesvale
		
	break;
	case 21: //Troupple Pond
		
	break;
	case 17: //Neo Fire Capital
		
	break;
	case 27: //The ROA Ring
		
	break;
	case 18: //The Swampy Estuary
		
	break;
	case 23: //Aether High
		
	break;
	case 26: //The Tutorial Grid
		
	break;
	case 24: //Pridemoor Keep
		
	break;
	default:
		print(`No Yoshi Drum data for ${get_stage_data(SD_ID)} :(`);
		yoshi_drum_enabled = false;
	break;
}

//#mark Prepare compat data for other Qua Marios to check
neo_data_compat = {
	has_tail: false,
	
	grab_escape_attack: AT_NSPECIAL,
	carry_x_offset: 0,
	carry_y_offset: -4,
	carry_hud_offset: 10,
	
	custom_starman_stat_handling: true,
	
	unfreezable: false,
	can_uspecial_out_of_ice: false,
	ice_escape_attack: AT_NSPECIAL,
	
	carryable_objects: [],
	freezable_objects: []
};