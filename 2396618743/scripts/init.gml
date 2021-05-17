hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = sprite_get("jump_hurt");
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .14;
crouch_anim_speed = .12;
walk_anim_speed = .13;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.0;
dash_speed = 6.5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 4.25;

old_jump = false;
djump_speed = -1;
djump_accel = -2;
djump_accel_start_time = 3;
djump_accel_end_time = 11;

leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .40;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 12;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme(sound_get("terra_victory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Floaty Jump stuff
floatjumptime = 0;

//Passive Charge stuff
chargeCounter = 0;
chargeCounterMax = 240; //4 secs
hasCharge = 0;
chargeSpent = 0;
flashVisible = 0;
calculatedDamage = 0;
meter_color = 0;
conserveCharge = 0;

//Nspecial stuff
iceshard_ready = 0;
freeze = sprite_get("freeze");
freezeAnim = sprite_get("freeze_anim");
freezeAnimStripLength = 10;
freezeAnimTimer = 0;
freezeAnimSpeed = .1;
terrafreeze = -1;
terrafreeze_player = 0;

//Dstrong stuff
bury = sprite_get("bury");
terrabury = -1;
terrabury_player = 0;
terrabury_shake = 0;
bury_immunity = 0;

//Uspecial stuff
uspecialtime = 0;
uspecial_speed = 0;
tornado = sprite_get("uspecial_tornado");
tornadoAnimStripLength = 5;
tornadoAnimTimer = 0;
tornadoAnimSpeed = .2;
tornadoXposition = 0;
escapedPratfall = 0;

//Dspecial stuff
dspecialcharge = 0;
reticle = sprite_get("dspecial_reticle");
platback_spr = sprite_get("platback");
reticleAnimStripLength = 4;
reticleAnimTimer = 0;
reticleAnimSpeed = .25;

//Dair stuff
terrapull_player = 0;
terrapull = 0;

//Hit FX
drainhfx_spr = sprite_get("hfx1");
drainhfx = hit_fx_create(drainhfx_spr, 45);
flood1_spr = sprite_get("hfx2");
flood1 = hit_fx_create(flood1_spr, 24);
thundara1_spr = sprite_get("hfx3");
thundara1 = hit_fx_create(thundara1_spr, 24);
flood2_spr = sprite_get("hfx4");
flood2 = hit_fx_create(flood2_spr, 28);
thundara2_spr = sprite_get("hfx5");
thundara2 = hit_fx_create(thundara2_spr, 28);
flare1_spr = sprite_get("hfx6");
flare1 = hit_fx_create(flare1_spr, 28);
flare2_spr = sprite_get("hfx7");
flare2 = hit_fx_create(flare2_spr, 28);


//Kirby
kirbyability = 1;

//Mt. Dedede

arena_title = "The Magitek Elite";

//dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "It seems a most one-of-a-kind creature walks these halls. Make yourself at home, half-esper.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "So it is you. The man who has brought terror upon this world once again... Dracula.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Tell, me. Do you know what it means to love?";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "...Once. A long time ago. But I am long past such feelings of frivolity.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "Oh... Well, how fortunate it must have been.";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "I doubt that my feelings could measure up to a word as precious as that but... right now, my friends are in grave danger! And so, I ask that you call off your attack on the Sealed Gate!";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Ha. [glass] You dare make demands of Lord Dracula himself? You naive girl...";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "Don't you see? There is nothing your friends can do. No matter how stubborn your 'Returners' prove to be, my armies are endless! Your efforts are meaningless.";
page++;

//Page 8
dracula_speaker[page] = 1;
dracula_text[page] = "I see... Then, I will defeat you myself.";
page++;

//Page 9
dracula_speaker[page] = 0;
dracula_text[page] = "Well, now it gets interesting. Show me how powerful your magic truly is, [shake] halfling!";
page++;
