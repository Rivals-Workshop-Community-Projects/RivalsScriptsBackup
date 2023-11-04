hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 68;
idle_anim_speed = (1/6);
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .24;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8.5;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 0.8;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5.5;
djump_speed = -1.5;
djump_accel = -3;
djump_accel_start_time = 4;
djump_accel_end_time = 10;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .9; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
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

ftilt_grabbed = []
uspecial_vfx = hit_fx_create(sprite_get("uspecial_vfx"), 40)
uspecial_trail_vfx = hit_fx_create(sprite_get("uspecial_trail_vfx"), 18)
charge_sound = noone;

dspecial_entry_vfx = hit_fx_create(sprite_get("dspecial_entry_vfx"), 28)
table_destroyed_vfx = hit_fx_create(sprite_get("table_destroyed"), 24)

medium_hfx = hit_fx_create(sprite_get("medium_hfx"), 30)
big_hfx = hit_fx_create(sprite_get("big_hfx"), 32)
small_hfx = hit_fx_create(sprite_get("small_hfx"), 24)

record_smash_vfx = hit_fx_create(sprite_get("record_smash_vfx"), 15)

particles = ds_list_create();

set_victory_theme(sound_get("victory"))

blook_record = 0;
player_record = 0;
record_names = ["Spooktune", "Spookwave", "Ghouliday"];
num_records = array_length(record_names);
tune = sound_get("mus_spooktune");

taunt_timer = 0;
bg_alpha = 0;

record_player_obj = noone;
near_player = false;
effect_alpha = 0;
effect_frame = 0;

dspecial_used = false;
fspecial_used = false;

taunt_music = noone;
taunt_music2 = noone;

nspecial_explosions = []
trails = []
var i = 1;
repeat (3) {
    array_push(nspecial_explosions, hit_fx_create(sprite_get(`nspecial_explosion_${i}`), 28))
    array_push(trails, hit_fx_create(sprite_get(`note_trail_${i}`), 24))
    i++
}

uair_times = 0;

dspecial_placement_cooldown = 0;
fspecial_usage_cooldown = 0;
fspecial_ledgeforgiven = false;

//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group_temp = array_create(4,0);
var i1 = 0;
var i2 = 0;
 
repeat(4) {
    hbox_group_temp[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group_temp[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
