// info2="Fspecial is a versatile move, being jump cancelable, special cancelable, and grab cancelable if you press attack."

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 62;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 4.5;
dash_speed = 5.5;
dash_turn_time = 13;
dash_turn_accel = 2;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.46;
hitstun_grav = .51;
knockback_adj = .98; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
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

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//victory
set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("victory"));

//hfx

hfx_eruption_large = hit_fx_create(sprite_get("hfx_eruption_large"), 27);
hfx_eruption_small = hit_fx_create(sprite_get("hfx_eruption_small"), 27);
hfx_eruption_swirl = hit_fx_create(sprite_get("hfx_eruption_swirl"), 27);

large_quick = hit_fx_create(sprite_get("hfx_eruption_large"), 18);
small_quick = hit_fx_create(sprite_get("hfx_eruption_small"), 18);
swirl_quick = hit_fx_create(sprite_get("hfx_eruption_swirl"), 18);

fx_fire = hit_fx_create(sprite_get("fx_fire"), 24);

/*
EFFECT DATA
100/200 = eruption hit large
101/201 = eruption hit small
102/202 = no consume eruption hit large
103/203 = no consume eruption hit small
*/

//variables

aether_alt_input = false;
if(get_training_cpu_action() == CPU_FIGHT){
    practice = false;               //whether or not you're in training mode
}else{
    practice = true;
}

//voice_0 = (get_synced_var(player) == 0)
voice_brawl = (get_synced_var(player) == 1) * 1.25;
voice_ult = (get_synced_var(player) == 2) * 2;//1.25
fstrong_taunted = false;
earrape = false;
got_crit = false;

eruption_instances = array_create(3);
eruption_instances[0] = noone;
eruption_instances[1] = noone;
eruption_instances[2] = noone;

eruption_stored = 0; //0 - not stored, 1 - stored, -1 used up (for hitpause)
eruption_stored_timer = 0;
eruption_charges = 0;
eruption_charge_timer = 0;
eruption_spr_dir = spr_dir;
eruption_spawn_x = x;
eruption_spawn_y = y;
eruption_fullcharge = false;
eruption_type = 1;
uspecial_pratless = false;
infinite_eruptions = false;

quick_draw_charge = 0;
max_quick_draw_charge = 90;
quick_draw_speed_var = max_quick_draw_charge/12;
quick_draw_base_kb_var = (max_quick_draw_charge/6) * 2;
quick_draw_kb_scale_var = max_quick_draw_charge/.6;
quick_draw_damage_var = (max_quick_draw_charge/6) * (2/3);

aether_quick_grab = noone;
aether_quick_grab_crouch_cancel_prevention_id = 0;
aether_spin_grab = noone;
doing_fspecial = 0;

aether_sword = noone;
grab_spiked = false;
grab_up_spiked = false;
calculated_hitstun = 0;

countering = false;
countered = false;
ike_grabbed_id = noone;
ike_got_grabbed_id = noone;
back_throw_turn_around_turbo_mode_fix = 0;
throw_plat = noone;
on_throw_plat = false;
damage_scaling_reset = false;

//Rivals of fighters
superMove = 14;
// superTrue = false;
rofSuperTimer = 0;

rof_initial_dash_speed = initial_dash_speed;
rof_dash_speed = dash_speed;

rof_max_jump_hsp = max_jump_hsp;
rof_air_max_speed = air_max_speed;
rof_jump_change = jump_change;
rof_air_accel = air_accel;

rof_wave_land_adj = wave_land_adj;