hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");

air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

	fright_down = right_down 
	fleft_down = left_down
	fup_down = up_down
	fdown_down = down_down
	    	
jabgrab = false
boi = false
reset = false 
targeting = false 

char_height = 50.69;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 20;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_gus_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

awaken = hit_fx_create( sprite_get( "fx_awaken" ), 69);
fx_s = hit_fx_create( sprite_get( "fx_snap" ), 20 );
fx_d = hit_fx_create( sprite_get( "fx_doomed" ), 20 );
fx_ds = hit_fx_create( sprite_get( "fx_doomed" ), 8 );
droplet = hit_fx_create( sprite_get( "fx_droplet" ), 18 );
aexp = hit_fx_create( sprite_get( "article_explosion" ), 16 );
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;


/// dracula dialog

//Dracula support
dracula_portrait = sprite_get("dracula_port")
dracula_portrait2 = asset_get("empty_sprite")
dracula_portrait3 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "The shine of heaven compels you!";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = ". . .";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Drop the act, I know what creature you are.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Still, I'm curious how a mice could embrace vampirism in this world.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "You're saying you understand my power?";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Of course. For I am the master of what dwelling inside you.";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "So should I bow now or ...?";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "You seems to have quite a manner, however, I'd prefer you put up a fight.";
page++;