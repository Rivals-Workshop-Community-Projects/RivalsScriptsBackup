/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

demon_trail_size = 3;
for(var i = 0; i < demon_trail_size; i++){
    demon_trail[i] = 
    {x:x, y:y, sprite_index:sprite_index, image_index:0, color:c_white, spr_dir:spr_dir, life:0};
}
nspecial_charge_level = 0;
nspecial_charge_max = 8;
knife_hit = false;
uspec_end_x = x;
uspec_end_y = y;
skin_count = 1;
lightning_counter = 0;
fx_article = instance_create(0, 0, "obj_article1");
fx_article.sprite_index = sprite_get("install_bg");
fx_article.image_xscale = room_width/10;
fx_article.image_yscale = room_height/10;
fx_article.image_alpha = 0;
lightning_x = 0;
lightning_y = 0;

hfx_bat = hit_fx_create(sprite_get("hfx_bat_large"), 24);
hfx_pumpkin = hit_fx_create(sprite_get("hfx_pumpkin"), 24);
if(get_player_color(player) == 16){
    set_hitbox_value(AT_FSPECIAL, 14, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_dev_knife"));
    set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, hfx_bat);
    set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hfx_pumpkin);
    set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, hfx_pumpkin);
}

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES
small_sprites = true;
// Physical size
char_height         = 40;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.2;		// 0.9  -  1.2

// Ground movement
walk_speed          = 2;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 8;		// 4    -  9
dash_speed          = 7;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 5;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 7;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.36;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.035;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.45;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 9.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.05;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 10;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("fanfare")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


// Muno template: (don't change)
user_event(14); // General init