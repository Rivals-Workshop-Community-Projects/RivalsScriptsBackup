hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = -1;
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 16;

dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.01;
//moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
air_max_speed = 0; //NOTE: This gets changed in attack_update after countdown timer
air_accel = .1;
prat_fall_accel = .5; //multiplier of air_accel while in pratfall
air_friction = .02;
gravity_speed = .6;
hitstun_grav = .55;
knockback_adj = 0.5; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
max_fall = 999;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if (!has_rune("G"))
beyTimer = 10800;
else
beyTimer = 31600;

pastVSP = 0;
pastHSP = 0;
clangRandom = 1;
doublejump = 3;
defSound = true;
deathTimer = 0;
initX = 0;
initY = 0;
respawnTimer = 0;

set_victory_theme(sound_get("bb-victory"));
set_victory_bg(sprite_get("bb-victory"));

//RAINBOWS
hue_offset = 0;
hue_speed = 0.75; //change this to change the speed of the hueshift



set_attack(AT_TAUNT);