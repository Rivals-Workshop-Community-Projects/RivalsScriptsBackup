hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Glitch of Scorp"

nname = "A Glitch"
ncode1 = "This data is off limit."
ncode2 = "Bro I legit made the system"
ncode3 = "what did you think ;)"
famix = 0
famiy = 0

svsp = 0
shsp = 0

throw_dir = 0

funkin = 0

hhh = 3
nfloat = 0
nctimer = 0

cheapmode = 0

thundervictim = 0

char_height = 70;
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .2;
pratfall_anim_speed = 0;

walk_speed = 3;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 6;
dash_speed = 6
dash_turn_time = 15;
dash_turn_accel = .5;
dash_stop_time = 20;
dash_stop_percent = .8; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 3.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .28;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 0;
walljump_time = 16;
wall_frames = 1; //anim frames before you leave the wall
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .4;
hitstun_grav = .50;
knockback_adj = 1.2;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 4;
techroll_recovery_frames = 4;
techroll_speed = 9.8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 4;
air_dodge_speed = 4;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 3;
roll_forward_max = 9.8; //roll speed
roll_backward_max = 9.8;

land_sound = asset_get("sfx_jumpair");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

cur_sound = sound_play(sound_get("strongcharge"))
	 	sound_stop(cur_sound)
	 	
cur_sound2 = sound_play(sound_get("tauntloop"))
	 	sound_stop(cur_sound2)
	 	
fxspark1 = hit_fx_create( sprite_get( "fxspark1" ), 35 );
fxspark2 = hit_fx_create( sprite_get( "fxspark2" ), 35 );
fxspark3 = hit_fx_create( sprite_get( "fxspark3" ), 35 );

fxslash1 = hit_fx_create( sprite_get( "fxslash1" ), 11 );
fxslash2 = hit_fx_create( sprite_get( "fxslash2" ), 40 );
fxslash3= hit_fx_create( sprite_get( "fxslash3" ), 11 );

fxblow1 = hit_fx_create( sprite_get( "fxblow1" ), 22 );
fxblow2 = hit_fx_create( sprite_get( "fxblow2" ), 22 );

sprite_change_offset("fxspark1", 50, 50);  
sprite_change_offset("fxspark2", 50, 50); 
sprite_change_offset("fxspark3", 50, 50); 
sprite_change_offset("fxslash1", 100, 200); 
sprite_change_offset("fxslash2", 100, 100);
sprite_change_offset("fxslash3", 75, 150);
sprite_change_offset("fxblow1", 120, 50);
sprite_change_offset("fxblow2", 120, 50);

sprite_change_offset("tauntfunk",100, 100); 

sprite_change_offset("introship", 100, 50);  

gpar1 = hit_fx_create( sprite_get( "hground1" ), 15 );
gpar2= hit_fx_create( sprite_get( "hground2" ), 15 );

            hpar2 = hit_fx_create( sprite_get( "hpar2" ), 20 );
            hpar3 = hit_fx_create( sprite_get( "hpar3" ), 20 );
            hpar1 = hit_fx_create( sprite_get( "hpar1" ), 18 );
            
dbeam = hit_fx_create( sprite_get( "dbeam" ), 10 );
lighten = hit_fx_create( sprite_get( "lighten" ), 6);

fstrong3 = hit_fx_create( sprite_get( "fstrong3" ), 8 );
fstrong2 = hit_fx_create( sprite_get( "fstrong2" ), 10 );

ustrong1 = hit_fx_create( sprite_get( "ustrong1" ), 10 );

ustrong2 = hit_fx_create( sprite_get( "ustrong1" ), 16 );

ustrong3 = hit_fx_create( sprite_get( "ustrong1" ), 5 );



sprite_change_offset("fstrong1", 50, 50); 
sprite_change_offset("fstrong2", 600, 60);  
sprite_change_offset("fstrong3", 600, 60);  

sprite_change_offset("ustrong1", 40, 500);  
sprite_change_offset("dstrong1", 30, 30); 
sprite_change_offset("dstrong2", 30, 30); 
sprite_change_offset("dstrongb3", 30, 30); 

sprite_change_offset("lighten", 1000, 1000);
sprite_change_offset("dbeam", 70, 450);    
sprite_change_offset("pointer", 106, 11);            
sprite_change_offset("hhh", 30, 50);
sprite_change_offset("hhh2", 30, 50);
sprite_change_offset("hhhproj", 40, 40);
sprite_change_offset("hpar3", 50, 50);
sprite_change_offset("hpar2", 50, 50);
sprite_change_offset("hpar1", 5, 10);
sprite_change_offset("hground1", 30, 10);
sprite_change_offset("hground2", 30, 10);

sprite_change_offset("fstrong1", 50, 50);