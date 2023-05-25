
//holyyyyyyyyyyy shit dude
set_victory_theme( sound_get("eb_win"));

hurtbox_spr = sprite_get("ouchyidle");
crouchbox_spr = sprite_get("crouchouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.3;
walk_turn_time = 5;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 7;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .18;
moonwalk_accel = .25;

jump_start_time = 5;
jump_speed = 8;
short_hop_speed = 5;
djump_speed = 2;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 8; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = 1.1	; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 2;
djump_accel = -1.9;
djump_accel_start_time = 4;
djump_accel_end_time = 10;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 20;
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .40;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 12;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.6; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 5;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
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
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

land_sound = sound_get("ts");
landing_lag_sound = sound_get("land2");
waveland_sound = sound_get("land2");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// entrance
 has_enter = false;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 110;
used_fs = false;
 
poof = hit_fx_create( sprite_get( "poof" ), 20 );
nspecialfx = hit_fx_create( sprite_get( "nspecialfx" ), 18 );
fire = hit_fx_create( sprite_get( "blasthit" ), 24 );
pro = hit_fx_create( sprite_get( "protron" ), 12 );
ele = hit_fx_create( sprite_get( "eletron" ), 12 );
neu = hit_fx_create( sprite_get( "neutron" ), 12 );
boom = hit_fx_create( sprite_get( "boom" ), 35 );
boom2 = hit_fx_create( sprite_get( "boomd" ), 35 );
flash = hit_fx_create( sprite_get("psiflashparticle"), 25);
evil = hit_fx_create( sprite_get("psiflashparticle_evil_edition_plus"), 25);
icebreak = hit_fx_create( sprite_get("icebreak"), 20);
cold = hit_fx_create( sprite_get("cold"), 30);
freeze = hit_fx_create( sprite_get("freeze"), 12);
thunder = hit_fx_create( sprite_get("thunder"), 12);
hexgon = hit_fx_create( sprite_get("psifreezeparticle"), 20);
shocky = hit_fx_create( sprite_get("psithunderparticle"), 10);
burn = hit_fx_create( sprite_get("psifireparticle"), 40);
booom = hit_fx_create( sprite_get( "booom" ), 35 );
booom2 = hit_fx_create( sprite_get( "booom2" ), 35 );
boing = hit_fx_create( sprite_get( "boing" ), 35 );;
boing2 = hit_fx_create( sprite_get( "boing2" ), 35 );
zoom = hit_fx_create( sprite_get( "zoom" ), 35 );;
zoom2 = hit_fx_create( sprite_get( "zoom2" ), 35 );
zoom2 = hit_fx_create( sprite_get( "zoom2" ), 35 );
thunderhitlarge = hit_fx_create ( sprite_get( "thunder_hit_large" ), 28);
thunderhitmed = hit_fx_create ( sprite_get( "thunder_hit_med" ), 22);
freezehit = hit_fx_create ( sprite_get( "freeze_hit" ), 32);
firehit = hit_fx_create ( sprite_get( "fire_hit" ), 22);
heartFX = hit_fx_create(sprite_get("hfx_heart"), 32);