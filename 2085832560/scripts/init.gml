hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

Hikaru_Title = "Infernal Fuel"

nname = "[ ? ? ? ]"
ncode1 = "Sorry dude, peeping into this girl data is a no-no."
ncode2 = "We would like to keep our secrets, even to the government"
ncode3 = "                         ---:Lynk:--- ;) "

introhit = 0

intro = 0
introtimer = -1
hunter = 0

attacking = true

casing = 0

style = 0
prevstyle = 0 

drops = 0

faces = 0
droptime = 0
danced = 0

lmtime = 360

gunname = 0
guntier = 1

infernal1 = 0
infernal2 = 0


uhit = 0
oldx = 0
oldy = 0
grind = 0

char_height = 60;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.4;
dash_speed = 6
dash_turn_time = 10;
dash_turn_accel = 1;
dash_stop_time = 10;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.4;

jump_start_time = 6;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .045;
max_djumps = 1;
double_jump_time = 30; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 14;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .54;
knockback_adj = 0.92; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 0.76; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 30;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
air_dodge_speed = 13;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 16; //roll speed
roll_backward_max = 16;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_land_light");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

djumpfx = hit_fx_create( sprite_get( "doublejumpfx" ), 9 );
sprite_change_offset("doublejumpfx", 42, 68);

shotgun1  = hit_fx_create( sprite_get( "shotgun1" ), 9 );
sprite_change_offset("shotgun1", 76, 98);

shotgun2  = hit_fx_create( sprite_get( "shotgun2" ), 9 );
sprite_change_offset("shotgun2", 76, 98);

nairs1 = hit_fx_create( sprite_get( "nairs1" ), 9 );
sprite_change_offset("nairs1", 102, 140);

nairs2  = hit_fx_create( sprite_get( "nairs2" ), 9 );
sprite_change_offset("nairs2", 102, 140);

nairs3 = hit_fx_create( sprite_get( "nairs3" ), 9 );
sprite_change_offset("nairs3", 102, 140);

swordhit = hit_fx_create( sprite_get( "swordhit" ), 24 );
sprite_change_offset("swordhit", 50, 50);

ustrongs2 = hit_fx_create( sprite_get( "ustrongs2" ), 12 );
sprite_change_offset("ustrongs2", 16, 30);

dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 24 );
sprite_change_offset("dattacks1", 30, 16);

exp1 = hit_fx_create( sprite_get( "exp1" ), 42 );
sprite_change_offset("exp1", 80, 80);

exp2 = hit_fx_create( sprite_get( "exp2" ), 42 );
sprite_change_offset("exp2", 82, 152);

dairs3 = hit_fx_create( sprite_get( "dairs3" ), 20 );
sprite_change_offset("dairs3", 32, 32);

smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
sprite_change_offset("smoke1", 16, 16);

smoke2 = hit_fx_create( sprite_get( "smoke2" ), 20 );
sprite_change_offset("smoke2", 16, 16);



//Nspecial

NS1 = hit_fx_create( sprite_get( "NS1" ), 30 );

NS2 = hit_fx_create( sprite_get( "NS2" ), 30 );

NS3 = hit_fx_create( sprite_get( "NS3" ), 30 );

NS4 = hit_fx_create( sprite_get( "NS4" ), 30 );

NS5 = hit_fx_create( sprite_get( "NS5" ), 30 );

NS6 = hit_fx_create( sprite_get( "NS6" ), 30 );

NS7 = hit_fx_create( sprite_get( "NS7" ), 30 );

NS8 = hit_fx_create( sprite_get( "NS8" ), 30 );

NS9 = hit_fx_create( sprite_get( "NS9" ), 30 );

NS10 = hit_fx_create( sprite_get( "NS10" ), 30 );

NS11 = hit_fx_create( sprite_get( "NS11" ), 30 );

NS12 = hit_fx_create( sprite_get( "NS12" ), 30 );

NS13 = hit_fx_create( sprite_get( "NS13" ), 30 );

stylec = hit_fx_create( sprite_get( "Dstylec" ), 5 );

sprite_change_offset("NS1", 32, 32);
sprite_change_offset("NS2", 32, 32);
sprite_change_offset("NS3", 32, 32);
sprite_change_offset("NS4", 62, 32);
sprite_change_offset("NS5", 62, 32);
sprite_change_offset("NS6", 62, 32);
sprite_change_offset("NS7", 62, 32);
sprite_change_offset("NS8", 62, 32);
sprite_change_offset("NS9", 62, 32);
sprite_change_offset("NS10", 62, 32);
sprite_change_offset("NS11", 62, 32);
sprite_change_offset("NS12", 62, 32);
sprite_change_offset("NS13", 62, 32);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);