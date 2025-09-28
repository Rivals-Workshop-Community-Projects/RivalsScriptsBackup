//Intro Code
introTimer = -3;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

//Pokemon Stadium Stuff
pkmn_stadium_front_img = sprite_get("pkmn_front")
pkmn_stadium_back_img = sprite_get("pkmn_back")
pkmn_stadium_name_override = "Sonic"

//Greenflower Zone Signpost
gfzsignspr = sprite_get("gfz_signpost")

//Otto Functionality
otto_bobblehead_sprite = sprite_get("ottothing");

//Kirby Functionality
kirbyability = 16;
enemykirby = undefined

//Trummel Codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//Miiverse Art
miiverse_post = sprite_get("miiverse");

//Hikaru Title
Hikaru_Title = "The Wind's Vessel";

//Dedede Arena Title
arena_title = "The Blue Blur";

//Agent N Codec
ncode1 = "The Fastest Thing alive, according to legend."
ncode2 = "Has unparalleled movement speed and unpredictable"
ncode3 = "tactics. Be ready for anything."

//Debug Shit
debugon = 0
debugwindow = 0
debugichi = 0
debug = 0

//Abyss Homing Attack Rune
runehoming = 0

//Ichikoro Gauge (Wait, why is this still here?)
ichigauge = 0

//afterimageon?
afterimage = 0
aftertimer = 1

//Dair
dairloopepic = 0
dairdj = 0
dairad = 0
dairusp = 0
dairspnd = 0

//Voiced Toggle
voiced = 0

//Seasonal
wearing_hat = get_player_color(player) == 33;

//Spring Destroy Effect
spring_break_fx = hit_fx_create(asset_get("cool_explosion"),40);

//Wall Run Shit
wallrunloop = 0

//Initalizing Sonic's Variables
homingpose = 0
spindash_jumptimer = 0
spindash_charge_current = 0
spindash_charge_max = 10
spindash_charge_used = false;
spindash_loop = 0

lightdash_charge_current = 0
lightdash_charge_max = 5
lightspeeddash = 0
lightspeeddash_max = 1
lightspeedeffecttimer = 1

lightspeed_dir = 0
lightspeed_hold = 0
lightspeed_bounce = 0
lightspeed_dir_y = 0
lightspeed_started_on_ground = false
lightspeed_hitwithstronghitbox = false

wallrunallowed = false

hyperyes = 0
hypertimer = 0
hypertimer_max = 30
hypercolor = 1
hypercolor_max = 10
soumloop = 0
springsfxbouncething = 0
springlockout = 0
springy = 0
ricegaming = place_meeting(x, y, obj_article2)
didriceallowthespringtobejumpedon = false

homingAttackPose = 1;
//**************************************************************
//New
longest_id = noone;
homing_x = x;
homing_y = y;
homing_vsp = 0;
homing_hsp = 0;
reticle_spr = sprite_get("homing_reticle")
//**************************************************************

//TCO Compatibility
tcoart = sprite_get("tcoart");

hurtbox_spr = sprite_get("hurtbox_ground");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = sprite_get("hurtbox_ground");
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = 0.18;
crouch_anim_speed = .05;
walk_anim_speed = .22;
dash_anim_speed = 0.48;
pratfall_anim_speed = .25;

walk_speed = 4.25;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 10;
dash_speed = 10;
dash_turn_time = 20;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .9; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 8;
walljump_time = 15;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5
hitstun_grav = .50;
knockback_adj = 1.10; //the multiplier to KB dealt to you.

land_time = 4; //normal landing frames
prat_land_time = 30;
wave_land_time = 8;
wave_land_adj = 1.45; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = roll_forward_startup_frames;
roll_back_active_frames = roll_forward_active_frames;
roll_back_recovery_frames = roll_forward_recovery_frames;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

//tech roll animation frames
techroll_startup_frames = roll_forward_startup_frames;
techroll_active_frames = roll_forward_active_frames;
techroll_recovery_frames = roll_forward_recovery_frames;
techroll_speed = 10;

//walljump frames
wall_frames = 2

waveland_sound = sound_get("waveland");
air_dodge_sound = sound_get("airdodge");

//Double Jump SFX Change
if (get_player_color( player ) == 12){
	djump_sound = sound_get("sfx_sonic_doublejump_retro");
} else if (get_player_color( player ) != 7 || get_player_color( player ) != 12){
	djump_sound = sound_get("sfx_sonic_doublejump");
}

//Land SFX Change
if (get_player_color( player ) == 12){
	land_sound = sound_get("sfx_sonic_land_retro");
	landing_lag_sound = sound_get("sfx_sonic_land_retro");
} else if (get_player_color( player ) != 12){
	land_sound = sound_get("sfx_sonic_land");
	landing_lag_sound = sound_get("sfx_sonic_land");
}

//Victory Theme Change
if (get_player_color( player ) == 1){
	set_victory_theme(sound_get("sonic_victory_classic"));
} else if (get_player_color( player ) == 2){
	set_victory_theme(sound_get("sonic_victory_knuckles"));
} else if (get_player_color( player ) == 4){
	set_victory_theme(sound_get("sonic_victory_fighters"));
} else if (get_player_color( player ) == 5){
	set_victory_theme(sound_get("sonic_victory_blaze"));
} else if (get_player_color( player ) == 12){
	set_victory_theme(sound_get("sonic_victory_retro"));
}	else if (get_player_color( player ) != 1 && get_player_color( player ) != 2 && get_player_color( player ) != 4 && get_player_color( player ) != 12){
	set_victory_theme(sound_get("sonic_victory_normal"));
}

gay = false;


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