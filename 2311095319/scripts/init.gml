//Kirby Ability
kirbyability = 16

//Coin Effect
coin_effect = hit_fx_create(sprite_get("coineffect"),33);

//Debug
debug = 0;

//Undershirt Stuff
isundershirtunfixed = false

//Voiced Mode Stuff
//0 is false, 1 is true.
voiced = 0;
voiced_in_vs = false;
normal_voiced_toggle = 0;

deathvoiceline = 0

// intro
playerNumDiff = (3 * (player - 1));
intro_pipe_leave = hit_fx_create(sprite_get("intro_pipe_leave"), 14);

introTimer = -16 - playerNumDiff;
introTimer2 = 0;
stupidIntroJumpVariable = -20;
stupidJumpGravityThing = -25;
introShouldPlayPipeLeavingThingy = 0;

//print("player NUM: " + string(player) + ", uh erm introTimer init: " + string(introTimer));

theIntroFakeGravityValue = -15;
theIntroFakeGravManip = 0;
theIntroFakeVerticalPartStuff = 10;
theIntroOtherTimer = 0;
theIntroWhichPartAmIOn = 0;

voicelinework = 0

playedVoiceClip = noone;
hasRecentlyHitsSomeoneTimer = 0;

hurtVoiceClipAlreadyPlayed = false;

phone_voiced_toggle = 0

//Dash Attack Slide Visual Effect
//Why is this even here lol im not using this in the actual build
dattack_veffect = hit_fx_create( sprite_get( "dattack_slideeffect" ), 16 );

//Dash Attack
da_cheat_active = false;

//Forward Tilt
ftilthatputbackontimer = 0;

//Forward Air
fair_cheat_active = false;

//Down Air: Stomp
dairtimeshit = 0;

//Up Strong
ustrong_charge = -4;

//Neutral Special: Fireball
firecharge = 0
hasfirebrand = false
fireball_explode = hit_fx_create(sprite_get("fireball_explode"), 12);
firebrand_cheat = 0
fireball_charge_needed_for_firebrand = 5
fireball_normal_explode = hit_fx_create(sprite_get("fireball_normal_explode"),22);
fireball_big_explode = hit_fx_create(sprite_get("fireball_big_explode"),16);

//Forward Special: Dive
divelandtimesfx = 0

// Up Special: Super Jump Punch
uspecGrabbedPlayer = noone;

//Down Special: Mario Tornado
tornadospin = 0;
tornadoboost = false;
tornadoboosttimes = 0;
tornadoused = false;
tornadoair = false;
tornado_cheat_active = false;

//is mario shadow
shadowmario = false;

//Hurtbox Stuff
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Anim Variables
char_height = 52;
idle_anim_speed = .18;
crouch_anim_speed = .1;
walk_anim_speed = .22;
dash_anim_speed = .24;
pratfall_anim_speed = .25;

//Walk + Dash Variables
walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.2;

//Jumps + Grav. Variables
jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 3;
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier >

//Landing Variables
land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .075; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//SFX Init
sfx_1up = sound_get("sfx_1up");
sfx_airdodge = sound_get("sfx_airdodge");
sfx_bair = sound_get("sfx_bair");
sfx_cappy_toss = sound_get("sfx_cappy_toss");
sfx_coin = sound_get("sfx_coin");
sfx_crouch = sound_get("sfx_crouch");
sfx_dashstart = sound_get("sfx_dashstart");
sfx_dashstop = sound_get("sfx_dashstop");
sfx_dattack = sound_get("sfx_dattack");
sfx_doublejump = sound_get("sfx_doublejump");
sfx_empty = sound_get("sfx_empty");
sfx_fair_spike = sound_get("sfx_fair_spike");
sfx_firebrand_use = sound_get("sfx_firebrand_use");
sfx_hammer_blow = sound_get("sfx_hammer_blow");
sfx_hammer_land = sound_get("sfx_hammer_land");
sfx_hammer_swing = sound_get("sfx_hammer_swing");
sfx_jump = sound_get("sfx_jump");
sfx_land = sound_get("sfx_land");
sfx_landing_lag = sound_get("sfx_landing_lag");
sfx_mario_intro = sound_get("sfx_mario_intro");
sfx_mario_fireball = sound_get("sfx_mario_fireball");
sfx_mario_fireball_big = sound_get("sfx_mario_fireball_big");
sfx_mario_fireball_charge = sound_get("sfx_mario_fireball_charge");
sfx_mario_fireball_charge_full = sound_get("sfx_mario_fireball_charge_full");
sfx_mario_fireball_hit = sound_get("sfx_mario_fireball_hit");
sfx_mario_tornado1 = sound_get("sfx_mario_tornado1");
sfx_mario_tornado2 = sound_get("sfx_mario_tornado2");
sfx_stomp = sound_get("sfx_stomp");
sfx_tanooki_equip = sound_get("sfx_tanooki_equip");
sfx_tanooki_swipe = sound_get("sfx_tanooki_swipe");
sfx_uair = sound_get("sfx_uair");
sfx_upspecial = sound_get("sfx_upspecial");
sfx_uptaunt_grow = sound_get("sfx_uptaunt_grow");
sfx_uptaunt_shrink = sound_get("sfx_uptaunt_shrink");
sfx_walljump = sound_get("sfx_walljump");
sfx_waveland = sound_get("sfx_waveland");

//Voice Clips
vc_mario_attack_1 = sound_get("vc_mario_attack_1");
vc_mario_attack_2 = sound_get("vc_mario_attack_2");
vc_mario_attack_3 = sound_get("vc_mario_attack_3");
vc_mario_attack_4 = sound_get("vc_mario_attack_4");
vc_mario_attack_5 = sound_get("vc_mario_attack_5");
vc_mario_attack_6 = sound_get("vc_mario_attack_6");
vc_mario_attack_7 = sound_get("vc_mario_attack_7");
vc_mario_attack_8 = sound_get("vc_mario_attack_8");
vc_mario_attack_9 = sound_get("vc_mario_attack_9");
vc_mario_doh = sound_get("vc_mario_doh");
vc_mario_doublejump_1 = sound_get("vc_mario_doublejump_1");
vc_mario_doublejump_2 = sound_get("vc_mario_doublejump_2");
vc_mario_doublejump_3 = sound_get("vc_mario_doublejump_3");
vc_mario_fantastico = sound_get("vc_mario_fantastico");
vc_mario_grunt = sound_get("vc_mario_grunt");
vc_mario_haha = sound_get("vc_mario_haha");
vc_mario_herewego = sound_get("vc_mario_herewego");
vc_mario_hooh = sound_get("vc_mario_hooh");
vc_mario_hurt_1 = sound_get("vc_mario_hurt_1");
vc_mario_hurt_2 = sound_get("vc_mario_hurt_2");
vc_mario_hurt_3 = sound_get("vc_mario_hurt_3");
vc_mario_hurt_4 = sound_get("vc_mario_hurt_4");
vc_mario_i_got_it = sound_get("vc_mario_i_got_it");
vc_mario_itsame = sound_get("vc_mario_itsame");
vc_mario_jump_1 = sound_get("vc_mario_jump_1");
vc_mario_jump_2 = sound_get("vc_mario_jump_2");
vc_mario_jump_3 = sound_get("vc_mario_jump_3");
vc_mario_jump_4 = sound_get("vc_mario_jump_4");
vc_mario_mamma_mia = sound_get("vc_mario_mamma_mia");
vc_mario_letsago = sound_get("cssvoice");
vc_mario_oh = sound_get("vc_mario_oh");
vc_mario_ohno = sound_get("vc_mario_ohno");
vc_mario_ohyeah = sound_get("vc_mario_ohyeah");
vc_mario_ohyeah_2 = sound_get("vc_mario_ohyeah_2");
vc_mario_ooaah = sound_get("vc_mario_ooaah");
vc_mario_oof = sound_get("vc_mario_oof");
vc_mario_sleep1 = sound_get("vc_mario_sleep1");
vc_mario_sleep2 = sound_get("vc_mario_sleep2");
vc_mario_starko = sound_get("vc_mario_starko");
vc_mario_strong_1 = sound_get("vc_mario_strong_1");
vc_mario_strong_2 = sound_get("vc_mario_strong_2");
vc_mario_strong_3 = sound_get("vc_mario_strong_3");
vc_mario_strong_4 = sound_get("vc_mario_strong_4");
vc_mario_strong_charge_1 = sound_get("vc_mario_strong_charge_1");
vc_mario_tired = sound_get("vc_mario_tired");
vc_mario_uhh = sound_get("vc_mario_uhh");
vc_mario_wah = sound_get("vc_mario_wah");
vc_mario_wahah = sound_get("vc_mario_wahah");
vc_mario_wahoo_1 = sound_get("vc_mario_wahoo_1");
vc_mario_wahoo_2 = sound_get("vc_mario_wahoo_2");
vc_mario_wahoo_3 = sound_get("vc_mario_wahoo_3");
vc_mario_woah = sound_get("vc_mario_woah");
vc_mario_yah = sound_get("vc_mario_yah");
vc_mario_yah_short = sound_get("vc_mario_yah_short");
vc_mario_yahoo = sound_get("vc_mario_yahoo");
vc_mario_yaowow = sound_get("vc_mario_yaowow");
vc_mario_yeah = sound_get("vc_mario_yeah");
vc_mario_yeehaw = sound_get("vc_mario_yeehaw");

//ok these are base game sfx but this is for easy use for changing shit with shadow mario fstrong.
sfx_hammer_hit_normal = asset_get("sfx_shovel_hit_heavy2")
sfx_hammer_hit_spike = asset_get("sfx_shovel_hit_heavy1")

//stuffs
land_sound = sfx_land;
landing_lag_sound = sfx_landing_lag;
waveland_sound = sfx_waveland;
//jump_sound = sfx_empty;
jump_sound = sfx_jump;
djump_sound = sfx_doublejump;
air_dodge_sound = sfx_airdodge;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Victory Themes
if (get_player_color( player ) == 4){
	set_victory_theme(sound_get("victory_galaxy"));
} else if (get_player_color( player ) == 29){
	set_victory_theme(sound_get("victory_smb3"));
} else if (get_player_color( player ) == 28){
	set_victory_theme(sound_get("victory_retro"));
} else {
	set_victory_theme(sound_get("victory"));
}
//set_victory_theme(sound_get("victory"));


//Is Shadow Mario?
if (get_player_color( player ) == 12 || get_player_color( player ) == 25){
	shadowmario = true;
} else {
	shadowmario = false;
}

//Compatability
otto_bobblehead_sprite = sprite_get("otto");
steve_death_message = "Steve got stomped";
Hikaru_Title = "Leaping Plumber";
tcoart = sprite_get("tco_sketch");
ncode1 = "Reisdent and hero of the Mushroom Kingdom.";
ncode2 = "Known for jumping on enemies and transforming.";
ncode3 = "Very agile for some reason.";
sprite_change_offset("miiverse", 60, 30);
miiverse_post = sprite_get("miiverse");
arena_title = "Mr. Video Game Himself";
arena_short_name = "Mario";
battle_text = "* Mario leaps into sight!";
has_fail = true;
fail_text = "Looks like you needed one of those extra lives.";

// The Knight (Reiga) Dream Nail Dialogue
knight_compat_dream = 
    [
        "Ah, Spaghetti... Ah, Ravioli...",
        "It's-a-me, Mario!",
        "Wahoo! Let's-a-go!"
    ]
	
// idle fidget
wait_time = 222;	// time it takes in frames to start the idle fidget
wait_length = (24 * 5);	// how long the idle fidget takes, in frames. there's now way to adjust the frame rate for this. i hate rivals
wait_sprite = sprite_get("idle_wait"); 
	
	
// frame data woodcock stuff

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