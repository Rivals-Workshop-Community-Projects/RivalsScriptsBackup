
//ao
//this is ao init



hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 44;
idle_anim_speed = .075;
crouch_anim_speed = .1;
walk_anim_speed = .1;
walkturn_anim_speed = .04;
dash_anim_speed = .13;//.12
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 2;
initial_dash_time = 12;
initial_dash_speed = 7.5;//7
dash_speed = 6.8;//6.2//6.5
dash_turn_time = 10;
dash_turn_accel = 1.8;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;//9
djump_speed = 12;
leave_ground_max = 6.2;//7//7.2 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.2;//7//7.5//8 //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;//7
walljump_vsp = 13;//11
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12;//16 //fast fall speed
gravity_speed = .6;
hitstun_grav = .45;//0.5
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, larger than 1 = lighter, smaller than 1 = heavier 

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 12;//7;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.02;//0.03 //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 0
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 0;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

wall_frames = 2;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

aodev = false;
aodevcount = 0;

nsp_dir_h = 0;
nsp_dir_v = 0;
nsp_direction_storage_for_post_draw = 0;

dsp_free = false;
dsp_done = false;
dsp_override = false;
dsp_qualified = false;
dsp_confirmed = false;
dsp_TESTMODE = 0;
dsp_test_buffer = 0;
dsp_test_timer = 0;
dsp_test_timer_b = 0;
dsp_test_max = 50;
dsp_test_dir = 0;
dsp_modeii_buffer = false;
dsp_buffer_amt = 6;//6 as it is the same amount of buffer frames for control inputs

fsp_level = 0;
fsp_time = 0;
fsp_t_max = 16;
fsp_a_time = 0;
fsp_a_t_max = 16;
fsp_buffer = 0;
fsp_buffer_amount = 18;//20
fsp_jc_confirm = false;

usp_did = false;

usp_d_able = false;
usp_d_done = false;

utilt_hit = false;
ftilt_hit = false;
nsp_hit = false;

//mawralgrab
grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;

AT_TAUNT_3 = AT_EXTRA_2;
AT_TAUNT_4 = AT_EXTRA_3;
skate_tmp = 0;
AT_FINAL = 49;

optimalmodeEX = false;
fake_mhID = -4;
hbox_num = 0;

v_init = false;
voicemode = false;
vo_volume_set = 0.7;
vo_mutechance = 0.65;
vo_hurt_mutechance = 0.35;

Hikaru_Title = "Lylip Magic";
arena_title = "Stargazer Lylip"; boxing_title = arena_title; //holy frick
arena_short_name = "Ao";
battle_text = "* Smells like star trails.";
greenwood_cheer = 1;

TCG_Kirby_Copy = 9;//tornado
copy_ability_id = 4;//cutter
knight_compat_dream = 
    [
        "No fear, keep going.",
        "Confidence, confidence!!",
        "...This next moment!"
    ]
mo_grab_x = 0; mo_grab_y = 0;
mo_mindName = "Ao"; mo_mindAge = "??"; mo_mindGender = "Female"; mo_mindIdent = "Lylip";
mo_mindMessage = "Seize the moment...";
buddy_screenko_sprite = sprite_get("etc_koscreen")
buddy_starko_sprite = sprite_get("etc_kostar")


steve_death_message = "Steve was slain by starryao";

tackle_hfx = hit_fx_create( sprite_get("hfx_tackle"), 18 )
tackle_hfx2 = hit_fx_create( sprite_get("hfx_tackle2"), 24 )
set_victory_bg( sprite_get( "victorybg" ));
music_init = false;
mode = false;
particle1 = hit_fx_create( sprite_get("particle1"), 12 );
particle2 = hit_fx_create( sprite_get("particle2"), 12 );

//demon horde compat...maybe
hit_player_event = 1;
demonhorde_portrait_x = -100;

//victory quote thing - sscripts are unload.gml and results_post_draw.gml - scripts are taken from reiga mal but is from frtoud hypercam
ushr_victory_quote = "Not often we dream of the past like this. Gosh. It's like a... physical retrospection.";
ushr_handled_victory_quote = false;
victoryicon_subimg = 0;

//fs
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 160;
fs_charge_mult = 1; //default is 1.3


//Dracula support wow!
dracula_portrait = sprite_get("etc_face");
dracula_portrait2 = asset_get("empty_sprite"); dracula_portrait3 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Who dare enter my throne room so early in the night?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "...Oh dear. I was just training by fighting up the castle, and...";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Now I am face to face with the master of dusk and darkness.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "How flattering. However, it sounds to be that you've caused much damage in my very castle.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "I am feeling generous tonight. I may let you leave alive... but not without a fight.";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "Oh dear.";
page++;



//Daroach support wow! you twos names look so similar mayn
daroach_portrait = dracula_portrait;
daroach_portrait2 = asset_get("empty_sprite"); daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "No need for words. Let's get to it now.";
page++;

//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "Alright.";
page++;