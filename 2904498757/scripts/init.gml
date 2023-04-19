// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
small_sprites       = 1;        //
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4.5;		// 4    -  8
max_jump_hsp        = 4.5;		// 4    -  8
air_max_speed       = 3.5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.325;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 14;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.13;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.25;
crouch_anim_speed   = 0.25;
walk_anim_speed     = 0.25;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 3;		// 

// Parry
dodge_startup_frames    = 2;
dodge_active_frames     = 8;
dodge_recovery_frames   = 8;

// Tech
tech_active_frames      = 6;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 3;
techroll_active_frames      = 5;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 3;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 1;
crouch_recovery_frames  = 5;

// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("pt_victory_theme"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("pt_jump");
djump_sound         = sound_get("pt_jump");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// ==================== CHAR. SPECIFIC ====================

// Sprites
spr_idle_air = sprite_get("pratfall");

// SFX
sfx_mach_loop = sound_get("pt_mach_loop");
sfx_mach_dash = sound_get("pt_mach_attack")
sfx_fspec_grab = sound_get("pt_grab");
sfx_parry = sound_get("pt_parry");
sfx_death = sound_get("pt_death");
sfx_fthrow1 = asset_get("sfx_zetter_downb");
sfx_fthrow2 = asset_get("sfx_abyss_hazard_hit");

// VFX
vfx_cheese_land = hit_fx_create(sprite_get("cheese_land_fx"), 24);
vfx_pizza_land = hit_fx_create(sprite_get("pizza_land_fx"), 20);

// Variables
normal_max_jump_hsp = max_jump_hsp;
was_free = false;

grabbed = []; // stores IDs of grabbed opponents

snapped_to_ledge = false; // for snapping over the ledge

jab_parried = false; // for managing jab parry stuff

taunt_sound = noone;
taunt_sfx_array = [
    sound_get("pt_taunt0"),
    sound_get("pt_taunt1"),
    sound_get("pt_taunt2")
];

dspec_timer = 0; // counts up during falling window of dspec

nspec_turned = false;
nspec_accel = 0.3;
nspec_max_hsp = 10;
nspec_loops = -1;
nspec_dash_charge = 0;
nspec_mach_duration = 45; // how long nspec mach lingers
nspec_mach_timer = 0;
nspec_mach_jump_hsp = nspec_max_hsp * 0.75;
nspec_mach_frict_mult = 0.5;

nspec_mach_sound = noone;

nspec_ai_tot = 4; // total number of afterimages
nspec_ai_cur = 0; // current number of images to draw
nspec_ai_ind = 0; // which index to replace in the rolling buffer
nspec_ai_freq = 3; // higher number --> less frequent updates to after image buffer

// array of afterimages
nspec_afterimages = array_create(nspec_ai_tot, 0);
for (var i = 0; i < nspec_ai_tot; i += 1) {
    nspec_afterimages[i] = {
        sprite: asset_get("empty_sprite"),
        subimg: 0,
        x: x,
        y: y,
        xscale: (1 + small_sprites) * spr_dir,
        yscale: 1 + small_sprites,
        rot: spr_angle,
        col: c_white,
        alpha: image_alpha
    }
}