//Tails' Custom Variables

// runes
rollRune = has_rune("B");
rhythmBadgeRune = has_rune("C");
jetAnkletRune = has_rune("D");
fstrongWindRune = has_rune("E");

remoteRobotDetonateRune = has_rune("G");
nspecMultihitRune = has_rune("H");
jumpsRune = has_rune("I");

remoteRobotDoubleRune = has_rune("M");


//Non Attack Related Vars

defaultcolor = false

fireball_normal_explode = hit_fx_create(sprite_get("fireball_normal_explode"),22);

debug = 0 //If debug is enabled or not.

at_ledge = false

entereddashstop = false //This checks to see if Tails entered Dash Stop so this way, the skidding SFX doesnt play twice.

didwavedash = 0 //Checks to see if Tails wavedashed.

//Intro stuff
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = -8;
introImgTimer = 0;
introImgTimer2 = 0;
introImgTimer3 = 0;
introImgLandTimer = 0;
introImgLandTimer2 = 0;
var offsetTest = player;
offsetTest = clamp(offsetTest, 1, 4);
introImgHorizOffset = 430 + (40 * offsetTest);
introImgVertOffset = 140;
introCounter = -4;
desiredDist = 20;
shouldPlayLandingIntroAnim = false;
playIntroAnim = true;
introPlayFallAnim = false;

//Dash Attack

tailsdattackvar = 0

//Up Strong: Regular Bomb

bombcharge = -2 //Variable for Ustrong's bomb charge height modifier.

//Down Strong

ring_dstrong_vfx = hit_fx_create(sprite_get("dstrong_vfx"), 15);

nspec_air_window_timer = 0

// nspec

nspecRuneHitPlayerX = 0;
nspecRuneHitPlayerY = 0;
nspecRuneHit = false;
nspecRuneTimer = 0;
nspecRuneTimesThrough = 0;
nspecRuneTimesThroughMax = 2;

//Fspecial: Air Dive

tailsdidhesidebrobot = false

tailsgrabbedrobot = false

fspec_loop = 0

tails_fspec_started_on_ground = 0 //Checks to see if Tails started Fspecial on the ground.

grabbed_player_obj = noone;    //the player object currently being grabbed.

grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.

grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//Up Special: Flight

flightloop = 3
aerialattack = 0
diveloop = 0

//Down Special

tailsisrobotout = false

tailsdidrobotgethit = false

tailsdspechbox3destroyplease = false //Basically a check to destroy the spawning hitbox of Remote Robot.

tailsdidpressdownbwhenthingisactive = 0 // hell

heyiamtouchingitplsdont = false

tailsdspecheydidtherobotdieyet = 0 //i hate rivals of aether

tailsrobotx = 0
tailsroboty = 0
tailsrobot2x = 0
tailsrobot2y = 0
tailsdidrobotgetparried = false
tailsdidbombhitrobot = false

tailsdidstartingdownbhitboxhitRobot1 = false;
tailsdidstartingdownbhitboxhitRobot2 = false;

remoteRobot = noone;
remoteRobot2 = noone;
fspecHitboxTouchedRobot = false;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .14;
crouch_anim_speed = .14;
walk_anim_speed = .18;
dash_anim_speed = .35;
pratfall_anim_speed = .14;

walk_speed = 3.5;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 9;
dash_speed = 8;
dash_turn_time = 15;
dash_turn_accel = 1.1;
dash_stop_time = 8;
dash_stop_percent = .45; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5 + (rollRune * 3.25); //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2 + (jumpsRune * 8);
double_jump_time = 24; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 22;
wall_frames = 2;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .48;
hitstun_grav = .48;
knockback_adj = 1.1; //the multiplier to KB dealt to you.

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9 + (rollRune * 8); //roll speed
roll_backward_max = 9 + (rollRune * 8);

//SFX List
sfx_airdodge = sound_get("sfx_airdodge");
sfx_blow_1 = sound_get("sfx_blow_1");
sfx_blow_2 = sound_get("sfx_blow_2");
sfx_blow_3 = sound_get("sfx_blow_3");
sfx_dashstart = sound_get("sfx_dashstart");
sfx_dive = sound_get("sfx_dive");
sfx_dstrong_use = sound_get("sfx_dstrong_use");
sfx_energyshot = sound_get("sfx_energyshot");
sfx_flight = sound_get("sfx_flight");
sfx_flight_cheat = sound_get("sfx_flight_cheat");
sfx_flight_stop = sound_get("sfx_flight_stop");
sfx_jump = sound_get("sfx_jump");
sfx_land = sound_get("sfx_land");
sfx_ring = sound_get("sfx_ring");
sfx_ring_bomb = sound_get("sfx_ring_bomb");
sfx_ring_total = sound_get("sfx_ring_total");
sfx_skid = sound_get("sfx_skid");
sfx_slide = sound_get("sfx_slide");
sfx_spin = sound_get("sfx_spin");
sfx_swipe1 = sound_get("sfx_swipe1"); //this is kinda a weak swipe sfx
sfx_swipe2 = sound_get("sfx_swipe2");
sfx_swipe3 = sound_get("sfx_swipe3");
sfx_swipe4 = sound_get("sfx_swipe4");
sfx_swipe5 = sound_get("sfx_swipe5");
sfx_swipe6 = sound_get("sfx_swipe6");
sfx_swipe7 = sound_get("sfx_swipe7");
sfx_tail_swipe1 = sound_get("sfx_tail_swipe1");
sfx_tail_swipe2 = sound_get("sfx_tail_swipe2");
sfx_ustrong = sound_get("sfx_ustrong");
sfx_waveland = sound_get("sfx_waveland");

//Kirby's Return to Dream Land SFX
sfx_krtd_bomb_explode = sound_get("sfx_krtd_bomb_explode");
sfx_krtd_bomb_prep = sound_get("sfx_krtd_bomb_prep");
sfx_krtd_grab = sound_get("sfx_krtd_grab");

// Voiced Mode... Voice Clips
vc_tails_ = sound_get("vc_tails_");
vc_tails_ = sound_get("vc_tails_");

//Victory
//victory_theme = sound_get("victory_old");
victory_theme = sound_get("victory");

land_sound = sfx_land;
landing_lag_sound = sfx_land;
waveland_sound = sfx_waveland;
jump_sound = sfx_jump;
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = sfx_airdodge;

set_victory_theme(victory_theme);

introFlySpr = sprite_get("uspecial");
introFallSpr = sprite_get("jump");
//Changing the portrait for alts that change outline colors.
if (get_player_color( player ) == 7){
	set_victory_portrait( sprite_get( "portrait_ea" ));
	set_victory_sidebar( sprite_get( "result_small_ea" ));
	introFlySpr = sprite_get("uspecial_ea");
	introFallSpr = sprite_get("jump_ea");
} else if (get_player_color( player ) == 17){
	set_victory_portrait( sprite_get( "portrait_gold" ));
	set_victory_sidebar( sprite_get( "result_small_gold" ));
	introFlySpr = sprite_get("uspecial_gold");
	introFallSpr = sprite_get("jump_gold");
} else if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	set_victory_portrait( sprite_get( "portrait" ));
	set_victory_sidebar( sprite_get( "result_small" ));
	if (get_player_color( player ) == 0){
		introFlySpr = sprite_get("uspecial_default");
		introFallSpr = sprite_get("jump_default");
	}
}

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;