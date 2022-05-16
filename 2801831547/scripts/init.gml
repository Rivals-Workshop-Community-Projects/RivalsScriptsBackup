hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
small_sprites = true;
crouching_state = 1;
crouching_state_timer = 0;
prev_crouching_state = 1;
crouching_loop_count = 0;
prev_image_index = 0;
wisp = noone;
set_extra = false;

can_wall_cling = true;

rainbow_color = c_white;
rainbow_color2 = c_white;

dodge_trail_size = 8;
dodge_trail_color = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 0), get_color_profile_slot_g(get_player_color(player), 0), get_color_profile_slot_b(get_player_color(player), 0));
for(var i = 0; i < dodge_trail_size; i++){
    dodge_trail[i] = 
    {x:x, y:y, sprite_index:sprite_index, image_index:0, color:dodge_trail_color, spr_dir:spr_dir, life:0};
}

hfx_crouch = hit_fx_create(sprite_get("crouch_overlay"), 16);
hfx_rin_small = hit_fx_create(sprite_get("hfx_rin_small"), 16);
hfx_dair = hit_fx_create(sprite_get("dair_effect"), 27);
hfx_rin_slash = hit_fx_create(sprite_get("hfx_rin_slash"), 21);
hfx_rin_slash_front = hit_fx_create(sprite_get("hfx_rin_slash_front"), 21);
hitpart_wisp = set_hit_particle_sprite(1, sprite_get("hfx_part_wisp"));
crouch_loop = 0;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .7; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
djump_accel = 0;
leave_ground_max = 10; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .48;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

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

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("rin"));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
