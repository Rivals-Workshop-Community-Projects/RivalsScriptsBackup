hurtbox_spr = sprite_get("anthem_hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5.5;
djump_speed = 8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 6;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_leaves");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//local
air_dodge_fx_state = 0;
last_hit_stun = false;

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

wall_player_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
wall_player_xoffset = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
fair_wall_times = 0;
fair_wall_times_max = 3;
fair_wall_timer = 0;
fair_wall_timer_max = 120;
fspecial_times = 0;
fspecial_dir = 0;
fspecial_dir_inc = 6;
fspecial_amount_max = 5;
fspecial_timer_max = 300;
nspecial_article = noone;
uspecial_nodestart_x = 0;
uspecial_nodestart_y = 0;
uspecial_node_x = 0;
uspecial_node_y = 0;
uspecial_nodestart_dir = 0;
uspecial_index = 0;
uspecial_dist = 256;
uspecial_dist_max = 256;
uspecial_used = false;
uspecial_grounded = false;
tp_dist = 96;  //Distance the teleport will travel.
tp_prec = 8; //The precision of the teleportation algorithm. Larger number will be more accurate, but slower to calculate. 8 is a good balance of speed and precision.

fx_airdodge = hit_fx_create(sprite_get("fx_airdodge"), 16);
fx_dstrong = hit_fx_create( sprite_get("fx_dstrong"), 9);
fx_slashlight = hit_fx_create(sprite_get("fx_slashlight"), 24);
fx_slashheavy = hit_fx_create(sprite_get("fx_slashheavy"), 12);

/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
*/
//Hikaru
Hikaru_Title = "Overgrown Reaper";
//Mt. Dedede
arena_title = "The Overgrown Reaper";
//Soulbound Conflict
battle_text = "* Vines prevents you from going further."
//Adventure Mode
hit_player_event = 0;
//Feri
sprite_change_offset("costume_anthem", 84, 114);
feri_costume = sprite_get("costume_anthem");

//Dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "Ah, you must be the landscaper. This castle's garden needs tending to.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "You can get started by trimming the hedges on floor one!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Well...? Get to work!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "[shake]I SAID GET TO WORK!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "You silent types really get on my nerves.[glass] Perhaps a beating will teach you to go against Count Dracula!";
page++;

//Final Smash
fs_char_portrait_y  = 132;
fs_char_chosen_final_smash = "custom";
fs_players = ds_list_create();
