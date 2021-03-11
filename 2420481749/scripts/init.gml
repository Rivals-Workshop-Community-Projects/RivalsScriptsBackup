hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .05;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

small_sprites = true;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 6;
dash_speed = 6.2;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.40;
short_hop_speed = 7;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 8; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 8;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 6;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 0;
roll_back_active_frames = 7;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = sound_get("jump");
air_dodge_sound = sound_get("dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_theme(sound_get("victory"));

//BowserJr
bowsjr_x = 0;
bowsjr_y = 0;
bowserSpawnHeight = 16*15;
spawnedBowser = false;
bowserjr = noone;

//confetti
confettiColors[0] = make_colour_rgb(189, 1, 20); //red
confettiColors[1] = make_colour_rgb(15, 84, 214); //blue
confettiColors[2] = make_colour_rgb(1, 187, 2); //green
confettiColors[3] = make_colour_rgb(252, 76, 92); //red2
confettiColors[4] = make_colour_rgb(85, 16, 214); //purple
confettiColors[5] = make_colour_rgb(214, 179, 15); //yellow
confettiColors[6] = make_colour_rgb(128, 60, 255); //purple2 
confettiColors[7] = make_colour_rgb(169, 83, 255); //purple3
confettiColors[8] = make_colour_rgb(255, 225, 48); //yellow2
confettiColors[9] = make_colour_rgb(243, 255, 82); //yellow3
confettiColors[10] = make_colour_rgb(233, 73, 140); //red3
confettiColors[11] = make_colour_rgb(59, 255, 36); //green2
confettiColors[12] = make_colour_rgb(114, 255, 65); //green3
confettiColors[13] = make_colour_rgb(38, 142, 255); //blue2
confettiColors[14] = make_colour_rgb(70, 204, 255); //blue3
confettiBurst = true;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
introTimer3 = 0;

//stuff
fairStall = true;
dash_fspec = false;
dstrong_pressed = false;
tencoin_x = 0;
tencoin_y = 0;
spawntencoin = false;
totalcoins = 0;
prev_totalcoins = 0;
coincounterbump = 0;
hammercoins = false;
panelstate = 0;
dspec_air = false;
//0 is default, you have to find the ON Panel
//1 is after default, you've already found the ON Panel
//2 is after you use a vellumental circle. You cannot use NSpec to get panels until this state is over, then loops back to 0
paneltimer = 5;
paneltimer_reset = 10;
paneltimercountdown = false;
paneltimerbump = 0;

paneldecided = 5;
panel1type = 3;
panel2type = 3;
panel3type = 3;
panel4type = 10;

panel1hsp = 0;
panel1vsp = 0;

panel2hsp = 0;
panel2vsp = 0;

panel3hsp = 0;
panel3vsp = 0;

panel4hsp = 0;
panel4vsp = 0;

pullingpanel = false;
pullangle = 0;
powerpull = false;

arrowpanel_left = 0;
arrowpanel_right = 0;
arrowpanel_up = 0;
arrowpanel_down = 0;

doublepowerboost = false;
doublepowerboostusedup = false;
doublepower_reset = false;

exjumps = 0;


exjump_pickuptxt = 0;
exjump_pickuptxt_x = 0;
exjump_pickuptxt_y = -70;

doublepower_pickuptxt = 0;
doublepower_pickuptxt_x = 0;
doublepower_pickuptxt_y = -70;

magiccircleon = 0;
magiccircleon_x = 0;
magiccircleon_y = -70;
magiccirclealpha = 1;

oliviagone = false;
firevell = false;
icevell = false;
watervell = false;
earthvell = false;
thousandfold = false;

dontfoldarms = false;
thousandfold_window_timer = 300;
thousandfold_x = 0;
thousandfold_intro = 14;
thousandfold_grab_x = 0;

float_timer = 12;
float_frequency = 2;
float_height = 5;
anchor_point_y = y-56;
olivia_alpha = 0;
olivia_image_index = 0;
can_grab_visual = false;

glowdivisor = 48;

thousandfold_grab = false;

da_earth = false;

player_to_grab = noone;

//hit fx
bob_fall = hit_fx_create( sprite_get( "bob_fall" ), 20 );
bob_hit = hit_fx_create( sprite_get( "bob_hit" ), 24 );
sidehammer = hit_fx_create( sprite_get( "sidehammer" ), 24 );
starryhit = hit_fx_create( sprite_get( "starryhit" ), 24 );
impact = hit_fx_create( sprite_get( "impact" ), 16 );
puffyhit = hit_fx_create( sprite_get( "puffyhit" ), 24 );
dashhit = hit_fx_create( sprite_get( "dashhit" ), 32 );
bootssuccessful = hit_fx_create( sprite_get( "bootssuccessful" ), 24 );
goldenguard = hit_fx_create( sprite_get( "goldenguard" ), 18 );
block = hit_fx_create( sprite_get( "block" ), 18 );
pressa = hit_fx_create( sprite_get( "pressa" ), 20 );
presseda = hit_fx_create( sprite_get( "presseda" ), 20 );
press_fspec = hit_fx_create( sprite_get( "pressfspec" ), 22 );
pressed_fspec = hit_fx_create( sprite_get( "pressedfspec" ), 20 );
bowserfireburst = hit_fx_create( sprite_get( "bowserfireburst" ), 36 );
coinshine = hit_fx_create( sprite_get( "coinshine" ), 16 );
paneldsp = hit_fx_create( sprite_get( "paneldisappear" ), 16 );
paneluse = hit_fx_create( sprite_get( "paneluse" ), 36);
icechunkbrk = hit_fx_create( sprite_get( "icechunk_break" ), 36);
firevellsprk = hit_fx_create( sprite_get( "firevellspark" ), 52);
splashvfx = hit_fx_create( sprite_get( "splashvfx" ), 42);

set_victory_bg( sprite_get( "pm&o_victory"));