hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
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

//fx
bigsmoke = hit_fx_create( sprite_get( "hfx_flower_large" ), 30 );
sweetsmoke = hit_fx_create( sprite_get( "hfx_flower_sweet" ), 30 );
midsmoke = hit_fx_create( sprite_get( "hfx_part_flower" ), 15 );
hitsmoke = hit_fx_create( sprite_get( "hfx_flower_small" ), 15 );

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//hit affects 
hitaffectstrong = hit_fx_create(sprite_get("hfx_flower_large"),20);
set_victory_theme(sound_get("ValleyVictory"));

fspecial_ledge_cancel = 0;
nspecial_charge_amount = 0;

//player_in_smog = false;
boost_used = false;
destroy_smog = false;
//enemy_in_smog = false;
//cloud_poison_timer = 0;
//smog_cloud = 0;
spec_reverse = false;
start_predraw = false;
uspec_cooldown = 0;
shortened_usp = false;
uspec_dir = 0;

//valley_outline_timer = 0;
//valley_outline = false;

isHasBrainDamage = false;

//new code stuff---
poisonsmog_article = 0;

in_poison_timer = 0;
poison_tick = 5;
num_valleys = 0;
in_poison = false;

cloud_sprite = 0;
if (get_player_color(player) == 24 or get_player_color(player) == 25 or get_player_color(player) == 9) {
    t1projsprite = sprite_get("outline_projectilelv1");
    t2projsprite = sprite_get("outline_projectilelv2");
    t3projsprite = sprite_get("outline_projectilelv3");
    cloud_sprite = sprite_get("outline_cloud_idle");
}else{
    t1projsprite = sprite_get("projectilelv1");
    t2projsprite = sprite_get("projectilelv2");
    t3projsprite = sprite_get("projectilelv3");
    cloud_sprite = sprite_get("cloud_idle");    
}
