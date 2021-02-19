//article1_init

init = 0;
sprite_index = sprite_get("ou_idle");

can_be_grounded = true;
ignores_walls = false;
free = true;
uses_shader = true;

//Custom Vars
aei_id = noone;
stage_y = get_stage_data(SD_Y_POS);
stage_x = get_stage_data(SD_X_POS);
//State Actions
state = 0;
state_timer = 0;
ou_state_timer = 0;
ou_state = PS_IDLE;
disp_state = 0;
prev_state = 0;
attack = 0;
disp_attack = 0;
mounted_index = image_index;
mounted_sprite = sprite_index;
ou_sprite_index = sprite_index;
ou_image_index  =image_index;
ou_image_number = image_number;

//Animation Actions
char_height = 25;
anim_speed = .02;
full_time = 20;
anim_type = 0; //0 is cycle; 1 is once per state

//Movement Variables
walk_speed = 6;
walk_accel = 1.5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 8.3;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.

max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .45;
hitstun_grav = .45;
knockback_adj = 1.5; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 15;
wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

has_air_dodge = 1;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

roll_dir = 0;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
death_sound = asset_get("sfx_death2");

//Knockback Variables
hit_id = noone;
percent = 0;
kb_power = 0;
bkb = 0;
hitstun = 0;
kb_angle = 0;
kb_scale = 0;
hitpause = 0;
hit_lockout = 0;
hit_sound = 0;
hit_visual = 0;
has_hit = 0;
has_hit_en = 0;
enem = 0;
invincible = 0;

last_hitbox = noone;

blast_left = stage_x-get_stage_data(SD_SIDE_BLASTZONE);
blast_right = room_width-stage_x+get_stage_data(SD_SIDE_BLASTZONE);
blast_top = stage_y-get_stage_data(SD_TOP_BLASTZONE);
blast_bottom = stage_y+get_stage_data(SD_BOTTOM_BLASTZONE);

//Pathing Variables
x_dist = 0;
y_dist = 0;
range = 60;
jumped = 0;
djumps = 0;
vsp_prev = 0;
on_ground = 0;
plat_drop = 0;
to_dir = 0;
walk_turn_timer = 0;

//Control Variables
control = 0;
control_timer = 0;
committed = 0;

//Attack Variables
attack_fresh = 1;
attack = 0;
last_attack = -1;
window = 1;
window_timer = 0;
attack_new = 1;

_ag_category = 0;
_ag_num_windows = 0;
_ag_sprite = 0;
_ag_hurtbox_sprite = 0;
_ag_num_windows = 0;
_ag_uses_custom_gravity = 0;

_hg_num_hitboxes = 0;

//Special Variables
recal_dir = 0;
recal_speed = 8;
mounted = false;

//Window Variables
_ag_window_type[7] = 0;
_ag_window_length[7] = 0;
_ag_window_anim_frames[7] = 0;
_ag_window_anim_frame_start[7] = 0;
_ag_window_has_sfx[7] = 0;
_ag_window_sfx[7] = 0;
_ag_window_sfx_frame[7] = 0;
_ag_window_HSPEED[7] = 0;
_ag_window_HSPEED_TYPE[7] = 0;
_ag_window_VSPEED[7] = 0;
_ag_window_VSPEED_TYPE[7] = 0;
_ag_window_custom_gravity[7] = 0;
_ag_window_wifflag[7] = 0;

//Hitbox Variables
_hg_window[5] = 0;
_hg_window_frame[5] = 0;
_hg_x[5] = 0;
_hg_y[5] = 0;
_hg_bhitp[5] = 0;
_hg_shitp[5] = 0;

hitb = noone;
hitb_X = 0;
hitb_y = 0;
j = 0;
hbox_group = -1;
hbox_attack = -1;
hbox_player = noone;

//Input Variables

this_joy_dir = 0; 
joy_dir = 0;
down_down = 0;
up_down = 0;
left_down = 0;
right_down = 0;
jump_down = 0;
attack_down = 0;
shield_down = 0;
taunt_down = 0;
up_strong_down = 0;
down_strong_down = 0;
left_strong_down = 0;
right_strong_down = 0;
strong_down = 0;
joy_pad_idle = 0;
joy_dir1 = 0;
down_down1 = 0;
up_down1 = 0;
left_down1 = 0;
right_down1 = 0;
jump_down1 = 0;
attack_down1 = 0;
shield_down1 = 0;
taunt_down1 = 0;
up_strong_down1 = 0;
down_strong_down1 = 0;
left_strong_down1 = 0;
right_strong_down1 = 0;
strong_down1 = 0;
joy_pad_idle1 = 0;
joy_dir2 = 0;
down_down2 = 0;
up_down2 = 0;
left_down2 = 0;
right_down2 = 0;
jump_down2 = 0;
attack_down2 = 0;
shield_down2 = 0;
taunt_down2 = 0;
up_strong_down2 = 0;
down_strong_down2 = 0;
left_strong_down2 = 0;
right_strong_down2 = 0;
strong_down2 = 0;
joy_pad_idle2 = 0;
joy_dir3 = 0;
down_down3 = 0;
up_down3 = 0;
left_down3 = 0;
right_down3 = 0;
jump_down3 = 0;
attack_down3 = 0;
shield_down3 = 0;
taunt_down3 = 0;
up_strong_down3 = 0;
down_strong_down3 = 0;
left_strong_down3 = 0;
right_strong_down3 = 0;
strong_down3 = 0;
joy_pad_idle3 = 0;

jump_held = 0;
strong_pressed = 0;
shield_held = 0;

//Animation Array
anim_ar[50] = 0; //Initalize array

anim_ar[PS_IDLE] = sprite_get("ou_idle");
anim_ar[PS_WALK] = sprite_get("ou_walk");
anim_ar[PS_JUMPSQUAT] = sprite_get("ou_jumpstart");
anim_ar[PS_FIRST_JUMP] = sprite_get("ou_jump");
anim_ar[PS_CROUCH] = sprite_get("ou_crouch");
anim_ar[PS_HITSTUN] = sprite_get("ou_hurt");

