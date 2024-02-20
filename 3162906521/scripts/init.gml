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
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6.75;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 12;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.4;		// 0.25 -  0.5
ground_friction     = 0.6;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 4;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 11.8;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 11;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.14;		// 0    -  0.15
roll_forward_max    = 10;		// 9    -  11
roll_backward_max   = 10;		// 9    -  11       always the same as forward
wave_land_time      = 7;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

// //Sprites
// spr_nspecial_proj = sprite_get("nspecial_proj");
// spr_example = sprite_get("example"); // sprites/example_stripX.png

// // VFX
// vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
// vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);


//--------------------------------------------------------------------------
//THE ENGINEER IS ENGI HERE
sentry_alive = false;
disp_alive = false;
tp_alive = false;
rat_alive = false;

metal_count = 200;
wrench = false; //if wrench == true, then engi hitboxes repair buildings
tp_process = false; //if the engineer is teleporting, this is true
parry_spam_cancel = false; //prevents parry animation randomization from glitching out
dair_sound_play = false; //to cause dair to play 2 sounds on hit without glitching out
jackhammer_loop = 0; //to allow the metal cost of dash attack to loop at differing time intervals
wrangle_ready = false;//this will be set to true when ftilt becomes the wrangler
wrangling = false;//if engi is attacking and is using the wrangler, this is true, else it is false
bair_flag = true;//tells the game if bair had enough metal to fire a rocket
ustrong_dd = false;//allows ustrong to double donk
oh_crap_we_dont_have_enough_metal_go_back = false;//when using widowmaker and you don't have enough metal, it will reverse the animation
fstrong_anim_timer = 0; //sets the frame number for the ball that appears while charging fstrong
lasso_loop_count = 0; //limits how long you can hold utilt

respawn_platform_spawn = true;//spawns the respawn platform(otherwise it would be in front of his sprites)
plat_anim = 0;
uspecialafterimage_fader = 0;
uspecialafterimage_x = 0;
uspecialafterimage_y = 0;

pda = false;//when this is true, it displays the pda
metal_drop_counter = 0;//this increases upon every hit and drops a metal box at 5 hits
//gonna try something interesting: every hit that would move a rock will make the metal counter goes up, to prevent multihits from gaining crazy metal 
//the code for this is in hit_player.gml

//voiceline code is heavily based off of Roboshyguy's Jerma985 mod, I was given permission to use his code as a base.
//voicelines = get_synced_var(player);
//if voicelines are enabled, this is >1
//1 = engineer/normal voicelines
//2 = crazy dave
//3 = peppino
//4 = mario
voice_playing_sound = noone;
voice_id = 0;
voice_volume = 1;
dont_shutup = false;
engi_muted = false;

//Engineer gaming alt
hue_offset = 0;
hue_speed = 1; //change this to change the speed of the hueshift
color_timer = 0;
color_phase = 0;

//final smash
fs_char_portrait_y = 60;
fs_char_portrait_x = 30;
fs_char_chosen_final_smash = ("custom");
fs_meter_y = -70;
fs_explosion_active = 0;
fs_explosion_x = 0;
fs_explosion_y = 0;

pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");

//short circuit effects
miniball_destroy = hit_fx_create( sprite_get( "fstrong_miniballdestroy" ), 16 );
bigball_destroy = hit_fx_create( sprite_get( "fstrong_bigballdestroy" ), 20 );

//wrench effects
repair1 = hit_fx_create( sprite_get( "repair1" ), 24 );
repair2 = hit_fx_create( sprite_get( "repair2" ), 18 );
repairperfect = hit_fx_create( sprite_get( "repairperfect" ), 36 );
repairfail = hit_fx_create( sprite_get( "repairfail" ), 24 );

donk = hit_fx_create( sprite_get( "donk" ), 60 );
donk_rev = hit_fx_create( sprite_get( "donkreverse" ), 60 );
//hehehe, I stole this code directly from demopan. Don't tell EDRadish

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.175;
pratfall_anim_speed = 0.03;

// Jumps
double_jump_time    = 33;		// 24   -  40
walljump_time       = 24;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 5;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
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
hurtbox_spr         = sprite_get("engi_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_clairen_tip_med");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
dracula_portrait3 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "How have you beaten my army you... construction worker?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Son, I'm an Engineer. That means that I solve problems.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "For instance when some mean mother-hubber steals the Bombinomicon again and sneaks into a haunted castle...";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "I use a gun.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Bombinom-... what? You seriously defeated my army for that lousy book?";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "And what do you mean 'again'? Are you actually confusing me for that pathetic excuse for a wizard?";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "Well, you've made it this far. What is a day laborer like you going to do to stop a real vampire?";
page++;

//Page 8
dracula_speaker[page] = 1;
dracula_text[page] = "Use more gun";
page++;

//Page 9
dracula_speaker[page] = 0;
dracula_text[page] = "Pah, what is an engineer but a turtle that lets a machine do the work? Let's see what happens when your precious metal supply begins to dwindle.[glass] Have at you";
page++;

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

// muno_event_type = 0;
// user_event(14);