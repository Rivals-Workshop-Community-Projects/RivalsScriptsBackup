//Camera

notes_s = hit_fx_create( sprite_get( "notes_s" ), 18 );
notes_l = hit_fx_create( sprite_get( "notes_l" ), 28 );

cam_left = view_get_xview();
cam_right = view_get_xview() + view_get_wview();
cam_up = view_get_yview();
cam_down = view_get_yview() + view_get_hview();
cam_offset = 36;

//Hair Color
switch(get_player_color(player)) { 
	case 0:
		clam_hair_colors =
		[
			[64, 51, 83],
			[64, 51, 83]
		]
	break;
	default:
		clam_hair_colors =
		[
			[get_color_profile_slot_r( get_player_color(player), 0 ), get_color_profile_slot_g( get_player_color(player), 0 ), get_color_profile_slot_b( get_player_color(player), 0 )],
			[get_color_profile_slot_r( get_player_color(player), 1 ), get_color_profile_slot_g( get_player_color(player), 1 ), get_color_profile_slot_b( get_player_color(player), 1 )]
		]
	break;
}

dair_bounce = false;
mic_proj = -4;
mic_special = false;
mic_grabbed_obj = -4;
wall_tether = false;
can_wall_tether = true;
tether_x = 0;
tether_to_x = 0;
tether_y = 0;

clam_ball = -4;
hud_color = get_player_hud_color(player);
thrillers_left = 1;

//Sound and Music
set_victory_bg( sprite_get( "bg" ));
//set_victory_theme( sound_get( "victory" ));
set_victory_theme(CH_POMME);


hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56; //56
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3; 
walk_accel = .2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = .5;
dash_stop_time = 6;
dash_stop_percent = .15; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10; //10.5
short_hop_speed = 7;
djump_speed = 10; //10.5
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 6; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4; //.25
prat_fall_accel = .4; //multiplier of air_accel while in pratfall 
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 7; 
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .45; //5
hitstun_grav = .45; //5
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, 1> = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_startup_frames = 1;
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
//
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
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




