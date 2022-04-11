/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 80;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.2;		// 0.3  -  1
moonwalk_accel      = 1.4;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.25;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 7;		// 6    -  11
fast_fall           = 11;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.55;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 9;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 5;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.4;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 8;		// 8    -  11



// Character-specific assets init

//Sprites

// SFX

// VFX
wwisp_charge = hit_fx_create(sprite_get("wwisp_charge_fx"), 21);
wwisp_hit = hit_fx_create(sprite_get("wwisp_hfx"), 18);
bair_cross1 = hit_fx_create(sprite_get("bair_hfx_1"), 14);
bair_cross2 = hit_fx_create(sprite_get("bair_hfx_2"), 14);
fspecial_fx = hit_fx_create(sprite_get("fspecial_fx"), 16);
fspecial_slam = hit_fx_create(sprite_get("fspecial_slam_fx"), 15);

// Variables

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 2;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 1;
crouch_recovery_frames  = 3;

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
hurtbox_spr         = sprite_get("i_collided_with_your_moms_hurtbox_last_night");
crouchbox_spr       = sprite_get("i_crouched_your_moms_hurtbox_last_night");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("winbg"));
set_victory_theme(sound_get("victory"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_gus"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = sound_get("cofa_djump");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// will o wisp
wow_chrg = 0;
wow_chrg_max = 90; // 2 seconds
wow_hitbox_group = 0; // adds 1 when nspecial is shot, resets to 0 if there are no projectiles

//reflected nspecial
cofa_mummy = false;
cofa_mummy_id = noone;
cofa_mummy_timer = 0;
cofa_mummy_atktimer = 0;
cofa_mummy_atkstored = 0;
cofa_mummy_fx_timer = 0;
cofa_mummy_omen = false;
cofa_mummy_omen_timer = 0;
selfiflict = false;
omegacurser = false;

// fspecial grab
fspecial_grab_id = noone;
fspecial_grab_time = 0;
fspecial_grab_time_max = 30;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

// crawl
crawl_speed = 4;
crawl_accel = 0.7;
// number of images in crawl sprite sheet
crawl_forward_start_sprite_images   = 1;
crawl_forward_active_sprite_images  = 6;
crawl_forward_stop_sprite_images    = 1;
crawl_backward_start_sprite_images  = 1;
crawl_backward_active_sprite_images = 6;
crawl_backward_stop_sprite_images   = 1;
// frames to be spent on each image
crawl_forward_start_time_per_image   = 4;
crawl_forward_active_time_per_image  = 4;
crawl_forward_stop_time_per_image    = 4;
crawl_backward_start_time_per_image  = 4;
crawl_backward_active_time_per_image = 4;
crawl_backward_stop_time_per_image   = 4;
// the sprites
crawl_forward_start_sprite =   sprite_get("crawl_forward_start");
crawl_forward_active_sprite =  sprite_get("crawl_forward");
crawl_forward_stop_sprite =    sprite_get("crawl_stop");
crawl_backward_start_sprite =  sprite_get("crawl_back_start");
crawl_backward_active_sprite = sprite_get("crawl_back");
crawl_backward_stop_sprite =   sprite_get("crawl_stop");
// Begin do-not-change section
crawl_allowed = false;
crawling = false;
crawl_forward_prev = false;
crawl_backward_prev = false;
crouch_time = 0;
// 4 seems to be the time to transition from standing to the actual first crouch frame
crouch_time_before_crawl = 4;
crouch_anim_timer = 0;
crouch_anim_done = true;
crouch_current_time_per_image = 0;
crouch_sprite_index_prev = noone;
crawl_anim_timer_max = crouch_active_frames;
crawl_forward_start_anim_timer_max  = crawl_forward_start_sprite_images   * crawl_forward_start_time_per_image;
crawl_forward_active_anim_timer_max = crawl_forward_active_sprite_images  * crawl_forward_active_time_per_image;
crawl_forward_stop_anim_timer_max   = crawl_forward_stop_sprite_images    * crawl_forward_stop_time_per_image;
crawl_backward_start_anim_timer_max  = crawl_backward_start_sprite_images  * crawl_backward_start_time_per_image;
crawl_backward_active_anim_timer_max = crawl_backward_active_sprite_images * crawl_backward_active_time_per_image;
crawl_backward_stop_anim_timer_max   = crawl_backward_stop_sprite_images   * crawl_backward_stop_time_per_image;
// End do-not-change section

//Compatability
sprite_change_offset("comp_miiverse", 60, 30);
miiverse_post = sprite_get("comp_miiverse");

pkmn_stadium_front_img = sprite_get("comp_stadium_front");
pkmn_stadium_back_img = sprite_get("comp_stadium_back");
pkmn_stadium_name_override = ("COFAGRGUS");

tcoart = sprite_get("comp_tco");

resort_portrait = sprite_get("comp_luigi")

feri_costume = sprite_get("comp_feri");

guiltySprite = sprite_get("comp_guilty")

ncode1 = "This Pokémon has a body of sparkling gold. People"
ncode2 = "say it no longer remembers that it was once human."
ncode3 = "They like to eat gold nuggets."

Hikaru_Title = "Coffer Greebus";

toonlink_photo = sprite_get("comp_toonspook");
toonlink_photo2 = 4;

arena_title = "The Restless Relic";

battle_text = "*As comfortable as it looks.";

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);
