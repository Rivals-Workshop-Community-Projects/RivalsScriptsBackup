/*
TODO:
- aerial specials? (fspecial, dspecial) what does they it does
- replace jab with headbutt?
- SFX everywhere (blow heavy + something -> custom sounds)
- ball getting stuck in pillar bug
- pillar getting created off-stage bug
- VFX new

*/


//---- pokemon stadium -------
pkmn_stadium_front_img = sprite_get("pkmn_front");
pkmn_stadium_back_img = sprite_get("pkmn_back");

//---- own stuff ----------------------------
// ball
article_1 = get_article("obj_article1");
article_1_count = get_article_count("obj_article1");
// turret
article_2 = get_article("obj_article2");
article_2_count = get_article_count("obj_article2");
// wall
article_3 = get_article("obj_article3");
article_3_count = get_article_count("obj_article3");

fx_waveland = hit_fx_create(sprite_get("waveland_fx"), 16);
lava_platform_aim = hit_fx_create(sprite_get("lava_platform_aim"), 10);
fx_round_blast = hit_fx_create(sprite_get("ball_explode"), 12);

sound_already_played_this_frame = false;
state_timer_prev = -1;

jump_just_pressed = false; //previous frame had no jump input, but now it does
jump_timer = 0; // number of frames jump input has been held

taunt_detonate = true;
nspec_skip_pull_windows = true; // whether this input should only play the shooting frames
nspec_hold_timer = 0; // for holding nspec (sliding movement) vs tap (destroy projectile)
nspec_released = false;
nspec_sound_timer = 0;
nspec_sound_isplayig = false;

can_create_hitbox = true; // for nair, might need a rename
signflipper = 0;
dattack_timer = 0;

// FSTRONG
fstrong_sound_has_played = false; // one day I will will make a proper function...

// USTRONG
ustrong_hsp = 0;
ustrong_vsp = 0;

//FSPECIAL
can_super_jump = true;
has_super_jumped = false;

super_jump_timer = 0; // used for special FX
play_boost_sound = true; // ugly way to prevent the boosted double jump from playing every frame
magnet = 0; //whether the ball can get pulled back
hitstop_amount = 4;
turret_angle = 0;
uspecial_timer = 0;
can_uspecial = true;
uair_charge = 0;
attack_id = 0;
stage_x = get_stage_data(SD_X_POS);
xPos = 420;
yPos = 420;
// -------------------------------------------

hurtbox_spr = asset_get("bug_hurtbox");
crouchbox_spr = asset_get("bug_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = 0.15; //0.1
crouch_anim_speed = 0.1; // 0.1?
walk_anim_speed = .25;
dash_anim_speed = 0.2; // 0.2
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 8; //6
initial_dash_time = 12;
initial_dash_speed = 6;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7; // don't make him slippery
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .55;
hitstun_grav = .51;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.8; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 11;

//airdodge animation frames
air_dodge_startup_frames = 2; //1
air_dodge_active_frames = 2; //2
air_dodge_recovery_frames = 2; //3
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

#define get_article(article_object) // arg should be string, ex. "obj_article1"
	var article_count = get_article_count(article_object);

	if (article_count > 0){
		with(asset_get(article_object)){
			if (player_id == other.id){
				return id;
			}
		}
	} return noone;
	
#define get_article_count(article_object) // arg should be string, ex. "obj_article1"
	var count = 0;
		with(asset_get(article_object)){
			if (player_id == other.id){
				count++;
			}
		}
	return count;