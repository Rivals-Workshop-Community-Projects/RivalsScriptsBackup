// Muno template



// Character-specific variable initialization could go here

laser_alpha = 0;
laser_color = $c2f25a;
orig_mask = mask_index;
stopped_sounds = [];



// Stats - comment contains base cast range and notes. all stats are zetterburn's unless specified otherwise in the notes

// Physical size
char_height         = 52;       // not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.05;		// 0.9  -  1.2

// Ground movement
walk_speed          = 5;		// 3    -  4.5
walk_accel          = 0.5		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 8;		// 8    -  16
initial_dash_speed  = 11;		// 4    -  9
dash_speed          = 10;		// 5    -  9
dash_turn_time      = 20;		// 8    -  20
dash_turn_accel     = 2;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 1;		// 0.3  -  1            // 0.7
moonwalk_accel      = 1.4;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 8;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.6;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 12;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 8;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        // ???              the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 20;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.175;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.5;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not work... dan pls

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;



// Character-specific sprites init

spr_intro = sprite_get("intro");

spr_capsule_die_laser = sprite_get("capsule_die_laser");
spr_capsule_explode_laser = sprite_get("capsule_explode_laser");
spr_capsule_idle_laser = sprite_get("capsule_idle_laser");
spr_capsule_spawn_laser = sprite_get("capsule_spawn_laser");

spr_capsule_die_rocket = sprite_get("capsule_die_rocket");
spr_capsule_explode_rocket = sprite_get("capsule_explode_rocket");
spr_capsule_idle_rocket = sprite_get("capsule_idle_rocket");
spr_capsule_spawn_rocket = sprite_get("capsule_spawn_rocket");

spr_capsule_die_drill = sprite_get("capsule_die_drill");
spr_capsule_explode_drill = sprite_get("capsule_explode_drill");
spr_capsule_idle_drill = sprite_get("capsule_idle_drill");
spr_capsule_spawn_drill = sprite_get("capsule_spawn_drill");

spr_vfx_ustrong_spark = sprite_get("vfx_ustrong_spark");
spr_vfx_laser_start = sprite_get("vfx_laser_start");
spr_vfx_laser_pixel_1 = sprite_get("vfx_laser_pixel_1");
spr_vfx_laser_pixel_2 = sprite_get("vfx_laser_pixel_2");
spr_vfx_laser_pixel_3 = sprite_get("vfx_laser_pixel_3");
spr_vfx_rocket_start = sprite_get("vfx_rocket_start");
spr_vfx_rocket_smoke_1 = sprite_get("vfx_rocket_smoke_1");
spr_vfx_rocket_smoke_2 = sprite_get("vfx_rocket_smoke_2");
spr_vfx_rocket_smoke_3 = sprite_get("vfx_rocket_smoke_3");
spr_vfx_drill_start = sprite_get("vfx_drill_start");
spr_vfx_drill_rock = sprite_get("vfx_drill_rock");



// SFX init

sfx_sonic_badnik_bounce = sound_get("sonic_badnik_bounce");
sfx_sonic_dash = sound_get("sonic_dash");
sfx_sonic_djump = sound_get("sonic_djump");
sfx_sonic_drill_burrow = sound_get("sonic_drill_burrow");
sfx_sonic_drill_charge = sound_get("sonic_drill_charge");
sfx_sonic_drill_fire = sound_get("sonic_drill_fire");
sfx_sonic_jump = sound_get("sonic_jump");
sfx_sonic_laser_charge = sound_get("sonic_laser_charge");
sfx_sonic_laser_end = sound_get("sonic_laser_end");
sfx_sonic_laser_fire = sound_get("sonic_laser_fire");
sfx_sonic_ring = sound_get("sonic_ring");
sfx_sonic_ring_loss = sound_get("sonic_ring_loss");
sfx_sonic_rocket_launch = sound_get("sonic_rocket_launch");
sfx_sonic_shield_bubble_equip = sound_get("sonic_shield_bubble_equip");
sfx_sonic_shield_bubble_use = sound_get("sonic_shield_bubble_use");
sfx_sonic_shield_fire_equip = sound_get("sonic_shield_fire_equip");
sfx_sonic_shield_fire_use = sound_get("sonic_shield_fire_use");
sfx_sonic_shield_thunder_equip = sound_get("sonic_shield_thunder_equip");
sfx_sonic_shield_thunder_use = sound_get("sonic_shield_thunder_use");
sfx_sonic_skid = sound_get("sonic_skid");
sfx_sonic_spike_charge = sound_get("sonic_spike_charge");
sfx_sonic_spin = sound_get("sonic_spin");
sfx_sonic_spin_loop = sound_get("sonic_spin_loop");
sfx_sonic_spindash_charge = sound_get("sonic_spindash_charge");
sfx_sonic_spindash_loose = sound_get("sonic_spindash_loose");
sfx_sonic_swipe_1 = sound_get("sonic_swipe_1");
sfx_sonic_swipe_2 = sound_get("sonic_swipe_2");
sfx_sonic_swipe_3 = sound_get("sonic_swipe_3");
sfx_sonic_swipe_4 = sound_get("sonic_swipe_4");
sfx_sonic_swipe_5 = sound_get("sonic_swipe_5");
sfx_sonic_swipe_double = sound_get("sonic_swipe_double");
sfx_sonic_woosh_1 = sound_get("sonic_woosh_1");
sfx_sonic_woosh_2 = sound_get("sonic_woosh_2");



// VFX init
vfx_laser_start = hit_fx_create(spr_vfx_laser_start, 16);
vfx_laser_pixels = [
    hit_fx_create(spr_vfx_laser_pixel_1, 30),
    hit_fx_create(spr_vfx_laser_pixel_2, 30),
    hit_fx_create(spr_vfx_laser_pixel_3, 30)
    ];
vfx_rocket_start = hit_fx_create(spr_vfx_rocket_start, 16);
vfx_rocket_smoke = [
    hit_fx_create(spr_vfx_rocket_smoke_1, 20),
    hit_fx_create(spr_vfx_rocket_smoke_2, 16),
    hit_fx_create(spr_vfx_rocket_smoke_3, 12)
    ];
vfx_drill_start = hit_fx_create(spr_vfx_drill_start, 16);
vfx_drill_rock = hit_fx_create(spr_vfx_drill_rock, 16);

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
djump_sound         = sfx_sonic_djump;
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



// Muno template: (don't change)

muno_event_type = 0;
user_event(14);