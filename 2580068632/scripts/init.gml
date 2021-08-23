debug = 0

wings_out = false
wing_jump_timer = 0

mach_tornado_max_loops = 5;
mach_tornado_loop_count = 0;

sangle = 0
tp_angle = 0
tp_dist = 170;  //Distance the teleport will travel.
tp_prec = 8; //The precision of the teleportation algorithm. Larger number will be more accurate, but slower to calculate. 8 is a good balance of speed and precision.
tp_dont = false;

shuttle_loop_timer = 300
shuttle_loop_angle = 0
shuttle_loop_can_rise = true
shuttle_loop_can_dive = true
shuttle_loop_vsp_lost = 0
shuttle_loop_is_rising = false

condor_dive_timer = 0

//Kirby Ability
kirbyability = 4

hurtbox_spr = sprite_get("meta_hurtbox");
crouchbox_spr = sprite_get("meta_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 38;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .32;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 8;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 3;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 6;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3
techroll_active_frames = 6;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//SFX Init
sfx_airdodge = sound_get("sfx_airdodge");
sfx_bair_1 = sound_get("sfx_bair_1");
sfx_bair_2 = sound_get("sfx_bair_2");
sfx_bair_3 = sound_get("sfx_bair_3");
sfx_condor_dive = sound_get("sfx_condor_dive");
sfx_crouch = sound_get("sfx_crouch");
sfx_dair = sound_get("sfx_dair");
sfx_dattack = sound_get("sfx_dattack");
sfx_dimensional_cape_dodge = sound_get("sfx_dimensional_cape_dodge");
sfx_dimensional_cape_strike = sound_get("sfx_dimensional_cape_strike");
sfx_dimensional_cape_use = sound_get("sfx_dimensional_cape_use");
sfx_doublejump = sound_get("sfx_doublejump");
sfx_drill_rush_finish = sound_get("sfx_drill_rush_finish");
sfx_drill_rush_rapid = sound_get("sfx_drill_rush_rapid");
sfx_drill_rush_rapid_last = sound_get("sfx_drill_rush_rapid_last");
sfx_drill_rush_start = sound_get("sfx_drill_rush_rapid_last");
sfx_dstrong = sound_get("sfx_dstrong");
sfx_fair_1 = sound_get("sfx_fair_1");
sfx_fair_2 = sound_get("sfx_fair_2");
sfx_fair_3 = sound_get("sfx_fair_3");
sfx_fstrong = sound_get("sfx_fstrong");
sfx_jump = sound_get("sfx_jump");
sfx_krtd_sword_blow1 = sound_get("sfx_krtd_sword_blow1");
sfx_krtd_sword_spin_attack = sound_get("sfx_krtd_sword_spin_attack");
sfx_krtd_sword_swipe1 = sound_get("sfx_krtd_sword_swipe1");
sfx_krtd_sword_swipe2 = sound_get("sfx_krtd_sword_swipe2");
sfx_land = sound_get("sfx_land");
sfx_landinglag = sound_get("sfx_landinglag");
sfx_mach_tornado_end = sound_get("sfx_mach_tornado_end");
sfx_mach_tornado_slash = sound_get("sfx_mach_tornado_slash");
sfx_mach_tornado_start = sound_get("sfx_mach_tornado_start");
sfx_nair = sound_get("sfx_nair");
sfx_parry = sound_get("sfx_parry");
sfx_shuttle_loop_1 = sound_get("sfx_shuttle_loop_1");
sfx_shuttle_loop_2 = sound_get("sfx_shuttle_loop_2");
sfx_shuttle_loop_wind = sound_get("sfx_shuttle_loop_wind");
sfx_smash_ult_sword_hit_heavy = sound_get("sfx_smash_ult_sword_hit_heavy");
sfx_smash_ult_sword_hit_medium = sound_get("sfx_smash_ult_sword_hit_medium");
sfx_smash_ult_sword_hit_weak = sound_get("sfx_smash_ult_sword_hit_weak");
sfx_smash_ult_sword_swing_heavy = sound_get("sfx_smash_ult_sword_swing_heavy");
sfx_smash_ult_sword_swing_medium = sound_get("sfx_smash_ult_sword_swing_medium");
sfx_smash_ult_sword_swing_medium_2 = sound_get("sfx_smash_ult_sword_swing_medium_2");
sfx_smash_ult_sword_swing_medium_3 = sound_get("sfx_smash_ult_sword_swing_medium_3");
sfx_smash_ult_sword_swing_weak = sound_get("sfx_smash_ult_sword_swing_weak");
sfx_stomp = sound_get("sfx_stomp");
sfx_taunt_wings_1 = sound_get("sfx_taunt_wings_1");
sfx_taunt_wings_2 = sound_get("sfx_taunt_wings_2");
sfx_uair = sound_get("sfx_uair");
sfx_ustrong_1 = sound_get("sfx_ustrong_1");
sfx_ustrong_2 = sound_get("sfx_ustrong_2");
sfx_ustrong_3 = sound_get("sfx_ustrong_3");
sfx_waveland = sound_get("sfx_waveland");

land_sound = sfx_land
landing_lag_sound = sfx_landinglag
waveland_sound = sfx_waveland
jump_sound = sfx_jump
djump_sound = sfx_doublejump
air_dodge_sound = sfx_airdodge

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if (get_player_color( player ) != 4 && get_player_color( player ) != 20 && get_player_color( player ) != 21 && get_player_color( player ) != 22){
	set_victory_theme(sound_get("victory"));
}

if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	set_victory_portrait( sprite_get( "portrait" ));
	set_victory_sidebar( sprite_get( "result_small" ));
}

switch (get_player_color( player )){
	case 0:
	
		break;
	case 1:
	
		break;
	case 2:
	
		break;
	case 3:
	
		break;
	case 4:
		set_victory_theme(sound_get("victory_dark"));
		break;
	case 5:
	
		break;
	case 6:
		break;
	case 7:
		//set_victory_theme(sound_get("victory_ea"));
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	case 8:
	
		break;
	case 9:
	
		break;
	case 10:
	
		break;
	case 11:
	
		break;
	case 12:
	
		break;
	case 13:
	
		break;
	case 14:
	
		break;
	case 15:
	
		break;
	case 16:
	
		break;
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
	case 18:
	
		break;
	case 19:
	
		break;
	case 20:
		set_victory_theme(sound_get("victory_mage"));
		break;
	case 21:
		set_victory_theme(sound_get("victory_mage"));
		break;
	case 22:
		set_victory_theme(sound_get("victory_mage"));
		break;
	case 23:
	
		break;
}

spr_alts = sprite_get("alts");
spr_nspecial_muno = sprite_get("nspecial_muno");
spr_fspecial_muno = sprite_get("fspecial_muno");
spr_uspecial_muno = sprite_get("uspecial_muno");
spr_dspecial_muno = sprite_get("dspecial_muno");
spr_jab_muno = sprite_get("jab_muno");
spr_jump_muno = sprite_get("jump_muno");
spr_jump_wings_muno = sprite_get("jump_wings_muno");

//Munophone
user_event(14);