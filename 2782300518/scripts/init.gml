hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 47;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 5;
djump_speed = -1;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 16;
walljump_number = 0;
walljump_limit = 5;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 8;
dodge_recovery_frames = 20;

//tech animation frames
tech_active_frames = 14;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 8;
techroll_active_frames = 12;
techroll_recovery_frames = 14;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 14;
roll_forward_recovery_frames = 12;
roll_back_startup_frames = 3;
roll_back_active_frames = 14;
roll_back_recovery_frames = 12;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

refreshHitbox = false;

//Tail Sprite Stuff
tsprite_index=-1;
timage_index=0;
timage_number=0;
timage_speed=1;
tx=0;
ty=0;
tsx=1;
tsy=1;
trotation=0;
tfront=false;

//Bike Sprite Stuff
bsprite_index = -1;
bimage_index=0;
bimage_number=0;
bimage_speed=1;
bx=0;
by=0;
bsx=1;
bsy=1;
brotation=0;
bfront=false;

//Motorbike related variables
motorbike = false;
bikeReady = false;
fuel = 0;
fuel_charge = 0;
fuel_burn = 0;
bike_hit = false;
bike_hit_timer=0;
damageCheck=false;
smokeCounter = 0;
bike_state_timer = 0;

//Practice mode
practice = false;      //Whether you're in Practice Mode or not.
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.
practice_hud_clearance = 0;

//Dodge voice variables
dodgeTime=0;
dodgeJumpCD=0;
dodgeCounter=0;
dodgeTaunt= false;

//Additional variables
feline_power = true;
comboCounter = 0;
moveDisc = true;
cancelMomentum = false;
Fspecial_positionX = 0;
Fspecial_positionY = 0;
vsp_tracker = 0;

//Debug Variable
debugCheck = false;

//Extras
pkmn_stadium_front_img = sprite_get("pkmn_carol_front");
pkmn_stadium_back_img = sprite_get("pkmn_carol_back");
btt_get_data = "false";
hikaru_title = "The Kung-Fu Kitty";
arena_title = "The Kung-Fu Kitty";
arena_short_name = "Carol";
battle_text = "The Red Scarved Ninja Cat";
miiverse_post = sprite_get("miiverse_post");

kirbyability=16;
swallowed=false;
enemykirby=noone;
carol_handler_id=noone;
carol_has_kirby_ability=false;

smallsparkle=hit_fx_create(sprite_get("smallsparkle"), 36);
bike_smokeH=hit_fx_create(sprite_get("bike_smokeH"), 12);
bike_smokeD=hit_fx_create(sprite_get("bike_smokeD"), 12);
bike_smokeV=hit_fx_create(sprite_get("bike_smokeD"), 12);
dair_aftereffect=hit_fx_create(sprite_get("dair_after_effect"), 20);
nitro_boost=hit_fx_create(sprite_get("nitro_boost"), 7);
jump_disc=hit_fx_create(sprite_get("jump_disc"), 40);

multikick_energy = 200;
kickTime=0;
meterShine = 0;
pounce = false;
pounceChange = false;
returnBike = false;

voice = 0;
voice_toggle = get_player_color(player);

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Abyss Runes
if has_rune("A"){
    fuel = 40;
}

if has_rune("B"){
    walk_accel = 0.3;
    walk_turn_time = 5;
    initial_dash_time = 8;
    initial_dash_speed = 7.75;
    dash_turn_time = 8;
    dash_turn_accel = 1.5;
}

if has_rune("I")
{
    jump_speed = 15;
}

if has_rune("O")
{
    fuel = 40;
    jump_speed = 16;
    walk_accel = 0.8;
    initial_dash_time = 9;
    initial_dash_speed = 8;
    dash_turn_time = 8;
    dash_turn_accel = 1.5;
}

user_event(7);