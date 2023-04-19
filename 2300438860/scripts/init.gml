hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

ox = 0
oy = 0

pitch = 0
rollcount = 0

fs_char_chosen_final_smash = "custom"
fs_char_portrait_y = 60

ncode1 = "A human from ancient age when mankind can"
ncode2 = "beat monster with raw strength alone, no data"
ncode3 = "on what is the extend of their abilities."

cur_sound = sound_play(sound_get("buzzing"))
	 	sound_stop(cur_sound)
	 	
wjcap = 0
hue = 2
saveid = 0
barpause = 0

gudhit = 0

cheapmode = 0

neointro = 0
neointro1 = " "
neointro2 = " "
neointro3 = " "
neoside = 0

finisher = 0
finishercd = 0
finisherinc = 0
  		galx = 0
        galy = 0
        

Genocide = false 

cosmetic = 0

heartbroke = 0

songplay = -1
songtime = 0
songcd = 0
songcd2 = 0

attackbar = 0
dmgmul = 0

ohsp = 0
ovsp = 0

shsp = 0
svsp = 0

savex = 0
savey = 0

esavex = 0
esavey = 0
esave = 0

dx1 = 0
dy1 = 0

dx2 = 0
dy2 = 0

dx3 = 0
dy3 = 0

cdamage1 = 0
cdamage2 = 0
cdamage3 = 0

char_height = 53.1;
idle_anim_speed = .2;
crouch_anim_speed = .14;
walk_anim_speed = .1;
dash_anim_speed = .24;
pratfall_anim_speed = .25;

walk_speed = 2.8;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7.4;
dash_speed = 6.5;
dash_turn_time = 3;
dash_turn_accel = .5;
dash_stop_time = 4;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
jump_frames = 6;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 20;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .50;
hitstun_grav = .50;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 30;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 7;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 7;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
can_jump_capped = false;

 i5 = hit_fx_create( sprite_get( "np5" ), 20);	

exp1 = hit_fx_create( sprite_get( "exp1" ), 28 );
sprite_change_offset("exp1", 80, 80);

lighten3 = hit_fx_create( sprite_get( "lighten" ), 4);	
lighten2 = hit_fx_create( sprite_get( "lighten" ), 8);	
	
sprite_change_offset("lighten", 1000, 1000);

darken = hit_fx_create( sprite_get( "darken" ), 10);	
sprite_change_offset("darken", 1000, 1000);
	esp2 = hit_fx_create( sprite_get( "esp2" ), 9 );
    sprite_change_offset("esp2", 32, 32);
       
       shit1 = hit_fx_create( sprite_get( "shit1" ), 60 );

shit2 = hit_fx_create( sprite_get( "shit1" ), 60 );

riftgone = hit_fx_create( sprite_get( "riftgone" ), 12 );

shit4 = hit_fx_create( sprite_get( "shit4" ), 60 );

shit5 = hit_fx_create( sprite_get( "shit5" ), 60 );

fxslash1 = hit_fx_create( sprite_get( "fxslash1" ), 11 );
fxslash3= hit_fx_create( sprite_get( "fxslash3" ), 11 );

sprite_change_offset("fxslash1", 100, 200); 
sprite_change_offset("fxslash3", floor(75/1.5), floor(150/1.5) );

sprite_change_offset("shit1", 100, 100);
sprite_change_offset("shit4", 100, 100);
sprite_change_offset("shit5", 100, 100);


sprite_change_offset("death", 1000, 1000);

hb1 = hit_fx_create( sprite_get( "heartb" ), 20);	
hb2 = hit_fx_create( sprite_get( "heartb2" ), 20);

sprite_change_offset("heartb", 30, 30);
sprite_change_offset("heartb2", 30, 30);