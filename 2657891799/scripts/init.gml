timer = 0;

is_greninja = true

set_hit_particle_sprite(1, sprite_get("particle1"));
set_hit_particle_sprite(2, sprite_get("particle2"));

vfx_airdodge = hit_fx_create(sprite_get("airdodge_vfx"), 20)
vfx_water_large = hit_fx_create(sprite_get("vfx_water_large"), 28)
vfx_water_medium = hit_fx_create(sprite_get("vfx_water_medium"), 24)
vfx_water_small = hit_fx_create(sprite_get("vfx_water_small"), 21)
vfx_smoke = hit_fx_create(sprite_get("vfx_smoke"), 15)
vfx_splash = hit_fx_create(sprite_get("jet_splash"), 20)
vfx_eye = hit_fx_create(sprite_get("vfx_eye"), 12)

shine_spr = sprite_get("vfx_shine")
vfx_shine = hit_fx_create(shine_spr, 18)

droplet_large = sprite_get("droplet_large")
jet_spr = sprite_get("jet")

vfx_droplet_large = hit_fx_create(droplet_large, 15)

sfx_nspec1 = asset_get("sfx_watergun_fire")
sfx_nspec2 = asset_get("sfx_waterwarp_start")
sfx_nspec3 = asset_get("sfx_waterwarp")

shuriken_vfx_array = array_create(3, [0,0,1,0,0,1]) //[x,y,alpha,image_index,sprite_index,spr_dir]
shuriken_charge = 0

//shadow sneak
ss_start = false
ss_dist = 0
ss_x = 0
ss_y = 0
ss_timer = 0
ss_count = 0
force_cancel = false
ss_type = 0 //0 = distance, 1 = doll, 2 = player
ss_doll = undefined
ss_free_timer = 0

//uspecial
uspec_dir = 0
uspec_draw_dir = 0
uspec_rotate_spr = sprite_get("uspecial_rotate")
uspec_start = [0,0,0] //[x,y,angle]
jet_array = array_create(28, [0,0,0,0])
splash_info = [undefined,undefined] //[x,y]
draw_jet = false
draw_jet_timer = 0
used_uspec = false

//substitute
doll_id = noone
hit_doll = undefined
proj_doll = false
doll_angle = 45
counter_hit = noone

hurtbox_spr = asset_get("ferret_hurtbox");
crouchbox_spr = asset_get("cat_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 15;
short_hop_speed = 10;
djump_speed = 15;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 14;
walljump_time = 12;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 18; //fast fall speed
gravity_speed = .80;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

can_wall_cling = true;
walljump_timer = 0;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
