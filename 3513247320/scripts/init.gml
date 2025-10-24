// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6.25;		// 4    -  9
dash_speed          = 5.5;		// 5    -  9
dash_turn_time      = 11;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 9;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = has_rune("A")? 4:5;	// 4    -  7
walljump_vsp        = has_rune("A")? 10:8;	// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 1/7;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 2;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background"));
set_victory_theme(sound_get("victory_theme"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Saved Values
orig_walk_speed = walk_speed;
orig_walk_accel = walk_accel;

orig_leave_ground_max = leave_ground_max;
orig_max_jump_hsp = max_jump_hsp;
orig_air_max_speed = air_max_speed;
orig_jump_change = jump_change;
orig_air_accel = air_accel;

// Character-specific assets init

//Sprites

// SFX

// VFX
fx_explosion = hit_fx_create(sprite_get("explosion3cycle"), 40);
muzzle_fx = hit_fx_create(sprite_get("nspecial_muzzle"), 10);
muzzle_mid_fx = hit_fx_create(sprite_get("nspecial_muzzle_mid"), 10);
muzzle_big_fx = hit_fx_create(sprite_get("nspecial_muzzle_big"), 10);

// Variables
alt = get_player_color(player);
attacking = false;
sfx = noone;
attack_window_end = 0;

arbitrary_sync_number = 22771;

// Special variables
fstrong_sfx = noone;

dstrong_hitbox = noone; // unused
dstrong_ramp_interval = 8; // Unused

nspec_sfx = noone;
nspec_vfx = noone;

nspec_max_lemons = has_rune("I")? 5:3;

nspec_lemon_buffer_timer = 0;
nspec_lemon_buffer_interval = 12;

nspec_lemon_timer = 0;
nspec_lemon_interval = 15;

nspec_sfx_timer = 0;
nspec_sfx_length = 66;

nspec_anim_timer = 0;
nspec_anim_length = 16;

nspec_charge = 0;
nspec_charge_mid = 40 / (1 + has_rune("M"));
nspec_charge_max = 80 / (1 + has_rune("M"));
nspec_charge_lockout = 0;

nspec_lockout = 0;

fspec_charge_mid = 30 / (1 + has_rune("N"));
fspec_charge_max = 60 / (1 + has_rune("N"));
fspec_grounded = !free;
fspec_hitbox = noone;
fspec_grab = [];
fspec_loops = 0;
fspec_wall_timer = 0;
fspec_wall_timer_max = 14;
fspec_sfx_timer = 0;
fspec_jump_flip = 0;
fspec_jc_hsp_mult = .75;
fspec_damage_reduction = 0;

uspec_started_grounded = false;

dspec_rock = noone;
my_grab_id = noone;
dspec_grab_timer = 0;
dspec_hand_pos = [16, -52];
dspec_throw_angle = 0;
dspec_throw_strength = 0;
dspec_destroy = hit_fx_create(sprite_get("a_rock"), 18);
dspec_started_grounded = false;

uspec_rush = noone;
uspec_cooldown = 75;
uspec_steer = 3;
uspec_uses = 0;
uspec_max_uses = 1 + has_rune("N");
uspec_max_fuel = 2000;
uspec_fuel = uspec_max_fuel;
uspec_shield_pressed = false;
can_use_jet = true;
can_recharge_fuel = true;
// can_use_coil = true;

rush_coil_interaction = "INTERRUPT";

standingonrush = false;

accurate_megaman_alt = 0;
accurate_megaman_alt_prev = 0;
accurate_megaman_timer = 0;
accurate_megaman_flashlength = 10;

last_shader_tick = get_gameplay_time();



arena_title = "Super Fighting Robot";

