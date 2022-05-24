user_event(0)

//codec stuff
codec_active = !echo;
done_codec = false;

force_codec = false;

//pit/trum codec stuff
codec_triggered = undefined;
pit_codec_active = false;
trum_codec_active = false;
trummel_id = undefined;

//practice mode detector
playtest = (object_index == oTestPlayer);
practice_mode = false;

//oplayer object for orbitar parry
if has_rune("O") { //Thrown DSPECIAL can activate parry.
	orbitar_parry_mode = true;
} else {
    orbitar_parry_mode = false;
}

fake_hitpause = false;

is_orbitar = false;
is_active = false;
orbitar_parry_id = undefined;
article_id = noone;
orbitar_parry_timer = 0;

timer = 0;

//pit detection
is_pit = true;

//arrow stuff
max_arrows = 2;
arrow_count = 0;
bowCharge = 0;
arrowTimer = 0;
bow_turn_timer = 0;
sfx_bow_charge = sound_get("bow_charge")

trail_length = 20;
arrow_num_max = 3;
trail_index = 0;
arrow_trail_arrays = array_create(arrow_num_max, (array_create(trail_length, undefined)));
arrow_id_array = array_create(arrow_num_max, undefined) //used to match arrow id to array num
arrow_timer_array = array_create(arrow_num_max, undefined) //used to match arrow timer var to array num
empty_array = array_create(trail_length, undefined);

//orbitars
orbitar_id = noone;
cancel_pratfall = false;

has_hit_timer = 0;
prev_ID = undefined;

shield_spawn_dist = 40;
spr_indicator = sprite_get("indicator")
spr_spawn = sprite_get("orbitars_spawn")
spr_idle = sprite_get("orbitars_idle")
spr_attack = sprite_get("orbitars_attack")
spr_shield = sprite_get("orbitars_shield")
spr_shield_outline = sprite_get("orbitars_shield_outline")
spr_shield_break = sprite_get("orbitars_break")

//fspecial
max_fspec = 2;
fspec_count = 0;
fspec_trail_vfx = hit_fx_create(sprite_get("fspecial_proj_strong_trail"), 12);
fspec_large_vfx = hit_fx_create(sprite_get("fspecial_vfx_large"), 12);
fspec_trail_arrays = array_create(max_fspec, (array_create(trail_length, undefined)));
fspec_id_array = array_create(max_fspec, undefined) //used to match fspec proj id to array num
vfx_reticle_large = hit_fx_create(sprite_get("vfx_reticle_large"), 40);

//sounds
sfx_nair = sound_get("nair")

//normal init
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .20;
dash_anim_speed = .25;
pratfall_anim_speed = .5;

walk_speed = 3.5;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.65;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .30;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 3;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//pit identifier
ruber_pit = true;

//fstrong
fstrong_base_hsp = 0;
fstrong_base_window_length = 0;
was_reflected = false;
fstrong_vfx = hit_fx_create(sprite_get("fstrong_vfx"), 36);

if !echo {
    if codec_active user_event(1)
}
//munophone
muno_event_type = 0;
user_event(14);