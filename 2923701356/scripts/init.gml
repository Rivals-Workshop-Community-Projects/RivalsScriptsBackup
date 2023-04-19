hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
set_victory_theme(sound_get("ollie_victory_theme"));

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 14;
dash_turn_accel = 0.9;
dash_stop_time = 6;
dash_stop_percent = .15; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .035;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

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

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

uspecial_projectile = hit_fx_create( sprite_get( "uspecialreturn" ), 30 );

//fspecial grind
fspecial_grind_hitbox = noone;
fspecial_timer = 0;
fspecial_max_time = 20;

//Rail object
rail_obj = noone;
plat_rail_obj = noone;

//Whether the thing you're riding on is a platform.
riding_plat = false;

//Dattack jump cancel on hit. I don't know why I felt the need to do this back when I implemented this
should_jc_dattack = false;

//How much is in ollie's bar.
ollie_bar_amount = 0;

//How much meter the bar shows currently.
ollie_bar_shown_amount = 0;

//Array of moves in the current combo.
ollie_move_combo_array = [];

//Array for position offset for combo
ollie_display_shake_pos = [0,0]

//Ollie combo display
ollie_display_shake_amount = 0

//Ollie end combo display
ollie_display_end_combo_value = -1;

//Ollie end combo display position
ollie_display_end_combo_ypos = 0

//Ollie_display
ollie_display_end_timer = 0;
ollie_display_end_max_time = 60;

//Whether a move could get a combo (resets when a move starts).
ollie_move_should_get_bar = false;

//The timer for when a combo should be considered "done".
ollie_combo_end_timer = 160;
ollie_combo_end_threshold = 150;

//List of valid combo moves.
ollie_combo_moves = [AT_JAB,AT_NAIR,AT_DATTACK,AT_FAIR,AT_FSPECIAL_2,AT_DAIR,AT_USPECIAL, AT_FSTRONG, AT_DSTRONG, AT_USTRONG];

//List of combo moves valid when not hitting an opponent
ollie_combo_moves_no_hit = [AT_EXTRA_1, AT_EXTRA_2]

//How much each move adds to the bar.
//ollie_move_increment = 9;
ollie_move_increment = 25;

//After getting bar, don't lose bar for this much time
ollie_bar_buffer = 0;
ollie_bar_buffer_max = 150;

//Ollie's current level
ollie_bar_current_level = 1;

//The max level you can get to on the bar.
ollie_bar_max_level = 4;

//The max value of the meter.
ollie_levelclear_threshold = 100;

//VFX for when you level up
comboend_vfx = hit_fx_create( sprite_get( "comboend" ), 20 );

//color
var p_col = get_player_color(player)
var slot = 2
bar_color = make_color_rgb(get_color_profile_slot_r(p_col,slot),get_color_profile_slot_g(p_col,slot),get_color_profile_slot_b(p_col,slot))

explosion_vfx = hit_fx_create( sprite_get( "explosion" ), 21 );
spark_vfx = hit_fx_create( sprite_get( "sparks" ), 20 );