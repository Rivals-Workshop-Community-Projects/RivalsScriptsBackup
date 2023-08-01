hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
gunshot = hit_fx_create( sprite_get("vfx_shot"), 24);
hourglass = hit_fx_create( sprite_get("fastforward"), 30);
ffhit = hit_fx_create( sprite_get("fffx"), 30);
bigfx = hit_fx_create( sprite_get("bighit"), 30);
smallfx = hit_fx_create( sprite_get("hitfx"), 30);
rfx = hit_fx_create( sprite_get("rewindfx"), 30);
ff_fx = hit_fx_create( sprite_get("fastforward"), 30);
dspec_explode = hit_fx_create( sprite_get("dspecialexplode"), 30);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//
desirae_timelock = false;
desirae_time_left = 0;
desirae_time_percent = 0;
desirae_time_mode = 0;
desirae_time_state = 0;
desirae_time_x = 0;
desirae_time_y = 0;
dist_to_desirae = 0;
desirae_rewind_state = 0;
desirae_rewind_spots = 0;
desirae_rewind_spot[0] = [0,0];

hud_timing = 0;

og_desirae = true;
other_desirae = false;
with(oPlayer)
{
    if(id != other.id)
    {
        if(variable_instance_exists(id,"og_desirae"))
        {
            other_desirae = true;
            other.other_desirae = true;
            print_debug("Im the OG")
            other.og_desirae = false;
        }
    }
}

//Playervariables
shoot_x = 0;
shoot_y = 0;
fast_fwd = false;
fast_timer = 0;
afterimage_array = 4;
nspec_stall = 0;
dspec_stall = 0;
nspec_target = noone;
nspec_target_timer = 0;
nspec_shells = 0;
nspec_has_hit = false;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 3;

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
roll_forward_startup_frames = 3;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("victory"));
set_victory_bg(sprite_get("victory_bg"));
set_hit_particle_sprite( 1, sprite_get( "hitspark" ));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
