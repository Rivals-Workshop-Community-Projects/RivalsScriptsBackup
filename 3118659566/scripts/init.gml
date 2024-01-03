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
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7.25;		// 4    -  9
dash_speed          = 6.75;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4.2;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 12;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.15;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
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
crouch_startup_frames   = 2;
crouch_active_frames    = 6;
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
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = sound_get("yonowavedash"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Grab Vars
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.



killarticles = false;
nspec_timer = 0;
nspec_charge = 0;
letter1ID = 0;
letter2ID = 0;
letter3ID = 0;
airletter1ID = 0;
airletter2ID = 0;
airletter3ID = 0;
mailboxID = 0;
lvl1projID = 0;
lvl1proj_exploded = false;
lvl1proj_timer = 0;
lvl2projID = 0;
lvl2projhitbox = 5;
planeID = 0;
packageID = 0;
package_exploded = false;
explo_owner = noone;
explo1 = 0;
instant_explo_start = false;
instant_explo_x = 0;
instant_explo_y = 0;
instant_exploding = false;
explo_timer = 0;
exploID = 0;
letter_move = false;
mb_shoot = false;

mb_spin_hit = false;
mb_spinning = false;
AT_HAMMER = 43;
mb_hammer_hit = false;
AT_VAULT = 42;
mb_vault_hit = false;
vault_letters = 0;

fspec_letter_timer = 0;

//VFX
feather_small_vfx = hit_fx_create( sprite_get( "feather_small_vfx" ), 15 );
stamp_vfx = hit_fx_create( sprite_get( "hammer_stamp_vfx" ), 48 );
letter_vfx = hit_fx_create( sprite_get( "nspecial_proj_break" ), 35 );
letter_big_vfx = hit_fx_create( sprite_get( "letter_big_vfx" ), 32 );
letter_small_vfx = hit_fx_create( sprite_get( "letter_small_vfx" ), 22 );
bag_big_vfx = hit_fx_create( sprite_get( "bag_big_vfx" ), 24 );
letter_add_vfx = hit_fx_create( sprite_get( "letter_add_vfx" ), 35 );
feather_big_vfx = hit_fx_create( sprite_get( "feather_big_vfx" ), 40 );
prop_destroy_vfx = hit_fx_create( sprite_get( "mb_air_propeller_destruct" ), 12 );
nspecial_destroy_vfx = hit_fx_create( sprite_get( "nspecial_proj_destroy" ), 8 );
fspecial_wind_vfx = hit_fx_create( sprite_get( "fspecial_wind_vfx" ), 16 );
fspecial_letter_vfx1 = hit_fx_create( sprite_get( "fspecial_letter_vfx" ), 32 );
fspecial_letter_vfx2 = hit_fx_create( sprite_get( "fspecial_letter_vfx" ), 38 );
fspecial_letter_vfx3 = hit_fx_create( sprite_get( "fspecial_letter_vfx" ), 46 );
mb_proj_lv1_destroy_vfx = hit_fx_create( sprite_get( "mb_proj_lv1_destroy"), 24);
mb_proj_lv2_destroy_vfx = hit_fx_create( sprite_get( "mb_proj_lv2_destroy"), 30);
mb_proj_lv3_explo_vfx = hit_fx_create( sprite_get( "mb_proj_lv3_explo"), 44);
mb_hud_lvup1_vfx = hit_fx_create( sprite_get( "mb_hud_lvup1"), 17);
mb_hud_lvup2_vfx = hit_fx_create( sprite_get( "mb_hud_lvup2"), 17);
mb_hud_lvup3_vfx = hit_fx_create( sprite_get( "mb_hud_lvup3"), 17);
vfx_airdash_down = hit_fx_create( sprite_get( "vfx_airdash_down"), 21);
vfx_airdash_downright = hit_fx_create( sprite_get( "vfx_airdash_downright"), 21);
vfx_airdash_downleft = hit_fx_create( sprite_get( "vfx_airdash_downleft"), 21);
vfx_airdash_up = hit_fx_create( sprite_get( "vfx_airdash_up"), 21);
vfx_airdash_upright = hit_fx_create( sprite_get( "vfx_airdash_upright"), 21);
vfx_airdash_upleft = hit_fx_create( sprite_get( "vfx_airdash_upleft"), 21);
vfx_airdash_left = hit_fx_create( sprite_get( "vfx_airdash_left"), 21);
vfx_airdash_right = hit_fx_create( sprite_get( "vfx_airdash_right"), 21);
vfx_airdash_charge = hit_fx_create( sprite_get( "vfx_airdashcharge"), 16);
vfx_fspecial_ground_bonk = hit_fx_create( sprite_get( "vfx_fspecial_ground_bonk" ), 21 );
vfx_fspecial_air_bonk = hit_fx_create( sprite_get( "vfx_fspecial_air_bonk" ), 15 );
vfx_uspecial_hammer_lv1 = hit_fx_create( sprite_get( "vfx_uspecial_hammer_lv1" ), 35 );
vfx_uspecial_hammer_lv2 = hit_fx_create( sprite_get( "vfx_uspecial_hammer_lv2" ), 35 );
vfx_uspecial_hammer_lv3 = hit_fx_create( sprite_get( "vfx_uspecial_hammer_lv3" ), 45 );

//=========================
// djump variables
djump_charge_max = 70;
djump_charge = 0;
djump_dir = 0;
djumpangle = 0;
snapped_angle = 0;
airdash_frame = 0;
arrow_frame = 0;
joy_pad_timer = 0;
window_joy_pad = 0;
tap_jumped = false;
tap_djump = true;
taptoggle = 0;
//=============================================================
// gravity flipfield variables

//CUSTOM ATTACK GRID INDEX: flipboxes
AG_FLIPPED_HURTBOX_SPRITE = 55;
AG_FLIPPED_HURTBOX_AIR_SPRITE = 56;

last_flipfield = noone; // Latest spawned field.

last_master_flipfield = noone; // Latest "master" field that calculated flip interactions.
// this is set in article1_update by this article
// if it stops existing, it becomes the player's job to reset everyone's is_in_flipfield back to false
//because something went wrong and a field was destroyed midway through affecting players

is_in_flipfield = false; // Flagged by field if you get inside it. [REQUIRED IN OTHER_INIT TOO]
inside_flipfield_timer = 0; // time since you were last in the field (grace period for flipped state)
                        // if above zero, you get flipped-moves and negative-djumps
inside_flipfield_timer_max = 5; //maximum time to stay "flipped" when exiting the field

//flipping animation effect
is_gravflipped = false; // if true; does manual reversed drawing
gravflip_anim_timer = 0; //rotation effect timer
gravflip_anim_timer_max = 6;
gravflip_sfx = asset_get("sfx_forsburn_cape_swipe");

null_sprite = asset_get("empty_sprite"); //sprite to use while rendering flipped character

//parameters that get molested by pre_draw when flipped need to get restored
gravflipped_draw_backups = { sprite_index:sprite_index, image_index:image_index }; 
//==============================================================