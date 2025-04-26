hurtbox_spr = sprite_get("hurtb");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 13;
dash_turn_accel = 1.5;
dash_stop_time = 17;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.25;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 8;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 3;
double_jump_time = 28; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 7;
walljump_time = 28;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 13;
wave_land_time = 9;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .09; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 8;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 9;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("victory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
fspecialTrail = hit_fx_create( sprite_get( "fspecialtrail" ),16);
nspecialTrail = hit_fx_create( sprite_get( "nspecialtrail" ),16);

//other variables stuff
shellcharge = 0;
shelltimer = 9;
shelltimer2 = 0;
uspecialjump = -5;
nspecialcharge = 0;
nspecialdash = 30;
targetfound = false;
targetfoundTimer = 1;
victim = 0;
victim_x = 0;
victim_y = 0;
idkwhattonamethis = false;
hammerOut = false;
nyarglebargle = false;

//Character support
kirbyability = 4;
Hikaru_Title = "Flying Shell Creature";
arena_title = "A Koopa Paratroopa";
tcoart = sprite_get("troopstcoart");
otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");
msgw_compat = sprite_get("msgwsprite");