hurtbox_spr = sprite_get("cup_hurtbox");
crouchbox_spr = sprite_get("cup_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

wearing_hat = get_player_color(player) == 8;
//seasonal_hat = sprite_get("summer_hat_idle");
//seasonal_toss = sprite_get("summer_hat_toss");

switch (get_match_setting(SET_SEASON)) { //Seasonal Colors (thank you based supersonicnk)
    case 1: // valentines
        seasonal_hat = sprite_get("valentines_hat_idle");
        seasonal_toss = sprite_get("valentines_hat_toss");
    break;
    case 2: // summer
        seasonal_hat = sprite_get("summer_hat_idle");
        seasonal_toss = sprite_get("summer_hat_toss");
    break;
    case 3: // halloween
        seasonal_hat = sprite_get("halloween_hat_idle");
        seasonal_toss = sprite_get("halloween_hat_toss");
    break;
    case 4: // christmas
        seasonal_hat = sprite_get("christmas_hat_idle");
        seasonal_toss = sprite_get("christmas_hat_toss");
    break;
}

//cuphead exclusive variables
card_count = 0;
supermeter_sound_played = false;
meter_not_full = 1;
current_shot = 1;

nspecial_proj_spawned = false;
nspec_dir = 0;
nspecial_jumped = false;
nspecial_spread = false;

menu_respawn = false;

shot_menu = -1;
shot_cursor = -1;
menu_selection = 1;
menu_open = false;
shot_cancel_timer = 0;
shot_can_cancel = false;

chargeshot_charge = 0;
chargeshot_time = 60;
chargeshot_cancelled = false;
chargeshot_charge_reset = false;

uspecial_used = false;
uspecial_left = false;
uspecial_right = false;
dash_enabled = false;
air_dashed = false;

invincible_super = false;
var fuckington = 8;
invincible_time = [fuckington, fuckington*1.5];
second = 60;

ex_spawned = false;

rebound_ff = 0;

chase_id = noone;
range = 10000;
orbit_active = false;
orbit_hit = 0;
orbit_sprite = sprite_get("chaos_orbit");

//rune variables
super_gain_multipler = 1;
ex_cost_multiplier = 1;
parry_multiplier = 1;
n_double_jumped = false;

is_ai = false;

//visual effects
smoke_bomb = hit_fx_create(sprite_get("smoke_bomb"), 30);
eightway_top = hit_fx_create(sprite_get("ew_vfx_top"), 25);
eightway_middle = hit_fx_create(sprite_get("ew_vfx_middle"), 30);
eightway_bottom = hit_fx_create(sprite_get("ew_vfx_bottom"), 35);
kablooey_vfx = hit_fx_create(sprite_get("kablooey_vfx"), 15);
radical_barrage = hit_fx_create(sprite_get("radicalbarrage"), 30);

cup_Shootcur = 0;
sfx_cupShoot[0] = getWeaponSounds("sfx_peashoot"); //default
sfx_cupShoot[1] = getWeaponSounds("sfx_peashoot");
sfx_cupShoot[2] = getWeaponSounds("sfx_spread");
sfx_cupShoot[3] = getWeaponSounds("sfx_chaser");
sfx_cupShoot[4] = getWeaponSounds("sfx_lobber");
//i can get away with not adding weapon sounds for charge, Lol!
sfx_cupShoot[6] = getWeaponSounds("sfx_roundabout");

//workshop item compatibility

//trummel & alto
trummelcodecneeded = false;
trummelcodec_id = noone;
//feri
feri_costume = sprite_get("feri_costume_cuphead");
//otto
otto_bobblehead_sprite = sprite_get("bobble_cuphead");
//miiverse
miiverse_post = sprite_get("cup_miiverse1");
sprite_change_offset("cup_miiverse1", 60, 30);
//dedede it's the star of the show
arena_title = "The Gunning Cartoon";
//d-d-danganronpa
guiltySprite = sprite_get("cupganronpa");
//last resort
resort_portrait = sprite_get("portrait_cuphead");
//waaaalllllll-eeeee
walle_taunt_sound = sound_get("sfx_cuphead_flag");
walle_taunt_type = 2;
//amber :)
plushForAmber = sprite_get("plushCuphead");
//pokemon - gotta catch em all
pkmn_stadium_front_img = sprite_get("cuphead_front");
pkmn_stadium_back_img = sprite_get("cuphead_back");
//greenflower - aka my past catching up to me
gfzsignspr = sprite_get("signcuphead");

wallop = false;
hit_player_event = 12;

//soulbound conflict
battle_text = "* Smells like...";
battle_text2 = "* ... what's that liquid?";

/* Weapon Index

1 - Peashooter (Default)
2 - Spread
3 - Chase
4 - Lobber
5 - Charge
6 - Roundabout

*/


//kirby copy ability variables
swallowed = false;
kirbyability = 16;
newicon = 0;

normal_height = char_height;
char_height = 44;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1;

jump_start_time = 5;
jump_speed = 10.50;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2;
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 11.5; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

user_event(0);

#define getWeaponSounds(name)
var i = [sound_get(name+"_1"), sound_get(name+"_2"), sound_get(name+"_3")];
return i;