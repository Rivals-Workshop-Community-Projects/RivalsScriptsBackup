hurtbox_spr = sprite_get("carol_hurtbox_standing");
crouchbox_spr = sprite_get("carol_hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .2;
crouch_anim_speed = .12;
walk_anim_speed = .25;
dash_anim_speed = .2;
pratfall_anim_speed = .25;
wait_time = 400;
wait_length = 80;
wait_sprite = sprite_get("wait");
wait_idle_pick = 0;
voice_protection = false;
idle_index = 36;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
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
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 5;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

refreshHitbox = false;

//Custom attack indexes names:
AT_JAB2 = AT_EXTRA_3;
AT_FTILT2 = 47;
AT_UTILT2 = 46;
AT_DTILT2 = 45;
AT_NAIR2 = 44;
AT_FAIR2 = 43;
AT_UAIR2 = 42;
AT_DAIR2 = AT_EXTRA_1
AT_BAIR2 = 39;
AT_DATTACK2 = 3;

//Custom attack index for Woodcock
//AG_MUNO_ATTACK_NAME = 80;

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
bshader = true;

//Motorbike related variables
motorbike = false;
bikeReady = 2;
fuel = 40;
fuel_charge = 0;
fuel_burn = 0;
fuel_remaining = 0;
bike_hit = false;
bike_hit_timer=0;
damageCheck=false;
smokeCounter = 0;
bike_state_timer = 0;
thrownBike = noone;
bike_sp = 0;
nBoostReadyTimer = 100;
wall_ride = false;
bike_stored = false;
bike = noone;

//Miscellaneous
hitConfirm = false;
dst = 0;
outline_charge = 0;
updateWallJump = 0;
afterimage_array = 0;
playtest_active = false;
with (oTestPlayer) playtest_active = true;

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
chargeUpVoiceLine = true;

//Galaxy Effect
galaxy_effect = noone;
galaxy_effect_sprite_index = -1;

//Debug Variable
debugCheck = false;

//Extras
pkmn_stadium_front_img = sprite_get("pkmn_carol_front");
pkmn_stadium_back_img = sprite_get("pkmn_carol_back");
btt_get_data = "false";
hikaru_title = "The Kung-Fu Kitty";
arena_title = "The Kung-Fu Kitty";
boxing_title = "The Kung-Fu Kitty";
arena_short_name = "Carol";
battle_text = "You want to pretend to pee really badly";
miiverse_post = sprite_get("miiverse_post");
uhc_victory_quote = "chek ot mai deviantart oc donut steel";
kf_hud_offset = -34;
copy_ability_id = 12;
sna_interrogated_line_01 = "I'll tell ya... for the right price!"; // Snake interrogation line 1.
sna_interrogated_line_02 = "I have some nice cookies if you let me go!"; // Snake interrogation line 2.
sna_interrogated_line_03 = "I REALLY need to pee right now!"; // Snake interrogation line 2.
plushForAmber = sprite_get("amber_plush");
TCG_Kirby_Copy = 4;
walle_taunt_sound = sound_get("jade_creek");
walle_taunt_type = 1;
has_fail = true;
fail_text = "Beaten by a cat, pathetic";
greenwood_cheer = 1;
naruto_sexyjutsu_gender = 2;
gfzsignspr = sprite_get("carol_sign");
pot_compat_variable = sprite_get("cat_food");
pot_compat_text = "Cat Food";
mamizou_transform_spr = sprite_get("real_cat");
draw_hud_event = 12;
guiltySprite = sprite_get("guilty_carol");
mario_cap_compat = sprite_get("cappytaunt_carol");
mario_cap_top_compat = sprite_get("cappytaunt_head_carol");
wiimote_stage_sprite = sprite_get("carol_wiimote");
assistATIndex = 29; //46 is a bike move, changing this so that Carol can use her moveset
boris_intro_sfx = sound_get("carol_grounded");
boris_intro_loop = 14;

//Howzit Compatibility
howzitisthebestshopowner123 = true //activates the compatibility

howzittaunttextarr[0] = "Howzit going, want to buy 
something?";
howzitautoforward[0] = 0;
howzittaunttextarr[1] = "No, I don't have any shiny 
golden motorbikes."
howzitautoforward[1] = 0;
howzittaunttextarr[2] = "However there might be 
something else you like.";
howzitautoforward[2] = 0;
howzittaunttextarr[3] = "I'm sorry miss, we don't 
have what you're after here.";
howzitautoforward[3] = 0;
howzittaunttextarr[4] = "Maybe next time.";
howzitautoforward[4] = 0;

howzithasnotso = false;
hit_player_event = 13;

powerBack=hit_fx_create(sprite_get("power_back"), 26);
sparkle=hit_fx_create(sprite_get("sparkle"), 30);
disc_hit= hit_fx_create(sprite_get("disc_hit"), 15);
bike_smokeH=hit_fx_create(sprite_get("bike_smokeH"), 12);
bike_smokeD=hit_fx_create(sprite_get("bike_smokeD"), 12);
bike_smokeV=hit_fx_create(sprite_get("bike_smokeD"), 12);
dair_aftereffect=hit_fx_create(sprite_get("dair_after_effect"), 8);
dair_aftereffect0=hit_fx_create(sprite_get("dair_after_effect0"), 8);
dair_aftereffect1=hit_fx_create(sprite_get("dair_after_effect1"), 8);
dair_aftereffect2=hit_fx_create(sprite_get("dair_after_effect2"), 8);
dair_aftereffect3=hit_fx_create(sprite_get("dair_after_effect3"), 8);
dair_aftereffect4=hit_fx_create(sprite_get("dair_after_effect4"), 8);
dair_aftereffect5=hit_fx_create(sprite_get("dair_after_effect5"), 8);
dair_aftereffect6=hit_fx_create(sprite_get("dair_after_effect6"), 8);
dair_aftereffect7=hit_fx_create(sprite_get("dair_after_effect7"), 8);
nitro_boost=hit_fx_create(sprite_get("nitro_boost"), 7);
jump_disc=hit_fx_create(sprite_get("jump_disc"), 40);
parry_shield=hit_fx_create(sprite_get("energy_shield"), 12);
hit_small=hit_fx_create(sprite_get("hit_small"), 12);
hit_medium=hit_fx_create(sprite_get("hit_medium"), 16);
hit_large=hit_fx_create(sprite_get("hit_big"), 20);
hit_proj=hit_fx_create(sprite_get("hit_proj"), 16);
bubble_pop=hit_fx_create(sprite_get("bubble_pop"), 12);
explosion=hit_fx_create(sprite_get("explosion"), 32);
bike_break=hit_fx_create(sprite_get("bike_break"), 18);

multikick_energy = 200;
kickTime=0;
start_kick_value = 0;
multikick_ready_timer = 100;
pounce = false;
pounceChange = false;
returnBike = false;
bikeWarp = false;
bikeExplosion = false;
small_djumps = true;
prev_hsp = 0;

voice = get_synced_var(player);
alt_cur = get_player_color(player);

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
if (alt_cur >= 15 && alt_cur <= 17)
{
    jump_sound = sound_get("sonic_jump");
}
djump_sound = sound_get("double_jump");
air_dodge_sound = sound_get("guard");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Abyss Runes
if has_rune("A")
{
    fuel = 40;
}

if has_rune("B")
{
    walk_accel = 0.3;
    walk_turn_time = 5;
    initial_dash_time = 8;
    initial_dash_speed = 7.75;
    dash_turn_time = 8;
    dash_turn_accel = 1.5;
}

if has_rune("E")
{
    max_djumps = 2;
}

if has_rune("I")
{
    jump_speed = 15;
}

if has_rune("J")
{
    max_djumps = 3;
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