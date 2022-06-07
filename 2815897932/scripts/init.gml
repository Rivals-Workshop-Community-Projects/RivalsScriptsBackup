hurtbox_spr = sprite_get("box");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = sprite_get("airbox");
hitstun_hurtbox_spr = -1;

char_height = 68;
idle_anim_speed = .175;
crouch_anim_speed = .15;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .25;
plushForAmber = sprite_get("plushForAmber")
magic = 6
practice_mode = false
practice_notice = true
practice_notice_time = 240
stagger = false;
capped_accel = false;
wowza = false
boost_accel = false
facing_dir = 0
heldtaunt = false

walk_speed = 3.75;
walk_accel = 0.33;
walk_turn_time = 12;
initial_dash_time = 8;
initial_dash_speed = 7.2;
dash_speed = 6.05;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13.5;
short_hop_speed = 7;
djump_speed = 10.25;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .33;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9.5;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .525;
hitstun_grav = .475;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 6;
wave_land_time = 12;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

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
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 11; //roll speed
roll_backward_max = 11;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("Super_Jump_1");
jump_sound = sound_get("NewSubMenuBack");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_bg(sprite_get("paprika_victory_bg"));
fs_char_portrait_y = 118;
fs_portrait_x = 60
fs_meter_y = -12
fs_char_chosen_final_smash = "custom"
fs_char_chosen_trigger = "ori"
fs_charge_mult = 1.3
arena_title = "Champion of The Highlands";
copy_ability_id = 41
gfzsignspr =  sprite_get("paprika_gfzsign")
kirbyability = 16;
swallowed = 0

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
user_event(7)
