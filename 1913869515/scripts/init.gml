intro = 0
introtimer = -1
noparryedit = 0

legacy = 0
uspechit = false
jabrp = 0

enhanceee = 0
pendmg = 0
savedjump = false

hit_player_event = 11

ztrashes = 0
dspecver2 = false

iaihsp = 0
iaivsp = 0

finisher = 0
finishercd = 0
finisherinc = 0
  		galx = 0
        galy = 0
        
slashdraw = 0
maxdraw = 0
hitdmg = 0

shsp = 0
svsp = 0

zrandom = 0

superMove = 14

angledraw = 0

ohalox = 0
halox = 0
ohalo = 0 
halo = 0
huddraw = 0
zvoice = 0

introhit = 0

ztarget = 0    
nrange = 0

iaispr = 0
iaiimg = 0
iaido = 0
ziaido = 0
iaicancel = 0
iaidir = 0

offense = 0
offensetimer = 0
cdamage = 0

dmhit = 0

nname = "Zetta Ashikaga"
ncode1 = "The Miko and Shinshoku of Midorija Shrine"
ncode2 = "An individual with terrifying power, but usually she stay on"
ncode3 = "her island to keep watch on the tourists and sell canned tea."



hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

Hikaru_Title = "Edge of Void"

attacking = 0

voicecd = 0

cloned = false 

zcountered = 0
zcountered2 = 0

trummelcodecneeded = false;
trummelcodec_id = noone;
kirbyability = 16;
enemykirby = noone
swallowed = 0
introTimer = -4;
introTimer2 = 0;



zbayo = 0

char_height = 60;
idle_anim_speed = 0.23;
crouch_anim_speed = .1;
walk_anim_speed = .20;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 4.5;
walk_accel = 2;
walk_turn_time = 4;
initial_dash_time = 4;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 4;
dash_turn_accel = 0.1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
jump_frames = 8;
short_hop_speed = 7.5;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.25;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 11;
walljump_time = 20;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .500;
knockback_adj = 1.11; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 6;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 4;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 7;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

SC = hit_fx_create( sprite_get( "SC" ), 12 );
SC2 = hit_fx_create( sprite_get( "SC" ), 12 );
sprite_change_offset("SC", 100, 100);
sprite_change_offset("SCf", 100, 100);
SB = hit_fx_create( sprite_get( "SB" ), 12 );
sprite_change_offset("SB", 100, 100);

sprite_change_offset("death", 1000, 1000);
sprite_change_offset("blud", 256, 125);

mfuse = hit_fx_create( sprite_get( "movfuse" ), 14*4 );


G7 = hit_fx_create( sprite_get( "G7" ), 24 );
G72 = hit_fx_create( sprite_get( "G72" ), 24 );

slash = hit_fx_create( sprite_get( "slash" ), 12 );
sprite_change_offset("slash", 50, 50);
slash2 = hit_fx_create( sprite_get( "slash2" ), 12 );
sprite_change_offset("slash2", 50, 50);
slash3 = hit_fx_create( sprite_get( "slash3" ), 12 );
sprite_change_offset("slash3", 50, 50);
slash4 = hit_fx_create( sprite_get( "slash4" ), 12 );
sprite_change_offset("slash4", 50, 50);
slashq1 = hit_fx_create( sprite_get( "SCF3" ), 6 );
BLINK = hit_fx_create( sprite_get( "blink" ), 10);


shit1 = hit_fx_create( sprite_get( "shit1" ), 60 );

shit2 = hit_fx_create( sprite_get( "shit2" ), 60 );

shit3 = hit_fx_create( sprite_get( "shit3" ), 60 );

shit4 = hit_fx_create( sprite_get( "shit4" ), 60 );

shit5 = hit_fx_create( sprite_get( "shit5" ), 60 );

shit6 = hit_fx_create( sprite_get( "shit6" ), 60 );

shit7 = hit_fx_create( sprite_get( "shit7" ), 60 );

shit8 = hit_fx_create( sprite_get( "shit8" ), 60 );

sprite_change_offset("shit1", 100, 100);
sprite_change_offset("shit2", 100, 100);
sprite_change_offset("shit3", 100, 100);
sprite_change_offset("shit4", 100, 100);
sprite_change_offset("shit5", 100, 100);
sprite_change_offset("shit6", 100, 100);
sprite_change_offset("shit7", 100, 100);
sprite_change_offset("shit8", 100, 100);

sprite_change_offset("slosh", 200, 200);

lighten = hit_fx_create( sprite_get( "lighten" ), 4);
sprite_change_offset("lighten", 1000, 1000);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);

SCF1 = hit_fx_create( sprite_get( "SCF1" ), 12);
SCF2 = hit_fx_create( sprite_get( "SCF2" ), 12);

sprite_change_offset("bladewaveH", 57, 46);