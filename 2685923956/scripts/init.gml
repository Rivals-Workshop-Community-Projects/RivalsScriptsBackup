hurtbox_spr = sprite_get("aaa_hurtbox_ground");//asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .09;
crouch_anim_speed = .07;
walk_anim_speed = .1;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 4.5;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.3;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 8.5;
short_hop_speed = 5;
djump_speed = -0.5; //will fluctuate
j_djump_s_1 = -0.5; //1st doublejump
j_djump_s_2 = 2; //2nd doublejump
djump_accel = -1.3; //will fluctuate
j_djump_a_1 = -1.3; //1st doublejump
j_djump_a_2 = -0.8; //2nd doublejump //-1.1
djump_accel_start_time = 4;
djump_accel_end_time = 15;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .3;
hitstun_grav = 0.45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 25;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

wall_frames = 2

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 9;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("wavedash")//asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpair");
djump_sound = sound_get("double_jump")//this changes in update.gml   //asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

natdev = false;

//- - - - - cosmetics
blink_time = 0;
blink_cooldown = 60+(id%20);

//(spin sounds)
spin1 = -4;
spin2 = -4;

stardecay_hfx = hit_fx_create( sprite_get("nspecial_star_decay"), 1 )
ironhead_hfx_1 = hit_fx_create( sprite_get("dstrong_hfx1"), 20 )
ironhead_hfx_2 = hit_fx_create( sprite_get("dstrong_hfx2"), 25 )
eye_hfx = hit_fx_create( sprite_get("dspecial_eye"), 40 )
eye2_hfx = hit_fx_create( sprite_get("dspecial_eye2"), 40 )
eye3_hfx = hit_fx_create( sprite_get("dspecial_eye3"), 40 )
sparkles1 = hit_fx_create( sprite_get("sparkles1"), 9 )
sparkles2 = hit_fx_create( sprite_get("sparkles2"), 9 )
sparkles3 = hit_fx_create( sprite_get("sparkles3"), 9 )
windy = hit_fx_create( asset_get("hfx_part_wind"), 9 )
eye_hfx_storage = -4; //this didnt work
eye_hfx_storage_taketwo = -4;
eye_hfx_y_store = 0;
set_victory_bg(sprite_get("victorybg"));
set_victory_theme(sound_get("jirachi_victory"));
alt_init = false;

//- - - - - gameplay
bair_hsp_storage = 0;
bair_used = false;
dstr_timer = 0;
dstr_max = 0; //set at start of attack
dstr_counter = 0; //used for decreasing height
ustr_used = false;
fsp_used = false;
doomdesire_storage = -4;
doomdesire_cooldown_amount = 1000;
doomdesire_cooldown_hit_into_amount = 1000;
doomdesire_cooldown_broken_amount = 1000;
dstr_used = false;
dstr_turned = false;
dsp_got_parried = false;
str_stall_max = 20;
str_stall = 0; //timer for strong airstall shared by all strongs

//- - - - - compats









