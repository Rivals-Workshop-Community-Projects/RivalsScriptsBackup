hurtbox_spr = sprite_get("ar_hurtbox");
crouchbox_spr = sprite_get("ar_crouch_hurtbox");
dashbox_spr = sprite_get("ar_dash_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.00;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.0;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 7.4;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .60; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .60;
hitstun_grav = .5;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//sfx and vfx
set_victory_theme( sound_get( "dony_victory" ) );
set_victory_bg(CH_CLAIREN);
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

hit_sprites[0] = hit_fx_create(sprite_get("hfx_blood_small"), 30);
hit_sprites[1] = hit_fx_create(sprite_get("hfx_blood_medium"), 30);
hit_sprites[2] = hit_fx_create(sprite_get("hfx_blood_large"), 30);
hit_sprites[3] = hit_fx_create(sprite_get("hfx_blood_beeg"), 30);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//ftilt
ftilt_canc = false;

//Uspecial 
usp_forger_id = 0;
usp_forger_drag = false;
uspec_exhaust = 2;
uspec_cd = false

//puddle
puddlefall = false;

//Dstrong
Dgrab_id = 0
Dgrab = false;
dstrongcharge = 0;

//Fstrong
fstr_tp = false;
fstr_dir = 0;

//dtilt
puddle_exist = true;
    
    
//Uair
    UAGrab = false;
    UAGrab_id = 0;
    UAGrab_timer = 0;
    UAGdir = 0;
    
//Dspecial
offset_full = 145;
temp_offset = 0;

//Dspecial_air
DSPEC_TP = false;
DSPA_timer = 0;
DSPA_grab = false;

//Fsepcial
fspec_jump = false;


//dair 
    Dpuddle = false;

//intro crap
introTimer = -2;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
pommel = false

//Support
Hikaru_Title = "Golden Blues";
arena_title = "The Golden Fool";
battle_text = "His eyes hold a pained expression..."
ncode1 = "Mysterious man from another world. Age Unknown"
ncode2 = "Has single mindedly torn through Aether using"
ncode3 = "liquid gold as a weapon. Approach with utmost caution"
miiverse_post = sprite_get("dony_miiverse");
sprite_change_offset("dony_miiverse", 60, 30);
feri_costume = sprite_get("feri");
otto_bobblehead_sprite = sprite_get("dony_bobble"); 
plushForAmber = sprite_get("dony_plush");
guiltySprite = sprite_get("guiltyDony");

//Dracula
//Dracula support
dracula_portrait = sprite_get("dialogue_dony_portrait");
dracula_portrait2 = sprite_get("dialogue_dony_portrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "And who are you supposed to be?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Does it really matter? I don't exactly have time to sit and chat.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "You've got one of them Distance Mirrors, yeah? I need to use it ASAP.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "You barge into my castle, spout out foolish requests, and expect me to offer you charity!?!";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "Look, if you aren't gonna let me pass...";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "Then I'm just gonna have to tear you apart until there's nothing left.";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Brash Words for a blood drunk fool! [glass]I'll see to it that you are silenced!";
page++;

//Page 7
dracula_speaker[page] = 2;
dracula_text[page] = "I'd like to see you try, punk!";
page++;


//Secret Alt Colors
ColorLock = 0;
ColorLocked = false;
Default = 0;
Rune_Maker = 0;
Crayfish = 0;
Emerald_Confidant = 0;
Black_Blank = 0;
Robbery_Purple = 0;
Empty_Flame = 0;
Crimson_Scourge = 0;
King_of_Kings = 0;
Humble_Melody = 0;
Crystalline_Growth = 0;
Explosive_Rebel = 0;
Poisonous_Roar = 0;
Attuned_Traveler = 0;
Hardened_Veteran = 0;
Sanguine_Lightning = 0;
