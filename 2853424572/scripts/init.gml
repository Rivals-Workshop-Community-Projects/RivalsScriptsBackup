hurtbox_spr = sprite_get("box");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = sprite_get("airbox");
hitstun_hurtbox_spr = -1;
platback_spr = sprite_get("platback");

char_height = 48;
idle_anim_speed = .175;
crouch_anim_speed = .175;
walk_anim_speed = .09;
dash_anim_speed = .2;
pratfall_anim_speed = .25;
plushForAmber = sprite_get("plushForAmber")
magic = 0
heldtaunt = false
practice_mode = false
practice_notice = true
practice_notice_time = 240
downBStart = 0;
downBDamage = 0;
fspecial_air_used = false
fstrong_2_armor = true
fstrong_2_startdamage = 0;
gravstop = false
afterimage = false
overlay = false
alpha = 0.8
afterimage_spr = sprite_get("afterimage");
overlay_spr = sprite_get("dstrong2_overlay");

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 6;
initial_dash_speed = 7.5;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12.5;
short_hop_speed = 6.75;
djump_speed = 10;
leave_ground_max = 6.25; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.25; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .5;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .025;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 12.5; //fast fall speed
gravity_speed = .5;
hitstun_grav = .48;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

wall_frames = 1;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 12;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("Super_Jump_1");
jump_sound = sound_get("NewSubMenuBack");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_bg(sprite_get("arizona_victory_bg"));
fs_char_portrait_y = 118;
fs_portrait_x = 60
fs_meter_y = -12
fs_char_chosen_final_smash = "custom"
fs_char_chosen_trigger = "ori"
fs_charge_mult = 1.3
arena_title = "Champ'een of the Prairie'";
copy_ability_id = 49
gfzsignspr =  sprite_get("arizona_gfzsign")
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait_b");
kirbyability = 16;
swallowed = 0
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Uhh, where am I?";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "[shake] Who dares enter Dracula's castle?";
page++

//Page 3
dracula_speaker[page] = 2;
dracula_text[page] = "Oh, brother.";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Welp. Looks like it's time for a throw-down!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "A puny one like you? Fighting the Prince of Darkness? Ha!";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "Darkness don't scare me none. [taunt]";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Have at you! [glass]";
page++;

user_event(7)