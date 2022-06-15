//Fernet

//***************************************************************************
//====> CUSTOM CONSTANTS ###########################################
//***************************************************************************

//DIP SWITCHES
dip_developerMode = false;
dip_doubleUSpecial = false;
dip_altNSpecial = true;
dip_3rdSpecial = false;
dip_inputHadoken = false;
dip_MP = false;
dip_ballHitstop = true;
dip_boing = true;
dip_swapSpecial = true;
dip_radius = true;

/*
dip_mode = get_player_color(player);
if (dip_mode > 3) { dip_mode = 0; }
*/
dip_mode = 3;

//HUD
//The margin position for each element will be each an array containing the x and y margins
//(Positions 0 and 1 respectively)
//hud_MPNum = [156, -10];
//hud_MPSymbol = [134, -18];
//hud_MPMode = [114, -20];
hud_MPNum = [152, -8];
hud_MPSymbol = [130, -16];
hud_MPMode = [189, -18];

//***************************************************************************
//====> CUSTOM VARIABLES ###########################################
//***************************************************************************

//Previous Frame
pre_state = state;
pf_x = [x, x, x, x, x]
pf_y = [y, y, y, y, y]

//Colors
shadr_init = false;

//Visuals
moved = false;
move_drop = hit_fx_create( sprite_get( "halloween_drop" ), 30 );

fx_hardway_duration = 30;
fx_hardway = hit_fx_create( sprite_get( "hardway" ), fx_hardway_duration );
fx_hardway_x = -20; //-34;
fx_hardway_y = -156;
//fx_catooken = hit_fx_create( 311, 30 );

fx_gado_duration = 20;
fx_gado_End = hit_fx_create( sprite_get("ball_formC_End"), fx_gado_duration );
//fx_shine = hit_fx_create( sprite_get("shine"), 15 );
fx_bling = hit_fx_create( sprite_get("bling"), 16 );

fx_nspecial_dust1_duration = 30;
fx_nspecial_dust1 = hit_fx_create( sprite_get("nspecial_dust1"), fx_nspecial_dust1_duration );
fx_nspecial_dust2_duration = 25;
fx_nspecial_dust2 = hit_fx_create( sprite_get("nspecial_dust2"), fx_nspecial_dust2_duration );
fx_nspecial_ground_cool_c = 10;
fx_nspecial_ground_cool = 0;

fx_miniSpark = hit_fx_create( sprite_get("miniSpark"), 10 );

c_fx_gen8_timer = 36;
fx_gen8_timer = 0;
fx_gen8_sprites = 9;

c_elec_timer = 60;
elec_timer = 0;
elec_target = noone;

hurtground_sprite = sprite_get("hurtground");

//MP
max_mp = 150;
val_mp = max_mp;
deathBonus_mp = 50;

//Idle
idle_anim_speed = .2; //Default Variable

idle1_ids = 8;
idle2_ids = 17;
idleg_ids = 19;
idle1_frames = idle1_ids * (25 * idle_anim_speed) * 3;
idle2_frames = idle2_ids * (25 * idle_anim_speed);
idleg_frames = idleg_ids * (25 * idle_anim_speed);
idle_count = 0;
idle_wait = false;

//DJump
djump_isBack = false;
djump_changeLock = false;

//FStrong
timing_fstrong = 0;

/*
    The term "FBall" is used for "Fire Balls", articles that remain in the same place
    The term "PBall" is used for "Projectile Balls", regular projectile hitboxes
    Fernet can throw either of these 2 depending on the mode
*/

//NSpecial
nspecial_mode_order = [1, 0, 2];
nspecial_mode_index = 0;
nspecial_mode = nspecial_mode_order[0]; //0 = Electro Ball, 1 = Inferno Ball, 2 = NotHadoken
nspecial_charge = 0;
nspecial_last_charge = 0;
nspecial_offsetX = 45;
nspecial_offsetY = -35;
nspecial_ballOut = -1;
nspecial_targetX = 0;
nspecial_targetY = 0;
nspecial_held_c = 20;
nspecial_held = 0;
nspecial_postfail = false;

nspecial_offscreen = sprite_get("Offscreen");;
nspecial_offscreen2 = sprite_get("Offscreen2");;

//ballCall_callOffsetY = -50
ballCall_callOffsetY = -30
ballCall_blinkMax = 255;
ballCall_blinkMin = 100;
ballCall_blinkChange = 15;
ballCall_blinkCurr = 0;

c_callRadius = 500; //300;

//FSpecial
fspecial_chargeHSP = 0;
fspecial_goHSP = 10;
fspecial_goLoops = 1;
fspecial_grab = false;

fspecial_grabbedMode = 0;
fspecial_grabbedCharge = 0;

fx_fspecial_shine = hit_fx_create( sprite_get("fspecial_shine"), 30 );

//USpecial
uspecial_charge = 0;
uspecial_maxCharge = 60;

special_parried_cool_c = 5;
special_parried_cool = 0;

/*
uspecial_baseJump = -8;
uspecial_extraJump = 0;
uspecial_baseAttack = 9;
uspecial_extraAttack = 0;
uspecial_baseKnockback = 8;
uspecial_extraKnockback = 0;
*/

uspecial_air_max_speed = 1;
uspecial_hits = 0;
uspecial_hits_cool = 0;
uspecial_hits_cool_c = 30;

//DSpecial
dspecial_symbol_cont = 40;
dspecial_symbol_contA = 0;
dspecial_tarY = -60;
dspecial_startY = -30;
dspecial_currY = 0;
dspecial_Y_units = -10;
dspecial_symbol_spr = sprite_get("MPModeMid");
dspecial_firstFrame = true;
dspecial_lastExplosion = 0;

flag_explode = false;
flag_dspecial_jump = false;

//FBall
fBall_amount = 1; //Amount of FBalls the player can have at the same time
//fBall_rotation = 0;
fBall_distance = 100;
fBall_fumble = 50;
fBall_obj = noone;

//for (var i = 0; i < fBall_amount; i++)      { fball_currTrap[i] = noone; } //If the player has trapped someone, it loads here
//for (var i = 0; i < fBall_amount; i++)      { arr_fBall[i] = noone; }

//PBall
pBall_amount = 2; //1; //Amount of PBalls the player can have at the same time
pBall_rotation = 0;
pBall_base_hsp = 2;
pBall_inc_hsp = 2;
pBall_base_dmg = 5;
pBall_inc_dmg = 0; //1;
pBall_base_hitpause = 10;
pBall_inc_hitpause = 10;
for (var i = 0; i < pBall_amount; i++)      { arr_pBall[i] = noone; }
for (var i = 0; i < pBall_amount; i++)      { arr_pBall_pos[i] = [0, 0]; }
for (var i = 0; i < pBall_amount; i++)      { arr_pBall_exist_flag[i] = false; }
for (var i = 0; i < pBall_amount; i++)      { arr_pBall_exist_flag_pf[i] = false; }

//Costs
mp_gain = 10;

nspecial_cost = [0, 0, 0, 0];
ballCall_cost = 0;      //OG = 20
uspecial_cost = 0;      //OG = 25

//Flags
flag_djump = 0;
flag_djump_change = 0;
flag_dtilt_jump = false;

flag_nspecial = 0;
flag_uspecial = 0;
flag_fspecial = 0;
flag_fspecial_jump = 0;
flag_fspecial_2 = 0;
flag_dspecial = 0;
flag_ballCall = 0;
flag_taunt = false;
flag_breverse = false;

//***************************************************************************
//====> ALT MAINTENANCE ###########################################
//***************************************************************************

alt_split = 17

alt_kiera = 20
alt_halloween = 22
alt_gen8 = 13

//***************************************************************************
//====> INTRO ###########################################
//***************************************************************************

intro_timer = -2;
intro_fpf = .2;
intro_timerMax = 
    get_player_color(player) == alt_gen8 ? 18 : 24;
intro_sprite = 
    get_player_color(player) == alt_gen8 ? sprite_get("introGenesis") :
    get_player_color(player) >= alt_split ? sprite_get("intro2") : sprite_get("intro");

//***************************************************************************
//====> RC COMP ########################################################################################
//***************************************************************************

kart_sprite = sprite_get("kart");
//kart_sprite = sprite_get("regigigas_kart");
kart_frames = 1;
kart_engine_sound = 4;

//***************************************************************************
//====> KIRBY ###########################################
//***************************************************************************

kirbyability = 16;
swallowed = 0
enemykirby = noone

kirbyIcon = sprite_get("kirby_icon");
kirbyIconB = sprite_get("kirby_icon_B");

//***************************************************************************
//====> FINAL SMASH ###########################################
//***************************************************************************

fs_char_chosen_final_smash = "custom";
fs_charge = 0;
fs_char_portrait_y = 0;

fs_currHB = noone;
fx_fs1 = hit_fx_create( sprite_get("ballBlast"), 30 );

//***************************************************************************
//====> POKEMON STADIUM ###########################################
//***************************************************************************

pkmn_stadium_front_img = sprite_get("pokemon_stadium");
pkmn_stadium_back_img = sprite_get("pokemon_stadium_back");

//***************************************************************************
//====> DIALOGUE BUDDY ###########################################
//***************************************************************************

//diag_portrait = sprite_get("");

//***************************************************************************
//====> MELEE ICON (PROTOTYPE) ###########################################
//***************************************************************************

melee_icon = sprite_get("meleeicon")

//***************************************************************************
//====> OTHERS ###########################################
//***************************************************************************

if (get_player_color(player) > 14)
{
   arena_title = "The Amethyst Pupil"; 
   boxing_title = "The Amethyst Pupil";
}
else
{
    arena_title = "The Stars Right Hand";
    boxing_title = "The Stars Right Hand";
}

//***************************************************************************
//====> DEFAULT VARIABLES ########################################################################################
//***************************************************************************

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
//idle_anim_speed = .2; //Transfered upwards
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 12;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5;
djump_speed = 10.5;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .7; //.5; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 35; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 10;
wave_land_time = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
air_dodge_speed = 6; //7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;