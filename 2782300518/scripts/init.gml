hurtbox_spr = sprite_get("carol_hurtbox_standing");
crouchbox_spr = sprite_get("carol_hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .2;
crouch_anim_speed = .12;
walk_anim_speed = .25;
dash_anim_speed = .2;
pratfall_anim_speed = .25;
wait_time = 400;
wait_length = 80;
wait_sprite = sprite_get("wait");
wait_idle_pick = 0;
voice_protection = false;
idle_index = 36;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.77;
dash_speed = 7.2;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 16;
walljump_number = 0;
walljump_limit = 3;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

refreshHitbox = false;

//Custom attack indexes names:
AT_JAB2 = AT_NTHROW;
AT_FTILT2 = AT_FTHROW;
AT_UTILT2 = AT_UTHROW;
AT_DTILT2 = AT_DTHROW;
AT_NAIR2 = 44;
AT_FAIR2 = 43;
AT_UAIR2 = 42;
AT_DAIR2 = AT_EXTRA_1
AT_BAIR2 = 39;
AT_DATTACK2 = 3;

//Below code from MunoPhone API.
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

//Tail Sprite Stuff
tsprite_index=-1;
timage_index=0;
timage_number=0;
timage_speed=1;
tx=0;
ty=0;
tsx=1;
tsy=1;
trotation=0;
tfront=false;

//Bike Sprite Stuff
bsprite_index = -1;
bimage_index=0;
bimage_number=0;
bimage_speed=1;
bx=0;
by=0;
bsx=1;
bsy=1;
brotation=0;
bfront=false;
bshader = true;

//Motorbike related variables
motorbike = false;
bikeReady = 2;
fuel = 40;
fuel_charge = 0;
fuel_burn = 0;
fuel_remaining = 0;
bike_hit = false;
bike_hit_timer=0;
damageCheck=false;
smokeCounter = 0;
bike_state_timer = 0;
thrownBike = noone;
bike_sp = 0;
nBoostReadyTimer = 100;
wall_ride = false;
bike_stored = false;
bike = noone;

//Miscellaneous
hitConfirm = false;
dst = 0;
outline_charge = 0;
updateWallJump = 0;
afterimage_array = 0;
playtest_active = false;
with (oTestPlayer) playtest_active = true;

//Practice mode
practice = false;      //Whether you're in Practice Mode or not.
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.
practice_hud_clearance = 0;

//Dodge voice variables
dodgeTime=0;
dodgeJumpCD=0;
dodgeCounter=0;
dodgeTaunt= false;

//Additional variables
feline_power = true;
comboCounter = 0;
moveDisc = true;
cancelMomentum = false;
Fspecial_positionX = 0;
Fspecial_positionY = 0;
vsp_tracker = 0;
chargeUpVoiceLine = true;

//Galaxy Effect
galaxy_effect = noone;
galaxy_effect_sprite_index = -1;

//Debug Variable
debugCheck = false;

//Extras
pkmn_stadium_front_img = sprite_get("pkmn_carol_front");
pkmn_stadium_back_img = sprite_get("pkmn_carol_back");
btt_get_data = "false";
hikaru_title = "The Kung-Fu Kitty";
arena_title = "The Kung-Fu Kitty";
boxing_title = "The Kung-Fu Kitty";
arena_short_name = "Carol";
battle_text = "You want to pretend to pee really badly";
miiverse_post = sprite_get("miiverse_post");
uhc_victory_quote = "chek ot mai deviantart oc donut steel";
kf_hud_offset = -34;
copy_ability_id = 12;
sna_interrogated_line_01 = "I'll tell ya... for the right price!"; // Snake interrogation line 1.
sna_interrogated_line_02 = "I have some nice cookies if you let me go!"; // Snake interrogation line 2.
sna_interrogated_line_03 = "I REALLY need to pee right now!"; // Snake interrogation line 2.
plushForAmber = sprite_get("amber_plush");
TCG_Kirby_Copy = 4;
walle_taunt_sound = sound_get("jade_creek");
walle_taunt_type = 1;
has_fail = true;
fail_text = "Beaten by a cat, pathetic";
greenwood_cheer = 1;
naruto_sexyjutsu_gender = 2;
gfzsignspr = sprite_get("carol_sign");
pot_compat_variable = sprite_get("cat_food");
pot_compat_text = "Cat Food";
mamizou_transform_spr = sprite_get("real_cat");
draw_hud_event = 12;
guiltySprite = sprite_get("guilty_carol");
mario_cap_compat = sprite_get("cappytaunt_carol");
mario_cap_top_compat = sprite_get("cappytaunt_head_carol");
wiimote_stage_sprite = sprite_get("carol_lego_wiimote");
wiimote_compat_sprite = sprite_get("carol_wiimote");
assistATIndex = 29; //46 is a bike move, changing this so that Carol can use her moveset
boris_intro_sfx = sound_get("carol_grounded");
boris_intro_loop = 14;
wily_robotmaster_img = sprite_get("wily_castle_sprite"); 
wily_flicker_col = /*#*/$b838a0;
neutralized_ability = "Bike"
koffing_gas_active = 0;

knight_compat_dream = 
    [
        "And so the world famous Carol Tea claims yet another prize!",
        "Ugh this stupid insect is really bugging me",
        "Maybe if I get myself a new engine for my bike I can outspeed Lilac!"
    ]

dracula_portrait = sprite_get("dracula_port1");
dracula_portrait2 = sprite_get("dracula_port2");
dracula_check = false;


kart_sprite = sprite_get("carol_rc")
kart_frames= 1
kart_anim_speed= 1
kart_anim_speed_scaling = 1;
kart_engine_sound = 2;
kart_drift_spr = 2

//Howzit Compatibility
howzitisthebestshopowner123 = true //activates the compatibility

howzittaunttextarr[0] = "Howzit going, want to buy 
something?";
howzitautoforward[0] = 0;
howzittaunttextarr[1] = "No, I don't have any shiny 
golden motorbikes."
howzitautoforward[1] = 0;
howzittaunttextarr[2] = "However there might be 
something else you like.";
howzitautoforward[2] = 0;
howzittaunttextarr[3] = "I'm sorry miss, we don't 
have what you're after here.";
howzitautoforward[3] = 0;
howzittaunttextarr[4] = "Maybe next time.";
howzitautoforward[4] = 0;

howzithasnotso = false;
hit_player_event = 13;

powerBack=hit_fx_create(sprite_get("power_back"), 26);
sparkle=hit_fx_create(sprite_get("sparkle"), 30);
disc_hit= hit_fx_create(sprite_get("disc_hit"), 15);
bike_smokeH=hit_fx_create(sprite_get("bike_smokeH"), 12);
bike_smokeD=hit_fx_create(sprite_get("bike_smokeD"), 12);
bike_smokeV=hit_fx_create(sprite_get("bike_smokeD"), 12);
dair_aftereffect=hit_fx_create(sprite_get("dair_after_effect"), 8);
dair_aftereffect0=hit_fx_create(sprite_get("dair_after_effect0"), 8);
dair_aftereffect1=hit_fx_create(sprite_get("dair_after_effect1"), 8);
dair_aftereffect2=hit_fx_create(sprite_get("dair_after_effect2"), 8);
dair_aftereffect3=hit_fx_create(sprite_get("dair_after_effect3"), 8);
dair_aftereffect4=hit_fx_create(sprite_get("dair_after_effect4"), 8);
dair_aftereffect5=hit_fx_create(sprite_get("dair_after_effect5"), 8);
dair_aftereffect6=hit_fx_create(sprite_get("dair_after_effect6"), 8);
dair_aftereffect7=hit_fx_create(sprite_get("dair_after_effect7"), 8);
nitro_boost=hit_fx_create(sprite_get("nitro_boost"), 7);
jump_disc=hit_fx_create(sprite_get("jump_disc"), 40);
parry_shield=hit_fx_create(sprite_get("energy_shield"), 12);
hit_small=hit_fx_create(sprite_get("hit_small"), 12);
hit_medium=hit_fx_create(sprite_get("hit_medium"), 16);
hit_large=hit_fx_create(sprite_get("hit_big"), 20);
hit_proj=hit_fx_create(sprite_get("hit_proj"), 16);
bubble_pop=hit_fx_create(sprite_get("bubble_pop"), 12);
explosion=hit_fx_create(sprite_get("explosion"), 32);
bike_break=hit_fx_create(sprite_get("bike_break"), 18);
feather_death=hit_fx_create(sprite_get("death"), 35);


multikick_energy = 200;
kickTime=0;
start_kick_value = 0;
multikick_ready_timer = 100;
pounce = false;
pounceChange = false;
returnBike = false;
bikeWarp = false;
bikeExplosion = false;
small_djumps = true;
prev_hsp = 0;
pounce_number = 0;
max_pounce = 1;

voice = get_synced_var(player);
alt_cur = get_player_color(player);

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
if (alt_cur >= 15 && alt_cur <= 17)
{
    jump_sound = sound_get("sonic_jump");
}
djump_sound = sound_get("double_jump");
air_dodge_sound = sound_get("guard");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Abyss Runes
if has_rune("A")
{
    fuel = 40;
}

if has_rune("B")
{
    walk_accel = 0.3;
    walk_turn_time = 5;
    initial_dash_time = 8;
    initial_dash_speed = 7.75;
    dash_turn_time = 8;
    dash_turn_accel = 1.5;
}

if has_rune("E")
{
    max_pounce++;
}

if has_rune("I")
{
    jump_speed = 15;
}

if has_rune("J")
{
    max_pounce+= 2;
}


if has_rune("O")
{
    fuel = 40;
    jump_speed = 16;
    walk_accel = 0.8;
    initial_dash_time = 9;
    initial_dash_speed = 8;
    dash_turn_time = 8;
    dash_turn_accel = 1.5;
}

user_event(7);