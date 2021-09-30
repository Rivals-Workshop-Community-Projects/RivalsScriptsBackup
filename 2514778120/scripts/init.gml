hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .18;
crouch_anim_speed = .15;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 4.25;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 7;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

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
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Other local variables
nspecial_charge_timer = 0;
nspecial_charge_timer_max = 90;
nspecial_charge_timer_max_hold = 60;
nspecial_sword = 0;
sword_knockoff_threshold = 14;
sword_shared_sound = -1;
uspecial_used = false;

set_victory_bg(sprite_get("vs_bg"));
set_victory_theme(sound_get("sfx_vs_theme"));

//Hit FX
fx_plasma1 = hit_fx_create(sprite_get("plasma_hit_green1"), 21);
fx_plasma2 = hit_fx_create(sprite_get("plasma_hit_green2"), 21);
fx_plasmatip = hit_fx_create(sprite_get("plasma_hit_tip"), 30);

//Final Smash
fs_char_portrait_y  = 132;
fs_char_chosen_final_smash = "custom";

//Swords
sword_id = array_create(2);

sword_id[0] = instance_create(x, y, "obj_article1")
sword_id[0].sprite_type = 0;
sword_id[0].follower_offset_x = -64;
sword_id[0].follower_offset_y = -48;

sword_id[1] = instance_create(x, y, "obj_article1")
sword_id[1].sprite_type = 1;
sword_id[1].follower_offset_x = 24;
sword_id[1].follower_offset_y = -48;

for (var i = 0; i < 2; i++) {
    for (var j = 0; j <= 49; j++) {
        sword_attack_spr[i, j] = sprite_get("sword0_idle");
        sword_attack_hurtbox_spr[i, j] = sprite_get("sword0_idle");
        sword_window_amount[i, j] = 1;
        sword_hitbox_amount[i, j] = 1;
        sword_window_hitbox_min[i, j] = 0;
        sword_window_hitbox_max[i, j] = 0;
        sword_window_min[i, j] = 0;
        sword_window_max[i, j] = 0;
        sword_attack_xoff[i, j] = i == 0 ? -48 : 24;
        sword_attack_yoff[i, j] = -8;
        sword_attack_can_move[i, j] = true;
        sword_attack_charge_window[i, j] = 0;
        sword_bar_target[i] = sword_id[i].hitpoints_max;
    }
}