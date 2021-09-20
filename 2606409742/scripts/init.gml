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
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.5;		// 3    -  4.5
walk_accel          = 0.5;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 12;		// 8    -  16
initial_dash_speed  = 6.5;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.6;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 11;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 2;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_botw_bomb_cancel = sound_get("botw_bomb_cancel");
sfx_botw_bomb_pull = sound_get("botw_bomb_pull");
sfx_botw_bomb_explode = sound_get("botw_bomb_explode");
sfx_botw_bow_no_arrow = sound_get("botw_bow_no_arrow");
sfx_botw_bullet_time = sound_get("botw_bullet_time");
sfx_botw_camera_shutter = sound_get("botw_camera_shutter");
sfx_botw_crit = sound_get("botw_crit");
sfx_botw_cryonis_make = sound_get("botw_cryonis_make");
sfx_botw_cryonis_make_end = sound_get("botw_cryonis_make_end");
sfx_botw_cryonis_break = sound_get("botw_cryonis_break");
sfx_botw_decide_tv_s = sound_get("botw_decide_tv_s");
sfx_botw_get_item = sound_get("botw_get_item");
sfx_botw_hit_1 = sound_get("botw_hit_1");
sfx_botw_low_health = sound_get("botw_low_health");
sfx_botw_magnesis_catch = sound_get("botw_magnesis_catch");
sfx_botw_paraglider_start = sound_get("botw_paraglider_start");
sfx_botw_rune_menu_open = sound_get("botw_rune_menu_open");
sfx_botw_rune_menu_scroll = sound_get("botw_rune_menu_scroll");
sfx_botw_rune_menu_select = sound_get("botw_rune_menu_select");
sfx_botw_rupee = sound_get("botw_rupee");
sfx_botw_shield_bash = sound_get("botw_shield_bash");
sfx_botw_spin_charge = sound_get("botw_spin_charge");
sfx_botw_stasis_start = sound_get("botw_stasis_start");
sfx_botw_stasis_end = sound_get("botw_stasis_end");
sfx_botw_stasis_hit = sound_get("botw_stasis_hit");
sfx_botw_stasis_tick = sound_get("botw_stasis_tick");
sfx_botw_warp = sound_get("botw_warp");
sfx_botw_weapon_broken = sound_get("botw_weapon_broken");
sfx_botw_weapon_damaged = sound_get("botw_weapon_damaged");
sfx_botw_weapon_thrown = sound_get("botw_weapon_thrown");

sfx_ssbu_arrow_stuck = sound_get("ssbu_arrow_stuck");
sfx_ssbu_bow_charge = sound_get("ssbu_bow_charge");
sfx_ssbu_bow_loose = sound_get("ssbu_bow_loose");
sfx_ssbu_item_throw = sound_get("ssbu_item_throw");

sfx_minecraft_elytra = sound_get("minecraft_elytra");
sfx_minecraft_shield = [];
sfx_minecraft_shield[1] = sound_get("minecraft_shield1");
sfx_minecraft_shield[2] = sound_get("minecraft_shield2");
sfx_minecraft_shield[3] = sound_get("minecraft_shield3");
sfx_minecraft_shield[4] = sound_get("minecraft_shield4");
sfx_minecraft_shield[5] = sound_get("minecraft_shield5");

// VFX
vfx_arrow_shoot = hit_fx_create(sprite_get("vfx_arrow_shoot"), 16);
vfx_bomb_explode = hit_fx_create(sprite_get("vfx_bomb_explode"), 51);
vfx_bomb_disappear = hit_fx_create(sprite_get("vfx_bomb_disappear"), 16);
vfx_cryonis_shard = hit_fx_create(sprite_get("vfx_cryonis_shard"), 20);
vfx_cryonis_shard_long = hit_fx_create(sprite_get("vfx_cryonis_shard"), 24);
vfx_dair_sweetspot = hit_fx_create(sprite_get("vfx_dair_sweetspot"), 16);
vfx_wind = hit_fx_create(sprite_get("vfx_wind"), 36);
vfx_sparkles_up = hit_fx_create(sprite_get("vfx_sparkles_up"), 20);
vfx_sparkle = hit_fx_create(sprite_get("vfx_sparkle"), 25);
vfx_spear_break = hit_fx_create(sprite_get("vfx_spear_break"), 35);
vfx_spear_break_2 = hit_fx_create(sprite_get("vfx_spear_break_2"), 32);
vfx_stasis_arrow = hit_fx_create(sprite_get("vfx_stasis_arrow"), 20);
vfx_stasis_chains = hit_fx_create(sprite_get("vfx_stasis_chains"), 21);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)
stamina_max = 180;
stamina = stamina_max;
stamina_alpha = 0;
glide_sound = noone;
spear_durability_max = 5;
spear_durability = spear_durability_max;
flying_spear = noone; // to stop the looping sound
flying_spear_sound = noone; // ^
dspecial_window_tracker = 0;
bomb_cooldown = 0;
bomb_cooldown_max = 27 * 4;

cur_spear = 1;
spears = [];
spear_queue = [];
spear_queue_position = 0;

// initSpear(num, name, vfx_arr, sfx_arr)
// arr: [normal, tipper/proj]
SPEAR_NONE			= initSpear(0, "None", [0, 304], [noone, noone]);
SPEAR_TRAVELER		= initSpear(1, "Traveler's Spear", [0, 304], [noone, noone]);
SPEAR_HALBERD		= initSpear(2, "Knight's Halberd", [0, 304], [noone, noone]);
SPEAR_MOP			= initSpear(3, "Wooden Mop", [0, 304], [noone, noone]);
SPEAR_BOKO			= initSpear(4, "Spiked Boko Spear", [0, 304], [noone, noone]);
SPEAR_FLAME			= initSpear(5, "Flamespear", [3, 148], [noone, noone]);
SPEAR_FROST			= initSpear(6, "Frostspear", [0, 199], [asset_get("sfx_icehit_medium1"), asset_get("sfx_icehit_heavy1")]);
SPEAR_THUNDER		= initSpear(7, "Thunderspear", [21, 197], [asset_get("sfx_absa_kickhit"), asset_get("sfx_absa_harderhit")]);
SPEAR_GUARDIAN		= initSpear(8, "Guardian Spear", [0, 304], [noone, noone]);

cur_rune = 0;
runes = [];

// initRune(num, name, color)
// colors in hex RGB
RUNE_BOMB			= initRune(0, "Remote Bomb", $00d2f4);
RUNE_MAGNESIS		= initRune(1, "Magnesis", $ff4a6c);
RUNE_STASIS			= initRune(2, "Stasis", $ffea62);
RUNE_CRYONIS		= initRune(3, "Cryonis", $beebf4);

rune_menu = {
	state: 0,
	state_timer: 0,
	open_timer: 0,
	
	draw_alpha: 0,
	hint_alpha: 0,
	
	p: self,
	scroll_x: 0,
	cursor_x: 0,
	
	cooldown: 0
};



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 20;		// 18   -  32
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
techroll_active_frames      = 5;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 2;

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



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurtbox");
crouchbox_spr       = asset_get("ferret_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("win_link"));

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



muno_event_type = 0;
user_event(14);



#define initSpear(num, name, vfx_arr, sfx_arr)

spears[num] = {
	name: name,
	vfx: vfx_arr,
	sfx: sfx_arr
};

return num;



#define initRune(num, name, color)

runes[num] = {
	name: name,
	color: make_color_rgb(color_get_blue(color), color_get_green(color), color_get_red(color))
};

return num;