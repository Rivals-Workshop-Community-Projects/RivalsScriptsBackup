// init is a script that creates variables when the player is created on the stage.

small_sprites = 1;

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 40;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.25;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 6.25;		// 4    -  9
dash_speed          = 5.75;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.75;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.3;		// 0.25 -  0.5
ground_friction     = 0.65;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5.5;		// 4    -  8
max_jump_hsp        = 5.5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.4;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 10.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 18;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.14;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;      // 7.5  -  8
techroll_speed      = 9;       // 8    -  11



// Character-specific assets init

// Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");

if get_player_color(player) == 21 {
    spr_bubbles = sprite_get("krabs_bubbles");
    is_krabs = true;
    wearing_hat = 1;
}
else {
    spr_bubbles = sprite_get("bubbles");
    is_krabs = false;
    wearing_hat = 0;
}

spr_bubble_shine = sprite_get("bubble_shine");

spr_harden = sprite_get("harden");
spr_hardened = sprite_get("hardened");
spr_shhhing = sprite_get("shhhing");

spr_crabhammer1 = sprite_get("crabhammer1");
spr_crabhammer2 = sprite_get("crabhammer2");

spr_sad_taunt = sprite_get("sad_taunt");

spr_meter = sprite_get("meter");

// SFX
sfx_krabs_run = sound_get("krabs_run");

// VFX
vfx_bubbles_large = hit_fx_create(sprite_get("bubbles_fx_large"), 4);
vfx_bubbles_med = hit_fx_create(sprite_get("bubbles_fx_med"), 4);
vfx_bubbles_small = hit_fx_create(sprite_get("bubbles_fx_small"), 4);

vfx_explosion = hit_fx_create(sprite_get("explosion_fx"), 12);

// Variables
claws_health = 100;
claws_health_prev = 100;
claws_regen = 0.15;
claws_brittle = false;
//claws_threshold = 100;
claws_broken = false;

uspec_parried_by = [];
uspec_hitbox = noone;
uspec_hitbox_mask = noone;

dspec_loops = -1;
dspec_countered = false;

nspec_sound = noone;

fspec_used = false;

grabbed = [];

uses_krabs_sound = false;
extra_sound = noone;

// Sprite set handler (with permission from Muno)
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
    //"bighurt", 
    //"hurtground", 
    //"bouncehurt", 
    "spinhurt", 
    //"uphurt", 
    //"downhurt", 
    
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
    //"fair", 
    //"bair", 
    //"uair", 
    "dair", 
    //"fstrong", 
    //"ustrong", 
    //"dstrong", 
    //"nspecial", 
    //"fspecial", 
    "uspecial", 
    "dspecial", 
    "taunt"//,
    //"phone_open",
    //"intro"
    ];



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.25;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 2;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(CH_ORCANE); // victory_background.png
set_victory_theme(sound_get("cry")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_med");
landing_lag_sound   = asset_get("sfx_land_heavy");
waveland_sound      = asset_get("sfx_waveland_wra"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 16;


// ========== COMPAT. ==========
// pokemon stadium
pkmn_stadium_front_img = sprite_get("compat_pkmn_front");
pkmn_stadium_back_img = sprite_get("compat_pkmn_back");
pkmn_stadium_name_override = "krabby";

// mt dedede
arena_title = "The River Crab Pokemon";

// soulbound conflict
battle_text = "* Krabby blows a bubble!";

// steve
steve_death_message = "Steve was pummeled by Krabby using [Claws]";

// hikaru
Hikaru_Title = "Literally a Crab";

// rat
personaQuips[10] = "I'm gonna need some lemon garlic butter sauce!";

