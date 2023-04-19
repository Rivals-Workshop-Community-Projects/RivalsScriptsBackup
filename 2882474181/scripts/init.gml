hurtbox_spr = sprite_get("idlehurt");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 55;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 5;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 12;
dash_stop_percent = .62; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 7;
jump_speed = 8.1;
short_hop_speed = 5;
djump_speed = 6;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
djump_accel = -0.5;
djump_accel_start_time = 5;
djump_accel_end_time = 16;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 9; //fast fall speed
gravity_speed = .30;
hitstun_grav = .5;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 6;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 5;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;



land_sound = sound_get("land");
landing_lag_sound = sound_get("plop");
waveland_sound = sound_get("plop");
jump_sound = sound_get("jump");
djump_sound = sound_get("lev");
air_dodge_sound = sound_get("minimize");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


set_victory_theme( sound_get("victory"));

pins = hit_fx_create( sprite_get("hit_shadowball"), 35);
shing = hit_fx_create( sprite_get("bowlingbust"), 19);
pulse = hit_fx_create( sprite_get("darkpulse"), 35);
pulse2 = hit_fx_create( sprite_get("darkpulsetwo"), 20);
soccor = hit_fx_create( sprite_get("soccorexplode"), 65);
firething = hit_fx_create( sprite_get("fire thing"), 15);
firething2 = hit_fx_create( sprite_get("firething2"), 15);
bwomp = hit_fx_create( sprite_get("blop"), 20);
heat = hit_fx_create( sprite_get("overheatboom"), 20);
smoke = hit_fx_create( sprite_get("smoke"), 25);
steam = hit_fx_create( sprite_get("steam"), 25);
sprig = hit_fx_create( sprite_get("firesprig"), 20);
heat2 = hit_fx_create( sprite_get("littleblast"), 20);
boom = hit_fx_create( sprite_get("boom"), 20);
swaws = hit_fx_create( sprite_get("swaws"), 24);
imprison = hit_fx_create( sprite_get("imprison"), 20);
block = hit_fx_create( sprite_get("x"), 20);
splish = hit_fx_create( sprite_get("splish"), 30);
splash = hit_fx_create( sprite_get("splash"), 20);
litboom = hit_fx_create( sprite_get("litwick_explode"), 14);
litboom2 = hit_fx_create( sprite_get("litwick_bigexplode"), 16);
kill = hit_fx_create( sprite_get("kill"), 6);
smog = hit_fx_create( sprite_get("smogdestroy"), 24);
star1 = hit_fx_create( sprite_get("star1"), 32);
star2 = hit_fx_create( sprite_get("star2"), 32);
star3 = hit_fx_create( sprite_get("star3"), 32);
sstar1 = hit_fx_create( sprite_get("sstar1"), 32);
sstar2 = hit_fx_create( sprite_get("sstar2"), 32);
sstar3 = hit_fx_create( sprite_get("sstar3"), 32);
shiny = hit_fx_create( sprite_get("shiny"), 10);
poof = hit_fx_create( sprite_get("poof"), 10);
white = hit_fx_create( sprite_get("white"), 4);
dielit = hit_fx_create( sprite_get("litwick_dead"), 200);
vargskelethorfunnymoments = hit_fx_create( sprite_get("bottlebust"), 14);