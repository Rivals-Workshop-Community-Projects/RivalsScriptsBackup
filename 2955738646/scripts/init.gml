//hurtbox_spr = asset_get("ex_guy_hurt_box");
hurtbox_spr = sprite_get("mecha_hurt");
//crouchbox_spr = asset_get("ex_guy_crouch_box");
crouchbox_spr = sprite_get("mecha_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//MOTION BLUR CODE
blur = array_create(7);

char_height = 79;
idle_anim_speed = .0;
crouch_anim_speed = .1;
walk_anim_speed = .025;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 1.25;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 11;
initial_dash_speed = 7;
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
djump_speed = 9;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 8; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 6; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .50;
prat_fall_accel = .40; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 12;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 17; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 0.8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

/* backup
jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 7; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .30;
prat_fall_accel = .40; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 30; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 0.8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
*/

land_time = 6; //normal landing frames
prat_land_time = 10;
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
tech_active_frames = 3;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 11;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("FootSound1");
landing_lag_sound = sound_get("FootSound2");
waveland_sound = sound_get("Wavelanding");
jump_sound = sound_get("GroundJump");
djump_sound = sound_get("DoubleJump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

prevous_x = noone; //warping back
prevous_y = noone; //to previous position 
prevous_spr = noone; //to previous facing direction 
fallsound = (sound_get("FastFalling")); 
fassfall = 0; //0 ~ 20
fassfall_check = false; //If it happened
grabbedid = noone;
dspecial_charge = 0;
//Uspecial_Charge = 0;
Nspecial_moves = 0;
ChaosEmerald = 0;
EmeraldSense = 0;
SuperMech = false;
SoundPlayed = false;
lightspeed = noone;
lightspeed_time = noone;

timestop_aftershock = noone;

target_number = random_func(0, 100, true);
target_X_placement = 0;
target_Y_placement = 0;

dash_sound = (asset_get("sfx_ell_hover"));
random_mecha = 0; //Random Mecha number
telepunch = 0;
//0 - Ready
//1 - Teleported 
//2 - Did the follow up
//3 - Missed chance
crouch_dash = 0;
air_special = false;
nspecial_air_time = 0;
nspecial_time = 37;
cling_once = 0;
foresight = 100;
flyforward = false;
//got_hit_id = noone;
face_opp = false; //face the opponent
timestop_ready = false;
timestop = false;
timestop_amount = 20; //the amount of hits
timestop_time = 207; //the amount of time left
EmeraldChance = false;
dashing = 0;
dashsound = sound_get("dashing");
dashed = sound_get("dashed");
dashstart = sound_get("dashstart");
dspecial_id = noone; //Down Special grabbing
has_hit_id = noone; //Picking up the player's id for Telepunching
previous_id = noone; //Picking up the player's id for Super Dashing
marked_id = false; //Picking up the player's id for grounded Up Special rockets
marked_id1 = noone; //Picking up the player's id for grounded Up Special rockets
marked_id2 = noone; //Picking up the player's id for grounded Up Special rockets
marked_id3 = noone; //Picking up the player's id for grounded Up Special rockets
utilt_id = noone; //Picking up the player's id for Up Tilt Up
chasedodge = 0;
target_addup = 0;
turnbackaround = false; //Jab turn around
ftilt_hit_id = false; //Grabbing people with FTilt
fspecial_canceltime = 0;
teleportback = noone; //Teleporting AirDodge

scanner_color = -1;
switch (get_player_color(player)){ //Player color - Scan color
    case 0: //Default
    scanner_color = c_red;
    break;
    case 1: //Teal
    scanner_color = c_orange;
    break;
    case 2: //Red
    scanner_color = c_teal;
    break;
    case 3: //Yellow/Orange
    scanner_color = c_green;
    break;
    case 4: //Green
    scanner_color = c_orange;
    break;
    case 5: //B&W
    scanner_color = c_white;
    break;
    case 6: //Abyss Purple
    scanner_color = c_blue;
    break;
    case 7: //Black
    scanner_color = c_gray;
    break;
    case 8: //EA
    scanner_color = c_olive;
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
    case 3: //Yellow/Orange
    booster_color = c_lime;
    break;
    case 4: //Green
    booster_color = c_orange;
    break;
    case 5: //B&W - White
    booster_color = c_white;
    break;
    case 6: //Abyss Purple - Blue
    booster_color = c_blue;
    break;
    case 7: //Black - Gray
    booster_color = c_gray;
    break;
    case 8: //EA - White
    booster_color = c_olive;
    break;
}


IllCrushYou = 0; //The little eletricity after taunting

loopingwindow = 0; //Down Special holding onto the window

voice_button = !get_synced_var(player);

RollAfter = hit_fx_create( sprite_get( "roll_afterimage" ),15);
RollAfterL = hit_fx_create( sprite_get( "roll_afterimage_l" ),15);
AirDashAfter = hit_fx_create( sprite_get( "airdodge_afterimage" ),15);
Shockwave = hit_fx_create( sprite_get( "shockwave" ),14);
Explosive = hit_fx_create( sprite_get( "explode" ),30);
Explosive_Punch = hit_fx_create( sprite_get( "fstrong_explode" ),27);
Burst_Tail = hit_fx_create( sprite_get( "fstrong_burst_tail" ),14);
Skrt = hit_fx_create( sprite_get( "skrt_skrt" ),7);
TauntAura = hit_fx_create( sprite_get( "taunt_transform_aura" ),38);
Bullets = noone;
BulletHit1 = hit_fx_create( sprite_get( "nspecial_gunhit" ),4);
BulletHit2 = hit_fx_create( sprite_get( "nspecial_gunhit2" ),4);
DashTail = hit_fx_create( sprite_get( "super_dash_tail2" ),3);
DashTail2 = hit_fx_create( sprite_get( "super_dash_tail2" ),4);
DashTail3 = hit_fx_create( sprite_get( "super_dash_tail2" ),5);
Harsh_Hit = hit_fx_create( sprite_get( "harsh_hit2" ),6);
Lightspeed_Particle = hit_fx_create( sprite_get( "lightspeed_particle" ),29);
Dusty = hit_fx_create( sprite_get( "dust" ),10);

airdodge_afterimage = hit_fx_create( sprite_get( "airdodge_ai" ),20);
roll_afterimage = hit_fx_create( sprite_get( "roll_forward_ai" ),20);
