hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("bear_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .27;
pratfall_anim_speed = .2;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.8;
dash_speed = 5.3;
dash_turn_time = 15;
dash_turn_accel = 1.5;
dash_stop_time = 15;
dash_stop_percent = .15; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4; // from .5
moonwalk_accel = 1.4;

crouch_jump_start = 8;
standard_jump_start = 5;
jump_start_time = standard_jump_start;
crouch_jump_speed = 14;
standard_jump_speed = 11;
jump_speed = standard_jump_speed;
short_hop_speed = 7;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .15;
prat_fall_accel = 1.5; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .65;
hitstun_grav = .6;
knockback_adj = 1.02; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.45; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .3; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

set_victory_theme(sound_get("victory"));
set_victory_bg(sprite_get("victory"));

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

claw_launch = true;

small_djump = true;

enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}
perch_state = _.PS_NA;
perch_target = noone;
perch_cooldown = 0;
speed_limit = 10;

_parrot_identifier_ = true;

grabbed_bucket = noone;
grabbed_bucket_release = false;

prev_spr_angle = 0;
swing_inertia_offset = 0;

uspecial_cancel_into_flap = false;

started_attack_free = true;
// for the perching calc
dx = 0;
dx = 0; 
last_x = x + 0;
last_y = y + 0;
hsp_buffer = 0;
vsp_buffer = 0;
//
rope_length = 0;
sp = false;
jp = false;
jb = false;

nair_hit_player = noone;
shotgun_spark_hitbox = noone;
shotgun_spark_charge = 0;
shotgun_sparks = 0;
shotgun_spark_extra_charge = 100;
shotgun_spark_fullcharge = 500;
shotgun_spark_dissipate = 400;
shotgun_loaded = false;
shotgun_special_down = false;
shotgun_blast_vfx = hit_fx_create(sprite_get("fspecial_blast"), 40);
shotgun_blast_vfx_used = false;
shotgun_backfired_hasnt_hit = false;
shotgun_loaded_when = 0;
shotgun_firing = false;
swinging_anchor = noone;
has_airborne_perch_available = true;
just_fast_fall = false;
uspecial_spawned_box = false;
uspecial_box_id_to_delete = noone;
feather_vfx_spawn = 0;
feather_vfx1 = hit_fx_create(sprite_get("feather_vfx1"), 27);
feather_vfx2 = hit_fx_create(sprite_get("feather_vfx2"), 27);
dismount_perch_vfx = hit_fx_create(sprite_get("dismount_perch_vfx"), 8);
dismount_perch_vfx_small = hit_fx_create(sprite_get("dismount_perch_vfx_small"), 8);
grab_vfx = hit_fx_create(sprite_get("grab_vfx"), 7);

ground_spark_vfx = hit_fx_create(sprite_get("ground_spark_vfx"), 4);
flying_spark_vfx = hit_fx_create(sprite_get("flying_spark_vfx"), 12);
motion_spark_vfx = hit_fx_create(sprite_get("motion_spark_vfx"), 4);

anchor_hook_vfx = hit_fx_create(sprite_get("anchor_hook_vfx"), 12);

ftilt_boost = true;
phsp = 0;
pvsp = 0;
perch_accel_rate = 1.4; // 1.6 is release accel
perched_nspecial_buffer_max = 6;
perched_nspecial_entry_buffer = 0;
perched_nspecial_exit_buffer = 0;
perched_nspecial_exit_buffer_perch_target = {"x" : 0, "y" : 0}
in_perchstun = false;
perchstun = 0;
perchstun_hsp = 0;
perchstun_vsp = 0;
perchstun_vfx_dir_override = -1;



perch_color_palettes = [
    [$e6f497, $97e6f4, $f497e6], // 0 - Default
    [$e6f497, $97e6f4, $f497e6], // 1 - Blue
    [$e6f497, $97e6f4, $f497e6], // 2 - Red
    [$e6f497, $97e6f4, $f497e6], // 3 - Green
    [$030DC1, $636363, $FFFFFF], // 4 - Black
    [$e6f497, $97e6f4, $f497e6], // 5 - Fruity
    [$e6f497, $97e6f4, $f497e6], // 6 - Pastels
    [$e6f497, $CC2A76, $f497e6], // 7 - Abyss
    [$e6f497, $97e6f4, $f497e6], // 8 - GB
    [$FF5D3D, $FFFFFF, $492DFF], // 9 - 'MERICA
    [$16CC2E, $FFFFFF, $492DFF], // 10 - Winter / Christmas
    [$e6f497, $97e6f4, $f497e6], // 11 - Spring / Valentine's
    [$e6f497, $97e6f4, $f497e6], // 12 - Summer
    [$e6f497, $97e6f4, $f497e6], // 13 - Fall / Halloween (Conductor)
    [$e6f497, $97e6f4, $f497e6], // 14 - Parrot1
    [$e6f497, $97e6f4, $f497e6], // 15 - Parrot2
    [$e6f497, $97e6f4, $f497e6], // 16 - Parrot3
    [$e6f497, $FFFFFF, $f497e6], // 17 - Trans
    [$5BDBFF, $5BDBFF, $5BDBFF]  // 18 - Golden
]


// DEBUG_DISPLAY_STRING = "__";
// DEBUG_SCROLL = 0;