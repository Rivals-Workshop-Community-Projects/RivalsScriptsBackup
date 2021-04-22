hurtbox_spr = sprite_get("stabd_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

Hikaru_Title = "Motivated"

nname = "Vergil Sparda"
ncode1 = "He found fighting normally is too boring."
ncode2 = "So he decided to do it while sitting on"
ncode3 = "his favorite chair, limiting himself."

deathnum = 0
triggertime = 0
DT = 6

prevrank = 0

rank = 0
rankm = 0
inactive = 0

shsp = 0
svsp = 0
triggered = 0
drank = 1
stormtarget = self

iny = 0

weapon = 0
exheld = 0

attacking = 0

training = get_training_cpu_action() != CPU_FIGHT;
trainingtype = -1

kirbyability = 16;
enemykirby = noone
swallowed = 0


char_height = 70;
idle_anim_speed = .15;
crouch_anim_speed = .13;
walk_anim_speed = .2;
dash_anim_speed = .28;
pratfall_anim_speed = .25;

intro = 0
introtimer = -1

walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 5;
dash_speed = 4
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 8;
djump_speed = 9;
leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .26;
prat_fall_accel = 0.9; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 9;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 0.8; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 5;
techroll_recovery_frames = 3;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1 ;
roll_back_active_frames = 5;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("cnoise3");
landing_lag_sound = sound_get("cnoise3");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



plat2 = hit_fx_create( sprite_get( "plat2" ), 4 );

SC = hit_fx_create( sprite_get( "SC" ), 12 );
sprite_change_offset("SC", 100, 100);

slashc = hit_fx_create( sprite_get( "slashc" ), 20 );
sprite_change_offset("slashc", 75, 50);

summon = hit_fx_create( sprite_get( "summon" ), 12 );
sprite_change_offset("summon", 50, 50);

esp = hit_fx_create( sprite_get( "esp" ), 9 );
sprite_change_offset("esp", 32, 32);

parryfx = hit_fx_create( sprite_get( "parryfx" ), 12 );
sprite_change_offset("parryfx", 136, 158);

mblade5 = hit_fx_create( sprite_get( "mblade5" ), 20 );

sprite_change_offset("rank", 6, 16);
set_victory_theme(sound_get("custom"));
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);
lighten = hit_fx_create( sprite_get( "lighten" ), 10);
lighten2 = hit_fx_create( sprite_get( "lighten" ), 4);
sprite_change_offset("lighten", 1000, 1000);
sprite_change_offset("slosh", 200, 200);