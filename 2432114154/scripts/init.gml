hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

nname = "Sai Huang"
ncode1 = "A proclaimed Historian who wanders around Venam's Edge."
ncode2 = "If it wasn't for their works, history and events happened prio"
ncode3 = "to 'Hell Impact' would be lost or become a vague folktale.."

alreadydead = 0
regconized = 0
triggercutscene = 0

galax = 0

ui1x = 0
ui1y = 0

ui2x = 0
ui2y = 0

inkshield = -1
inkshield_buildup = 0
ink = 100

finalx = 0
finalattack = 0
finalframe = 0
finaldir = 0

superMove = 14

shsp = 0
svsp = 0

uphit = 0
downhit = 0
sidehit = 0
neutralhit = 0
allhit = 0
drip_sound = sound_play(sound_get("drip"))
sound_stop(drip_sound)

inkvictim = 0

gotink = 0
isyellow = 0
summon = 0


zettachoose = 0
alexchoose = 0
mayuchoose = 0
akaichoose = 0
sajichoose = 0

zettahit = 0
alexhit = 0
mayuhit = 0
akaihit = 0

countering = 0

char_height = 60;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 8;
dash_speed = 9
dash_turn_time = 4;
dash_turn_accel = .5;
dash_stop_time = 9;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .36;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .53;
knockback_adj = 1.05;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.14; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 8;
techroll_recovery_frames = 3;
techroll_speed = 22;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 8;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 8;
roll_back_recovery_frames = 3;
roll_forward_max = 22; //roll speed
roll_backward_max = 22;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = sound_get("SpaceCut2");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_waveland_orc");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


sh1 = hit_fx_create( sprite_get( "sh1" ), 30);
sh2 = hit_fx_create( sprite_get( "sh2" ), 30);
sh3 = hit_fx_create( sprite_get( "sh3" ), 30);
sh4 = hit_fx_create( sprite_get( "sh4" ), 30)

sprite_change_offset("sh1", 102, 94);
sprite_change_offset("sh2", 102, 94);
sprite_change_offset("sh3", 102, 94);
sprite_change_offset("sh4", 102, 94);

bh3 = hit_fx_create( sprite_get( "blackhit" ), 12);

bh2 = hit_fx_create( sprite_get( "bluehit" ), 12);		
		
esp = hit_fx_create( sprite_get( "esp2" ), 9 );
sprite_change_offset("esp", 32, 32);

bh = hit_fx_create( sprite_get( "bluehit" ), 12);

i1 = hit_fx_create( sprite_get( "inkpar5" ), 16);
sprite_change_offset("inkpar5", 46, 92);

i2 = hit_fx_create( sprite_get( "inkpar6" ), 16);
sprite_change_offset("inkpar6", 46, 92);

SC = hit_fx_create( sprite_get( "SC" ), 20 );
sprite_change_offset("SC", 100, 100);

summon = hit_fx_create( sprite_get( "summon" ), 45 );
sprite_change_offset("summon", 100, 80);


fxslash3= hit_fx_create( sprite_get( "fxslash3" ), 22 );
sprite_change_offset("fxslash3", floor(75/1.5), floor(150/1.5) );


saillusion = hit_fx_create( sprite_get( "saillusion" ), 8);

