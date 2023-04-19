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
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 5.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 5;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
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
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.13;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 7;		// 6    -  12
wave_land_adj       = 1.4;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_item_chest = sprite_get("item_chest");
spr_item_gun = sprite_get("item_gun");
spr_item_sword = sprite_get("item_sword");
spr_item_trumpet = sprite_get("item_trumpet");

spr_throw_chest = sprite_get("item_chest_thrown");
spr_throw_gun = sprite_get("item_gun_thrown");
spr_throw_sword = sprite_get("item_sword_thrown");

spr_bump_idle = sprite_get("bumper_idle");
spr_bump_back = sprite_get("bumper_back");
spr_bump_pointer = sprite_get("bumper_pointer");
spr_bump_impact = sprite_get("bumper_impact");
spr_bump_active = sprite_get("bumper_active");
spr_bump_actimp = sprite_get("bumper_active_impact");

spr_chestspawn = sprite_get("chestspawn");
spr_ball = sprite_get("cannonball");

spr_therapist = sprite_get("therapist");

spr_shipwheel = sprite_get("wheel");
spr_explosion = sprite_get("explosion");

spr_huditems = sprite_get("hud");

spr_bracelet = sprite_get("treas_bracelet");
spr_goldcoin = sprite_get("treas_goldcoin");
spr_medal = sprite_get("treas_medal");
spr_parrot = sprite_get("treas_parrot");
spr_pipe = sprite_get("treas_pipe");
spr_silvercoin = sprite_get("treas_silvercoin");
spr_spyglass = sprite_get("treas_spyglass");

list_treasures = [spr_bracelet, spr_goldcoin, spr_medal, spr_parrot, spr_pipe, spr_silvercoin, spr_spyglass];
treas_max = 7;
treas_cur = 0;

// SFX
sfx_trumpet1 = sound_get("trumpet1");
sfx_doot1 = sound_get("doot1");
sfx_doot2 = sound_get("doot2");
sfx_explosion = sound_get("explosion");
// Rattle Me Bones
rmb_bones = sound_get("bones");
rmb_rmb0 = sound_get("rattle_me_bones0");
rmb_rmb1 = sound_get("rattle_me_bones1");
rmb_rmb2 = sound_get("rattle_me_bones2");
rmb_rmb3 = sound_get("rattle_me_bones3");
rmb_spin_long = sound_get("spin_the_wheel_long");
rmb_spin_short = sound_get("spin_the_wheel_short");
rmb_take_what_ye_will = sound_get("take_what_ye_will");
rmb_treasure = sound_get("treasure");
rmb_trumpets = sound_get("trumpets");
rmb_lights_low = sound_get("turn_the_lights_low");
rmb_welcome = sound_get("welcome_aboard");
rmb_take = sound_get("take");
rmb_what = sound_get("what");
rmb_ye = sound_get("ye");
rmb_will = sound_get("will");
//Captain Carcasse
cc_bones = sound_get("cc_bones");
cc_rmb0 = sound_get("cc_rattle_me_bones0");
cc_rmb1 = sound_get("cc_rattle_me_bones1");
cc_rmb2 = sound_get("cc_rattle_me_bones2");
cc_rmb3 = sound_get("cc_rattle_me_bones3");
cc_spin_long = sound_get("cc_spin_the_wheel_long");
cc_spin_short = sound_get("cc_spin_the_wheel_short");
cc_take_what_ye_will = sound_get("cc_take_what_ye_will");
cc_treasure = sound_get("cc_treasure");
cc_trumpets = sound_get("cc_trumpets");
cc_lights_low = sound_get("cc_turn_the_lights_low");
cc_welcome = sound_get("cc_welcome_aboard");
cc_take = sound_get("cc_take");
cc_what = sound_get("cc_what");
cc_ye = sound_get("cc_ye");
cc_will = sound_get("cc_will");
//Grayfruit
gf_bones = sound_get("gf_bones");
gf_rmb0 = sound_get("gf_rattle_me_bones0");
gf_rmb1 = sound_get("gf_rattle_me_bones1");
gf_rmb2 = sound_get("gf_rattle_me_bones2");
gf_rmb3 = sound_get("gf_rattle_me_bones3");
gf_spin_long = sound_get("gf_spin_the_wheel_long");
gf_spin_short = sound_get("gf_spin_the_wheel_short");
gf_take_what_ye_will = sound_get("gf_take_what_ye_will");
gf_treasure = sound_get("gf_treasure");
gf_trumpets = sound_get("gf_trumpets");
gf_lights_low = sound_get("gf_turn_the_lights_low");
gf_welcome = sound_get("gf_welcome_aboard");
gf_take = sound_get("gf_take");
gf_what = sound_get("gf_what");
gf_ye = sound_get("gf_ye");
gf_will = sound_get("gf_will");

// SFX Variables
sfx_bones = noone;
sfx_rmb0 = noone;
sfx_rmb1 = noone;
sfx_rmb2 = noone;
sfx_rmb3 = noone;
sfx_spin_long = noone;
sfx_spin_short = noone;
sfx_take_what_ye_will = noone;
sfx_treasure = noone;
sfx_trumpets = noone;
sfx_lights_low = noone;
sfx_welcome = noone;
sfx_take = noone;
sfx_what = noone;
sfx_ye = noone;
sfx_will = noone;

sfx_pop = sound_get("smrpg_enemy_dead");
sfx_bonk = sound_get("smrpg_mario_hammer");
sfx_crit = sound_get("critical");
sfx_hit1 = sound_get("sfx_fe_hit1");
sfx_hit2 = sound_get("sfx_fe_hit3");
sfx_stab = sound_get("sfx_aa_stab");
sfx_lego = sound_get("sfx_lego");
sfx_wrong = sound_get("wrong");
sfx_kick = sound_get("kick");
sfx_spinner_activate = sound_get("smrpg_item_syrup");

sfx_therapist = sound_get("therapist");
sfx_toasty = sound_get("TOASTY");
sfx_alleyoop = sound_get("reyn_ALLEYOOP");




voices = get_synced_var(player);
if (voices == 1) {
    sfx_bones = rmb_bones;
    sfx_rmb0 = rmb_rmb0;
    sfx_rmb1 = rmb_rmb1;
    sfx_rmb2 = rmb_rmb2;
    sfx_rmb3 = rmb_rmb3;
    sfx_spin_long = rmb_spin_long;
    sfx_spin_short = rmb_spin_short;
    sfx_take_what_ye_will = rmb_take_what_ye_will;
    sfx_treasure = rmb_treasure;
    sfx_trumpets = rmb_trumpets;
    sfx_lights_low = rmb_lights_low;
    sfx_welcome = rmb_welcome;
    sfx_take = rmb_take;
    sfx_what = rmb_what;
    sfx_ye = rmb_ye;
    sfx_will = rmb_will;
}
else if (voices == 2) {
    sfx_bones = cc_bones;
    sfx_rmb0 = cc_rmb0;
    sfx_rmb1 = cc_rmb1;
    sfx_rmb2 = cc_rmb2;
    sfx_rmb3 = cc_rmb3;
    sfx_spin_long = cc_spin_long;
    sfx_spin_short = cc_spin_short;
    sfx_take_what_ye_will = cc_take_what_ye_will;
    sfx_treasure = cc_treasure;
    sfx_trumpets = cc_trumpets;
    sfx_lights_low = cc_lights_low;
    sfx_welcome = cc_welcome;
    sfx_take = cc_take;
    sfx_what = cc_what;
    sfx_ye = cc_ye;
    sfx_will = cc_will;
}
else if (voices == 3) {
    sfx_bones = gf_bones;
    sfx_rmb0 = gf_rmb0;
    sfx_rmb1 = gf_rmb1;
    sfx_rmb2 = gf_rmb2;
    sfx_rmb3 = gf_rmb3;
    sfx_spin_long = gf_spin_long;
    sfx_spin_short = gf_spin_short;
    sfx_take_what_ye_will = gf_take_what_ye_will;
    sfx_treasure = gf_treasure;
    sfx_trumpets = gf_trumpets;
    sfx_lights_low = gf_lights_low;
    sfx_welcome = gf_welcome;
    sfx_take = gf_take;
    sfx_what = gf_what;
    sfx_ye = gf_ye;
    sfx_will = gf_will;
}

// VFX
vfx_coin_capture = hit_fx_create(sprite_get("coin_capture"), 44);
vfx_actimp = hit_fx_create(sprite_get("bumper_active_impact"), 10);
vfx_chest = hit_fx_create(sprite_get("chestspawn"), 28);
vfx_sparkles = hit_fx_create(sprite_get("sparkles"), 16);
vfx_wheel_break = hit_fx_create(sprite_get("wheel_break"), 12);
vfx_explosion = hit_fx_create(sprite_get("explosion"), 34);
vfx_sonic = hit_fx_create( sprite_get("fx_sonic"), 18 );

// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 20;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 1;

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
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 1;

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
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

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

debug_text = false;


//TOM'S CODE
// 0 - Chest
// 1 - Gun
// 2 - Sword
// 3 - Trumpet
can_drop_item = false; //new variable added so items dont drop in startup
items_held = [true, true, true, true];
items = [noone, noone, noone, noone];
wheel = noone;

// Check to see if dtilt spawns chest
spawn_chest = true;
spawn_chest_timer = 0;

// DSpecial Mechanics
rattle_count = 0;
rattle_loop = 2;

//Intro
introTimer = -1;
introTimer2 = 0;

//Therapist
therapy = false;
ther_x = 1000;
therapist_timer = 60;
ther_orig_x = 1000;
ther_dest_x = 700;
ther_dest_y = 200;

// Bones Text
arr_text_one = [];
arr_text_two = [];

// Bones takewhatyewill
takewhatyewill = 0;

//RATTLEEMBOYS
rem = false;
rem_talk_loop = 6;
rem_shoot_loop = 20;
rem_current = 0;

//Turn the lights low, there's a frightenin glow
green_color = make_color_rgb(153, 229, 80);
green_dark = make_color_rgb(131, 204, 61);


user_event(1);