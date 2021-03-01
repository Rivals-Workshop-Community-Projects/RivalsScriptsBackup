hurtb_spr = sprite_get("idle_hurt");
hurtbox_spr = hurtb_spr;
crouchbox_spr = sprite_get("idle_hurt_crouch");
hurtbox_dash_spr = sprite_get("dash_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;


//Custom Vars
small_sprites = true;
set_victory_theme(sound_get("R00V"));
set_victory_bg(CH_CLAIREN);
flight = 0;
flight_old = 0;
flight_old_time = 10;
flight_old_timer = 0;
flight_max = 3;
nspecial_done = 0;
uspecial_done = 0;
vfx_x = 0;
vfx_y = 0;
vfx_type = 0;
nsp_cooldown = 0;
nsp_cooldown_max = 10;
jab_parried = 0;
switch_sfx = sound_get("sfx_switch");
dspec_sound_done = 0;
dstrong_speed = 8;
dstrong_speed_max = 20;

kart_sprite = sprite_get("kart_sprite");


tele_sfx = sound_get("sfx_tele_r00");
turbo_sound = sound_get("turbo_spool");
tele_spool_sfx = sound_get("tele_spool");
beep_sfx = asset_get("sfx_burnend");//sound_get("beep");
thrust_vfx = sprite_get("thruster_vfx");
rocket_low_sfx = sound_get("rocket_hit_low");

//Taunt Vars
taunt2_spr = sprite_get("taunt2");
taunt2_sfx = sound_get("taunt2");

//Genesis Vars
if get_player_color(player) == 3 {
    star_sound = sound_get("g_sound");
    taunt_sfx = sound_get("g_hehe");
    taunt_spr = sprite_get("taunt");
    //taunt_spr = sprite_get("g_taunt");
    //set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 100);
    //set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 20);
    star_vfx =  hit_fx_create(sprite_get("g_shovel"),20);
} else {
    star_sound = asset_get("sfx_clairen_tip_weak");
    taunt_sfx = sound_get("mail");
    taunt_spr = sprite_get("taunt");
    //set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 45);
    //set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 10);
    star_vfx = 251;
}

glitch_x = 0;
glitch_y = 0;
glitch_x_off = 0;
glitch_y_off = 0;
glitch_xp = 0;
glitch_yp = 0;
glitch_x_offp = 0;
glitch_y_offp = 0;
glitch_switch = 0;
glitch_switch_frame = 10;
game_is_go = 1;
rnd_index = 0;
artifact_max = 1;
set_index = 0;
g_intro_loop = 0;

confetti_count_max = 20;
confetti_count = 0;
confetti_y_off = -42;
confetti_x_off = 10;
confetti_vsp = -5;
confetti_hsp = 1.5;

taunt_item_thrown = 0;
item_type_max = 8;

energy_clr = array_create(17);

disk_sfx_bool = 0;
nb_next = 0;
nb_do = 0;
w_hspeed = 0;
w_hspeed_type = 0;
w_vspeed = 0;
w_vspeed_type = 0;
state_tim = state_timer;
stated = state;
dstr_winl = 0;
dstr_splay = 0;
att_down = 0;

xoff = 0;
yoff = 0;
do_every = 0;
thrust_rate = 2;
thrust_frames = .5;
thrust_timer = 0;
thrust_timer_max = 48;
thrust_num = 0;
thrust_num1 = 0;
speen = 0;
double_jumped = 0; 
wallout = 0;
wall_cooldown = 3*60;
s_dist = 0;
s_adj = 0;
got_gun_max = 20;
got_gun = got_gun_max;
old_djumps = djumps;
used_djump = 0;
parrie = false;
old_win = 0;

//Shade Effect
nspec_vfx_time_max = 15;
nspec_vfx_timer = 0;
nspec_vfx_spr = sprite_index;
nspec_vfx_index = image_index;
nspec_vfx_x = x;
nspec_vfx_y = y;
direc = 0;

//Color array at the bottom
hit_timer = 0;
hit_timer_max = 5;

code_1 = 0;
code_2 = 1;
code_3 = 0;
code_4 = 0;
_240 = 240;

hue = 0;
hue2 = 0;
color_rgb = 0;
color_hsv = 0;
player_color = 0;
rel_pos_10 = 0;
color_hsv_old = 0;


disk = noone;
reflect = undefined;

//Intro Vars
anim_x = 0;
anim_y = 0;
anim_intro = sprite_get("intro");
intro_index = 0;
index_mod = 4;
index_offset = 0;
intro_speed = .14;
in_intro = 0;
shadow_end = 60;
shadow_x = x;
shadow_y = y+400;
shadow_speed = 50;
//TEST VARS
empt_check = 0;
self_check = 0;
last_ID = 99999;
arry[0] = 0;

//Otto Support
otto_bobblehead_sprite = sprite_get("my_bobblehead_sprite");

//Trummel Support
trummelcodecneeded = false;
trummelcodec_id = noone;

//Kirb Support
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;

//TCO Support
tcoart = sprite_get("notcoart");

//BTT Support
get_btt_data = false;

//Rune Support
if has_rune("I") nspec_cool = 10;
else nspec_cool = 20;

//Sprites
radio_vfx = hit_fx_create(sprite_get("vfx_thruster_hit"),20);
thruster_vfx = hit_fx_create(sprite_get("thruster_vfx"),35);
flight_gui = sprite_get("flight_gui");
hud_flight_gui = sprite_get("hud_flight_gui");
nspecial_gui = sprite_get("nspecial_gui");
nspecial_h_gui = sprite_get("nspecial_h_gui");
nspec_frame = 0;
has_hit_last = 0;

char_height = 65;
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4.0;
walk_accel = .15;
walk_turn_time = 6;
initial_dash_time = 10; //14
initial_dash_speed = 7.5; //8
dash_speed = 7; //7.5
dash_turn_time = 10;
dash_turn_accel = 0; //1.5
dash_stop_time = 6;
dash_stop_percent = .40; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 8;//8;
if has_rune("K") {
    leave_ground_max = 9999;//7 //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 9999;//7 //the maximum hsp you can have when jumping from the ground
    //air_max_speed = 9999;//7 //the maximum hsp you can accelerate to when in a normal aerial state
} else {
    leave_ground_max = 8;//7 //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 7;//7 //the maximum hsp you can have when jumping from the ground
}
air_max_speed = 6;//7 //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .35;
hitstun_grav = .45;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = -0.05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_ell");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("rocket_hit_low");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

