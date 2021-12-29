hurtbox_spr = sprite_get("squr_hurt_box");
crouchbox_spr = sprite_get("squr_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

small_sprites = true;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 8.5;
dash_speed = 5.5;
dash_turn_time = 8;
dash_turn_accel = 50;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
norm_ground_friction = .2;
rain_ground_friction = .1;
ground_friction = norm_ground_friction;
moonwalk_accel = 0.9;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
prat_fall_accel = 1.5; //multiplier of air_accel while in pratfall

norm_air_friction = .03;
rain_air_friction = .01;
air_friction = norm_air_friction;

max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .65;
hitstun_grav = .45;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;

norm_wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
norm_wave_friction = .1; //grounded deceleration when wavelanding
rain_wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
rain_wave_friction = .0; //grounded deceleration when wavelanding

wave_land_adj = norm_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = norm_wave_friction; //grounded deceleration when wavelanding

hit_count = 0;
max_hit_count = 10;

is_squr_wet = false;
squr_buff_timer = 0;
squr_buff_timer_max = 120;
wet_flash = 0;
wait_timer_thing = -1;

// VARIABLES
// Fancy Dash Attack
forward_down = false;
back_down = false;
can_hoverdash = false;
is_shifting = false;

can_escape = false;
hit_wall = false;

rain_shift_speed = 6.5;
rain_shiftjump_speed = 7;
rain_turbocrawl_speed = 9;
rain_pivot_boost = 1.5;
rain_hydroplane = 10;

norm_shift_speed = 6;
norm_shiftjump_speed = 6.5;
norm_turbocrawl_speed = 8;
norm_pivot_boost = 1;
norm_hydroplane = 8;

shift_speed = norm_shift_speed;
shiftjump_speed = norm_shiftjump_speed;
turbocrawl_speed = norm_turbocrawl_speed;
pivot_boost = norm_pivot_boost;
hydroplane_speed = norm_hydroplane;

fspecial_speed = 8;
can_fspec_jump = false;

//

air_max_speed_norm = 5;
air_max_speed_shif = 9;

air_accel_norm      = 0.3;		// 0.2  -  0.4
air_accel_shift     = 2;		// 0.2  -  0.4

air_accel           = air_accel_norm;
air_max_speed       = air_max_speed_norm; //the maximum hsp you can accelerate to when in a normal aerial state

// Yee-HAW
if get_player_color(player) == 28{
    shades = 1; // Change to 2 when cowboy hat is done
} else {
    shades = 0;
}
had_shades = 0;
shades_to_equip = 1;

current_sprite_set = 0;
num_sprite_sets = 2;

checked_sprite_names = [
    "idle", 
    "crouch", 
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt",
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "nspecial_air", 
    "fspecial", 
    "fspecial_air",
    "uspecial", 
    "uspecial_air",
    "dspecial", 
    "dspecial2",
    "taunt",
    "taunt2",
    "intro"
    ];

raincloud = noone;

spr_raindrop        = sprite_get("raindrop");
spr_rain_summon     = sprite_get("raincloud_summon");
spr_rain_active     = sprite_get("raincloud_active");
//spr_rain_moving     = sprite_get("raincloud");
//spr_rain_moving_l   = sprite_get("raincloud");
//spr_rain_moving_r   = sprite_get("raincloud");
spr_rain_vanish     = sprite_get("raincloud_vanish");

miiverse_post = sprite_get("miiverse");

on_thing = false;
on_kragg_thing = false;     // pillar_obj and rock_obj
on_ice = false;             // ice_obj
touching_grass = false;     // wolf_grass_obj
on_puddle = false;          // puddle_obj
on_shov_dirt = false;       // gus_rock_obj
on_shov_rock = false;       // treasure_rock_obj
on_epi_plat = false;        // Epinel Plat

sound_overriding = false;

bonk_type = 0;
bonk_sound = asset_get("sfx_blow_weak1");

sfx_hit_custom  = asset_get("sfx_blow_weak1");
sfx_hit_wood    = sound_get("sfx_hit_wood");
sfx_hit_grass   = sound_get("sfx_hit_grass");
sfx_hit_stone   = sound_get("sfx_hit_stone");
sfx_hit_snow    = sound_get("sfx_hit_snow");
sfx_hit_sand    = sound_get("sfx_hit_sand");
sfx_hit_gravel  = sound_get("sfx_hit_gravel");
sfx_hit_cloth   = sound_get("sfx_hit_cloth");
sfx_hit_gameboy = sound_get("sfx_hit_gameboy");
sfx_hit_metal   = sound_get("sfx_hit_metal");
sfx_hit_water   = sound_get("sfx_hit_water");
sfx_hit_glass   = sound_get("sfx_hit_stone")

sfx_supereffective = sound_get("sfx_hopsfavoritething");

hfx_waterfallfinal = hit_fx_create(sprite_get("hfx_waterfallfinal"), 21);

vfx_specialshine = hit_fx_create(sprite_get("vfx_specialshine"), 32);

wall_frames = 6;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 5;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
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

set_victory_theme(sound_get("bubbles_victory"));

// Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_stadium_front_img")
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back_img")
pkmn_stadium_name_override = "Bubbles";