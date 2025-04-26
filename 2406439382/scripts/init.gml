hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = 9 / 60;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .3;

walk_speed = 2 + has_rune("B") * 1;
walk_accel = 0.2;
walk_turn_time = 9;
initial_dash_time = 12;
initial_dash_speed = 6 + has_rune("B") * 2;
dash_speed = 5.5 + has_rune("B") * 2;
dash_turn_time = 10;
dash_turn_accel = 4.0;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .55;
moonwalk_accel = 5.5;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5 + has_rune("B") * 2; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .5; //multiplier of air_accel while in pratfall
air_friction = .022;
max_djumps = 1
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 34;
wall_frames = 1;
max_fall = 10; max_fall_ref = max_fall; max_fall_pratfall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.15 ; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06 + has_rune("H") * 2.5; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 0;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5 + has_rune("H") * 12; air_dodge_speed_ref = air_dodge_speed;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 0; //roll speed
roll_backward_max = 0;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("gapland")
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound =noone// asset_get("sfx_quick_dodge");//sound_get("gap")

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;


// variable
// nspecial
counter = false;
counter_wait = 0
counter_wait_ref = 9;
counter_opp = noone;
counter_type = 1; // 1 = physical 2 = projectile
 
// uspecial
yy_x = 0
yy_y = 0;

can_effect = true; // to avoid spawning multiple effect when teleporting

got_uspe_destroyed = false;

// fspecial
fspe_stall = 0;

// ustrong
picture_portrait = true;
picture_height = 130;
picture_width = 68;

picture_draw = 0 // how many frame left to draw the white canvas. used when hitting someone
 
// airdodge
ad_x = 0;
ad_y = 0;

// crouch
tired_timer = 0;
tired_obj = noone;
 
 // jab
last_jab = 1;
// The Chosen One Support
tcoart = sprite_get("tcoart");

// SFX

effect_nothing =  hit_fx_create( sprite_get("nothing"), 2);

tanuki_smoke = hit_fx_create( sprite_get("tanuki_smoke"), 30);
counter_star = hit_fx_create( sprite_get("counter"), 15);



yinyang_effect =  hit_fx_create( sprite_get("yinyang_effect"), 20);
leave_effect =  hit_fx_create( sprite_get("uspecial_leave_effect"), 12);
come_effect =  hit_fx_create( sprite_get("uspecial_come_effect"), 12);

shine_effect =  hit_fx_create( sprite_get("shine"), 12);

if (get_player_color(player) == 0)
{
    gap_front_effect =  hit_fx_create( sprite_get("gap_front_default"), 12);
    gap_back_effect =  hit_fx_create( sprite_get("gap_back_default"), 12);
    gap_air_draw = sprite_get("gap_air_default");
}
else
{
    gap_front_effect =  hit_fx_create( sprite_get("gap_front"), 12);
    gap_back_effect =  hit_fx_create( sprite_get("gap_back"), 12);
    gap_air_draw = sprite_get("gap_air");
}

// rune L big effect
if (!has_rune("L"))
{
    explosion_effect =  hit_fx_create( sprite_get("explosion"), 25);
    
    doll_eyes_effect = hit_fx_create( sprite_get("doll_eyes"), 9);
    curse_effect = hit_fx_create( sprite_get("curse"), 25);
}
else
{
    explosion_effect =  hit_fx_create( sprite_get("explosion_big"), 25);
    
    doll_eyes_effect = hit_fx_create( sprite_get("doll_eyes_big"), 9);
    curse_effect = hit_fx_create( sprite_get("curse_big"), 25);
}

switch_effect =  hit_fx_create( sprite_get("switch_fx"), 28);

tired_effect =  hit_fx_create( sprite_get("halt"), 20);

// attack arrow
uair_arrow = hit_fx_create( sprite_get("uair_arrow"), 12);
fair_arrow = hit_fx_create( sprite_get("fair_arrow"), 12);
bair_arrow = hit_fx_create( sprite_get("bair_arrow"), 12);

ftilt_arrow = hit_fx_create( sprite_get("ftilt_arrow"), 14);


jizo = has_rune("M") ; // to survive a galaxy

Erune_set = !has_rune("E")