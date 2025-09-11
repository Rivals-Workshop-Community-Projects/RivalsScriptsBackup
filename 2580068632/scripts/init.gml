debug = 0;
small_djump = true;
//blastzones
blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

inputs_swapped_toggle = false;
did_swap_inputs = false;

voiced = 0;
voiced_in_vs = false;
normal_voiced_toggle = 0;

dattack_land_var = 0;

dtilt_swipe_fx = hit_fx_create(sprite_get("dtilt_swipe_fx"), 12);

land_index_thingy = 0;

wings_out = false;
wing_jump_timer = 0

mach_tornado_max_loops = 5;
mach_tornado_loop_count = 0;

sangle = 0
tp_angle = 0
tp_dist = 170;  //Distance the teleport will travel.
tp_prec = 8; //The precision of the teleportation algorithm. Larger number will be more accurate, but slower to calculate. 8 is a good balance of speed and precision.
tp_dont = false;

dimensional_cape_hit = false;

shuttle_loop_started_from_ground = false;
shuttle_loop_timer = 300
shuttle_loop_angle = 0
shuttle_loop_can_rise = true
shuttle_loop_can_dive = true
shuttle_loop_vsp_lost = 0
shuttle_loop_is_rising = false
attacking_out_of_shuttle_loop = false;
airdodging_out_of_shuttle_loop = false;
dspecial_out_of_shuttle_loop = false;

condor_dive_timer = 0;
condor_dive_dust_startup_timer = 0;

brawl_mode = has_rune("O");

NESalt_shouldAddBackShading = false;

is_in_playtest = (object_index == oTestPlayer);

if (get_player_color( player ) == 21){
	isAnimeAlt = true;
} else {
	isAnimeAlt = false;
}

//Kirby Ability
kirbyability = 4

// Intro
introTimer = -(3 * player);
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

// ========== stats n shit ==============
hurtbox_spr = sprite_get("meta_hurtbox");
crouchbox_spr = sprite_get("meta_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 38;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .32;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 8;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 3;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 6;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier >

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3
techroll_active_frames = 6;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//SFX Init
music_animeAppear = sound_get("music_animeAppear");
sfx_airdodge = sound_get("sfx_airdodge");
sfx_bair_1 = sound_get("sfx_bair_1");
sfx_bair_2 = sound_get("sfx_bair_2");
sfx_bair_3 = sound_get("sfx_bair_3");
sfx_condor_dive = sound_get("sfx_condor_dive");
sfx_crouch = sound_get("sfx_crouch");
sfx_dair = sound_get("sfx_dair");
sfx_dattack = sound_get("sfx_dattack");
sfx_dimensional_cape_dodge = sound_get("sfx_dimensional_cape_dodge");
sfx_dimensional_cape_strike = sound_get("sfx_dimensional_cape_strike");
sfx_dimensional_cape_use = sound_get("sfx_dimensional_cape_use");
sfx_doublejump = sound_get("sfx_doublejump");
sfx_drill_rush_finish = sound_get("sfx_drill_rush_finish");
sfx_drill_rush_rapid = sound_get("sfx_drill_rush_rapid");
sfx_drill_rush_rapid_last = sound_get("sfx_drill_rush_rapid_last");
sfx_drill_rush_start = sound_get("sfx_drill_rush_rapid_last");
sfx_dtilt = sound_get("sfx_dtilt");
sfx_fair_1 = sound_get("sfx_fair_1");
sfx_fair_2 = sound_get("sfx_fair_2");
sfx_fair_3 = sound_get("sfx_fair_3");
sfx_intro = sound_get("sfx_intro");
sfx_jump = sound_get("sfx_jump");
sfx_krtd_sword_blow1 = sound_get("sfx_krtd_sword_blow1");
sfx_krtd_sword_spin_attack = sound_get("sfx_krtd_sword_spin_attack");
sfx_krtd_sword_swipe1 = sound_get("sfx_krtd_sword_swipe1");
sfx_krtd_sword_swipe2 = sound_get("sfx_krtd_sword_swipe2");
sfx_land = sound_get("sfx_land");
sfx_landinglag = sound_get("sfx_landinglag");
sfx_mach_tornado_end = sound_get("sfx_mach_tornado_end");
sfx_mach_tornado_slash = sound_get("sfx_mach_tornado_slash");
sfx_mach_tornado_start = sound_get("sfx_mach_tornado_start");
sfx_nair = sound_get("sfx_nair");
sfx_parry = sound_get("sfx_parry");
sfx_shuttle_loop_1 = sound_get("sfx_shuttle_loop_1");
sfx_shuttle_loop_2 = sound_get("sfx_shuttle_loop_2");
sfx_shuttle_loop_wind = sound_get("sfx_shuttle_loop_wind");
sfx_smash_brawl_dimensional_cape_strike = sound_get("sfx_smash_brawl_dimensional_cape_strike");
sfx_smash_brawl_glide = sound_get("sfx_smash_brawl_glide");
sfx_smash_brawl_mach_tornado_end = sound_get("sfx_smash_brawl_mach_tornado_end");
sfx_smash_brawl_mach_tornado_slash = sound_get("sfx_smash_brawl_mach_tornado_slash");
sfx_smash_brawl_mach_tornado_start = sound_get("sfx_smash_brawl_mach_tornado_start");
sfx_smash_brawl_shuttle_loop = sound_get("sfx_smash_brawl_shuttle_loop");
sfx_smash_brawl_swipe_mk_1 = sound_get("sfx_smash_brawl_swipe_mk_1");
sfx_smash_brawl_swipe_mk_2 = sound_get("sfx_smash_brawl_swipe_mk_2");
sfx_smash_brawl_swipe_mk_3 = sound_get("sfx_smash_brawl_swipe_mk_3");
sfx_smash_ult_sword_hit_heavy = sound_get("sfx_smash_ult_sword_hit_heavy");
sfx_smash_ult_sword_hit_medium = sound_get("sfx_smash_ult_sword_hit_medium");
sfx_smash_ult_sword_hit_weak = sound_get("sfx_smash_ult_sword_hit_weak");
sfx_smash_ult_sword_swing_heavy = sound_get("sfx_smash_ult_sword_swing_heavy");
sfx_smash_ult_sword_swing_medium = sound_get("sfx_smash_ult_sword_swing_medium");
sfx_smash_ult_sword_swing_medium_2 = sound_get("sfx_smash_ult_sword_swing_medium_2");
sfx_smash_ult_sword_swing_medium_3 = sound_get("sfx_smash_ult_sword_swing_medium_3");
sfx_smash_ult_sword_swing_weak = sound_get("sfx_smash_ult_sword_swing_weak");
sfx_stomp = sound_get("sfx_stomp");
sfx_taunt_wings_1 = sound_get("sfx_taunt_wings_1");
sfx_taunt_wings_2 = sound_get("sfx_taunt_wings_2");
sfx_uair = sound_get("sfx_uair");
sfx_ustrong_1 = sound_get("sfx_ustrong_1");
sfx_ustrong_2 = sound_get("sfx_ustrong_2");
sfx_ustrong_3 = sound_get("sfx_ustrong_3");
sfx_utilt = sound_get("sfx_utilt");
sfx_waveland = sound_get("sfx_waveland");

vc_mk_cape = sound_get("vc_mk_cape");
vc_mk_death_1 = sound_get("vc_mk_death_1");
vc_mk_death_2 = sound_get("vc_mk_death_2");
vc_mk_death_3 = sound_get("vc_mk_death_2");
vc_mk_grunt_1 = sound_get("vc_mk_grunt_1");
vc_mk_grunt_2 = sound_get("vc_mk_grunt_2");
vc_mk_grunt_3 = sound_get("vc_mk_grunt_3");
vc_mk_grunt_4 = sound_get("vc_mk_grunt_4");
vc_mk_grunt_5 = sound_get("vc_mk_grunt_5");
vc_mk_grunt_6 = sound_get("vc_mk_grunt_6");
vc_mk_grunt_7 = sound_get("vc_mk_grunt_7");
vc_mk_hurt_big1 = sound_get("vc_mk_hurt_big1");
vc_mk_hurt_big2 = sound_get("vc_mk_hurt_big2");
vc_mk_hurt1 = sound_get("vc_mk_hurt1");
vc_mk_hurt2 = sound_get("vc_mk_hurt2");
vc_mk_hurt3 = sound_get("vc_mk_hurt3");
vc_mk_jab = sound_get("vc_mk_jab");
vc_mk_jump = sound_get("vc_mk_jump");
vc_mk_shuttle_loop = sound_get("vc_mk_shuttle_loop");
vc_mk_taunt_1 = sound_get("vc_mk_taunt_1");
vc_mk_taunt_2 = sound_get("vc_mk_taunt_2");
vc_mk_taunt_3 = sound_get("vc_mk_taunt_3");

voicelineHurtCD = 0;

land_sound = sfx_land
landing_lag_sound = sfx_landinglag
waveland_sound = sfx_waveland
jump_sound = sfx_jump
djump_sound = sfx_doublejump
air_dodge_sound = sfx_airdodge

if (brawl_mode){

	max_djumps = 4;

	sfx_smash_ult_sword_swing_heavy = sound_get("sfx_smash_brawl_swipe_mk_3");
	sfx_smash_ult_sword_swing_medium = sound_get("sfx_smash_brawl_swipe_mk_2");
	sfx_smash_ult_sword_swing_weak = sound_get("sfx_smash_brawl_swipe_mk_1");
	
	sfx_krtd_sword_spin_attack = sound_get("sfx_smash_brawl_swipe_mk_3");
	sfx_krtd_sword_swipe1 = sound_get("sfx_smash_brawl_swipe_mk_1");
	sfx_krtd_sword_swipe2 = sound_get("sfx_smash_brawl_swipe_mk_2");
	
	sfx_dtilt = sound_get("sfx_smash_brawl_swipe_mk_1");
	sfx_utilt = sound_get("sfx_smash_brawl_swipe_mk_1");
	
	sfx_bair_1 = sound_get("sfx_smash_brawl_swipe_mk_3");
	sfx_bair_2 = sound_get("sfx_smash_brawl_swipe_mk_1");
	sfx_bair_3 = sound_get("sfx_smash_brawl_swipe_mk_3");
	sfx_fair_1 = sound_get("sfx_smash_brawl_swipe_mk_2");
	sfx_fair_2 = sound_get("sfx_smash_brawl_swipe_mk_2");
	sfx_fair_3 = sound_get("sfx_smash_brawl_swipe_mk_2");
	sfx_nair = sound_get("sfx_smash_brawl_swipe_mk_2");
	sfx_uair = sound_get("sfx_smash_brawl_swipe_mk_1");
	sfx_dair = sound_get("sfx_smash_brawl_swipe_mk_1");
	
	sfx_ustrong_1 = sound_get("sfx_smash_brawl_swipe_mk_1");
	sfx_ustrong_2 = sound_get("sfx_smash_brawl_swipe_mk_2");
	sfx_ustrong_3 = sound_get("sfx_smash_brawl_swipe_mk_3");
	
	sfx_mach_tornado_end = sound_get("sfx_smash_brawl_mach_tornado_end");
	sfx_mach_tornado_slash = sound_get("sfx_smash_brawl_mach_tornado_slash");
	sfx_mach_tornado_start = sound_get("sfx_smash_brawl_mach_tornado_start");
	
	sfx_dimensional_cape_strike = sound_get("sfx_smash_brawl_dimensional_cape_strike");
	
	vc_mk_taunt_1 = sound_get("vc_mk_taunt_2");
	vc_mk_taunt_3 = sound_get("vc_mk_taunt_2");
}

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if (get_player_color( player ) != 4 && get_player_color( player ) != 20 && get_player_color( player ) != 21 && get_player_color( player ) != 22){
	set_victory_theme(sound_get("victory"));
}

if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	if (brawl_mode){
		set_victory_portrait( sprite_get( "portrait_brawl" ));
		set_victory_sidebar( sprite_get( "result_small" ));
	} else if (!brawl_mode){
		set_victory_portrait( sprite_get( "portrait" ));
		set_victory_sidebar( sprite_get( "result_small" ));
	}
}
set_victory_portrait( sprite_get( "portrait" ));
set_victory_sidebar( sprite_get( "result_small" ));
switch (get_player_color( player )){
	case 4:
		set_victory_theme(sound_get("victory_dark"));
	case 7:
		//set_victory_theme(sound_get("victory_ea"));
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
	case 21:
		set_victory_theme(sound_get("music_animeAppear"));
		break;
}

if (brawl_mode){
	set_victory_theme(sound_get("victory_brawl"));
}

// home stage stuff
isOnHalberd = false;
if (get_stage_data( SD_ID ) == 2580068913){
	isOnHalberd = true;
}

// idle fidget
wait_time = 256;	// time it takes in frames to start the idle fidget
wait_length = (30 * 5);	// how long the idle fidget takes, in frames. there's now way to adjust the frame rate for this. i hate rivals
wait_sprite = sprite_get("idle_wait"); 

//Compatability
otto_bobblehead_sprite = sprite_get("otto");
steve_death_message = "Steve had a Meta Knightmare";
link_spear_drop = 2;
Hikaru_Title = "Star Warrior";
personaQuips[10] = "Victory... is my destiny.";
tcoart = sprite_get("tco_sketch");
ncode1 = "A mysterious swordsman from Dream Land.";
ncode2 = "Attacks with lightning fast sword attacks.";
ncode3 = "Keep your guard up.";
arena_title = "The Lone Swordsman";
arena_short_name = "Meta Knight";
battle_text = "* You begin to feel tense just by looking at the masked swordsman.";
miiverse_post = sprite_get("miiverse");

// The Knight (Reiga) Dream Nail Dialogue
knight_compat_dream = 
    [
        "Victory is my destiny.",
        "Pick up your sword, and let us duel.",
        "Another Knight... hmph."
    ]

//
boxing_title = "The Lone 
Swordsman";
//pokemon stadium
pkmn_stadium_name_override = "meta k.";
pkmn_stadium_front_img = sprite_get("metaknight_front")
pkmn_stadium_back_img = sprite_get("metaknight_back")

//Trial grounds
guiltySprite = sprite_get("metaknight_trial")

//Po and Gumbo
pot_compat_text = "Meta Knight Chocolate Fondant"
pot_compat_variable = sprite_get("Meta_knight_food");

//Feri
feri_costume = sprite_get("Feri_meta_cosplay");

//Adventure Mode lol
pronouns = ["he","him",];

in_adventure = false;
should_do_intro = true;
hit_player_event = 2;

am_is_fire = false;			//- Is a fire elemental - fire, plasma, smoke, cooking
am_is_water	= false;		//- Is a water elemental - water, ice, poison, sweat
am_is_air	= false;		//- Is an air elemental - wind, music, thunder, pure rage
am_is_earth	= false;		//- Is an earth elemental - rock, plant, plant, crystal
am_is_aether = false;	//- Is an aether elemental - Space, mysticism
am_is_abyssal = false;	//- Is a creature of the abyss
am_is_subterranain = false;	//- Is from the underground
 
am_is_verbal = true;		//- Is capable of speaking complex languages
am_is_noob = false;			//- Is unfamiliar with things or naieve
am_is_experienced = true; 	//- Does exude experience

am_is_future = false;		//- Is this character from a future?
am_is_past = false;			//- Is this character from the past?
am_is_myth = false;			//- Is this character part of a mythos?

am_is_evil = false;			//- Has a self-centered moral compass
am_is_chaotic = false;		//- Has a particularly flexible moral compass
am_is_insane = false;		//- Experiences reality in a unique way

am_is_undead = false;		//- Was dead... now is not
am_is_construct = false;		//- Is living through "unnatural" means aka " purpose-built"
am_is_magic = false;			//- Is supernatural in a magical way
am_is_big = false;			//- Is this character much larger than average?
am_is_small = true;			//- Is this character much smaller than average?
am_is_handed = true;		//- Does this character have appendages to hold things with?

am_is_guest = true;			//- Is this character not an atherian local?

am_is_realitybreak = false;	//- Is this character a casual reality manipulator?
am_is_not = false;			//- They do not belong. They shouldn't be here. They do not belong. They shouldn't be here. They do not belong. They shouldn't be here.

user_event(7);

initIndexes();

//Below code from MunoPhone API.
#define initIndexes()

// Custom indexes

AT_PHONE = 40;

i = 80;

// NOTE: All overrides for the frame data guide should be strings. Any non-applicable (N/A) values should be entered as "-"

// General Attack Indexes
AG_MUNO_ATTACK_EXCLUDE = i; i++;		// Set to 1 to exclude this move from the list of moves
AG_MUNO_ATTACK_REFRESH = i; i++;		// Set to 1 to refresh this move's data every frame while the frame data guide is open
AG_MUNO_ATTACK_NAME = i; i++;			// Enter a string to override move name
AG_MUNO_ATTACK_FAF = i; i++;			// Enter a string to override FAF
AG_MUNO_ATTACK_ENDLAG = i; i++;			// Enter a string to override endlag
AG_MUNO_ATTACK_LANDING_LAG = i; i++;	// Enter a string to override landing lag
AG_MUNO_ATTACK_MISC = i; i++;			// Enter a string to OVERRIDE the move's "Notes" section, which automatically includes the Cooldown System and Misc. Window Traits found below
AG_MUNO_ATTACK_MISC_ADD = i; i++;		// Enter a string to ADD TO the move's "Notes" section (preceded by the auto-generated one, then a line break)

// Adding Notes to a move is good for if a move requires a long explanation of the data, or if a move overall has certain behavior that should be listed such as a manually coded cancel window

// General Window Indexes
AG_MUNO_WINDOW_EXCLUDE = i; i++;		// 0: include window in timeline (default)    1: exclude window from timeline    2: exclude window from timeline, only for the on-hit time    3: exclude window from timeline, only for the on-whiff time
AG_MUNO_WINDOW_ROLE = i; i++;			// 0: none (acts identically to AG_MUNO_WINDOW_EXCLUDE = 1)   1: startup   2: active (or BETWEEN active frames, eg between multihits)   3: endlag
AG_MUNO_ATTACK_USES_ROLES = i; i++;		// Must be set to 1 for AG_MUNO_WINDOW_ROLE to take effect

// If your move's windows are structured non-linearly, you can use AG_MUNO_WINDOW_ROLE to force the frame data system to parse the window order correctly.

// Cooldown System (do this instead of manually setting in attack_update, and cooldown/invul/armor will automatically appear in the frame data guide)
AG_MUNO_ATTACK_COOLDOWN = i; i++;		// Set this to a number, and the move's move_cooldown[] will be set to it automatically. Set it to any negative number and it will refresh when landing, getting hit, or walljumping. (gets converted to positive when applied)
AG_MUNO_ATTACK_CD_SPECIAL = i; i++;		// Set various cooldown effects on a per-attack basis.
AG_MUNO_WINDOW_CD_SPECIAL = i; i++;		// Set various cooldown effects on a per-window basis.
AG_MUNO_WINDOW_INVUL = i; i++;			// -1: invulnerable    -2: super armor    above 0: that amount of soft armor

/*
 * AG_MUNO_ATTACK_CD_SPECIAL values:
 * - 1: the cooldown will use the phone_arrow_cooldown variable instead of move_cooldown[attack], causing it to display on the overhead player indicator; multiple attacks can share this cooldown.
 * - 2: the cooldown will use the phone_invis_cooldown variable instead of move_cooldown[attack], which doesn't display anywhere (unless you code your own HUD element) but does allow you to share the cooldown between moves.
 * 
 * AG_MUNO_WINDOW_CD_SPECIAL values:
 * - 1: a window will be exempted from causing cooldown. It is HIGHLY RECOMMENDED to do this for any startup windows, so that the cooldown doesn't apply if you're hit out of the move before being able to use it.
 * - 2: a window will reset the cooldown to 0.
 * - 3: a window will set cooldown only if the has_hit	      variable is false, and set it to 0 if has_hit        is true.
 * - 4: a window will set cooldown only if the has_hit_player variable is false, and set it to 0 if has_hit_player is true.
 */

i = 80;

HG_MUNO_HITBOX_EXCLUDE = i; i++;		// Set to 1 to exclude this hitbox from the frame data guide
HG_MUNO_HITBOX_NAME = i; i++;			// Enter a string to override hitbox name

HG_MUNO_HITBOX_ACTIVE = i; i++;			// Enter a string to override active frames
HG_MUNO_HITBOX_DAMAGE = i; i++;			// Enter a string to override damage
HG_MUNO_HITBOX_BKB = i; i++;			// Enter a string to override base knockback
HG_MUNO_HITBOX_KBG = i; i++;			// Enter a string to override knockback growth
HG_MUNO_HITBOX_ANGLE = i; i++;			// Enter a string to override angle
HG_MUNO_HITBOX_PRIORITY = i; i++;		// Enter a string to override priority
HG_MUNO_HITBOX_GROUP = i; i++;			// Enter a string to override group
HG_MUNO_HITBOX_BHP = i; i++;			// Enter a string to override base hitpause
HG_MUNO_HITBOX_HPG = i; i++;			// Enter a string to override hitpause scaling
HG_MUNO_HITBOX_MISC = i; i++;			// Enter a string to override the auto-generated misc notes (which include misc properties like angle flipper or elemental effect)
HG_MUNO_HITBOX_MISC_ADD = i; i++;		// Enter a string to ADD TO the auto-generated misc notes, not override (line break will be auto-inserted)

// Misc. Hitbox Traits
HG_MUNO_OBJECT_LAUNCH_ANGLE = i; i++;	// Override the on-hit launch direction of compatible Workshop objects, typically ones without gravity. For example, Otto uses this for the ball rehit angles. Feel free to code this into your attacks, AND to support it for your own hittable articles.

/* Set the obj launch angle to:
 * - -1 to send horizontally away (simulates flipper 3, angle 0)
 * - -2 to send radially away (simulates flipper 8)
 */

/*