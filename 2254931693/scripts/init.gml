hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .18;
crouch_anim_speed = .5;
walk_anim_speed = .1675;
dash_anim_speed = .3;
pratfall_anim_speed = .25;


walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 5;
dash_speed = 5.5;
dash_turn_time = 18;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .45;
hitstun_grav = .4;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 5;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 0
techroll_active_frames = 2;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 0;
roll_back_active_frames = 2;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("wavedash");
jump_sound = sound_get("jumpboing");
djump_sound = sound_get("jumpboing2");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_bg( sprite_get( "bonbyvictorybackground" ))
set_victory_theme( sound_get( "bonby_victory" ));

spikeballishere = 0;

nair_boost = 0;

uspecialfrog = noone;
spikeball = noone;
trumpet_cooldown = 0;

dspecialhitcount = 0;

leap_cooldown = 0;

charge_sound = 0;
started_fspecial_charge = 0;
fspecial_charge = 0;
fspecial_speed = 3;
fspecial_boosting = 0;
fspecial_hit = 0;
fspecial_misfire = 0;
chargesfx = sound_get("fspecialchargeup")
fspecialboosteffect1 = hit_fx_create( sprite_get( "fspecialeffect" ), 20 );
fspecialboosteffect2 = hit_fx_create( sprite_get( "fspecialeffect" ), 26 );
fspecialboosteffect3 = hit_fx_create( sprite_get( "fspecialeffect" ), 30 );
fspecialboosteffect4 = hit_fx_create( sprite_get( "fspecialeffect" ), 36 );
fspecialboosteffectmisfire = hit_fx_create( sprite_get( "fspecialmisfireeffect" ), 36 );
fspecialchargeeffect = hit_fx_create( sprite_get("fspecialchargeeffect"), 85)

gpu_set_blendmode(bm_add);
nspecialtraileffect = hit_fx_create( sprite_get("bonbynspecialtrail"), 20)
nspecialtraileffect2 = hit_fx_create( sprite_get("bonbynspecialtrail2"), 20)
gpu_set_blendmode(bm_normal);

fspecialhiteffect = hit_fx_create( sprite_get( "bonbyfspecialhiteffect" ), 36 );

nspecialpopeffect = hit_fx_create( sprite_get( "bonbynspecialdespawn" ), 24 );
nspecialpopsound = sound_get("bonby_nspecial_despawn");


eyegleameffect = hit_fx_create( sprite_get( "eyegleam" ), 30 );

dspecialbounceeffect = sound_get("dspecialbounce");
dspecialfalleffect = sound_get("dspecialfall");

nair_rune_loop = 0;
charging_aerials = 0;

enoughisenough = 0;

spikevolley = 0;
spikevolleytimer = 0;

spikecoordx = 9999;
spikecoordy = 9999;

spikebouncecool = 0;



//character/stage support

gfzsignspr = sprite_get("gfzsignpost")
sprite_change_offset("gfzsignpost", 18, 41);

kirbyability = 16;

family = 0;

fs_char_portrait_y = 98;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = 49;
fs_ball_offset_x = -50;
fs_ball_offset_y = -32;
finalhitsprite = 0;


user_event(14);