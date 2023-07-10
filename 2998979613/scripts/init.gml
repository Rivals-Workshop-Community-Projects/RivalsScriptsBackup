hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 150;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 7;
djump_speed = 9;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 2;
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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_bg(sprite_get("win_bg"));
set_victory_theme(sound_get("win_theme"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//#region guardian variables

//body collision
mask_index = sprite_get("guardian_coll");

//main body rotation
body_angles = [0, 0, 30];
disable_head = 0;
target_pl = noone;
randrot_cool = 20;
mid_angle_target = 0;
rot_angle = 0;

//main body vfx
stun_vfx = 0;
claw_slam_vfx = hit_fx_create(sprite_get("vfx_claw_slam"), 10);

//sfx
alt_cur = get_player_color(player);
intro_timer = 0;
music = noone;
lock_on_sfx = noone;
play_medley = !get_synced_var(player);
active_loop = noone;
if alt_cur == 4 && play_medley music = sound_play(sound_get("gloom_medley"), 1);


//laser
laser_timer = 0;
line_fx_timer = 0;
explosion_vfx = hit_fx_create(sprite_get("laser_boom"), 28);
fire_pos = [0, 0];
hit_pos = [0, 0];
randoff = [0, 0];
aim = 0;

//portrait etc
if alt_cur != 0{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
}else{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_corrected"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_corrected"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_corrected"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_corrected"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_corrected"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_corrected"));
}

//#region legs
leg_art = [];
for(var e = 0; e < 6; e++){
    array_push(leg_art, instance_create(x, y, "obj_article1"));
    leg_art[@e].leg_id = e;
}
for(var e = 0; e < 6; e++){
    leg_art[@e].parallel_leg = leg_art[(e + 3)%6];
}
col_displace = 0;
prev_free = free;
//#endregion

//#region attacks
lwfx_buffer = [];
used_legs = [];

//uspecial
reset_room_speed = 0;
puddle_pos = [0, 0];
cryonis_break = hit_fx_create(sprite_get("cryonis_break"), 24);

//fstrong
grabp = noone;

//dpecial
skystrike_pos = [x, y, 0];
skystrike = 0;
skystrike_timer = 0;
vfx_beam_particle = hit_fx_create(sprite_get("vfx_beam_particle"), 28);

//fair
fgrabp = noone;

//plat
instance_create(x, y, "obj_article2")

//#endregion

//#endregion