//hurtbox_spr = asset_get("ex_guy_hurt_box");
hurtbox_spr = sprite_get("mecha_hurt");
//crouchbox_spr = asset_get("ex_guy_crouch_box");
crouchbox_spr = sprite_get("mecha_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//MOTION BLUR CODE
blur = array_create(7);

char_height = 79;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .025;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 2.25;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 9;
dash_speed = 10;
dash_turn_time = 16;
dash_turn_accel = 1.91;
dash_stop_time = 6;
dash_stop_percent = 1/3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .72;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 6; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .40; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 40;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 35;
wave_land_time = 6;
wave_land_adj = 1.0; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 4;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 12;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 3;
air_dodge_speed = 11;
//air_dodge_active_time = 1;
//air_dodge_recovery_time = 1;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("FootSound1");
landing_lag_sound = sound_get("FootSound2");
waveland_sound = sound_get("wavelanding");
jump_sound = sound_get("GroundJump");
djump_sound = sound_get("DoubleJump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

SuperRocket = 0;

prevous_x = noone; //warping back
prevous_y = noone; //to previous position 
prevous_spr = noone; //to previous facing direction 
fallsound = (sound_get("FastFalling")); 
fassfall = 0; //0 ~ 20
fassfall_check = false; //If it happened
grabbedid = noone;
dspecial_charge = 0;
EmeraldAmount = 0; //The amount of Emeralds YOU have
EmeraldSense = 0; //Sensing the enemy ID
Emerald1 = noone; //Checking the number
Emerald2 = noone; //So that I can
Emerald3 = noone; //Keep track of 
Emerald4 = noone; //Each Emerald color
Emerald5 = noone; //Unlike the color variables
Emerald6 = noone; //Underneath these
Emerald7 = noone; //Which are for 'taken' ones
OverallEmeralds = 7; //All Mechas spawn a certain amount from the overall

transparency = 1; //Transparent HUD, will be removed later

//Indvidual emeralds that exist
Blue = 0;
Red = 0;
Pink = 0;
Yellow = 0;
Gray = 0;
Green = 0;
Cyan = 0;

SuperMecha = false;
SoundPlayed = false;
lightspeed = noone;
lightspeed_time = noone;

timestop_aftershock = noone;

target_number = random_func(0, 100, true);
target_X_placement = 0;
target_Y_placement = 0;

prev_attack = noone; //For landing lags of each aerial

dash_sound = (asset_get("sfx_ell_hover"));
random_mecha = 0; //Random Mecha number
random_hurt_sound = noone; //The sound number he will choose after getting hurt
uspecial_scantime = 0; //The red visual for enemies that got scanned
crouch_dash = false; //Crouch sliding
air_special = false; //Neutral Special in the air check
nspecial_air_time = 0; //The amount of time it is 
nspecial_time = 37; //Bullets in Neutral Special
Nspecial_moves = 0; //Dashing on the ground w/ Neutral Special
gun_heat_sound = 0; //the amount that the sound plays when shooting, slowly becoming louder
cling_once = 0; //Clinging with Down Special
flyforward = false;
face_opp = false; //face the opponent
timestop_ready = false;
timestop = false;
timestop_amount = 1; //the amount of hits
timestop_time = 0; //the amount of time left
EmeraldChance = false;
dashing = 0;
dashsound = sound_get("dashing");
dashed = sound_get("dashed");
dashstart = sound_get("dashstart");
dspecial_id = noone; //Down Special grabbing
fspecial_id = noone; //Forward Special grabbing
previous_id = noone; //Picking up the player's id for Super Dashing
marked_id = false; //Picking up the player's id for grounded Up Special rockets
marked_id1 = noone; //Picking up the player's id for grounded Up Special rockets
marked_id2 = noone; //Picking up the player's id for grounded Up Special rockets
marked_id3 = noone; //Picking up the player's id for grounded Up Special rockets
retaliate_id = noone; //Picking up the player's id for Super Up Tilt Up & Forward Tilt
dattack_id = noone //Pick up player's id for Dash Attack
chasedodge = 0;
target_addup = 0;
Beam_id = noone; //Super Up Special beam for the middle part pre_draw
turnbackaround = false; //Jab turn around
ftilt_hit_id = false; //Grabbing people with FTilt
fspecial_canceltime = 0;
teleportback = noone; //Teleporting AirDodge
fspecial_flash_timer = 5; //Background visual for FSpecial being back
grounded = noone; //Down Special little explosion timer
floating = 0; //During Super Mecha form he can 'float'
floatTimer = 0; //How long he has been in the air

TauntElec = 0; //The little eletricity after taunting
TauntSuper = 0; //The little color change after taunting

air_time = 0; //Checking for how long Mecha Sonic is in the air so he can air dash

emerald_platform = 0; //The article platform that flies away

attack_button = !get_synced_var(player); //If attacking stuff has a command grab
emerald_hud = 1; //The Emeralds are in play or not
voice_clips = 1; //Voice button so Mecha speaks

/*
//Attack_Onhit is zero for 'yes' and one for 'no'
if (get_synced_var(player) == 0){
	voice_clips = 0;
	attack_onhit = 0;
	emerald_hud = 0;
	//Everything is off
}
if (get_synced_var(player) == 1){
	voice_clips = 1;
	attack_onhit = 0;
	emerald_hud = 1;
	//Everything is on, as by default
}
if (get_synced_var(player) == 2){
	voice_clips = 0;
	attack_onhit = 0;
	emerald_hud = 1;
	//Emeralds and Attacks are on
}
if (get_synced_var(player) == 3){
	voice_clips = 0;
	attack_onhit = 0;
	emerald_hud = 0;
	//Attacks only on
}
if (get_synced_var(player) == 4){
	voice_clips = 0;
	attack_onhit = 1;
	emerald_hud = 1;
	//Emeralds only on
}
if (get_synced_var(player) == 5){
	voice_clips = 1;
	attack_onhit = 1;
	emerald_hud = 1;
	//Voice and Emeralds only on
}
if (get_synced_var(player) == 6){
	voice_clips = 1;
	attack_onhit = 1;
	emerald_hud = 0;
	//Voice and Attacks only on
}
if (get_synced_var(player) == 7){
	voice_clips = 1;
	attack_onhit = 0;
	emerald_hud = 0;
	//Voice only
}
*/

scanner_color = -1;
switch (get_player_color(player)){ //Player color - Scan color
    case 0: //Default
    scanner_color = c_red;
    break;
    case 1: //Blue
    scanner_color = c_orange;
    break;
    case 2: //Red
    scanner_color = c_teal;
    break;
    case 3: //Green
    scanner_color = c_orange;
    break;
    case 4: //Black and White
    scanner_color = c_white;
    break;
    case 5: //Purple
    scanner_color = c_purple;
    break;
    case 6: //Abyss Purple
    scanner_color = c_blue;
    break;
    case 7: //Orange
    scanner_color = c_green;
    case 8: //EA
    scanner_color = 7405514;
    break;
}
booster_color = -1;
switch (get_player_color(player)){ //Player color - Scan color
    case 0: //Default
    booster_color = 1219071;
    break;
    case 1: //Teal
    booster_color = c_orange;
    break;
    case 2: //Red
    booster_color = c_aqua;
    break;
    case 3: //Green
    booster_color = 19967;
    break;
    case 4: //Gray
    booster_color = 7960996;
    break;
    case 5: //B&W - White
    booster_color = 16711854;
    break;
    case 6: //Abyss Purple - Blue
    booster_color = c_blue;
    break;
    case 7: //Yellow
    booster_color = 10092416;
    break;
    case 8: //EA - White
    booster_color = c_olive;
    break;
}

//Intro variables
introTimer = -4; //setting it to -8 should prevent the first few frames of the animation from being blocked by the screen opening.
introTimer2 = 0;

//Early Access sound change
if (get_player_color(player) == 8) {
	voice_clips = false;
	
	land_sound = sound_get("EA_land");
	landing_lag_sound = sound_get("EA_landinglag");
	waveland_sound = sound_get("EA_wavedash");
	jump_sound = sound_get("EA_jump");
	djump_sound = sound_get("EA_djump");
	air_dodge_sound = sound_get("EA_air_dodge");
	
	set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("EA_jab1"));
	set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("EA_jab2"));
	set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("EA_jab2"));
	set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("EA_jab3"));
	set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("EA_jab4"));
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("EA_jab_hit1"));
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("EA_jab_hit2"));
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("EA_jab_hit3"));
	set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("EA_jab_hit4"));
	
	set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("EA_dattack"));
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("EA_dattack_hit"));
	set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 7, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 8, HG_HIT_SFX, sound_get("EA_dattack_hits"));
	set_hitbox_value(AT_DATTACK, 9, HG_HIT_SFX, sound_get("EA_dattack_finalhit"));

	set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("EA_utilt"));
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("EA_utilt_hit"));
	
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("EA_ftilt"));
	set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("EA_ftilt2"));
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("EA_ftilt_hit1"));
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("EA_ftilt_hit2"));
	
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("EA_dtilt_lazer"));
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("EA_dtilt_hit1"));
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX,  sound_get("EA_dtilt_hit1"));
	set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX,  sound_get("EA_dtilt_hit1"));
	set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, sound_get("EA_dtilt_hit1"));
	set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, sound_get("EA_dtilt_hit1"));
	set_hitbox_value(AT_DTILT, 6, HG_HIT_SFX, sound_get("EA_dtilt_hit1"));
	set_hitbox_value(AT_DTILT, 7, HG_HIT_SFX, sound_get("EA_dtilt_hit2"));
	
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("EA_spinout"));
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("EA_nair_hit"));
	set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("EA_nair_finalhit"));
	
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("EA_uair"));
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("EA_dair_hit2"));
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("EA_uair_hit"));
	
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("EA_fair_hit"));
	set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, sound_get("EA_fair_finalhit"));
	set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("EA_fair_unload"));
	
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("EA_dair"));
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("EA_dair_hit1"));
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("EA_dair_hit2"));
	
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("EA_bair"));
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("EA_bair_hit"));
	
	set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("EA_ustrong"));
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("EA_ustrong_hit"));
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("EA_fstrong"));
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("EA_fstrong_grab"));
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("EA_fstrong_hit"));
	
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("EA_dstrong_swosh"));
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("EA_dstrong_grab"));
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, sound_get("EA_dstrong_swosh"));
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("EA_dstrong_crash"));
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("EA_fair_finalhit"));
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("EA_dstrong_throwaway"));
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("EA_dstrong_swosh"));
	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("EA_gun_reload"));
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("EA_gun"));
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("EA_nspecial_groundash"));
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("EA_nspecial_groundash"));
	set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("EA_gun_unload"));
	set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, sound_get("EA_gun_reload"));
	set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("EA_gun"));
	set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, sound_get("EA_gun_unload"));
	set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX, sound_get("EA_ftilt"));
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("EA_fair_finalhit"));
	
	set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("EA_uspecial_locating"));
	set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, sound_get("EA_uspecial_nofind"));
	set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, sound_get("EA_uspecial_found"));
	set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX, sound_get("EA_uspecial_loadgun"));
	set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_SFX, sound_get("EA_gun"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("EA_uspecial_found"));
	set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, sound_get("EA_uspecial_found"));
	
	set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	set_hitbox_value(AT_USPECIAL_2, 7, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	set_hitbox_value(AT_USPECIAL_2, 8, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("EA_uspecial_flyup"));
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("EA_uspecial_flying"));
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("EA_uspecial_grab"));
	set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("EA_uspecial_throw"));
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("EA_uspecial_hardthrow"));
	
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("EA_fspecial_start"));
	set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("EA_fspecial_start"));
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("EA_fspecial_forward"));
	set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("EA_fspecial_forward2"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("EA_fspecial_hit"));
	set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX, sound_get("EA_dair"));
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("EA_fspecial_grab"));
	set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("EA_fspecial_hit2"));

	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("EA_dspecial_dive"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("EA_dspecial_grab"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("EA_dspecial_hit2"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("EA_ftilt_hit2"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("EA_dspecial_hit2"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("EA_dspecial_hit2"));
	set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, sound_get("EA_dspecial_hit1"));
	set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("EA_dstrong_crash"));
	set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, sound_get("EA_dspecial_spinhit"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, sound_get("EA_dspecial_turnhit"));
	set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, sound_get("EA_timestop_hit"));
	set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, sound_get("EA_timestop_finalhit"));
	set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("EA_spinout"));
	
	set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX, sound_get("EA_super_nspecial_beam"));
	set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, sound_get("EA_fair_finalhit"));
	
	set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("EA_super_chargeup"));
	set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_SFX, sound_get("EA_super_beam"));
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, sound_get("EA_uspecial_rocket_hit"));
	
	//set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("EA_fspecial_start"));
	set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("EA_fspecial_forward"));
	set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, sound_get("EA_fspecial_rapidswipes"));
	set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_SFX, sound_get("EA_final_hit"));
	set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_SFX, sound_get("EA_fstrong"));
	set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HIT_SFX, sound_get("EA_fstrong_hardhit"));
	
	set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_SFX, sound_get("EA_super_dspecial_chaosblast"));
	set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_SFX, sound_get("EA_dspecial_turnhit"));
	
	set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, sound_get("EA_ftilt2"));
	set_window_value(AT_DSPECIAL, 15, AG_WINDOW_SFX, sound_get("EA_spinout"));
	set_window_value(AT_DSPECIAL, 17, AG_WINDOW_SFX, sound_get("EA_ftilt"));
	
	set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("EA_jab4"));
	set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("EA_nspecial2_unibeam"));
	
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("EA_tauntpowerup"));
}

set_hit_particle_sprite( 1, asset_get( "empty_sprite" ) );

loopingwindow = 0; //Down Special holding onto the windoww

Gigabeam = hit_fx_create( sprite_get( "gigabeam" ), 18);
Gigabeam_Stretched = hit_fx_create( sprite_get( "gigabeam_stretch" ), 11);
Shine = hit_fx_create( sprite_get( "shine" ),20);
AirDashAfter = hit_fx_create( sprite_get( "airdodge_afterimage" ),15);
Shockwave = hit_fx_create( sprite_get( "shockwave" ),14);
Explosive = hit_fx_create( sprite_get( "explode" ),30);
Explosive_Punch = hit_fx_create( sprite_get( "fstrong_explode" ),27);
Burst_Tail = hit_fx_create( sprite_get( "fstrong_burst_tail" ),18);
Burst_Tail2 = hit_fx_create( sprite_get( "fstrong_burst_trail" ),8);
//Burst_Tail2 = hit_fx_create( sprite_get( "dspecial_burst_tail" ),16);
Burst_Trail_End = hit_fx_create( sprite_get( "dspecial_burst_trail_end" ),10);
NSpecial_explode = hit_fx_create( sprite_get( "nspecial_ball_explode" ),30);
Skrt = hit_fx_create( sprite_get( "skrt_skrt" ),7);
TauntAura = hit_fx_create( sprite_get( "taunt_transform_aura" ),38);
Bullets = noone;
BulletHit1 = hit_fx_create( sprite_get( "nspecial_gunhit" ),4);
BulletHit2 = hit_fx_create( sprite_get( "nspecial_gunhit2" ),4);
DashTail = hit_fx_create( sprite_get( "super_dash_tail2" ),3);
DashTail2 = hit_fx_create( sprite_get( "super_dash_tail2" ),4);
DashTail3 = hit_fx_create( sprite_get( "super_dash_tail2" ),5);
Harsh_Hit3 = hit_fx_create( sprite_get( "harsh_hit" ),59);
Harsh_Hit2 = hit_fx_create( sprite_get( "harsh_hit2" ),6);
Harsh_Hit = hit_fx_create( sprite_get( "harsh_hit" ),19);
Second_Unibeam = hit_fx_create( sprite_get( "super_uspecial_beam_stretch2" ),5);
Lightspeed_Particle = hit_fx_create( sprite_get( "lightspeed_particle" ),29);
Dusty = hit_fx_create( sprite_get( "dust" ),10);
UpSpecialSparks = hit_fx_create( sprite_get( "uspecial_proj_sparks" ),15);
Afterimage_particle = hit_fx_create( sprite_get( "afterimage_charge" ),20);
FSpecial_particle = hit_fx_create( sprite_get( "fspecial_charge" ),34);
FSpecial_afterimage = hit_fx_create( sprite_get( "super_fspecial2_afterimage" ), 15);
DSpecial_lightspeed_trail = hit_fx_create( sprite_get( "lighspeed_line" ), 12);
USpecial_teleport = hit_fx_create( sprite_get( "uspecial_teleportout" ), 20);
Unibeam = hit_fx_create( sprite_get( "unibeam" ), 35);
Unibeam_stretch = hit_fx_create( sprite_get( "unibeam_stretch" ), 35);
Electric_1 = hit_fx_create( sprite_get( "electric_1" ), 20);
Electric_2 = hit_fx_create( sprite_get( "electric_2" ), 20);
Electric_3 = hit_fx_create( sprite_get( "electric_3" ), 20);
Electric_4 = hit_fx_create( sprite_get( "electric_4" ), 20);
Electric_5 = hit_fx_create( sprite_get( "electric_5" ), 20);
RedEyes = hit_fx_create( sprite_get( "super_fspecial2_redeye" ), 7);
SuperMechaBurst = hit_fx_create( sprite_get( "super_burst" ), 10);

airdodge_away = hit_fx_create( sprite_get( "airdodge3" ),6);
roll_away = hit_fx_create( sprite_get( "roll2" ),6);
airdodge_afterimage = hit_fx_create( sprite_get( "airdodge_ai" ),20);
roll_afterimage = hit_fx_create( sprite_get( "roll_forward_ai" ),20);
