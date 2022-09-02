// Phantom variables
phantom_active = false;
has_dash = true;
has_usp1_stall = true; // Handles stall protection for USpecial 1.
has_nair_stall = true;
nair_fastfalled = false;
keyboard_mode = false;
kb_mode_activation_time = 0; // Purely visual.
start_sprdir = 0; // preventing some jank with nspecial
fstrong1fhit = false;
dracvoice = false;

voice_mode_activation_time = 0;
voice_mode = false;
has_enter = false;

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

//grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

fspec_djump = false; //one extra jump after fspec hit

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = 12/ 60;
dash_anim_speed = .25;
pratfall_anim_spe2 = .25;

walk_speed = 4.2;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7.5;
dash_speed = 6.50;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.40;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = 0.02;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 36;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.50;
hitstun_grav = 0.5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;
small_djump = true;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//double jump effect
djump = hit_fx_create( sprite_get( "djump"), 18);
uspecjump = hit_fx_create( sprite_get( "uspecjump"), 18);
bouncefx = hit_fx_create( sprite_get( "bouncefx"), 16);
cut = hit_fx_create( sprite_get( "cut"), 16);

rslash1 = hit_fx_create( sprite_get( "rslash1"), 2);
rslash2 = hit_fx_create( sprite_get( "rslash2"), 2);
rslash3 = hit_fx_create( sprite_get( "rslash3"), 6);
rslash4 = hit_fx_create( sprite_get( "rslash4"), 2);
rslash1flip = hit_fx_create( sprite_get( "rslash1flip"), 2);
rslash2flip = hit_fx_create( sprite_get( "rslash2flip"), 2);
rslash3flip = hit_fx_create( sprite_get( "rslash3flip"), 6);
rslash4flip = hit_fx_create( sprite_get( "rslash4flip"), 2);
spark = hit_fx_create( sprite_get( "spark"), 4);
slashspark = hit_fx_create( sprite_get( "slashspark"), 16);
slashspark2 = hit_fx_create( sprite_get( "slashspark2"), 16);
nslashspark = hit_fx_create( sprite_get( "nslashspark"), 12);
nslashspark2 = hit_fx_create( sprite_get( "nslashspark2"), 12);
slashsparkslow = hit_fx_create( sprite_get( "slashspark"), 20);
slashsparkslow2 = hit_fx_create( sprite_get( "slashspark2"), 20);
nslashsparkslow = hit_fx_create( sprite_get( "nslashspark"), 18);
nslashsparkslow2 = hit_fx_create( sprite_get( "nslashspark2"), 18);
myonhit = hit_fx_create( sprite_get( "myonhit"), 18);
TJCflash = hit_fx_create( sprite_get( "TJCflash"), 8);
TJCflashslow = hit_fx_create( sprite_get( "TJCflash"), 16);
TJCswirl = hit_fx_create( sprite_get( "TJCswirl"), 11);
TJCswirl2 = hit_fx_create( sprite_get( "TJCswirl2"), 11);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

///////////////////////////////////////////////support stuff

//Dracula support
dracula_portrait = sprite_get("youmudrac1");
dracula_portrait2 = sprite_get("youmudrac2"); //or asset_get("empty_sprite")
dracula_portrait3 = sprite_get("youmudrac3"); //or asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Looks like I've found the troublemaker.";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "What a bothersome phantom...";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "You are akin to a fool who walks into places with signs that say 'DO NOT ENTER'.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Ignoring the rules, and forcing your way in. How rude.";
page++;

//Page 4
dracula_speaker[page] = 3;
dracula_text[page] = "Actually, that's my line... and I'm a HALF-phantom, jeez!";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "In any case, you've been causing problems for Lady Yuyuko, haven't you?";
page++;

//Page 6
dracula_speaker[page] = 2;
dracula_text[page] = "If so, I'll slash you. If not, I'll slash you and move on.";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "An entire bloodline dedicated to the servitude of one person or purpose...[glass] 
How utterly pitiful. You could not even hope to make a mark without the holiest of weapons.";
page++;

//Page 8
dracula_speaker[page] = 2;
dracula_text[page] = "Your words are as empty as your soul. 
The things that cannot be cut by my Roukanken, forged by youkai, are close to none![taunt]";
page++;

//repeat...

