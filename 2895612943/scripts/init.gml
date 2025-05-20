//Scratch and Bite by Mixmaw, Mallow and Spider Boi
//Entry for the Black History Month workshop jam
//Based on breakdancing, also known as "B-Boying/Girling" or "Breaking", dance and hip hop culture

/* code credits:
supersonic for skin handler template
mallow and delta for most of the character specific specials code
jpeg for awesome code help and swag feedback
mixmaw for normals/strongs
*/

hurtbox_spr = sprite_get("sb_hurtbox");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 18;
dash_turn_accel = 0.6;
dash_stop_time = 8;
dash_stop_percent = 0.9; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 0.9;

jump_start_time = 5; 
jump_speed = 11.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.75; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.75; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = 0.5;
hitstun_grav = .5;
walljump_hsp = 7.5;
walljump_vsp = 6.5;
walljump_time = 40;
wall_frames = 2;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 13;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 7;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

dash_cancel_attack = 0;

s_storedatk = 0;
s_storedwin = 0;
s_storedwintim = 0; //get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head 

b_storedatk = 0;
b_storedwin = 0;
b_storedwintim = 0; //get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head get out of my head 

storedatk = 0;
storedwin = 0;
prevstoredatk = 0
prevstoredwin = 0
//storedatk = 0;
can_swap = 0;
swap_timer = 0;
currentsprite = 0;
currentimage = 0;
dodspec2 = 0;

AG_STARTUP = 56;
AG_ACTIVE = 57;

poseb = hit_fx_create( sprite_get("dspecpose"), 20 )
poses = hit_fx_create( sprite_get("bite_dspecpose"), 20 )

deaths = hit_fx_create( sprite_get("hfx_hurt_s"), 35 )
deathb = hit_fx_create( sprite_get("hfx_hurt_b"), 35 )

//set_victory_bg(CH_MOLLO);
set_victory_theme( sound_get("snb_vict") )
//phone_id = noone; //ignore



disk_obj = noone;
disk_dir = 0;
vbite = hit_fx_create( sprite_get("vfx_bite"), 25 )
vscratch = hit_fx_create( sprite_get("vfx_scratch"), 35 )
uspec_stall = 4;        //uspec vsp is this * -2. decreases by 1 each uspec usage. resets on land/walljump/hit
uspec_coord = [1,1];    //Sign (-1 or 1) of the X and Y difference between you and the disk when you start uspec

disk_cooldown_global = 40; //the cooldown on disc when thrown naturally. originally fixed at 40

disk_speed = 8;        //fspec initial speed, bite's is 2 lower
disk_uspeed = 14.5;       //uspec initial speed
disk_uspeed_scratch = 14; //target uspec initial speed for scratch
disk_uspeed_bite = 11;  //target uspec initial speed for bite
disk_grav = 0.4;        //bite disk gravity
//the following are all the time FROM THE START, not from eachother
disk_timer_start = 20;  //time until scratch disc starts to go get backwards speed. acts normally until.
disk_timer_turn = 40;   //time until sdisc stops getting back speed. smoothly goes from speed to -speed between the above variable and this one
disk_timer_back = 60;   //time until sdisc falls off + ratio
disk_extra_scratchtime = 45; //extra hangtime for scratch uspecial disk
disk_lockout_total = 8;//scratch disk hit lockout when you hit someone with a melee hit
disk_lockout = 0;      //current hit lockout

is_bite = 0;            //its called scratch n bite you either scratch or you n bite
AG_SPRITE_BITE = 2;     //custom attack index used by dspecial to pull bite sprites from the attack data
init_swap = true;       //if you can swap to bite at the start of the game via the css
assist = noone;         //current active assist
assist_aerial_parrystun = false; //i hate you


//no disk indicator if in playtest room (very minor)
snb_playtest = false;
with (oTestPlayer) if("snb_playtest" in self) snb_playtest = true;

if(snb_playtest) print("Playtest: On");