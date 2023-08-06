//init.gml
small_sprites = 1;

hurtbox_spr = sprite_get("petshop_hurtbox");
crouchbox_spr = sprite_get("petshop_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("petshop_hitstun_box");

char_height = 80;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .25;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 0.2;
walk_turn_time = 6;
dash_dir = 0;
dashing = 0;
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 3;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 24;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 5;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//pet shop variables
animation_timer = 0;
last_window = 0;
horus_anim = 0;
	
flight_disabled_timer = 0;
flight_meter = 30;
flying = 0;
flying_vsp = 0;
flying_timer = 0;
jump_pressed_timer = 0;
jump_from_dash = 0;
able_to_glide = 0;

flight_mode = 0;
flight_mode_timer = 0;
flight_mode_hit = 0;
aura_article = -4;

ice_meteor_article = -4;
ice_lance_ledge_article = -4;
ice_lance_article = -4;

aura_particles = hit_fx_create( sprite_get("aura_particles"), 16 );
sparkle = hit_fx_create( sprite_get("sparkle"), 20 );
taunt_panel = hit_fx_create( sprite_get("taunt_panel"), 24 );
hfx_petshop_wing = hit_fx_create( sprite_get("hfx_petshop_wing"), 21 );
hfx_petshop_ice_small = hit_fx_create( sprite_get("hfx_petshop_ice_small"), 20 );
hfx_petshop_ice_large = hit_fx_create( sprite_get("hfx_petshop_ice_large"), 30 );
ice_form_vfx = hit_fx_create( sprite_get("ice_form_vfx"), 15 );
ice_small_vfx = hit_fx_create( sprite_get("ice_small_vfx"), 24);
ice_large_vfx = hit_fx_create( sprite_get("ice_large_vfx"), 32 );
ice_meteor_vfx = hit_fx_create( sprite_get("ice_meteor_vfx"), 36 );
ice_meteor_large_vfx = hit_fx_create( sprite_get("ice_meteor_large_vfx"), 48 );
ice_meteor_grounded_vfx = hit_fx_create( sprite_get("ice_meteor_grounded_vfx"), 36 );
ice_meteor_large_grounded_vfx = hit_fx_create( sprite_get("ice_meteor_large_grounded_vfx"), 48 );
word_ice_huge = hit_fx_create( sprite_get("word_ice_huge"), 24 );

set_hit_particle_sprite( 1, sprite_get( "hit_particle_ice" ) );

grounded_dust_timer = 0;

shards_exist = 0;
shard_spread = 0;
missile_spr_dir = 1;
frost_missile_offset = 1;
frost_missile_target_x = -1;
frost_missile_target_y = -1;
ice_lance_cancel = 0;

//fuckimg muttdude mode
muttdude_mode = 1;