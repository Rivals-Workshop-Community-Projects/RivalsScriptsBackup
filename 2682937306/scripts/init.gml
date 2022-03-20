hurtbox_spr = sprite_get("cradily_hurt_box");
crouchbox_spr = sprite_get("cradily_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Physical size
char_height         = 60;
knockback_adj       = 0.9;		// 0.9  -  1.2

// Ground movement
walk_speed          = 1.5;
walk_accel          = 0.2;
walk_turn_time      = 5;
initial_dash_time   = 5;
initial_dash_speed  = 4;
dash_speed          = 3.5;
dash_turn_time      = 5;
dash_turn_accel     = 1.2;
dash_stop_time      = 7;
dash_stop_percent   = .35; 
ground_friction     = .5;
moonwalk_accel      = 1.4;
    
// Air movement
leave_ground_max    = 5; 
max_jump_hsp        = 6; 
air_max_speed       = 3; 
jump_change         = 3; 
air_accel           = .3;
prat_fall_accel     = .85; 
air_friction        = .03;
max_fall            = 12; 
fast_fall           = 16; 
gravity_speed       = .5;
hitstun_grav        = .5;

// Jumps
jump_start_time     = 5;
jump_speed          = 10;
short_hop_speed     = 8;
djump_speed         = 9;                  
max_djumps          = 1;    
double_jump_time    = 32;
walljump_hsp        = 5;
walljump_vsp        = 10;
walljump_time       = 64;
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24      

// Shield-button actions
land_time           = 4;
prat_land_time      = 3;
wave_land_time      = 8;
wave_land_adj       = 1.35;
wave_friction       = 0.3;
roll_forward_max    = 8;        // 9    -  11
roll_backward_max   = 8;        // 9    -  11 


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.2;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 30;		// 18   -  32
wall_frames         = 2;

// Crouch animation frames
crouch_startup_frames   = 3;
crouch_active_frames    = 1;
crouch_recovery_frames  = 4;

// Parry animation frames
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech animation frames
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll animation frames
techroll_startup_frames     = 2
techroll_active_frames      = 2;
techroll_recovery_frames    = 2;
techroll_speed              = 8;

// Airdodge animation frames
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;
air_dodge_speed             = 7.5;

// Roll animation frames
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

//Test knockback
knockback_spd = vsp;

//Tornado stuff
tornado_id = noone;
tornadowind_id = noone;
buffup = false; //The player having the power up
amp = 1; //The number multiplied with another

//Poision blob
poison_id = noone;
poi_off = false;

//Directional UpSpecial
tilt = 0;

//Down Tilt pellet ammount
pellets = 0;

//Menu sound
menuplayed = 0;

//Intro
introTimer = -2; //setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

swallow = sound_get("swallow");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Miiverse

miiverse_post = sprite_get("cradily_miiverse");

// Pokemon Stadium

pkmn_stadium_front_img = sprite_get("cradily_front_sprite");
pkmn_stadium_back_img = sprite_get("cradily_back_sprite");
pkmn_stadium_name_override = "Cradily";

// Dracula

dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");
dracula_portrait3 = sprite_get("dracula_portrait3");

var page = 0;

dracula_speaker[page] = 0;
dracula_text[page] = "L-Lord Cradily![glass] I wasn't expecting to see you here...";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "It wasn't easy climbing out of hell, Vlad. I'm sure you understand.";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Nevertheless, I'm glad to see you're doing well.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "The feeling is mutual old friend. Is there anything I can help you with?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Well, these old stems haven't been out for much fighting recently. Care to spare me a duel?";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Why yes. I'm always down for one.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "What do you say if the winner gets treated to a high-course feast?";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "Hah, I look forward to emptying your satchel, Vladdy.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Have at you!";
page++;

//Daroach

daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = sprite_get("dracula_portrait2")
daroach_portrait3 = sprite_get("dracula_portrait3")
daroach_portrait4 = asset_get("empty_sprite")

var page = 0;

daroach_speaker[page] = 0;
daroach_text[page] = "A parasite? Here? I thought I told Storo to seal the windshields!";
page++;

daroach_speaker[page] = 3;
daroach_text[page] = "Don't you dare disrespect me, rat! Who are you calling a parasite?";
page++;

daroach_speaker[page] = 3;
daroach_text[page] = "I am one of earth's mightiest Pokemon of the golden age!";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "I don't care if you're from the golden age, the dime age, or the bartering age.";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "Leave my ship this instant.";
page++;

daroach_speaker[page] = 2;
daroach_text[page] = "Not a chance. I will have your cruiser, and if you won't surrender, I won't hesitate to exterminate you.";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "You talk too much for a parasite. My crew will send you back to the watering hole you came from.";
page++;
