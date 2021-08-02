hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Variables
has_flown = false;
has_zss = false;
nspec_stall = false;
aim_angle = 0;
animframe = 0; // used for arrows 
arrowsfx = asset_get("sfx_plant_shoot");
arrowsremain[0] = 999;
arrowsremain[1] = 3;
arrowsremain[2] = 2;
arrowsremain[3] = 2;
arrowsremain[4] = 1;

arrowscharge[1] = 0;
arrowscharge[2] = 0;
arrowscharge[3] = 0;
arrowscharge[4] = 0;

arrow_charged = 0;
color_timer = 0;
fspechit = false;
fspec_reset = false;
hit_id = noone;
hit_dest = 0;
hit_floor = 0;
select_cooldown = 0;
select_timer = 0;
select_cur = 0;
selection = 0;

iceslip = 0;

hudstrip_timer = 0;
hudstrip_mode = 0;
hudstrip_select = 0;

disappearFX = hit_fx_create(sprite_get("dissipatearrow"), 8);
shotFX = hit_fx_create(sprite_get("shotarrow"), 16);
arrowhitFX = hit_fx_create(sprite_get("arrowhit"), 8);
arrowhitwallFX = hit_fx_create(sprite_get("hitwall"), 8);

for(i = 0; i<5; i++)
    arrowsmax[i] = arrowsremain[i];

arrowchain = 0;
chainangle = 0;

char_height = 58;
idle_anim_speed = .1;
crouch_anim_speed = .5;
walk_anim_speed = .1;
dash_anim_speed = .2;
pratfall_anim_speed = 1;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 5;
initial_dash_time = 12;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 11.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 20; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 4;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 3;
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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
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

plat_anim_speed = 0;
power_color = 0;
changing = false;

show_arrow = -1; //Arrow sprite show timer

//TUTORIAL MODE
//TIPS
bTut_Tips = true; // This is to enable the feature for your character.
bTut_tips_total = 4; //How many tips you want to show for your character. You can add as many as you want.

bTut_tips_title[0] = "Hovering with U-Special";
bTut_tips_desc[0] = "During U-Special, you can act out of it anytime you want, reusing it in the air without landing, getting hit or walljumping will cause Elrios to just hover without gaining any height.";
bTut_tips_title[1] = "Element Selection";
bTut_tips_desc[1] = "Elrios doesn't have a taunt. Pressing Taunt will activate Element Selection, there's two ways to select with Elrios with either mashing taunt to go through each element (Moving will end selection), or holding taunt and using the directional stick. Pressing Shield will go back to Power.";
bTut_tips_title[2] = "F-Special Routes";
bTut_tips_desc[2] = "With F-Special, hitting the wall/floor/players will give you three options based on what button is held. Default is pulling them close, Special will go towards them, Jump will jump out and cancel.";
bTut_tips_title[3] = "Keyboard Aiming";
bTut_tips_desc[3] = "During N-Special, holding shield will slow down how fast the angle changes for Elrios. Useful for specific angles when using Keyboard";

//MISSION
bTut_Missions = true; // This is to enable the feature for your character.
bTut_mssn_reset = false; //When repeating the task, you dont want it to complete all at the same time!
bTut_mssn_total = 3;  //How many trials you want to make for your character. You can add as many as you want.
bTut_mssn_title[0] = "F-Special Routes";
bTut_mssn_desc[0]  = "With F-Special, you have options to mixup your opponent!";
bTut_mssn_title[1] = "Differences between Elemental Arrows";
bTut_mssn_desc[1]  = "What do different elementals do? Elrios gains different stats as well with what arrows he's using!";
bTut_mssn_title[2] = "Special Tilts";
bTut_mssn_desc[2]  = "Elrios can gain different properties when held!";