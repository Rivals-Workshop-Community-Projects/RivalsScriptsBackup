hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Sage of Five Strikes"

nname = "Thanh Soun"
ncode1 = "Decendant of Sound Deity"
ncode2 = "Capable of creating high shockwave as well "
ncode3 = "as creating electric infused projectiles."

voiced = 1 

fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "ori";
fs_char_portrait_y = 115;
 
shsp = 0
svsp = 0
farx = 0
fary = 0
sagemode = 0
sagefire = 0
rolling = 0

killwho = 0
killattack = 0
killtimer = 0

sagefx1 = 0
sagefy1 = 0

sagefx2 = 0
sagefy2 = 0


sagefx3 = 0
sagefy3 = 0


sagefx4 = 0
sagefy4 = 0

sagefx5 = 0
sagefy5 = 0

ncharge = 0
is_bat = 1
uspecbat = 0

char_height = 69.9;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 7.5;
dash_speed = 6;
dash_turn_time = 6;
dash_turn_accel = .5;
dash_stop_time = 9;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .45;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 2;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 1.1;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 6;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = 9.8; //roll speed
roll_backward_max = 9.8;

land_sound = asset_get("sfx_jumpground");
landing_lag_sound = asset_get("sfx_land_light");
jump_sound = asset_get("sfx_jumpair");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_bird_sidespecial_start");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

esp1 = hit_fx_create( sprite_get( "esp1" ), 9 );
sprite_change_offset("esp1", 32, 32);

lighten = hit_fx_create( sprite_get( "lighten" ), 12);
sprite_change_offset("lighten", 1000, 1000);

bfx1 = hit_fx_create( sprite_get( "ballfx1" ), 12);
bfx2 = hit_fx_create( sprite_get( "ballfx2" ), 10);
bfx3 = hit_fx_create( sprite_get( "ballfx3" ), 7);
bfx4 = hit_fx_create( sprite_get( "ballfx4" ), 12);

if get_player_color(player) == 13 {
    
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("berryball1"));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("berryball2"));
    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("berryball3"));
    
    set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("berryball1"));
    set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("berryball2"));
    set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("berryball3"));
    
}