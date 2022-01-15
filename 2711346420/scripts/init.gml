debug = 0;

dash_anim_change = false;
dash_anim_change_again = false;
timer_for_dash_anim = 0;

dattack_strong_hit = false;
timer_var_for_dattack = 0;

timer_var_for_uair = 0;

ustrong_land_timer_idk = 0;

current_monkeyball_spr = sprite_get("monkey_ball")
current_monkeyball_front_spr = sprite_get("monkey_ball_front")

nspecial_started_in_ball = false;
nspecial_started_on_ground = false;
nspecial_kick_startup = false;
nspecial_rot_timer_why = 0;
rot_from_nspec = 0;

dspecial_startup = false;
dspecial_exit_startup = false;
dspecial_draw_timer = -1;
dspecial_drawexit_timer = -1;

dspecial_rune_timer = 0;
dspecial_rune_did_explode = false;

inside_monkey_ball = false;
monkey_ball_tilt = 0;
monkey_ball_tilt_counter = 0;
monkey_ball_spin_mult = 1;
monkey_ball_spin_dash_mult = 1;
monkey_ball_air_offset_adjust = 0;
monkey_ball_onstage = false;
monkey_ball_wear_old_vsp = 0;
monkey_ball_spawn_y_offset = 0;

monkey_ball_can_be_rode = false;

monkey_ball_rune_did_teleport = false;

monkeyBall = noone;

fspecial_startup = false;
fspecial_draw_timer = 16;

uspecial_can_glide = true;
uspec_ball_onstage = false;
uspec_past_window_1 = false;
uspec_img_indx = 0;
uspecial_rune_grabbed_ball = false;

hurtbox_spr = sprite_get("aiai_hurtbox");
crouchbox_spr = sprite_get("aiai_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 7;
initial_dash_time = 9;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0;

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 7;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//SFX Init
sfx_empty = sound_get("sfx_empty");

sfx_ball_close = asset_get("sfx_shop_close")

sfx_monkey_ball_2_1up = sound_get("sfx_monkey_ball_2_1up");
sfx_monkey_ball_2_ball_bounce = sound_get("sfx_monkey_ball_2_ball_bounce");
sfx_monkey_ball_2_ball_close = sound_get("sfx_monkey_ball_2_ball_close");
sfx_monkey_ball_2_ball_fall_out = sound_get("sfx_monkey_ball_2_ball_fall_out");
sfx_monkey_ball_2_ball_fly = sound_get("sfx_monkey_ball_2_ball_fly");
sfx_monkey_ball_2_ball_open = sound_get("sfx_monkey_ball_2_ball_open");
sfx_monkey_ball_2_ball_roll = sound_get("sfx_monkey_ball_2_ball_roll");
sfx_monkey_ball_2_banana = sound_get("sfx_monkey_ball_2_banana");
sfx_monkey_ball_2_banana_big = sound_get("sfx_monkey_ball_2_banana_big");
sfx_monkey_ball_2_continue = sound_get("sfx_monkey_ball_2_continue");
sfx_monkey_ball_2_fight_blow = sound_get("sfx_monkey_ball_2_fight_blow");
sfx_monkey_ball_2_fight_blow_2 = sound_get("sfx_monkey_ball_2_fight_blow_2");
sfx_monkey_ball_2_fight_swipe = sound_get("sfx_monkey_ball_2_fight_swipe");
sfx_monkey_ball_2_goal = sound_get("sfx_monkey_ball_2_goal");
sfx_monkey_ball_2_golf_hit = sound_get("sfx_monkey_ball_2_golf_hit");
sfx_monkey_ball_2_golf_select = sound_get("sfx_monkey_ball_2_golf_select");
sfx_monkey_ball_2_kaboom = sound_get("sfx_monkey_ball_2_kaboom");
sfx_monkey_ball_2_menu_move = sound_get("sfx_monkey_ball_2_menu_move");
sfx_monkey_ball_2_menu_pause = sound_get("sfx_monkey_ball_2_menu_pause");
sfx_monkey_ball_2_menu_select = sound_get("sfx_monkey_ball_2_menu_select");
sfx_monkey_ball_2_peg = sound_get("sfx_monkey_ball_2_peg");
sfx_monkey_ball_2_pop = sound_get("sfx_monkey_ball_2_pop");
sfx_monkey_ball_2_rapid_spin = sound_get("sfx_monkey_ball_2_rapid_spin");
sfx_monkey_ball_2_select = sound_get("sfx_monkey_ball_2_select");
sfx_monkey_ball_2_warp = sound_get("sfx_monkey_ball_2_warp");

sfx_monkey_ball_banana_mania_fight_charge = sound_get("sfx_monkey_ball_banana_mania_fight_charge");

sfx_sonic_riders_boost = sound_get("sfx_sonic_riders_boost");

vc_aiai_cheer_1 = sound_get("vc_aiai_cheer_1");
vc_aiai_taunt_1 = sound_get("vc_aiai_taunt_1");

set_victory_theme(sound_get("victory"));

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	set_victory_portrait( sprite_get( "portrait" ));
	set_victory_sidebar( sprite_get( "result_small" ));
	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
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
		
		break;
	case 5:
	
		break;
	case 6:
		break;
	case 7:
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_ea"));
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_ea"));
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_ea"));
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_ea"));
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_ea"));
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
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_gold"));
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_gold"));
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_gold"));
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_gold"));
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_gold"));
		break;
	case 18:
	
		break;
	case 19:
	
		break;
	case 20:
	
		break;
	case 21:
		
		break;
	case 22:
		
		break;
	case 23:
	
		break;
}

//Compatability
Hikaru_Title = "Banana Mania";
personaQuips[10] = "GOAL!";
tcoart = sprite_get("tco_sketch");
ncode1 = "A resident of Jungle Island.";
ncode2 = "Known to roll around a lot inside a giant plastic ball.";
ncode3 = "Really loves bananas.";
arena_title = "The Rolling Monkey";
arena_short_name = "AiAi";
battle_text = "* This monkey seems to be attatched to that giant plastic ball.";
has_fail = true;
fail_text = "Fall out!";
gfzsignspr = sprite_get("gfz")

//phone
muno_event_type = 0;
user_event(14);