//Oc or not but so I can copy init without any bad things happening.
pizza_game = true;
pg_base_timer = 300;
pg_timer = 0;
pg_max_timer = pg_base_timer;
pg_score = 0;
pg_size = 1; //Defaults to 1 increases every so often
pg_order = [0];
pg_pizza = [];
pg_show_order = true;
pg_pizza_sent = false;
pg_pizza_offset = 0;
pg_pizza_offset_max = 99;
pg_pizza_offset_middle = 64;
pg_cursor_pos = 0;
pg_hori = 0;
pg_vert = 0;
pg_order_filled = false;
pg_can_make = false;
pg_wait_timer_max = 90;
pg_wait_timer = pg_wait_timer_max;
pg_wait_timer_curr = pg_wait_timer_max;
pg_make_timer_max = 300;
pg_make_timer = pg_make_timer_max;
pg_make_timer_curr = pg_make_timer_max;


pipe_strong = false;
pipe_strong_was_last = false;
taunt_used = false;

//
user_event(8);
should_show_plat = false;
is_training_mode = false;
//Cosmetics
set_victory_bg( sprite_get( "bg" ));
if (is_oc) {
	pot_compat_variable = sprite_get("food");
	pot_compat_text = "'The Best Pizza in Town'";
	if (!get_synced_var(player)) {
		set_victory_theme( sound_get( "victory" ));
	} else {
		set_victory_theme( sound_get( "old_victory" ));
	}
} else {
	if (current_month == 4 && current_day == 1) {
		set_victory_theme( sound_get( "victory2" )); //Just for april fools day
	} else {
		set_victory_theme( sound_get( "victory" ));
	}
	//pot_compat_variable = sprite_get("food");
	//pot_compat_text = "X";
}
//test_var = false;
//
dash_fx = hit_fx_create( sprite_get("fspecial_dash"), 6)
pizza_fx = hit_fx_create( sprite_get("pizza_vfx"), 30)
big_pizza_fx = hit_fx_create( sprite_get("pizza_big"), 45)
small_pizza_fx = hit_fx_create( sprite_get("pizza_small"), 18)
med_leek_fx = hit_fx_create( sprite_get("vfx_leek_med"), 30)

leak_proj = -4;
miku_clone = -4;
clone_attack_hold = false;
clone_attack_hold_type = 0;
fspecial_reset = 0; //Clone Throw Rune
//Fspecial Speed - Note that ground will be higher than air due to friction
fspecial_speed_air = 8;
fspecial_speed_ground = 12;
if (current_month == 4 && current_day == 1) { //April Fools day only
	fspecial_once_cooldown = 30;
} else {
	fspecial_once_cooldown = 3600;
}
//Uspecial turnaround on hit
uspecial_dir = -4;
uspecial_can_turn = false;
uspecial_will_turn = false;
//Rioku's Neutral Strong code
//Strong buffer stuff so you can have a neutral strong press
strong_buffer = 0;
strong_pressed = false;
strong_was_pressed = false;

if (object_index != oTestPlayer){ //Code to stop crashing in test player
	if (!custom_clone) {
		clone_player = -4;
		custom_clone = false;
		clone_player = instance_create(x,y, "oPlayer");
		clone_player.clone_owner = id
		clone_player.x = x;
		clone_player.y = y;
	} else {
		malsick_immune = true;
		wally_static_enabled = false;
		clone_attack = 0;
		clone_active = 0;
		custom_clone = true;
	}
} else {
	clone_player = -4;
}

//new clone variables
clone_got_hit = false;
clone_hit_timer = 0;

color_r = 255;
color_b = 0;
color_g = 0;
color_type = 0;
color_timer = 1;

b_reversed_nspecial = false;

if (!is_oc) {
	sfx_veg_light1 = asset_get("sfx_syl_nspecial_flowerhit");
	sfx_veg_light2 = asset_get("sfx_leafy_hit1")
	sfx_veg_med1 = asset_get("sfx_syl_ustrong");
	sfx_veg_med2 = asset_get("sfx_syl_ustrong_part3");
	sfx_veg_heavy1 = sound_get("veg_heavy");
	sfx_veg_heavy2 = asset_get("sfx_syl_dstrong");
	sfx_wet_light = sound_get("splat3");
	sfx_wet_med = sound_get("splat1");
	sfx_wet_heavy = sound_get("splat2");
	//
	leak_vfx_small = HFX_MAY_LEAF_BIG;
	leak_vfx_huge = HFX_MAY_LEAF_HUGE;
	leak_vfx_big = med_leek_fx;
	//leak_vfx_small = HFX_MAY_LEAF_SMALL;
	//leak_vfx_huge = HFX_MAY_LEAF_HUGE;
	//leak_vfx_big = HFX_MAY_LEAF_BIG;
	clone_create_sfx = asset_get("sfx_mobile_gear_deploy");
	taunt_sfx = sound_get("popipo");
} else {
	sfx_veg_light1 = asset_get("sfx_syl_nspecial_flowerhit");
	sfx_veg_light2 = sound_get("Meat_feet_fast3");
	sfx_veg_med1 = asset_get("sfx_syl_ustrong");
	sfx_veg_med2 = asset_get("sfx_syl_ustrong_part3");
	sfx_veg_heavy1 = sound_get("veg_heavy");
	sfx_veg_heavy2 = sound_get("Meat_feet_fast3");
	sfx_wet_light = sound_get("splat3");
	sfx_wet_med = sound_get("splat1");
	sfx_wet_heavy = sound_get("splat2");
	//
	leak_vfx_small = small_pizza_fx;
	leak_vfx_huge = big_pizza_fx;
	leak_vfx_big = pizza_fx;
	clone_create_sfx = asset_get("sfx_mobile_gear_deploy");
	taunt_sfx = asset_get("sfx_swipe_weak1");
}


//Grab/Throws

AT_GRAB = 40;
AT_GRAB_HOLD = 41;
AT_PUMMEL = 42;
AT_FTHROW_2 = 43;
AT_DTHROW_2 = 44;
AT_BTHROW_2 = 45;
AT_UTHROW_2 = 46;

grabbed_obj = -4;
pummel_count = 2;
//grab_type = "strong";
grab_type = "nspecial";
//grab_type = "fspecial";

//


//

hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56; //56
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 4.5; 
walk_accel = .5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .30; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .55;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10; //10.5
short_hop_speed = 5.5;
djump_speed = 9.5; //10.5
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4; //.25
prat_fall_accel = .5; //multiplier of air_accel while in pratfall // .3
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9; 
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .45; //5
hitstun_grav = .5; //5
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, 1> = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
//
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//6 Level1
rune_fspecial = 				has_rune("A");
rune_rethrow = 				has_rune("B");
rune_leek_move = 		has_rune("C");
//rune_teleport = 				has_rune("D");
rune_dair_spike = 			has_rune("D");
rune_follow_hit = 			has_rune("E");
rune_clone_jump = 		has_rune("F");
//5 Level 2
rune_follow_miku = 		has_rune("G");
rune_attack = 				has_rune("H");
rune_friction = 				has_rune("I");
rune_nair = 					has_rune("J");
rune_recovery_boost = has_rune("K");
//4 Level 3
rune_hit_reset = 			has_rune("L");
rune_indestructible =	has_rune("M");
rune_sentience = 			has_rune("N");
rune_clairen = 				has_rune("O");


if rune_friction {
	ground_friction = .1;
}

//Test Player viewer
spr_shapes = [sprite_get("boxCircle"), sprite_get("boxSquare"), sprite_get("boxRound"), sprite_get("arrow")]
test_frame_advance = false;
window_reset = true;
