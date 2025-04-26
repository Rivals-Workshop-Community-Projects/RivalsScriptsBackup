// init.gml
// Runs once when the player is created
// Where most player variables are assigned

//compatibility
pot_compat_variable = sprite_get("pumbo_compat");
pot_compat_text = "Big Malasada"
mamizou_transform_spr = sprite_get("mamizou_compat");

//alt flavor
aurawheel = false;

atk_ground = false;
atk_air = false;

mim_wisp = noone;

vfx_cloud = hit_fx_create( sprite_get("vfx_playcloud"), 35);
vfx_play1 = hit_fx_create( sprite_get("vfx_play1"), 25);
vfx_play2 = hit_fx_create( sprite_get("vfx_play2"), 30);
vfx_play3 = hit_fx_create( sprite_get("vfx_play3"), 25);
vfx_play4 = hit_fx_create( sprite_get("vfx_play4"), 20);

vfx_zmove = hit_fx_create( sprite_get("fspec_zmove_text"), 80);
vfx_play_ustrong = hit_fx_create( sprite_get("vfx_ustrong_tipper"), 20);

vfx_pos1 = 15;
vfx_pos2 = 5;
vfx_pos3 = 10;
vfx_pos4 = 20;

vfx_list = [vfx_cloud, vfx_play1, vfx_play2, vfx_play3, vfx_play4];

hfx_shadow_small = hit_fx_create( sprite_get("hitfx_shadow_small"), 35);
hfx_shadow_mid = hit_fx_create( sprite_get("hitfx_shadow_mid"), 35);
hfx_shadow_big = hit_fx_create( sprite_get("hitfx_shadow_big"), 35);

hfx_fire1 = hit_fx_create( sprite_get("fx_fire1"), 35);
hfx_fire2 = hit_fx_create( sprite_get("fx_fire2"), 35);
hfx_fire3 = hit_fx_create( sprite_get("fx_fire3"), 20);

hfx_wood_big = hit_fx_create( sprite_get("hitfx_wood_big"), 35);
hfx_wood_small = hit_fx_create( sprite_get("hitfx_wood_small"), 25);

hfx_nail = hit_fx_create( sprite_get("hitfx_nail"), 40);
hfx_mimibig = hit_fx_create( sprite_get("hitfx_mimibig"), 40);

set_hit_particle_sprite(1, sprite_get("blank"));

mimikyu_curse = false;
mimikyu_curse_tick = 0;

mimikyu_curse_consume = false;
mimikyu_curse_intro = false;

special_shadowball = noone;

curse_tick = sprite_get("curse_tick");
curse_mark = sprite_get("curse_pin");
curse_consume = sprite_get("curse_pin_consume");
curse_intro = sprite_get("curse_pin_intro");
curse_anim_timer = 0;

landed_curse_tipper = false;

thunder_charge = 0;
play_rough_spd = 10;

fspec_per_air = 2;
fspec_flip = false;

uspec_per_air = 2;
uspec_flip = false;

uspec_dir1 = 90;
uspec_dir2 = 90;
uspec_touched_ground = false;
uspec_was_grounded_at_start = false;

nspec_charge = 0;
thunder_struck = false;

uspec_angle = 90;
uspec_pratfall = true;
touched_wisp = false;

parried = false;

curse_enhanced_outline = false;

hurtbox_spr = sprite_get("mimikyu_stand_hurtbox");
crouchbox_spr = sprite_get("mimikyu_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

// Effective Weight
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
gravity_speed = .42;
hitstun_grav = .45;
air_friction = .04;
air_accel = .3;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed

// Movement
ground_friction = .45;
dash_speed = 6;
initial_dash_speed = 7;
moonwalk_accel = 1.2;
initial_dash_time = 10;
dash_stop_time = 4;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
dash_turn_time = 10;
dash_turn_accel = 2.0;
walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
wave_land_time = 8;
wave_friction = .04; //grounded deceleration when wavelanding

// Aerial
air_max_speed = 4.1; //the maximum hsp you can accelerate to when in a normal aerial state
max_djumps = 1;
jump_start_time = 5;
jump_speed = 10.5;
djump_speed = 10.5;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
short_hop_speed = 5;
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
walljump_vsp = 8;
walljump_hsp = 6;
walljump_time = 32;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
prat_land_time = 16;
land_time = 4; //normal landing frames

// Misc
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
wave_land_adj = 1.10; //the multiplier to your initial hsp when wavelanding. Usually greater than 1

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
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
air_dodge_startup_frames = 2;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
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

//intro
introTimer = -3;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
introTimer3 = 0;

//simple compats
pkmn_stadium_front_img = sprite_get("pkmn_sprite1");
pkmn_stadium_back_img = sprite_get("pkmn_sprite2");
arena_title = "Pika... Pika?";