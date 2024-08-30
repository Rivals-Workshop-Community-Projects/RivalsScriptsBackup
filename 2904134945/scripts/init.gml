hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
charHeightStand = char_height;
charHeightCrouch = 42;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

wait_sprite = sprite_get("idle2");
wait_time = 4/idle_anim_speed * 5;
wait_length = 9/idle_anim_speed;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 4;
initial_dash_speed = 6;
dash_speed = 6.2;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 4.5;
djump_speed = 8;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 25;
walljump_hsp = 6;
walljump_vsp = 7;
walljump_time = 16;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .14; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_eta");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// vfx roll
rollSpr = sprite_get("roll_forward");
rollArray = array_create(3, -1);

// hit fx
dtiltProjBreak = hit_fx_create(sprite_get("dtiltProjBreak"), 20);
sparklefx = hit_fx_create(sprite_get("sparkle"), 12);
bigicefx = hit_fx_create(sprite_get("vfx_bigice"), 32);
particle = hit_fx_create(sprite_get("particle"), 21);
boost_effect = hit_fx_create(sprite_get("boostFx"), 20);
spinfx = hit_fx_create(sprite_get("fxspin"), 18);
hexfx = hit_fx_create(sprite_get("fxhex"), 12);
sweetfx = hit_fx_create(sprite_get("fxsweet"), 15);
boomfx = hit_fx_create(sprite_get("boom"), 34);

// tutorial
sfxSelect = sound_get("snd_squeak");
sfxAccept = sound_get("snd_select");
sfxCancel = sound_get("snd_squeak");
practice = get_training_cpu_action() != CPU_FIGHT && object_index!=oTestPlayer;
menuState = 0;
menuStateBuffer = 0;
holdTimer = 0;
tutAlpha = 1;
tutOn = true;
tutMenu = 0;
tutPrevMenu = 0;
tutDone = array_create(1, 0);
tutDoneAdv = array_create(1, 0);

// looping sfx
holidayID = noone;
graveID = noone;

// specials
nspecMeter = 0;
fspecMeter = {charge:120, chargeMax:120, opacity:0};
dspecBan = false;
uspecAngle = 0;

// misc
renderer = instance_create(0, 0, "obj_article2");
aura = false;
switch (get_player_name(player)) // locked behind my tag :(
{
	case "Lukaru":
	case "Karu": canAura = true; break;
	default: canAura = false; break;
}
auraClone = noone;
auraMeter = 0;
hue = 0;
frostbiteMax = 6;
frostgraveTime = 90;
if (has_rune("F")) frostgraveTime*=3;
afterimage_array = 0;
transcounter = 0;
hasHitUAir = false;
user_event(0);
jumpSprites = [sprite_get("jump"), sprite_get("jumpMid"), sprite_get("jumpBack")];

// ustrong
ustrongLoop = 0;

// intro
introTimer = -4;

// Support
Hikaru_Title = "Lost girl";
personaQuips[10] = "Fahaha...!";
tcoart = sprite_get("tco_art");
arena_title = "The Lost Girl";
battle_text = "You are blinded by snow.";
ncode1 = "Proceed.";
ncode2 = ncode1;
ncode3 = ncode1;
steve_death_message = "Transphobia is gone";
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;
spam_ad = sprite_get("spam_ad");