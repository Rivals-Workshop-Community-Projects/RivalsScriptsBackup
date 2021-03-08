with (oPlayer) {
    //for interactions with other characters in the future
    KingBriggs_Present = true;
}

hurtbox_spr = sprite_get("KingBriggs_HurtBox") //asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = 0.0025;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 7;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.2; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .90; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 2;
double_jump_time = 48; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.21; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//shit
direc = 0;
direc_sided = 0;
anim_offset = 0;
hook = noone;
hook_speed = 15;
hitten = 0;

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 3;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;

roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//SIG GAUGE

GAUGE_SIG_CURRENT = 0;
GAUGE_SIG = 0;
GAUGE_SIG_MAX = 100;
GAUGE_SIG_USED = false;	// optional
GAUGE_UNLOCK = 0; //how much of the Gauge is unlocked 0 = 1 bar, 1 = 2 bar, 2 = 3 bar

SIG_CHARGE = 0;
SIG_CHARGE_MAX = 10; //once it reaches th max you gain a point of meter

//DSPECIAL CATS
num_cats = 0;
cat_boost = true;

//INTRO
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

//HUD STUFF
//ShotGun Ammo
AMMO_MAX = 2;
AMMO_CURRENT = 2;
temp = 0;
temp2 = 0;
//LOCK ANIMATION
lock_rot = 0;
lock_rot_speed = 0.6;
lock_rot_max = 15;
lock_rot_toggle = 0; //rot left //rot right
lock1_rot = 0;
lock2_rot = 0;
lock3_rot = 0;
lock1_frame = 0;
lock2_frame = 0;
lock3_frame = 0;

lock_anim_timer = 0;

//COMMAND GRABS
grabbedid = noone;

//COMPATIBILITY WITH OTHERS CHARACTERS AND STAGES
//Feri (Costume for down taunt)
feri_costume = sprite_get("feri_costume_briggs");
//Trummel and Alto (Codecs / Dialog)
trummelcodecneeded = false;
trummelcodec_id = noone;
//Otto Bobble Head
otto_bobblehead_sprite = sprite_get("bobble_briggs");
//Kirby Copy
kirbyability = 16;
newicon = 0;
swallowed = 0;
enemykirby = noone;
//Miiverse
miiverse_post = sprite_get("miiverse_post");
miiverse_post2 = sprite_get("miiverse_post2");
miiverse_post3 = sprite_get("miiverse_post3");
sprite_change_offset("miiverse_post", 60, 30);
sprite_change_offset("miiverse_post2", 60, 30);
sprite_change_offset("miiverse_post3", 60, 30);
//Killing Grounds
guiltySprite = sprite_get("guiltySprite");

//Phone (stays at bottom)
user_event(14);