hurtbox_spr = sprite_get("idlehurt");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = sprite_get("airhurt");
hitstun_hurtbox_spr = -1;

set_victory_theme(sound_get("shuckle_victory"));

uspec_charge = 0;
uspec_angle = 75;
uspec_speed_multiplier = 1.75;
uspec_base_speed = 3;
uspec_speed_stages = 3;
uspec_proj_gravity = 0.35;
uspec_starup_air_fric = 0.4;
air_fric_default = 0.03;
uspec_web = noone;
web_cooldown = 5 * 60;
web_cooldown_current = 0;

nspec_cooldown = 1.5 * 60;
stealth_rock = noone;

shell_smash_stage = 0;
armor_table = [[ 8, 12, 16],
               [ 0,  8, 12],
               [ 0,  0,  8]];
speed_table = [4.5, 5.25, 6];
weight_table = [0.90, 0.95, 1.00];
jump_table = [11, 12, 13];

//Armor timings
dtilt_armor_frame = 3;
dattack_armor_frame = 4;
fstrong_armor_frame = 3;
ustrong_armor_frame_1 = 3;
ustrong_armor_frame_2 = 6;
dstrong_armor_frame = 4;
nair_armor_frame = 6;
fspecial_armor_frame = 7;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = 1/3;
pratfall_anim_speed = .25;

skl_poisoned = false;
skl_poisoner = 0;
poison_tick_rate = (1/3) * 60;
poison_damage = 1;

walk_speed = 2;
walk_accel = 0.8;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 3.5;
dash_speed = speed_table[shell_smash_stage];
dash_turn_time = 12;
dash_turn_accel = 1;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = jump_table[shell_smash_stage];
short_hop_speed = 7;
djump_speed = jump_table[shell_smash_stage];
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .15;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = air_fric_default;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 1; //anim frames before you leave the wall
// can_wall_cling = true;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .525;
knockback_adj = weight_table[shell_smash_stage]; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.00; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_wood_hfx = hit_fx_create(sprite_get("hfx_wood_small"), 18);
large_wood_hfx = hit_fx_create(sprite_get("hfx_wood_large"), 21);
xlarge_wood_hfx = hit_fx_create(sprite_get("hfx_wood_xlarge"), 28);
small_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_small"), 12);
xlarge_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_xlarge"), 28);

//vfx
vfx_poison = sprite_get("vfx_poison_status");

//sfx
sfx_poisoned = asset_get("sfx_bubblespray_breathless");
sfx_poison_damage = asset_get("mfx_change_color");

sfx_web_ready = asset_get("mfx_coin");
sfx_web_drop = asset_get("sfx_orca_soak");

sfx_stealth_rock_activate = asset_get("sfx_kragg_rock_land");