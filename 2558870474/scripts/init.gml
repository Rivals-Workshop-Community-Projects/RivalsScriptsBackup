// Muno template
// Thank you Kirbo
// OHOHOHOHOHO

small_sprites = true;

// Future Balance Changes
futurechanges = false;              // Only set to true if there are changes that aren't in the live build that we want to test.
proposed_balance = false;           // This is what handles the cheats. Don't even bother with this <3

// For Future Reference (Mainly for us ADHD bbs)
// user_event1.gml should be used for changes to attacks, stats (anything in init), and etc.
// user_event2.gml is used for attack update. This is for anything very specific for attacks.
// user_event3.gml is used for death. Call this ONLY when you need to.

// NSpecial Charge Variable
charging = false;
charge = 0;
charge_max = 3;
summons = 0;
max_summons = 2;

hue = 0;

superjump = false;

do_dairhit2 = false;

// NSpecial Charge 2
multihit_count = 0;
multihit_cap = 3;   // number of hits by the second charge

damage_multi = 1;
speed_multi = 1.2

//FSpecial Boom Variable
hitbox_spawned = false;
explosion_count = 0;
explosion_cap = 2; //The number of hits in FSpecial.
explosion_type = 0;

snapped = false;

//summon_tracker = array_create(max_summons);

summon_tracker[0] = noone;
summon_tracker[1] = noone;

illusion = noone;

change_color = false;

uspec_cooldown = 14;
uspec_cool_time = 0;

gliding = false;
speed_rune_touched = false;         // For USpecial
spawn_ice = false;                  // For USpecial

fspecial_far = false;
uspecialcap = 0;
uspecialcap_max = 2;

rainbow_color = make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100);

//MISSIONS (Difficult)
//Init.gml
bTut_Missions = true; // This is to enable the feature for your character.
bTut_mssn_total = 7;  //How many trials you want to make for your character. You can add as many as you want.
bTut_mssn_title[0] = "DSpecial";
bTut_mssn_desc[0]  = "Eirlys' DSpecial allows her to place up to two Runes. These affect all of her specials.";
bTut_mssn_title[1] = "USpecial";
bTut_mssn_desc[1]  = "Similar to Ori, Eirlys will spring into the air and slowly float down. If she's in the air, a projectile will appear beneath her. You can control her horizontal movement by holding forward or backwards.";
bTut_mssn_title[2] = "NSpecial";
bTut_mssn_desc[2]  = "Similar to Robin, Eirlys' NSpecial has four different variations. The most powerful, of which, is Aurora. Charging NSpecial functions similarly to Ranno, hold down Special to fully charge your meter.";
bTut_mssn_title[3] = "FSpecial";
bTut_mssn_desc[3]  = "FSpecial is a ranged multi-hitting projectile that costs one charge to use. Its distance can vary by how long you hold special during the start-up. Tap for a short ranged one, hold for a long ranged one.";
bTut_mssn_title[4] = "NSpecial and Runes";
bTut_mssn_desc[4]  = "All of Eirlys Special interact with her runes. NSpecial will bounce between runes before targetting the nearest opponent. The speed will be increased by " + string(speed_multi) + "% and the damage will also be increased by " + string(damage_multi) + "%.";
bTut_mssn_title[5] = "FSpecial and Runes";
bTut_mssn_desc[5]  = "All of Eirlys Special interact with her runes. FSpecial will snap to runes. A Rune will also increase its damage and size.";
bTut_mssn_title[6] = "USpecial and Runes";
bTut_mssn_desc[6]  = "All of Eirlys Special interact with her runes. FSpecial will snap to runes. A Rune will allow Eirlys to act out of cancelling USpecial and will restore her double jumps, she can only do this a max of two times.";

//EXAMPLE TIP
bTut_Tips = true; // This is to enable the feature for your character.
bTut_tips_total = 3; //How many tips you want to show for your character. You can add as many as you want.

bTut_tips_title[0] = "Cancelling NSpecial";
bTut_tips_desc[0] = "When pressing parry, while charging NSpecial, you'll cancel out of the move. You can also turn around during the cancel.";
bTut_tips_title[1] = "DAttack and UStrong Off Ledge";
bTut_tips_desc[1] = "You can use both moves in the air, just input the moves before you fly off of a ledge.";
bTut_tips_title[2] = "FStrong";
bTut_tips_desc[2]  = "FStrong is a unique attack for Eirlys. She'll create an ice clone that will charge forth and strike in front of her. It's similar to Zelda's DSpecial in Super Smash Brothers Ultimate.";

// Reference for Equi (because he dumb baby):
/*
* Thunder - 0 Charges
* Elthunder - 1 Charge
* Arc Thunder - 2 Charges
* THORON - Full Charge
*/

// Character-specific variable initialization could go here

// Stats - comment contains base cast range and notes. all stats are zetterburn's unless specified otherwise in the notes

// Physical size
char_height         = 48;       // not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 5.25;		// 4    -  9
dash_speed          = 5.25;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.45;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4

// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.06;		// 0.02 -  0.07
max_fall            = 9.5;		// 6    -  11
fast_fall           = 13.5;		// 11   -  16
gravity_speed       = 0.45;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        // ???              the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.05;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.25;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not work... dan pls

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 7;
crouch_recovery_frames  = 4;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 1;

roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 1;



// Character-specific sprites init

// Projectile
spr_nspecial_proj = sprite_get("nspecial_proj");

spr_clone_spawn 	= sprite_get("clone_initdash");
spr_clone_dash  	= sprite_get("clone_dash");
spr_clone_startup	= sprite_get("clone_startup");
spr_clone_active	= sprite_get("clone_active");
spr_clone_endlag	= sprite_get("clone_endlag");
spr_clone_die		= sprite_get("roll_clone");
spr_clone_die_dash	= sprite_get("vfx_clonedashing_vanish");

col_arrow = get_player_hud_color(player);

// Rune sprites

spr_speedrune_spawn = sprite_get("runespawn");
spr_speedrune_active = sprite_get("runeactive");
spr_speedrune_shatter = sprite_get("runeshatter");

spr_azrune_spawn = sprite_get("runeazspawn");
spr_azrune_active = sprite_get("runeazactive");
spr_azrune_shatter = sprite_get("runeazshatter");

if get_player_color(player) != 28{
	spr_rune_spawn	 = spr_speedrune_spawn;
	spr_rune_active	 = spr_speedrune_active;
	spr_rune_shatter = spr_speedrune_shatter;
}
else {
	spr_rune_spawn	 = spr_azrune_spawn;
	spr_rune_active	 = spr_azrune_active;
	spr_rune_shatter = spr_azrune_shatter;
}

// Rune (Speed)
sprite_change_collision_mask( "runeactive", false, 2, 50, 50, 93, 93, 2 );

// Rune (Explosion)
sprite_change_collision_mask( "runeboomactive", false, 2, 50, 50, 93, 93, 2 );


// SFX init

// Example
sfx_example = sound_get("example"); // if there were a file called "example.ogg" in the sounds folder, you could do   sound_play(sfx_example);
sfx_snap = sound_get("sfx_snap");

switch(get_player_color(player)){
    case 21:
        sfx_laugh = sound_get("ahaha");
        laugh_loop_max = 1;
        break;
	case 22:
        sfx_laugh = sound_get("sfx_sweetheart_laugh");
        laugh_loop_max = 1;
        break;
    case 24:
        sfx_laugh = sound_get("sfx_hilda_laugh");
        laugh_loop_max = 2;
        break;
    default:
        sfx_laugh = sound_get("sfx_laugh");
        laugh_loop_max = 1;
        break;
}

// VFX init
vfx_example = hit_fx_create(sprite_get("example"), 54); // then you do   spawn_hit_fx(vfx_example);

vfx_roll_clone = hit_fx_create(sprite_get("roll_clone"), 54); // then you do   spawn_hit_fx(vfx_example);
vfx_clonedashing_melt = hit_fx_create(sprite_get("vfx_clonedashing_vanish"), 54); // then you do   spawn_hit_fx(vfx_example);
vfx_charge2_hit = hit_fx_create(sprite_get("charge2_explosion_proj"), 20);
vfx_fspecial_end = hit_fx_create(sprite_get("vfx_fspecial_end"), 36);
vfx_bigfspecial_end = hit_fx_create(sprite_get("vfx_bigfspecial_end"), 36);
vfx_fspecial_start = hit_fx_create(sprite_get("fspecial_detection"), 24);

vfx_hit_small1 = hit_fx_create(sprite_get("vfx_small1"), 18);
vfx_hit_small2 = hit_fx_create(sprite_get("vfx_small2"), 18);
vfx_hit_small3 = hit_fx_create(sprite_get("vfx_small2"), 22);

vfx_hit_med1 = hit_fx_create(sprite_get("vfx_med1"), 22);

vfx_hit_large1 = hit_fx_create(sprite_get("vfx_large1"), 32);

// Hurtbox sprites
hurtbox_spr         = sprite_get("eirlys_hurt_box");
crouchbox_spr       = sprite_get("eirlys_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(CH_ETALUS);
set_victory_theme(sound_get("victory_theme"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_cla"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

HG_TIPPER = 71;
tipperbox_cir_sprite = sprite_get("tipperbox_circle_spr");
tipperbox_rec_sprite = sprite_get("tipperbox_rect_spr");
tipperbox_roundrec_sprite = sprite_get("tipperbox_roundrect_spr");

// Secret Color Hon Hon
secretcolor = (object_index == oTestPlayer);
