active_runes = ds_map_create();
var alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"];
for(var i = 0; i < array_length(alphabet); i++)
{
	active_runes[? alphabet[i]] = has_rune(alphabet[i]);
}

sprite_names = ["idle", "crouch", "walk", "walkturn", "dash", "dashstart", "dashstop", "dashturn", "dash_jumpsquat", "dash_shorthop", "jumpstart", "jump", "doublejump", "doublejump_back", "doublejump_extra", "walljump", "pratfall", "land", "landinglag", "parry", "roll_forward", "roll_backward", "airdodge", "airdodge_forward", "airdodge_back", "airdodge_up", "airdodge_down", "airdodge_upforward", "airdodge_downforward", "airdodge_upback", "airdodge_downback", "waveland", "tech", "hurt", "bighurt", "hurtground", "uphurt", "downhurt", "bouncehurt", "spinhurt", "jab", "dattack", "ftilt", "dtilt", "utilt", "nair", "fair", "bair", "uair", "dair", "fstrong", "ustrong", "dstrong", "nspecial", "nspecial_air", "fspecial", "fspecial_air", "uspecial", "dspecial", "dspecial2", "taunt", "fair_weak", "munophone", "dash_sacrifice", "dashstart_sacrifice", "dashstop_sacrifice", "bair_hurt", "crouch_hurt", "dair_hurt", "dash_hurt", "dashturn_hurt", "dattack_hurt", "dspecial_hurt", "dstrong_hurt", "dtilt_hurt", "fair_hurt", "fspecial_air_hurt", "fspecial_hurt", "fstrong_hurt", "ftilt_hurt", "idle_hurt", "jab_hurt", "nair_hurt", "nspecial_hurt", "pratfall_hurt", "taunt_hurt", "tech_hurt", "uair_hurt", "uspecial_hurt", "ustrong_hurt", "utilt_hurt"];

name_to_ref_map = ds_map_create();
ref_to_name_map = ds_map_create();

my_name = get_char_info(player, INFO_STR_NAME);

for(var i = 0; i < array_length(sprite_names); i++)
{
	//sprite_get_array[i] = sprite_get(sprite_names[i]);
	name_to_ref_map[? sprite_names[i]] = sprite_get(sprite_names[i]);
	ref_to_name_map[? sprite_get(sprite_names[i])] = sprite_names[i];
}

perf_size = 10;

update_perf = ds_list_create();
pre_draw_perf = ds_list_create();
attack_update_perf = ds_list_create();
animation_perf = ds_list_create();

for(var i = 0; i < perf_size; i++)
{
	ds_list_insert(update_perf, 0, 0);
	ds_list_insert(pre_draw_perf, 0, 0);
	ds_list_insert(attack_update_perf, 0, 0);
	ds_list_insert(animation_perf, 0, 0);
}

update_p = 0;
attack_update_p = 0;
animation_p = 0;
pre_draw_p = 0;

update_zeros = 0;
attack_update_zeros = 0;
animation_zeros = 0;
pre_draw_zeros = 0;


//PS_FLASHED, PS_CRYSTALIZED, PS_BURIED
current_sprite = sprite_names[0];
current_sprite_ref = name_to_ref_map[? current_sprite];
last_sprite_ref = name_to_ref_map[? current_sprite];
current_index = 0;
last_index = -1;
sirc_debug_draw = false;
dropped_frames = 0;

spr_x_offset = 54;
spr_y_offset = 94;
spr_char_center = -32;
 
disabled_nspecial = 0; //1
disabled_fspecial = 0; //2
disabled_uspecial = 0; //4
upgraded_nspecial = 0;
upgraded_fspecial = 0;
upgraded_uspecial = 0; //Used in runes

vanda_last_update = 0;

reduced_index = 0;

//variable_instance_get_names(self);
//Unique HUD and portrait sprites
vanda_hud_offset = 34 * 2;
vanda_portrait_offset = 350;

/*COLORS*/
{
	vanda_color_slot = get_player_color(player);
	vanda_color_r = [0,0,0,0,0,0,0,0];
	vanda_color_g = [0,0,0,0,0,0,0,0];
	vanda_color_b = [0,0,0,0,0,0,0,0];
	
	vanda_colors = [0,0,0,0,0,0,0,0];
	
	for(var i = 0; i <= 7; i++)
	{
		vanda_color_r[i] = get_color_profile_slot_r(vanda_color_slot,i);
		vanda_color_g[i] = get_color_profile_slot_g(vanda_color_slot,i);
		vanda_color_b[i] = get_color_profile_slot_b(vanda_color_slot,i);
		
		vanda_colors[i] = make_colour_rgb(vanda_color_r[i], vanda_color_g[i], vanda_color_b[i]);
	}
}
/*COLORS_END*/

/*ASSET_GET_CACHING*/
{
	//Objects
	{
		a_pHitBox = asset_get("pHitBox");
		a_par_block = asset_get("par_block");
		a_par_jumpthrough = asset_get("par_jumpthrough");
		a_obj_article1 = asset_get("obj_article1");
		a_plasma_field_obj = asset_get("plasma_field_obj");
	}
	
	//Sprites
	{
		a_empty_sprite = asset_get("empty_sprite");
		a_ex_guy_hurt_box = asset_get("ex_guy_hurt_box");
	}
	
	//Hit SFX
	{
		a_sfx_swipe_weak1 = asset_get("sfx_swipe_weak1");
		a_sfx_swipe_weak2 = asset_get("sfx_swipe_weak2");
		a_sfx_swipe_medium1 = asset_get("sfx_swipe_medium1");
		a_sfx_swipe_medium2 = asset_get("sfx_swipe_medium2");
		a_sfx_swipe_heavy1 = asset_get("sfx_swipe_heavy1");
		a_sfx_swipe_heavy2 = asset_get("sfx_swipe_heavy2");
		
		a_sfx_blow_weak1 = asset_get("sfx_blow_weak1");
		a_sfx_blow_weak2 = asset_get("sfx_blow_weak2");
		a_sfx_blow_medium1 = asset_get("sfx_blow_medium1");
		a_sfx_blow_medium2 = asset_get("sfx_blow_medium2");
		a_sfx_blow_medium3 = asset_get("sfx_blow_medium3");
		a_sfx_blow_heavy1 = asset_get("sfx_blow_heavy1");
		a_sfx_blow_heavy2 = asset_get("sfx_blow_heavy2");
	}
	
	//Sounds
	{
		a_mfx_logo_shing = asset_get("mfx_logo_shing");
		a_sfx_absa_uair = asset_get("sfx_absa_uair");
		a_sfx_bird_sidespecial_start = asset_get("sfx_bird_sidespecial_start");
		a_sfx_bite = asset_get("sfx_bite");
		a_sfx_crunch = asset_get("sfx_crunch");
		a_sfx_boss_fireball = asset_get("sfx_boss_fireball");
		a_sfx_boss_fireball_land = asset_get("sfx_boss_fireball_land");
		a_sfx_boss_vortex_end = asset_get("sfx_boss_vortex_end");
		a_sfx_burnend = asset_get("sfx_burnend");
		a_sfx_charge_blade_swing = asset_get("sfx_charge_blade_swing");
		a_sfx_clairen_nspecial_grab_success = asset_get("sfx_clairen_nspecial_grab_success");
		a_sfx_ell_big_missile_ground = asset_get("sfx_ell_big_missile_ground");
		a_sfx_ell_uspecial_explode = asset_get("sfx_ell_uspecial_explode");
		a_sfx_forsburn_cape_swipe = asset_get("sfx_forsburn_cape_swipe");
		a_sfx_forsburn_combust = asset_get("sfx_forsburn_combust");
		a_sfx_forsburn_spew2 = asset_get("sfx_forsburn_spew2");
		a_sfx_frog_dspecial_swallow = asset_get("sfx_frog_dspecial_swallow");
		a_sfx_holy_tablet = asset_get("sfx_holy_tablet");
		a_sfx_ice_shieldup = asset_get("sfx_ice_shieldup");
		a_sfx_orca_bite = asset_get("sfx_orca_bite");
		a_sfx_ori_grenade_hit = asset_get("sfx_ori_grenade_hit");
		a_sfx_owl0 = asset_get("sfx_owl0");
		a_sfx_owl2 = asset_get("sfx_owl2");
		a_sfx_pom_tailhit_back = asset_get("sfx_pom_tailhit_back");
		a_sfx_pom_tailhit_forward = asset_get("sfx_pom_tailhit_forward");
		a_sfx_pom_tailhit_up = asset_get("sfx_pom_tailhit_up");
		a_sfx_shop_buy = asset_get("sfx_shop_buy");
		a_sfx_shop_invalid = asset_get("sfx_shop_invalid");
		a_sfx_troupple_rumble = asset_get("sfx_troupple_rumble");
		a_sfx_waveland_fors = asset_get("sfx_waveland_fors");
		a_sfx_zetter_downb = asset_get("sfx_zetter_downb");
		a_sfx_absa_kickhit = asset_get("sfx_absa_kickhit");
		a_sfx_bigplant_clamp = asset_get("sfx_bigplant_clamp");
		a_sfx_bigplant_eat = asset_get("sfx_bigplant_eat");
		a_sfx_ell_dspecial_explosion_1 = asset_get("sfx_ell_dspecial_explosion_1");
		//a_sfx_ell_dspecial_explosion_2 = asset_get("sfx_ell_dspecial_explosion_2");
		a_sfx_ori_glide_featherout = asset_get("sfx_ori_glide_featherout");
		
		a_mfx_tut_fail = asset_get("mfx_tut_fail");
		a_sfx_parry_success = asset_get("sfx_parry_success");
		
		//NSpecial
		a_sfx_abyss_hazard_hit = asset_get("sfx_abyss_hazard_hit");
		a_sfx_holy_textbox = asset_get("sfx_holy_textbox");
		
	}
	
	//sprite_get
	{
		s_nspecial_projectile_armed = sprite_get("nspecial_projectile_armed");
		s_taunt_eyes = sprite_get("taunt_eyes");
		s_dspecial_lightning = sprite_get("dspecial_lightning");
		s_dspecial_menu = sprite_get("dspecial_menu");
		s_dspecial_circle = sprite_get("dspecial_circle");
		s_dspecial_indicator = sprite_get("dspecial_indicator");
		
		s_dash_jumpsquat = sprite_get("dash_jumpsquat");
		s_dash_shorthop = sprite_get("dash_shorthop");
		s_crouch = sprite_get("crouch");
		s_waveland = sprite_get("waveland");
		s_doublejump_extra = sprite_get("doublejump_extra");
		s_doublejump_back = sprite_get("doublejump_back");
		s_empty_sprite = sprite_get("empty_sprite");
		
		s_fx_dash_shorthop_dust_color = sprite_get("fx_dash_shorthop_dust_color");
		s_fx_dspecial = sprite_get("fx_dspecial");
		s_fx_dash_sacrifice = sprite_get("fx_dash_sacrifice");
		s_fx_dashturn_sacrifice = sprite_get("fx_dashturn_sacrifice");
		s_fx_dashstart_sacrifice = sprite_get("fx_dashstart_sacrifice");
		//s_fx_walk_sacrifice = sprite_get("fx_walk_sacrifice");
		s_fx_jump_sacrifice = sprite_get("fx_jump_sacrifice");
		s_fx_djump_sacrifice = sprite_get("fx_djump_sacrifice");
		s_fx_djump_small_sacrifice = sprite_get("fx_djump_small_sacrifice");
		s_fx_walljump_sacrifice = sprite_get("fx_walljump_sacrifice");
		
		s_hfx_darkfire_large = sprite_get("hfx_darkfire_large");
		s_hfx_darkfire_small = sprite_get("hfx_darkfire_small");
		s_hfx_strike_big = sprite_get("hfx_strike_big");
		s_hfx_strike_die = sprite_get("hfx_strike_die");
		s_shadowflame_explosion_large = sprite_get("shadowflame_explosion_large");
		s_shadowflame_explosion_small = sprite_get("shadowflame_explosion_small");
		
		s_dash = sprite_get("dash");
		s_dash_sacrifice = sprite_get("dash_sacrifice");
		s_dashstart = sprite_get("dashstart");
		s_dashstart_sacrifice = sprite_get("dashstart_sacrifice");
		s_dashstop = sprite_get("dashstop");
		s_dashstop_sacrifice = sprite_get("dashstop_sacrifice");
		
		//NSpecial
		s_nspecial_projectile_unarmed = sprite_get("nspecial_projectile_unarmed");
		s_nspecial_projectile_armed = sprite_get("nspecial_projectile_armed");
		s_nspecial_hazard_mask = sprite_get("nspecial_hazard_mask");
		s_nspecial_stuck_mask = sprite_get("nspecial_stuck_mask");
		s_nspecial_hazard = sprite_get("nspecial_hazard");
		s_nspecial_stuck = sprite_get("nspecial_stuck");
		s_shadowflame_explosion = sprite_get("shadowflame_explosion");
		s_nspecial_hazard_radius = sprite_get("nspecial_hazard_radius");
		s_nspecial_detonation_cue = sprite_get("nspecial_detonation_cue");
	}
	
	//sound_get
	{
		s_uspecial_wave = sound_get("uspecial_wave");
		s_uspecial_bubble = sound_get("uspecial_bubble");
		s_thunder1 = sound_get("thunder1");
		s_merkava_ka = sound_get("merkava_ka");
		s_roar1 = sound_get("roar1");
		s_nspecial_explode = sound_get("nspecial_explode");
		s_dspecial_ambience = sound_get("dspecial_ambience");
		s_nspecial_spew = sound_get("nspecial_spew");
		s_fspecial_ground = sound_get("fspecial_ground");
		s_fspecial_ground2 = sound_get("fspecial_ground2");
		s_fspecial_air = sound_get("fspecial_air");
		s_bell_down = sound_get("bell_down");
		
		//NSpecial
		s_nspecial_buildup = sound_get("nspecial_buildup");
		s_nspecial_explode = sound_get("nspecial_explode");
	}
}
/*ASSET_GET_CACHING_END*/

/*DSPECIAL*/
{
    sacrifice_level = 0; //Sacrifices used
    sacrifice_max = 3 + active_runes[?"A"] + active_runes[?"G"] + active_runes[?"L"]; //Max sacrifices
    restores_level = 0; //Restores used
    restores_left = 0; //Restores remaining
    restore_max = 0; //Max restores
	
	successful_action = false;

    dspecial_selected = 0;
	dspecial_selected_old = 0;
	dspecial_selected_old_timer = 0;
	dspecial_points_interp_frames = 4;

    dspecial_sacrifice_angle = 0;
    dspecial_restore_angle = 90;

    dspecial_alpha_level = 0;
    dspecial_alpha_timer = 0;

    dspecial_first_sacrifice = 0;
    dspecial_second_sacrifice = 0;
	dspecial_points_timer = 0;
	dspecial_bad_input_display = false;
	
	/*RUNE O*/
	vanda_rune_o_mark = 0;
	vanda_rune_o_player = -1;
	rune_o_parry_time = 60;
	/*RUNE_O_END*/
	
    //Options
	dspecial_djump_decay_ratio = 0.87;
	dspecial_height_limit_multiplier = 3.75; //Used to be 2.5
	dspecial_descent_rate = 64; //Applies SPEED every RATE frames
	dspecial_descent_speed = 0.35; //Applies SPEED every RATE frames
	
	dspecial_use_old_visuals = false;
	
	dspecial_points_bg_width = 3;
	dspecial_points_bg_color = c_black;
	
	dspecial_points_use_fg = false;
	dspecial_points_fg_width = 3;
	dspecial_points_fg_color = vanda_colors[7];
	
	dspecial_runes_num = 12;
	dspecial_runes_distance = 100;
	dspecial_runes_fade_percent = 0.05;
	
    //Functional
	//NSpecial
	dspecial_points_x[0] = [   0,    0,    0,    0,   0, -0.8, 0.8,   0,   0,   0];
	dspecial_points_y[0] = [-0.8, -0.8, -0.8, -0.8, 0.8,    0,   0, 0.8, 0.8, 0.8];
	
	//FSpecial
	dspecial_points_x[1] = [0.94, 0.4,  0.4, 0.2, -0.2,   0,    0, -0.4, -0.4, -0.97];
	dspecial_points_y[1] = [   0, 0.4, -0.4,   0,    0, 0.2, -0.2,  0.4, -0.4,     0];
	
	//USpecial
	dspecial_points_x[2] = [   0, -0.62,  0.62,    0,    0,    0,    0,   0.2,  -0.2,     0];
	dspecial_points_y[2] = [0.95, -0.31, -0.31, -0.6, -0.6, -0.6, -0.6, -0.81, -0.81, -0.95];
	
	dspecial_points_graph = [[0,1], [0,2], [1,3], [2,3], [3,5], [3,6], [5,4], [6,4], [4,7], [4,8], [7,9], [8,9]];
	
	dspecial_points_timer_max = 50;
	
	dspecial_big_circle = 72;
	//dspecial_small_circle = 51;

	
	dspecial_big_circle_color = c_white;
	dspecial_big_circle_alpha = 0.4;
	

    //dspecial_circle_time_in = 28;
    //dspecial_circle_time_out = 8;

    //dspecial_start_time = 21;
	dspecial_split_upgrades = false; //Set to true if attack upgrades should be executed over the course of several frames
	if(dspecial_split_upgrades)
	{
		dspecial_timer_max = 22; //Number of frames to spread out attack upgrades
	}
	else
	{
		dspecial_timer_max = 1; //Number of frames to spread out attack upgrades
	}
	dspecial_update_timer = [dspecial_timer_max,0,0,0,0];
	current_dspecial_timer = 0;
	dspecial_needs_script_updates = false;

	//Restore the first or second sacrificed limb automatically when gaining a restoration point, consuming it in the process
    dspecial_automatically_restore_on_kill = false;
	
	//If Vanda has a restoration point and selects a limb that has not been sacrificed with DSpecial, consume the restoration point and gain a sacrifice level without losing the limb
	dspecial_automatically_restore_on_successful_action = false;

    //Graphical
	dspecial_y_offset = spr_char_center - 14;
	//Old
	{
		dspecial_sac_avail_color = $ffff00;
		dspecial_sac_used_color = $0d0dab;
		dspecial_sac_unavail_color = $393347;

		dspecial_res_avail_color = c_lime;
		dspecial_res_used_color = $0d0dab;
		dspecial_res_unavail_color = $393347;
	}

	//dspecial_sac_progress_bg_color = [$000000, vanda_colors[6], vanda_colors[1], $000000];
    //dspecial_sac_progress_fg_color = [vanda_colors[7], vanda_colors[5], vanda_colors[4], $000000];
	//dspecial_sac_progress_complete_color = [$ffffff, vanda_colors[6], vanda_colors[1], vanda_colors[4]];
	
	dspecial_sac_progress_bg_color = [$000000, $000000, $000000, $000000];
    dspecial_sac_progress_fg_color = [vanda_colors[7], vanda_colors[7], vanda_colors[7], vanda_colors[7]];
	dspecial_sac_progress_complete_color = [vanda_colors[6], vanda_colors[6], vanda_colors[6], vanda_colors[6]];

    dspecial_pentagram_offset = 2;
    dspecial_pentagram_colors = [$393347, $911ae6, $e209e2, $7b007b];
    dspecial_pentagram_flash = false;
    dspecial_pentagram_color = c_black;

    dspecial_spin_rate = 1/3;
    dspecial_alpha_sin_min = 20;
    dspecial_alpha_sin_max = 160;
	dspecial_progress_alpha_min = 0;
	dspecial_progress_alpha_max = 1;
    dspecial_alpha_squared = true;
	
	//Sound
	//dspecial_sfx = a_sfx_troupple_rumble;
	dspecial_sfx = s_dspecial_ambience;
	dspecial_sfx_volume = 0.6;
	
	dspecial_sfx_timer_max = 30;
	dspecial_sfx_timer_min = -100;
}
/*DSPECIAL_END*/


/*NSPECIAL*/
{
	//nspecial_entity = noone;
	nspecial_storage_level = 0;
	nspecial_index_array = [0,0,0,0,0,0,0,0];

	//Options
	nspecial_lifetime = 320 * lerp(1, 1.5, active_runes[? "H"]) * lerp(1, 3, active_runes[? "F"]);
	nspecial_max_times_hit = 5;
	nspecial_base_hit_lockout = 10;
	nspecial_max_projectiles = lerp(1, 5, active_runes[? "H"]);
	nspecial_current_projectiles = 0;
	rune_f_special_down_timer = 0;
	
	//Physics
	{
		nspecial_gravity = 0.4;
		nspecial_gravity_hit_mult = 1.08;
		nspecial_initial_damage = 20;
		nspecial_damage_scaling = 1.4;
	}
	
	//Spawning
	{
		nspecial_spawn_x = [60, 36, 30, 64]; //Based on release angle
		var h = -30 - 32; //12 - char_height/2
		nspecial_spawn_y = [h - 10, h - 22, h - 24, h + 20]; //Based on release angle
		nspecial_spawn_frame = [1, 1, 1, 15]; //Based on release angle
		nspecial_spawn_angles = [20, 45, 65, 0];
		
		nspecial_spawn_force = [[6, 7.5, 9, 11], [6, 7.5, 9, 11], [6, 7.5, 9, 11], [11, 11, 11, 11]]; //Based on [release angle, charge level]
		rune_e_x_adjust = [32,32,32,32]; //Based on release angle
		rune_e_y_adjust = [48,64,64,0]; //Based on release angle
		
		//Update force of 45 degree angle to land at the same spot on the ground
		for(var i = 0; i < 3; i++)
		{
			nspecial_spawn_force[1, i] *= get_force_modifier(nspecial_spawn_angles[0], nspecial_spawn_force[0][i], nspecial_spawn_angles[1], -nspecial_spawn_y[0], nspecial_gravity);
		}
		nspecial_release_angle = 1; //0 = down, 1 = neutral, 2 = up, 3 = straight
		nspecial_angle_to_window = [6,5,4,7];
	}
	
	
	
	//Behaviors
	{
		//Bit 0 = Can hit, Bit 1 = Can explode
		nspecial_self_behavior = 1;
		nspecial_teammate_behavior = lerp(0, 1, get_match_setting(SET_TEAMATTACK) == 1);
		nspecial_enemy_behavior = 3;
		
		//On parry
		//Bit 0 = Go on cooldown, Bit 1 = Parry stun
		nspecial_parry_attach_behavior = 3;
		nspecial_parry_proximity_behavior = 3;
		nspecial_parry_cooldown = 300;
		nspecial_parry_stun = 90;
	}
	
	//Sticking to players
	{
		//nspecial_detonate_delay = 40 * lerp(1, 0.5, active_runes[? "F"]);
		//nspecial_hitstun_countdown_block = 10 * lerp(1, 0.1, active_runes[? "F"]); //After the target has been in hitstun for this many frames, NSpecial timer will not count down. This helps avoid situations where NSpecial explodes as Vanda lands an attack
		//The above is commented out due to swapping Rune F into normal play
		nspecial_detonate_delay = 60 * lerp(1, 1, active_runes[? "F"]);
		nspecial_hitstun_countdown_block = 10 * lerp(1, 1, active_runes[? "F"]); //After the target has been in hitstun for this many frames, NSpecial timer will not count down. This helps avoid situations where NSpecial explodes as Vanda lands an attack
		
		nspecial_can_restick = false;
	}
	
	//Stage control hazard options
	{
		nspecial_arm_time = 24;
		nspecial_detect_radius = 50;
		nspecial_hazard_detonation_delay = 12;
		nspecial_hazard_detonation_delay_hitstun = 3;
		nspecial_time_until_despawn = 480 * lerp(1, 1.5, active_runes[? "H"]) * lerp(1, 3, active_runes[? "F"]);
	}
	
	//Visual + Audio
	{
		nspecial_hit_sound = asset_get("sfx_abyss_hazard_burst");
		//Pitch based on y = (arctan(b(x - c)) + a) / a
		//Where x is a function of the hitbox BKB, damage, KBS, and the NSpecial's damage taken
		nspecial_pitch_a = 5;
		nspecial_pitch_b = -0.5;
		nspecial_pitch_c = 6;
	}
	
	//Attack hit detection array - moved from article1_init
	{
		nspecial_max_hit_detect_array_size = 1;
		if(active_runes[?"H"]) nspecial_max_hit_detect_array_size += 4;
		if(active_runes[?"M"]) nspecial_max_hit_detect_array_size += 3;
		nspecial_hbox_group = array_create(nspecial_max_hit_detect_array_size, 0);
		nspecial_hbox_group_template = array_create(nspecial_max_hit_detect_array_size, 0);
		for(var i_index = 0; i_index < nspecial_max_hit_detect_array_size; i_index++)
		{
			nspecial_hbox_group[@i_index] = array_create(4, 0);
			nspecial_hbox_group_template[@i_index] = array_create(4, 0);
			for(var i_player = 0; i_player < 8; i_player++) //Needs to be 8 because of abyss endless mode
			{
				nspecial_hbox_group[@i_index][@i_player] = array_create(50, 0);
				nspecial_hbox_group_template[@i_index][@i_player] = array_create(50, 0);
				for(var i_attack = 0; i_attack < 50; i_attack++)
				{
					nspecial_hbox_group[@i_index][@i_player][@i_attack] = array_create(11,0);
					nspecial_hbox_group_template[@i_index][@i_player][@i_attack] = array_create(11,0);
				}
			}
			//Disable NSpecial blob
			for(var i_group = 0; i_group <= 11; i_group++)
			{
				nspecial_hbox_group[@i_index][player - 1][AT_NSPECIAL][@i_group] = 1;
				nspecial_hbox_group_template[@i_index][player - 1][AT_NSPECIAL][@i_group] = 1;
			}
		}
	}
	
}
/*NSPECIAL_END*/

/*USPECIAL*/
{
    uspecial_used = false;
    uspecial_angle = 90;
    uspecial_raw_angle = 90;
    uspecial_delta_angle = 0;
	
	uspecial_frame = 0;
	uspecial_total_frames = 32 + lerp(0, 16 + 3, active_runes[?"B"]);
	//uspecial_total_frames = 32;
	rune_b_target = noone;
	rune_b_distance = 0;
	uspecial_hitbox = noone;
	
    //Options
    uspecial_allow_airdodge = false;
	uspecial_walljump_window = 3;
    uspecial_walljump_frame = 0;
}
/*USPECIAL_END*/

/*FSPECIAL*/
{
	fspecial_initial_x_offset = 8;
	fspecial_initial_y_offset = 96;
	fspecial_playing_swoosh = false;
	fspecial_used_nspecial = false;
	fspecial_stall_accumulator = 0;
	fspecial_stall_accumulator_old = 0;
	fspecial_friction_frames_remaining = 0;
	
	fspecial_array_size = 0;
	fspecial_stall_particle_array = ds_list_create();
	
    //Options
	fspecial_cancel_frame = 22;
	fspecial_bonk_vsp = -7;
	fspecial_bonk_hsp = -3;
	fspecial_ledgeclip_height = 32;
	fspecial_ledgeclip_skid_hsp = 7;
	
	fspecial_friction_frames = 4;
	
	fspecial_nspecial_hsp = 6;
	fspecial_nspecial_vsp = 8;
	rune_m_direction_adjust_hsp = [0, 2.6, -3.4, 4.5];
	rune_m_direction_adjust_vsp = [0, -1.4, 0.25, -4.7];
	
	fspecial_nspecial_x_offset = -24;
	fspecial_nspecial_y_offset = 48;
	
	fspecial_return_after_nspecial = false;
	fspecial_nspecial_parry_proximity_behavior = 3;
	
	
	
					  //Forwards,     Up,   Back,     Down,   Idle
							 //0,  1,  2,  3,  4,   5,   6,   7, 8
	fspecial_flight_angles = [15, 20, 45, 75, 20, 285, 325, 355, 0];
	fspecial_flight_visual_angles = [359, 70, 40, -8, -45, -60, -80, -359];
	
	//fspecial_max_speed = 15;
	fspecial_max_speed = 13.5;
	fspecial_min_speed = 4;
	
	//fspecial_max_hsp_max = 11;
	fspecial_max_hsp_max = 9.5;
	fspecial_min_hsp = 0.5;
	fspecial_max_hsp_decrement = 0.0075;
	
	fspecial_max_vsp_max = 12;
	//fspecial_min_vsp = 0;
	fspecial_max_vsp_decrement = 0;
	
	fspecial_stall_angle = 90;
	fspecial_stall_angle_leniency = 3;
	
	fspecial_stall_enable_color = true;
	fspecial_stall_color_multiplier = 1.5;
	//fspecial_stall_color_max_opacity = 0.8;
	fspecial_stall_color_max_opacity = 0.5;
	//fspecial_stall_color = $114499;
	fspecial_stall_color = $000000;
	fspecial_stall_particle_color = [get_light_shadowflame_color(), get_dark_shadowflame_color()];
	fspecial_stall_particle_alpha = 0.6;
	
	//Nest this in another array, where the coordinates are ordered by the animation frame (reduced_index)
	fspecial_stall_particle_coords = [];
	fill_particle_array();
	//fspecial_stall_particle_easing_rate = 1/8;
	fspecial_stall_particle_easing_rate = dsin(90 * 1/2);
	
	//Copy from fspecial_stall_particle_coords[9]
	fspecial_stall_particle_lasting_overflow = [66, -40, 46, -37, -48, -42, -18, -36];
	
	fspecial_iter_rate = 2;
	fspecial_stall_particle_max_lifetime = 10;
	fspecial_stall_particle_steepness = 0.5;
	
	fspecial_lift_constant = 0.00975 * 6;
	
	
	//fspecial_lift_coefficient = 0.01;
	fspecial_lift_coefficient = fspecial_max_speed * fspecial_max_hsp_decrement / fspecial_max_vsp_max;
	
	fspecial_angle = 0;
	
	rune_c_special_down = false;
	
}
/*FSPECIAL_END*/

/*USTRONG*/
{
	vanda_landed_ustrong = noone;
	vanda_hit_sourspot = false;
	
	//Options
	vanda_ustrong_offset_x_init = -4;
	vanda_ustrong_offset_y_init = -100;
	vanda_ustrong_offset_x_end = 76;
	vanda_ustrong_offset_y_end = 166;
	
	vanda_ustrong_interp_start_frame = 12;
	vanda_ustrong_stab_extra_damage = 6;
	
	vanda_ustrong_nspecial_bkb = 11;
	vanda_ustrong_nspecial_kbs = 1.3;
}
/*USTRONG_END*/

/*FSTRONG*/
{
	vanda_fstrong_nspecial_angle = 25;
}
/*FSTRONG_END*/

/*JAB*/
{
    //jab_parried = 0;
}
/*JAB_END*/

/*DAIR*/
{
    restore_djump = true;
    max_djump_restores = 2;
    djumps_restored = 0;
	
	
	vanda_dair_grabbed = noone;
	vanda_dair_offset_x = 0;
	vanda_dair_offset_y = 0;
	
	vanda_landed_dair = noone;
	
	//Options
	vanda_dair_offset_x_init = 0;
	vanda_dair_offset_y_init = 64;
	vanda_dair_offset_x_end = 0;
	vanda_dair_offset_y_end = -40;
	
	vanda_dair_air_friction = 0.8;
	vanda_dair_launch_mult = 0.1;
	vanda_dair_launch_max = 5;
	
	vanda_dair_nspecial_boost = 1.6;
}
/*DAIR_END*/

/*FAIR*/
{
	vanda_use_ftilt_iasa = false;
	vanda_fair_iasa_time = 6;
	
}
/*FAIR_END*/

/*UAIR*/
{
	vanda_uair1_max_hsp = 4;
	vanda_uair1_vsp_boost = -2;
	vanda_uair_hit1 = false;
	vanda_uair_hit2 = false;
	vanda_uair_buffer_fastfall = false;
}
/*UAIR_END*/

/*DTILT*/
{
	vanda_dtilt_iasa_window = 3;
	vanda_dtilt_iasa_window_timer = 4;
	vanda_dtilt_consecutive = 0;
}
/*DTILT_END*/

/*DASH_ATTACK*/
{
	vanda_dattack_hold_back_to_slow = true;
	vanda_dattack_hold_back_reduction_per_frame = 1;
	vanda_dattack_hit1 = false;
}
/*DASH_ATTACK_END*/

/*CHARACTER_VARIABLES*/
{
    char_height = 64;

    /*ANIMATIONS*/
    {
        walk_anim_speed = .125;

		crouch_startup_frames = 3;
		crouch_active_frames = 6;
		crouch_recovery_frames = 3;

		double_jump_time = 26; //I can set it below 31 because I'm special

		dodge_startup_frames = 1;
		dodge_active_frames = 1;
		dodge_recovery_frames = 4;

		tech_active_frames = 3;
		tech_recovery_frames = 1;

		techroll_startup_frames = 1;
		techroll_active_frames = 3;
		techroll_recovery_frames = 2;

		roll_forward_startup_frames = 1;
		roll_forward_active_frames = 3;
		roll_forward_recovery_frames = 2;

		roll_back_startup_frames = 1;
		roll_back_active_frames = 3;
		roll_back_recovery_frames = 2;

        pratfall_anim_speed = .25;

        wall_frames = 2;

        air_dodge_startup_frames = 2;
        air_dodge_active_frames = 1;
        air_dodge_recovery_frames = 2;
		
		//See animation.gml for hurtboxes
		hurtbox_spr = sprite_get("idle_hurt");
        crouchbox_spr = sprite_get("crouch_hurt");
        air_hurtbox_spr = sprite_get("idle_hurt");
        hitstun_hurtbox_spr = sprite_get("idle_hurt");
    }
    /*ANIMATIONS_END*/
	
	/*DOUBLE_JUMP*/
	{
		dj_back = false;
	}
	
	/*DASHING_SHORTHOP*/
	{
		in_dash_jumpsquat = false;
		in_dash_shorthop = false;
	}
	/*DASHING_SHORTHOP_END*/

    /*SOUND*/
    {
        land_sound = asset_get("sfx_land_heavy");
        landing_lag_sound = asset_get("sfx_land_heavy");
        waveland_sound = sound_get("vanda_wavedash");
        jump_sound = asset_get("sfx_jumpground");
        djump_sound = asset_get("sfx_jumpair");
        air_dodge_sound = asset_get("sfx_quick_dodge");
    }
    /*SOUND_END*/
    
    /*RANNO_BUBBLE*/
    {
        bubble_x = 0;
        bubble_y = 8;
    }
    /*RANNO_BUBBLE_END*/
}
/*CHARACTER_VARIABLES_END*/

/*SHADOWBURN_HITFX*/
{
    shadowburn_timer = 0;
	shadowburn_owner = noone;
	shadowburn_attack_timer = 28;
	shadowburn_frequency = 12;
}
/*SHADOWBURN_HITFX_END*/

/*DSPECIAL_FX*/
{
	dspecial_fx_list = ds_list_create();
	dspecial_fx_list_add = ds_list_create();
	dspecial_fx_type =    		[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; //1 = DSpecial, 2 = Special move, 3 = FSpecial Sac Lines
	dspecial_fx_special = 		[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; //1 = NSpecial, 2 = FSpecial, 3 = USpecial
	
	//Options
	dspecial_fx_length = 45;
	dspecial_fx_list_max_size = 40;

	dspecial_fx_fadeout_thresh = 0.15;
	//dspecial_fx_decay  |  0: Unused, 1: NSpecial, 2: NSpecial spew, 3: FSpecial Air, 4: FSpecial, 5: USpecial
	dspecial_fx_decay = [1, 0.98, 0.98, 0.95, 0.98, 0.96];
}
/*DSPECIAL_FX_END*/

/*HIT_EFFECTS*/
{
	fx_shadowball = hit_fx_create(sprite_get("hfx_shadowball"), shadowburn_attack_timer);
	fx_shadowball_flame = hit_fx_create(sprite_get("hfx_shadowball_flame"), shadowburn_attack_timer);

	fx_shadowflame_explosion = hit_fx_create(sprite_get("shadowflame_explosion"), 24);

	fx_hitsurface = hit_fx_create(sprite_get("fx_hitsurface"), 10);

	fx_fspecial_particle = hit_fx_create(sprite_get("hfx_fspecial_particle"), 30);

	fx_dspecial = hit_fx_create(s_fx_dspecial, dspecial_fx_length * 10);


	hfx_darkfire_large = hit_fx_create(s_hfx_darkfire_large, 33);
	hfx_darkfire_small = hit_fx_create(s_hfx_darkfire_small, 16);
	hfx_strike_big = hit_fx_create(s_hfx_strike_big, 35);
	hfx_strike_die = hit_fx_create(s_hfx_strike_die, 45);
	shadowflame_explosion_large = hit_fx_create(s_shadowflame_explosion_large, 30);
	shadowflame_explosion_small = hit_fx_create(s_shadowflame_explosion_small, 30);
	nspecial_detonation_cue = hit_fx_create(s_nspecial_detonation_cue, 8);
}
/*HIT_EFFECTS_END*/

/*COUNT_KILLS*/
{
    vanda_killed_player = false;
    vanda_total_kills = 0;
}
/*COUNT_KILLS_END*/

/*COLORS*/
{
	player_color = get_player_color(player);
	eyes_color_shadowflame_dark = [get_color_profile_slot_r(player_color,1)-8,get_color_profile_slot_g(player_color,1)-31,get_color_profile_slot_b(player_color,1)-26];
	eyes_color_shadowflame_light = [get_color_profile_slot_r(player_color,1)+8,get_color_profile_slot_g(player_color,1)+31,get_color_profile_slot_b(player_color,1)+26];
}
/*COLORS_END*/

/*MUNOPHONE_TOUCH*/
{
	muno_cooldowns_landing = noone;
	muno_event_type = 0;
	user_event(14);
}
/*MUNOPHONE_TOUCH_END*/

for(current_dspecial_timer = 0; current_dspecial_timer < array_length(dspecial_update_timer); current_dspecial_timer += 1)
{
	while(dspecial_update_timer[current_dspecial_timer] > 0)
	{
		user_event(current_dspecial_timer);
		dspecial_update_timer[current_dspecial_timer] = max(0, dspecial_update_timer[current_dspecial_timer] - 1);
	}
}


ori_in_match = false;
has_clairen = false;
for(var i = 0; i <= 3; i++)
{
	if(get_char_info(i, INFO_STR_NAME) == "Ori & Sein")
	{
		ori_in_match = true;
	}
	else if(get_char_info(i, INFO_STR_NAME) == "Clairen")
	{
		has_clairen = true;
	}
}

set_ui_element(UI_HUD_ICON, sprite_get("vanda_hud" + string(player)));

#define get_force_modifier(a1, v1, a2, h, g)
	//Consider launch vectors L1 and L2, which have different angles a1 and a2, and the same velocity v1 = v2.
	//A projectile launched across L2 will not land at the same position as L1. However, if v2 is multiplied by some constant k (which is dependent on a1 and a2 but NOT v1), then a projectile fired along L2 will land in the same spot as L1.
	
	//Angles must be between 0 and 90 degrees
	if(a1 != clamp(a1, 0, 90) || a2 != clamp(a2, 0, 90))
	{
		print("Error setting up NSpecial velocities: Angles are not between 0 and 90 degrees");
		return 1;
	}
	
	//Gravity must be positive, or else projectile may never cross the x-axis at all
	if(g < 0)
	{
		print("Error setting up NSpecial velocities: Gravity is negative");
		return 1;
	}
	
	//Set up quadratic formula to find x-intercepts
	//Derived from basic 2D ballistics equations found on https://www.desmos.com/calculator/gjnco6mzjo
	var a = (-g / 2) / ((v1 * dcos(a1)) * (v1 * dcos(a1)));
	var b = dtan(a1);
	var c = h;
	
	var land_x1 = 0;
	var land_x2 = 0;
	if(b * b - 4 * a * c >= 0)
	{
		land_x1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
		land_x2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
	}
	else
	{
		print("Error setting up NSpecial velocities: Quadratic formula has imaginary values");
		return 1;
	}
	
	//This value represents the x-value where L1 crosses the x-axis (the ground)
	//Get larger value; the smaller one should be 0 or less depending on the height offset
	var land_x = max(land_x1, land_x2);
	
	//Calculate the multiplier, squared
	//Should always be positive because our angles should be between 0 and 90 degrees
	var kmod = (g * land_x * land_x) / ((2 * h + 2 * dtan(a2) * land_x) * v1 * v1 * dcos(a2) * dcos(a2));
	
	if(kmod >= 0)
	{
		return sqrt(kmod);
	}
	else
	{
		print("Error setting up NSpecial velocities: Return multiplier is negative");
		return 1;
	}

#define get_light_shadowflame_color()
	var this_color_slot = get_player_color(player);
	var this_profile_r = get_color_profile_slot_r(this_color_slot, 1);
	var this_profile_g = get_color_profile_slot_g(this_color_slot, 1);
	var this_profile_b = get_color_profile_slot_b(this_color_slot, 1);
	
	var color_rgb = make_color_rgb(this_profile_r, this_profile_g, this_profile_b);
	var this_profile_h = color_get_hue(color_rgb);
	var this_profile_s = color_get_saturation(color_rgb);
	var this_profile_v = color_get_value(color_rgb);
	
	var new_color_h = this_profile_h - 12;
	var new_color_s = round(this_profile_s - (66 * 255/100));
	var new_color_v = round(this_profile_v + (21 * 255/100));
	
	return make_color_hsv(new_color_h, new_color_s, new_color_v);

#define get_dark_shadowflame_color()
	var this_color_slot = get_player_color(player);
	var this_profile_r = get_color_profile_slot_r(this_color_slot, 1);
	var this_profile_g = get_color_profile_slot_g(this_color_slot, 1);
	var this_profile_b = get_color_profile_slot_b(this_color_slot, 1);
	
	var color_rgb = make_color_rgb(this_profile_r, this_profile_g, this_profile_b);
	var this_profile_h = color_get_hue(color_rgb);
	var this_profile_s = color_get_saturation(color_rgb);
	var this_profile_v = color_get_value(color_rgb);
	
	var new_color_h = this_profile_h + 8;
	var new_color_s = round(this_profile_s + (0 * 255/100));
	var new_color_v = round(this_profile_v - (15 * 255/100));
	
	
	return make_color_hsv(new_color_h, new_color_s, new_color_v);
	
#define fill_particle_array()
	//Order (facing right): Outer Right, Inner Right, Outer Left, Inner Left (x, y pairs)
	//Jump off
	fspecial_stall_particle_coords[0] = [0, 0, 0, 0, 0, 0, 0, 0];
	fspecial_stall_particle_coords[1] = [0, 0, 0, 0, 0, 0, 0, 0];
	fspecial_stall_particle_coords[2] = [0, 0, 0, 0, 0, 0, 0, 0];
	
	//Begin fly
	fspecial_stall_particle_coords[3] = [62, -56, 42, -52, -48, -42, -18, -36];
	fspecial_stall_particle_coords[4] = [66, -54, 46, -49, -48, -42, -18, -36];
	
	//Loop fly
	fspecial_stall_particle_coords[5] = [52, -64, 30, -56, -48, -62, -12, -54];
	fspecial_stall_particle_coords[6] = fspecial_stall_particle_coords[5];
	fspecial_stall_particle_coords[7] = [58, -48, 32, -43, -50, -52, -8, -46];
	fspecial_stall_particle_coords[8] = fspecial_stall_particle_coords[7];
	
	fspecial_stall_particle_coords[9] = [66, -40, 46, -37, -48, -42, -18, -36];
	fspecial_stall_particle_coords[10] = fspecial_stall_particle_coords[9];
	
	fspecial_stall_particle_coords[11] = [46, -40, 30, -28, -56, -50, -10, -26];
	fspecial_stall_particle_coords[12] = fspecial_stall_particle_coords[11];
	fspecial_stall_particle_coords[13] = [22, -54, 8, -37, -32, -44, -18, -26];
	fspecial_stall_particle_coords[14] = fspecial_stall_particle_coords[13];
	fspecial_stall_particle_coords[15] = [8, -48, -4, -32, -26, -48, -18, -16];
	fspecial_stall_particle_coords[16] = fspecial_stall_particle_coords[15];
	
	//Bonk
	fspecial_stall_particle_coords[17] = [0, 0, 0, 0, 0, 0, 0, 0];
	fspecial_stall_particle_coords[18] = [0, 0, 0, 0, 0, 0, 0, 0];
	fspecial_stall_particle_coords[19] = [0, 0, 0, 0, 0, 0, 0, 0];
	fspecial_stall_particle_coords[20] = [0, 0, 0, 0, 0, 0, 0, 0];
	fspecial_stall_particle_coords[21] = [0, 0, 0, 0, 0, 0, 0, 0];
	
	//Window 5 (NSpecial)
	fspecial_stall_particle_coords[22] = [24, -92, 24, -55, -54, -84, -18, -36];
	
	fspecial_stall_particle_coords[23] = [8, -100, 18, -59, -38, -90, -18, -42];
	
	fspecial_stall_particle_coords[24] = [38, 24, 12, 18, -24, 36, 4, 20];
	fspecial_stall_particle_coords[25] = [38, 22, 14, 0, 4, 32, 4, 2];
	fspecial_stall_particle_coords[26] = [22, 20, 32, -3, 6, 26, -2, -10];
	fspecial_stall_particle_coords[27] = [58, -14, 38, -27, -34, -4, -10, -26];