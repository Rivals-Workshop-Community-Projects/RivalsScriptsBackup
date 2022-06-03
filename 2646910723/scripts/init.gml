set_victory_bg( sprite_get( "bg" ));
set_victory_theme( sound_get( "victory" ));
shieldBreak = 0

Drak_icecream = 0

pre_tech_vsp = 0
pre_tech_hsp = 0

ar1 = get_color_profile_slot_r(get_player_color(player), 0);
ag1 = get_color_profile_slot_g(get_player_color(player), 0);
ab1 = get_color_profile_slot_b(get_player_color(player), 0);

ar2 = get_color_profile_slot_r(get_player_color(player), 1);
ag2 = get_color_profile_slot_g(get_player_color(player), 1);
ab2 = get_color_profile_slot_b(get_player_color(player), 1);

ar3 = get_color_profile_slot_r(get_player_color(player), 7);
ag3 = get_color_profile_slot_g(get_player_color(player), 7);
ab3 = get_color_profile_slot_b(get_player_color(player), 7);

ar4 = get_color_profile_slot_r(get_player_color(player), 4);
ag4 = get_color_profile_slot_g(get_player_color(player), 4);
ab4 = get_color_profile_slot_b(get_player_color(player), 4);

hit_player_obj = self

brage = 0
bragesub = 0
ragemode = 0

famix = x
famiy = y

move_cooldown[AT_USPECIAL] = 60


hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 68;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .1;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 1;
initial_dash_speed = 5;
dash_speed = 5;
dash_turn_time = 5;
dash_turn_accel = 1;
dash_stop_time = 1;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 7.5; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("tinythud");
landing_lag_sound = sound_get("tinythud");
waveland_sound = sound_get("nothing");
jump_sound = sound_get("jumpcrunch");
djump_sound = sound_get("jumpcrunch2");
air_dodge_sound = sound_get("nothing");

sf1 = hit_fx_create( sprite_get( "swordfx1" ), 20 );
sf2 = hit_fx_create( sprite_get( "swordfx2" ), 20 );

scyfx = hit_fx_create( sprite_get( "scyfx" ), 12 );

rl = hit_fx_create( sprite_get( "realization" ), 15 );
sprite_change_offset("realization", 58, 118 + 2);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;