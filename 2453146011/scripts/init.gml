var monarch = self;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

original_char_height = 52;
char_height = original_char_height;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 16;
dash_turn_accel = 2;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .63;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5; // 13
short_hop_speed = 6;
djump_speed = 9;
djump_speed_1 = 9;
djump_speed_2 = 6.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .45;
gravity_speed_init = .45;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 7;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 6;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 5;
techroll_active_frames = 1;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9.5;

//roll animation frames
roll_forward_startup_frames = 5;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 5;
roll_back_active_frames = 1;
roll_back_recovery_frames = 4;
roll_forward_max = 11; //roll speed
roll_backward_max = 11;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_bg( sprite_get( "victory" ));

last_hit_player = noone;

//Prev speed storage
hsp_prev = 0;
vsp_prev = 0;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Portal stuff
portal_1 = noone;
portal_2 = noone;
blue = true;
throw_dir = "whiff";
max_charges = 6;
charges = max_charges;
special_held = false;
is_spin = false;
global_portal_cooldown = 0;
blue_indicator = 0;
red_indicator = 0;
portal_line_timer = 0;

last_teleport_x = 0;
last_teleport_y = 0;
current_teleport_x = 0;
current_teleport_y = 0;

// Portal line stuff
port1x = 0;
port1y = 0;
port2x = 0;
port2y = 0;
port1  = 0;
port2  = 0;
portal_speed = 0;
denom  = 0;
line_A = 0;
line_B = 0;
line_C = 0;

// Change according to other init
in_portal = false;
teleported = false;
last_pcolor = 0;
portal_timer = 2;
portal_cooldown = 0;
portal_afterimage = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,spr_dir:spr_dir,timer:0};
portal_white = 0;
last_spr_dir = 1;
portal_delay = 0;
max_portal_delay = 15;

is_monarch = true;

// Upspecial stuff
throw_speed = 13;
default_throw_angle = 15;
throw_angle = 65;
can_blink = true;
uspecial_buffer = false; 
uspec_charged = false;

// Fspecial stuff
fspecial_obj = noone;
hit_fspec = false;
fspec_charged = false;
fspec_line_timer = 0;

// Effects
teleport_start = hit_fx_create( sprite_get( "teleport_start" ), 25 );
teleport_mid = hit_fx_create( sprite_get( "teleport_mid" ), 10 );
teleport_return = hit_fx_create( sprite_get( "teleport_return" ), 10 );
teleport_end = hit_fx_create( sprite_get( "teleport_end" ), 10 );

teleport_lite_start = hit_fx_create( sprite_get( "teleport_lite_start" ), 8 );
teleport_lite_start_slower = hit_fx_create( sprite_get( "teleport_lite_start" ), 20 );
teleport_lite_start_smaller = hit_fx_create( sprite_get( "teleport_lite_start_smaller" ), 8 );
teleport_lite_start_smaller_slower = hit_fx_create( sprite_get( "teleport_lite_start_smaller" ), 12 );
teleport_lite_return = hit_fx_create( sprite_get( "teleport_lite_return" ), 4 );
teleport_lite_return_slower = hit_fx_create( sprite_get( "teleport_lite_return" ), 8 );
teleport_lite_return_smaller = hit_fx_create( sprite_get( "teleport_lite_return_smaller" ), 8 );

teleport_lite_butterflies = hit_fx_create( sprite_get( "teleport_lite_butterflies" ), 20 );
teleport_lite_butterflies2 = hit_fx_create( sprite_get( "teleport_lite_butterflies2" ), 20 );
teleport_lite_butterflies_right = hit_fx_create( sprite_get( "teleport_butterflies_right" ), 20 );

beamfx = hit_fx_create( sprite_get( "beam" ), 4 );
beamfx_short = hit_fx_create( sprite_get( "beam_short" ), 4 );
beamfx_rot = hit_fx_create( sprite_get( "beam_rotated" ), 4 );

beamfxr = hit_fx_create( sprite_get( "beamr" ), 4 );
beamfxr_short = hit_fx_create( sprite_get( "beamr_short" ), 4 );
beamfxr_rot = hit_fx_create( sprite_get( "beamr_rotated" ), 4 );

emptyfx = hit_fx_create( asset_get( "empty_sprite" ), 1 );

butterfly1 = hit_fx_create( sprite_get( "butterfly1" ), 35 );
butterfly2 = hit_fx_create( sprite_get( "butterfly2" ), 35 );
butterfly3 = hit_fx_create( sprite_get( "butterfly3" ), 35 );
butterfly4 = hit_fx_create( sprite_get( "butterfly4" ), 35 );
butterfly5 = hit_fx_create( sprite_get( "butterfly5" ), 35 );
butterfly6 = hit_fx_create( sprite_get( "butterfly6" ), 35 );
butterfly7 = hit_fx_create( sprite_get( "butterfly7" ), 35 );

butterflyr1 = hit_fx_create( sprite_get( "butterflyr1" ), 35 );
butterflyr2 = hit_fx_create( sprite_get( "butterflyr2" ), 35 );
butterflyr3 = hit_fx_create( sprite_get( "butterflyr3" ), 35 );
butterflyr4 = hit_fx_create( sprite_get( "butterflyr4" ), 35 );
butterflyr5 = hit_fx_create( sprite_get( "butterflyr5" ), 35 );
butterflyr6 = hit_fx_create( sprite_get( "butterflyr6" ), 35 );
butterflyr7 = hit_fx_create( sprite_get( "butterflyr7" ), 35 );

pshot_front = hit_fx_create( sprite_get( "pshot_front" ),   10 );
pshot_back = hit_fx_create( sprite_get( "pshot_back" ),     10 );
pshot_up = hit_fx_create( sprite_get( "pshot_up" ),         10 );
pshot_down = hit_fx_create( sprite_get( "pshot_down" ),     10 );

pshotr_front = hit_fx_create( sprite_get( "pshotr_front" ),   10 );
pshotr_back = hit_fx_create( sprite_get( "pshotr_back" ),     10 );
pshotr_up = hit_fx_create( sprite_get( "pshotr_up" ),         10 );
pshotr_down = hit_fx_create( sprite_get( "pshotr_down" ),     10 );

star = hit_fx_create( sprite_get( "star" ), 20 );
star_faster = hit_fx_create( sprite_get( "star" ), 18 );
starsmall = hit_fx_create( sprite_get( "starsmall" ), 20 );
starsmall_faster = hit_fx_create( sprite_get( "starsmall" ), 15 );

time_appear = hit_fx_create( sprite_get( "time_appear" ), 30 );

plat_start = hit_fx_create( sprite_get( "plat_start" ), 30 );
plat_end = hit_fx_create( sprite_get( "plat_end" ), 10 );

utilt_rift = hit_fx_create( sprite_get( "utilt_rift" ), 20 );

land_dust = hit_fx_create( sprite_get( "dust" ), 20 );


// New TP
newtpstart = hit_fx_create( sprite_get( "newtpstart" ), 15 );
newtpreturn = hit_fx_create( sprite_get( "newtpreturn" ), 15 );
newtpreturn2 = hit_fx_create( sprite_get( "newtpreturn2" ), 15 );
sparkfx = hit_fx_create( sprite_get( "sparkfx" ), 30 );
sparkinstant = hit_fx_create( sprite_get( "sparkinstant" ), 20 );
sparkfxshorter = hit_fx_create( sprite_get( "sparkfxshorter" ), 20 );
newtprings = hit_fx_create( sprite_get( "newtprings" ), 20 );

slashFX = hit_fx_create(sprite_get("slash"),10);
hitfx1 = hit_fx_create(sprite_get("hitfx1"),10);
hitfx2 = hit_fx_create(sprite_get("hitfx2"),20);
hitfx3 = hit_fx_create(sprite_get("hitfx3"),15);
hitfx3r = hit_fx_create(sprite_get("hitfx3r"),15);
hitfx4 = hit_fx_create(sprite_get("hitfx4"),20);
hitfx5 = hit_fx_create(sprite_get("hitfx5"),10);
hitfx6 = hit_fx_create(sprite_get("hitfx6"),10);
hitfx7 = hit_fx_create(sprite_get("hitfx7"),10);
hitfx7 = hit_fx_create(sprite_get("hitfx7"),10);
hitfx8 = hit_fx_create(sprite_get("hitfx8"),20);
hitfx9 = hit_fx_create(sprite_get("hitfx9"),10);
hitfx9short = hit_fx_create(sprite_get("hitfx9short"),4);
hitfx10 = hit_fx_create(sprite_get("hitfx10"),10);
hitfx11 = hit_fx_create(sprite_get("hitfx11"),24);
hitfx12 = hit_fx_create(sprite_get("hitfx12"),12 * 2);

trail = hit_fx_create(sprite_get("trail"),6);

portaltrail_red = hit_fx_create(sprite_get("portaltrail_red"),13);
portaltrail_blue = hit_fx_create(sprite_get("portaltrail_blue"),13);

portaltrail_proj_blue = hit_fx_create(sprite_get("portaltrail_proj_blue"),13);
portaltrail_proj_red = hit_fx_create(sprite_get("portaltrail_proj_red"),13);

trailfx[0] = {x:x,y:y,vsp:0,hsp:0,lifetime:0};
trailfx[1] = {x:x,y:y,vsp:0,hsp:0,lifetime:0};

// Store portal trails for each player
portaltrails[0] = {x:x,y:y,vsp:0,hsp:0,lifetime:0,right:true};
with(oPlayer)
{
    monarch.portaltrails[player] = {x:x,y:y,vsp:0,hsp:0,lifetime:0,right:true,up:true};
}


blood = hit_fx_create(sprite_get("blood"),18);
blood2 = hit_fx_create(sprite_get("blood2"),18);

dspec_circle = hit_fx_create(sprite_get("dspecial_effect"),40);

empty_fx = hit_fx_create(asset_get("empty_sprite"),0);

treturn = noone;
treturn2 = noone;
treturn3 = noone;
tmid = noone;
spark = noone;

butterflies[1] = butterfly1;
butterflies[2] = butterfly2;
butterflies[3] = butterfly3;
butterflies[4] = butterfly4;
butterflies[5] = butterfly5;
butterflies[6] = butterfly6;
butterflies[7] = butterfly7;

butterfliesr[1] = butterflyr1;
butterfliesr[2] = butterflyr2;
butterfliesr[3] = butterflyr3;
butterfliesr[4] = butterflyr4;
butterfliesr[5] = butterflyr5;
butterfliesr[6] = butterflyr6;
butterfliesr[7] = butterflyr7;

tele_anim_timer = 0;
black_screen = false;
black_screen_timer = 0;
blood_timer = 0;

flickercount = 0;
flickerback = false;

swirlhittimer = 15;
slashsub = 0;
slashangle = 0;
respawn_flash = 0;

aberration_timer = 0;

starcounter = 0;
staramount = 0;
starArray[0] = noone;
var i = 0;
repeat(20)
{
   starArray[i] = noone; 
}
i = 0;
repeat(100)
{
    afterimage_array[i] = -1;
    i++;
}

arrayindex = 0;
black_screen = false;
array_cleared = true;

// Time knife shiz
time_knife = noone;
default_knife_angle = 30;
knife_angle = 15;
knife_speed = 10;
knife_line_timer = 0;
last_knife_pos = {x:0,y:0};
last_player_pos = {x:0,y:0};

// Fair shiz
shot_queued = false;
bair_queue = false;

// Bair Shiz
bair_tp_queue = false;
spike_time = 0;
play_sound = false;

// Utilt shiz
rift_location = {x:0,y:0};


// Intro
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

// Idle tweak state
idleState = 0;


// Lite mode
lite = false;
liteModeTime = 30;
frameTimer = 0;

// Colors
if(get_player_color(player) == 0)
{
    monLightBlue = make_colour_rgb(21, 243, 255);
    monBlue = make_colour_rgb(43, 165, 247);
    monDarkBlue = make_colour_rgb(26, 96, 143);
    monRed = make_colour_rgb(196, 44, 69);
    monDarkRed = make_colour_rgb(130, 32, 66);
    monPurple = make_colour_rgb(102, 41, 184);
    monDarkPurple = make_colour_rgb(75, 31, 137);
}
else
{
    monLightBlue = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4));
    monBlue = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 5), get_color_profile_slot_g(get_player_color(player), 5), get_color_profile_slot_b(get_player_color(player), 5));
    monDarkBlue = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 5)- 17, get_color_profile_slot_g(get_player_color(player), 5) - 69, get_color_profile_slot_b(get_player_color(player), 5) - 105);
    monRed = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 2), get_color_profile_slot_g(get_player_color(player), 2), get_color_profile_slot_b(get_player_color(player), 2));
    monDarkRed = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 2) - 66, get_color_profile_slot_g(get_player_color(player), 2)-12, get_color_profile_slot_b(get_player_color(player), 2)-3);
    monPurple = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 3), get_color_profile_slot_g(get_player_color(player), 3), get_color_profile_slot_b(get_player_color(player), 3));
    monDarkPurple = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 3)-28, get_color_profile_slot_g(get_player_color(player), 3)-10, get_color_profile_slot_b(get_player_color(player), 3)-47);
}

// Debug values for drawing
t1 = 0;
t2 = 0;

b1 = 0;
b2 = 0;

c1 = 0;
c2 = 0;

test_index = -16;

// Munophone
trainingMode = 0
user_event(14);