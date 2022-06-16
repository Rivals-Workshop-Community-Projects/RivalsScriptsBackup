/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
 */

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 70;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.9;		// 0.9  -  1.2
small_sprites       = 1;

// Ground movement
walk_speed          = 2.85;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 14;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.4;		// 0.25 -  0.5
ground_friction     = 0.6;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 4.75;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.52;		// 0.3  -  0.6
hitstun_grav        = 0.53;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 16;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 10;		// 9    -  11
roll_backward_max   = 10;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX

// VFX
spice_effect = hit_fx_create(sprite_get("spice_vfx"), 20);
spark_effect = hit_fx_create(sprite_get("we_do_a_little_trolling_3"), 14);
bubblepop = hit_fx_create(sprite_get("bubblepop"), 6);
uspec_effect = hit_fx_create(sprite_get("uspecial_fx"), 18);
dspec_effect = hit_fx_create(sprite_get("dspec_afterimage"), 15);
steam_effect = hit_fx_create(sprite_get("steam_vfx"), 27);
dust_effect = hit_fx_create(sprite_get("we_do_a_little_trolling"), 16);
eat_up_effect = hit_fx_create(sprite_get("eat_up"), 72);
uspec_after_effect = hit_fx_create(sprite_get("uspec_afterimage"), 15);
dtilt_hfx = hit_fx_create(sprite_get("dtilt_hfx"), 21);

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.13;
crouch_anim_speed   = 0.13;
walk_anim_speed     = 0.13;
dash_anim_speed     = 0.18;
pratfall_anim_speed = 0.22;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 1;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 6;
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



// Hurtbox sprites
hurtbox_spr         = sprite_get("gumbo_hurtbox");
crouchbox_spr       = sprite_get("gumbo_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(CH_ORCANE); // victory_background.png
set_victory_theme(CH_HODAN);

// Movement SFX
land_sound          = asset_get("sfx_land_heavy");
landing_lag_sound   = asset_get("sfx_land_heavy");
waveland_sound      = asset_get("sfx_waveland_hod"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//variables
has_shrimp = true;
has_pot = true;
shrimp_in_pot = false;
pot_trap = false;
food_id = 0;
shrimpsplosion = false;
shrimp_proj = 0;
//dspecial_spr_var = false;

bubpop_pitch = 0;
uspec_angle = 0;
other_is_scalding = false;

avocado = false;
michigan = false;

gumbo_is_scalding = false;
gumbo_scalding = false;
gumbo_scalding_timer = 0;

is_scalding = false;
gumbo_ditto = false;
custom_food = 0;

alt = get_player_color(player);
set_victory_portrait(sprite_get("portrait"));
if(alt == 22){ //drip
set_victory_theme(sound_get("drip_victory"));
set_victory_portrait(sprite_get("drip_portrait"));
}if(alt == 16){ //WW
custom_food = 1;
}if(alt == 21){ //Kaiman
custom_food = 2;
}if(alt == 9){ //Kawasaki
custom_food = 3;
}if(alt == 18){ //Vector
custom_food = 4;
}if(alt == 14){ //TAG
custom_food = 5;
}

if(get_player_color(player) == 22){
set_color_profile_slot( 22, 0, 88, 80, 63 ); //Gumbo Skin 1
set_color_profile_slot( 22, 1, 200, 189, 158 ); //Gumb Skin 2
set_color_profile_slot( 22, 2, 92, 92, 92 ); //Jeans
set_color_profile_slot( 22, 3, 89, 89, 89 ); //Hoodie
set_color_profile_slot( 22, 4, 255, 210, 77 ); //Eyes
set_color_profile_slot( 22, 5, 242, 207, 207 ); //Po Skin 1
set_color_profile_slot( 22, 6, 211, 120, 120 ); //Po Skin 2
set_color_profile_slot( 22, 7, 255, 255, 255 ); //Apron  
}if(get_player_color(player) == 15){
set_color_profile_slot( 15, 0, 130, 90, 49 ); //Gumbo Skin 1
set_color_profile_slot( 15, 1, 107, 107, 107 ); //Gumb Skin 2
set_color_profile_slot( 15, 2, 212, 78, 78 ); //Jeans
set_color_profile_slot( 15, 3, 115, 79, 43 ); //Hoodie
set_color_profile_slot( 15, 4, 245, 254, 255 ); //Eyes
set_color_profile_slot( 15, 5, 207, 23, 23 ); //Po Skin 1
set_color_profile_slot( 15, 6, 255, 214, 214 ); //Po Skin 2
set_color_profile_slot( 15, 7, 255, 255, 255 ); //Apron    
}if(get_player_color(player) == 14){
set_color_profile_slot( 14, 0, 149, 202, 116 ); //Gumbo Skin 1
set_color_profile_slot( 14, 1, 192, 227, 165 ); //Gumb Skin 2
set_color_profile_slot( 14, 2, 96, 158, 155 ); //Jeans
set_color_profile_slot( 14, 3, 255, 147, 94 ); //Hoodie
set_color_profile_slot( 14, 4, 255, 223, 112 ); //Eyes
set_color_profile_slot( 14, 5, 129, 235, 230 ); //Po Skin 1
set_color_profile_slot( 14, 6, 220, 66, 83 ); //Po Skin 2
set_color_profile_slot( 14, 7, 248, 229, 151 ); //Apron
}if(get_player_color(player) == 13){
set_color_profile_slot( 13, 0, 48, 161, 201 ); //Gumbo Skin 1
set_color_profile_slot( 13, 1, 255, 203, 31 ); //Gumb Skin 2
set_color_profile_slot( 13, 2, 134, 130, 143 ); //Jeans
set_color_profile_slot( 13, 3, 110, 110, 110 ); //Hoodie
set_color_profile_slot( 13, 4, 255, 255, 255 ); //Eyes
set_color_profile_slot( 13, 5, 255, 200, 0 ); //Po Skin 1
set_color_profile_slot( 13, 6, 158, 158, 158 ); //Po Skin 2
set_color_profile_slot( 13, 7, 49, 222, 198 ); //Apron
}if(get_player_color(player) == 21){
set_color_profile_slot( 21, 0, 129, 143, 83 ); //Gumbo Skin 1
set_color_profile_slot( 21, 1, 227, 231, 187 ); //Gumb Skin 2
set_color_profile_slot( 21, 2, 82, 86, 69 ); //Jeans
set_color_profile_slot( 21, 3, 35, 32, 54 ); //Hoodie
set_color_profile_slot( 21, 4, 163, 46, 39 ); //Eyes
set_color_profile_slot( 21, 5, 79, 150, 156 ); //Po Skin 1
set_color_profile_slot( 21, 6, 206, 193, 130 ); //Po Skin 2
set_color_profile_slot( 21, 7, 63, 83, 110 ); //Apron
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);