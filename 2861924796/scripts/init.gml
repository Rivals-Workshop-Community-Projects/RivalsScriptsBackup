hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

pcpm = sound_get("Perfection Cant Please Me Midi")
after_image = hit_fx_create( sprite_get( "after_image" ), 30 )
wall_trail = hit_fx_create( sprite_get("wall_trail"), 30)
honey_big = hit_fx_create( sprite_get( "hfx_big_honey" ), 30 )
honey_large = hit_fx_create( sprite_get( "hfx_honey_large" ), 30 )
honey_small = hit_fx_create( sprite_get( "hfx_honey_small" ), 30 )
lv_up = hit_fx_create( sprite_get( "lv_up" ), 30 )
fakeout = 0;
stock_held = 0;
stock_owner = noone;
stock_owner_id = noone;
stock_bm = 0;
stock_timer = 0;
uspec_limit = 0;
uspec_limit_limit = 0;
cling_time = 0
wall_fall = 0
hive_vault = 0
hive_bounce = 0
hive_rustle = 0
hive_level = 0
dair_loop = 0;
hive_count = 0;
hive_hp1 = 0;
hive1_status = 0;
hive_hp2 = 0;
hive2_status = 0;
hive_cooldown = 0;
honey_armor = 0;
honey_freeze = 0;
sacrifice = false;
kill_hold = 0;
hive_air = 0;
killarticles = false;
assurance_vfx = hit_fx_create( sprite_get( "assurance" ), 30 );
payback_vfx = hit_fx_create( sprite_get( "payback_vfx" ), 30 );
quickattack_vfx = hit_fx_create( sprite_get( "quickattack_vfx" ), 15 );
shiny_vfx = hit_fx_create( sprite_get( "shiny" ), 20 );
shiny_x = 0
shiny_y = 0
shiny_timer = 0;
utilt_parried = 0;
covet2 = 0;
hit_assists = false;
projectile_stolen = false;

intro_timer = 0;


char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;
small_sprites = 1


walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 12;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 20; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
can_wall_cling = true;
wall_frames = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

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
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
