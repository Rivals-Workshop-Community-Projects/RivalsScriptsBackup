hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

if (get_player_color(player) == 11){
    log_alt = true
} else {
    log_alt = false
}

if (get_player_color(player) == 4){
    ani_alt = true
} else {
    ani_alt = false
}

    
//compat
toonlink_photo = sprite_get("_bug_toonlink_photo");
kirbyability = 16;

dash_sfx = true;
funny_dash = 0;
funny_fx = 0;
counter = false;

// intro
introTimer = -4;
int_length = 9;  // num of anim frames
int_spd = 4; // in game frames per anim frame

//Nspecial Stuff
nspecial_number = 0;
rage_damage = 0;
jackpot = false;
jackpot_number = 0;
jackpot_item = 0;
jackpot_shading = false;
jackpot_timer = 0;
proj_stored = false;
store_timer = 0;
store_timer2 = 10;
store_size = 2;

//Dair Grab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
next_dair_move = 0;

//Walk Stuff
walkfx_location = 0;

dtilt_offset = [66,0];
dtilt_teleport = false;
dtilt_end = false;
dtilt_start = false;

spr_dir_prev = spr_dir;


dtilt_tp_dist = 100;  //Distance the teleport will travel.
dtilt_tp_prec = 8; //The precision of the teleportation algorithm. Larger number will be more accurate, but slower to calculate. 8 is a good balance of speed and precision.

char_height = 46;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .6;
pratfall_anim_speed = .25;

walk_speed = 0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 3.5;
dash_speed = 12.8;
dash_turn_time = 6;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.2;
short_hop_speed = 7;
djump_speed = 8.8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 12;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Collisions
sprite_change_collision_mask("idle", false, 2, 0, 0, 0, 50, 0 );

//Date Girl Support. Generated using McDucky's Date Girl Generator! 
Chatting = true;
DG_portrait = sprite_get("DG_portrait");
var DG_page = 0;

//Page 0 - Start
//---------------------------------------------------
DG_page = 0;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I sense a strange disturbance in the force

"

DG_nextindex[DG_page] = 1;

//Page 1 - 
//---------------------------------------------------
DG_page = 1;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"BUGINGI

"
DG_nextindex[DG_page] = 2;

//Page 2 - 
//---------------------------------------------------
DG_page = 2;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Yeah yeah, I'm amazing and handsome.
I kinda need you to move out the way though.
You're blocking out the wifi."

DG_nextindex[DG_page] = 3;

//Page 3 - BRANCHING PATHS
//---------------------------------------------------
DG_page = 3;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I'm trying to play Bingy's Adventure for the Nintendo 64

"

DG_options[DG_page] = 
"What's Bingy's Adventure?
No, have a date with me NOW
Oh sorry, I'll move out the way for you"
			
DG_answers[DG_page] = [4,21,21];


//Page 4 - Bingy's Adventure
//---------------------------------------------------
DG_page = 4;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Hmm... It makes sense that you don't know all
that much about it honestly.
"

DG_nextindex[DG_page] = 5;

//Page 5 - Bingy's Adventure
//---------------------------------------------------
DG_page = 5;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It's this very experimental action platformer with top down
roguelike elements
"

DG_nextindex[DG_page] = 6;

//Page 6 - Bingy's Adventure
//---------------------------------------------------
DG_page = 6;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It did like super badly in sales though
first off they like didn't advertise it at all so no one
even knew about it"

DG_nextindex[DG_page] = 7;

//Page 7 - Bingy's Adventure
//---------------------------------------------------
DG_page = 7;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"Interesting...

"
DG_nextindex[DG_page] = 8;

//Page 8 - Bingy's Adventure
//---------------------------------------------------
DG_page = 8;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Also the whole dying makes us leak where you live
mechanic was really poorly received 
"

DG_nextindex[DG_page] = 9;

//Page 9 - Bingy's Adventure
//---------------------------------------------------
DG_page = 9;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"Wait what

"
DG_nextindex[DG_page] = 11;

//Page 10 - Bingy's Adventure
//---------------------------------------------------
DG_page = 10;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"How did something like that even get past production

"
DG_nextindex[DG_page] = 11;

//Page 11 - Bingy's Adventure
//---------------------------------------------------
DG_page = 11;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Yeah i know right

"

DG_nextindex[DG_page] = 12;

//Page 12 - Bingy's Adventure
//---------------------------------------------------
DG_page = 12;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"oh oh and get this
despite the horrible sales figures and outcry from gamers
there was a spin off sequel released for the bingy wingy"

DG_nextindex[DG_page] = 13;

//Page 13 - Bingy's Adventure
//---------------------------------------------------
DG_page = 13;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"The bingy wingy???

"
DG_nextindex[DG_page] = 14;

//Page 14 - Bingy's Adventure
//---------------------------------------------------
DG_page = 14;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Oh you dont know about the bingy wingy either?

"

DG_nextindex[DG_page] = 15;

//Page 15 - Bingy's Adventure
//---------------------------------------------------
DG_page = 15;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It was a weird prototype of the gamecube developed
by panasonic and had like blueray support
"

DG_nextindex[DG_page] = 16;

//Page 16 - Bingy's Adventure
//---------------------------------------------------
DG_page = 16;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"And it had chibi graphics and everything and was aimed
towards children
it was really weird"

DG_nextindex[DG_page] = 17;

//Page 17 - Bingy's Adventure
//---------------------------------------------------
DG_page = 17;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"ok you're definitely pulling my leg
there's no way they would make a console
called the bingy wingy"
DG_nextindex[DG_page] = 18;

//Page 18 - Bingy's Adventure
//---------------------------------------------------
DG_page = 18;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"what?
what's the bingy wingy
"

DG_nextindex[DG_page] = 19;

//Page 19 - Bingy's Adventure
//---------------------------------------------------
DG_page = 19;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"?????

"
DG_nextindex[DG_page] = 20;

//Page 20 - Bingy's Adventure
//---------------------------------------------------
DG_page = 20;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"you're a weird lady..

"

DG_nextindex[DG_page] = 21;

//Page 21 - Bingy's Adventure
//---------------------------------------------------
DG_page = 21;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I'm going to engage in combat with you now because of how
strange you are
"


user_event(14);