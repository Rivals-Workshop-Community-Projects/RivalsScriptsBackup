//Intro
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

introprevent = 0;
wft_crouch = 0;
wft_uspcount = 0;
wft_dscharge = 0;
wft_nspcharge = 0;
wft_balldisallow = 0;
wft_meter_current = 0;
wft_meter_max = 20;
wft_ballding = 0;
wft_testrune = 0;
finalsmashrandom = 0;
finalsmashtimer = 0;

voice_toggle = 0;

// Hurtbox sprites
hurtbox_spr = sprite_get("fit_hurt_box");
crouchbox_spr = sprite_get("fit_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Victory
set_victory_bg(sprite_get("wft_bg")); // victory_background.png
set_victory_theme(sound_get("wft")); // victory_theme.ogg

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 66;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 9;		// 6
initial_dash_time   = 12;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 11;		// 8    -  20
dash_turn_accel     = 1;		// 0.1  -  2
dash_stop_time      = 10;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.25;		// 0.25 -  0.5
ground_friction     = 0.3;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
	
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.55;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 8;		// 6    -  11
fast_fall           = 11;		// 11   -  16
gravity_speed       = 0.55;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11.25;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5.5;		// 4    -  7.4
djump_speed         = 10.75;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.06;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.125;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 25;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

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
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

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

//WORKSHOP STUFF
//Fighters
//Steve
steve_death_message = "Steve was forced to attend Wii Fit Trainer's workout session.";

//Agent N
nname = "Wii Fit Trainer"

ncode1 = "A feminine mannequin fitness instructor."
ncode2 = "Is able to use many yoga poses as attacks."
ncode3 = "They are very agile."

//Hikaru
Hikaru_Title = "Wii Fit Hikaru";

//Kirby (Spam)
TCG_Kirby_Copy = 4;

//Mario (KASU HEARTS)
mario_cap_compat = sprite_get("cappytaunt")

//PAC-MAN
Namco_Taunt = sprite_get("wft_namco")
Namco_Taunt_Sound = sound_get("wft_whistle")

//Stages
//Boxing Ring
boxing_title = "Yoga Warrior";

//King Dedede's Arena
arena_title = "Yoga Warrior";

//Soulbound Conflict
battle_text = "* Let's get a good stretch.";

//Wily Castle
wily_robotmaster_img = sprite_get("wft_wilycastle");

//Misc.
//Final Smash
fs_portrait_x = 31;
fs_char_portrait_y = 69;
fs_char_chosen_final_smash = 49;