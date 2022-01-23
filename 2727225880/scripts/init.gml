hurtbox_spr = sprite_get("idle_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .1; //.1 means 1 frame of anim every 10 frames. 1/.1 = 10.
crouch_anim_speed = .1;
walk_anim_speed = .166; // 1/.125
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 2.5; //changed
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.50; //changed
dash_speed = 6.0; //changed
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11; //11
short_hop_speed = 7.4; //7.4
djump_speed = 12;
leave_ground_max = 300; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 300; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 28; //the number of frames to play the djump animation. CAN be less than 31.
walljump_hsp = 6;
walljump_vsp = 12;
walljump_time = 28; //total anim time
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 7;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
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


	
	// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);



//fuck
nspec_timer = 0
nspec_death = hit_fx_create( sprite_get( "nspec_proj_die" ), 28 );



//Vars
max_upspecial_uses = 2;
fspecial_used = false;
original_dash_speed = dash_speed
torren_platforms_existing = 0;
blinktimer = 120
//Runes
if (has_rune("A")) {max_upspecial_uses = 3;} //adds a 3rd upspecial use



//wahoo
torren_walk_speed = walk_speed
torren_walk_accel = walk_accel
torren_initial_dash_time = initial_dash_time
torren_dash_speed = dash_speed;
torren_dash_turn_time = dash_turn_time;
torren_dash_turn_accel = dash_turn_accel
torren_dash_stop_time = dash_stop_time
torren_dash_stop_percent = dash_stop_percent
torren_ground_friction = ground_friction
torren_woonwalk_accel = moonwalk_accel
torren_jump_start_time = jump_start_time
torren_jump_speed = jump_speed
torren_short_hop_speed = short_hop_speed
torren_max_jump_hsp = max_jump_hsp
platform_rider = false;

	speedzone = false;
	has_hit_torren_discus = false;
	attackangle = 12;
	torren_speedforce = -1;
	shouldreverse = 0;
	speedmultiplier = 10;
	
	
	//init.gml mawral grab code!!!! exciting!
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
	
	tauntvar = 0;
	zoom_multiplier = 1
	fspec_falling_loops = 0
	transition_to_next_window = false
			extra_zoom_hit = false

	
	respawnPlatSprite = sprite_get("plat_behind")
	
	 you_have_a_fucking_chakram_out = false;
	 
	 
	 
	 set_victory_bg(CH_KRAGG); // victory_background.png
set_victory_theme(CH_KRAGG); // victory_theme.ogg

	
nspecial_access_timer = 0;
	
set_angle = true


torren_rock_small = hit_fx_create( sprite_get( "hfx_rock_small_bg" ), 24 );
empty_sprite = hit_fx_create( sprite_get( "empty_sprite" ), 1 );


	muno_event_type = 0;
	user_event(14);
