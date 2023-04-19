divespeed = 9;
hk_weight = 1.15;

swallowed = 0;

pon_test = 0;
pon_angle = 0;
pon_count = 0;
pon_mod = 0;

horn_cooldown = 0;

shop_open = 0;
item_selected = 1;

magnet_bought = 1;
mail_bought = 1;
beam_bought = 1;
bonk_bought = 1;
umbrella_bought = 1;
onehit_bought = 1;

magnet_price = 50;
mail_price = 75;
beam_price = 100;
bonk_price = 125;
umbrella_price = 125;
onehit_price = 100;

scooter = false;

error_cooldown = 0;
error_cooldown_basic = 12;

badge_slot_1 = 0;
badge_slot_2 = 0;
badge_slot_3 = 0;

selecting = 0;

slot_selected = 0;

click_cooldown = 12;
click_cooldown_basic = 12;

ground_timer = 10;

timer_decrease = 20;
timer_decreasing = false;

sfx_ver = 0;

practice = false;
timer1 = get_game_timer();
timer2 = 0;

actual_practice = get_training_cpu_action() != CPU_FIGHT;

uspecial_timer = 32 * 3;
uspecial_timer_max = 32 * 3;

shop_type = "current";

taunt_time = 0;
volume_slide = 1;

changed_prices = false;

uspec_descend = 0.75;
next_window = false;

nspec_cooldown = 45;
homing_attack_cooldown = 60;

hookshot_hit = false;
hookshot_hitbox = -4;

hookshot_wall_hsp = 3;
hookshot_wall_vsp = -9;

hookshot_hit_cooldown = 40;

hook_reverse_speed = 0.9;
hook_not_always_active = true;

rune_C_equipped = false;

shortest_dist = 200;

sparkle_timer = 0;

hit_above = true;

hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift

//steve death message
steve_death_message = "Steve had a death wish";

//otto
otto_bobblehead_sprite = sprite_get("ottohatkidsupportyes");

//tco art
tcoart = sprite_get("TCOart");

/*
//yeah
kirbyability = 16;
*/

//wall-e
walle_taunt_sound = sound_get("sfx_scooter_beep");
walle_taunt_type = 2;

hurtbox_spr = sprite_get("hatkid_hurt");
crouchbox_spr = sprite_get("hatkid_crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 62;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .1;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 9;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 8;
dash_turn_time = 14;
dash_turn_accel = .9;
dash_stop_time = 6;
dash_stop_percent = .45; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14.5; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = hk_weight; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 8.5;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 6.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;






spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

grabbed = -4;









taunt_timer = 0;

/*
//RUNES

//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);


abyssMods[@ runes.A] = [3, "FSPECIAL goes much further."];
abyssMods[@ runes.B] = [1, "NSPECIAL stuns."];
abyssMods[@ runes.C] = [3, "DTILT moves you forwards."];
abyssMods[@ runes.D] = [3, "TAUNT has super armor for 20 frames."];
abyssMods[@ runes.E] = [3, "Gives Hat Kid 4 jumps."];
abyssMods[@ runes.F] = [3, "Shortens Hat Kid's crouch hurtbox."];

abyssMods[@ runes.G] = [3, "TAUNT moves you forwards."];
abyssMods[@ runes.H] = [3, "Whiffing DSPECIAL no longer puts you into freefall."];
abyssMods[@ runes.I] = [3, "DSTRONG lets you move much more while charging."];
abyssMods[@ runes.J] = [3, "Increased dash speed."];
abyssMods[@ runes.K] = [3, "All strongs can be dodge cancelled while charging."];

abyssMods[@ runes.L] = [3, "DSPECIAL can lock on from almost anywhere (still has to be above the target)."];
abyssMods[@ runes.M] = [3, "Having more pons makes you heavier."];
abyssMods[@ runes.N] = [3, "All badge costs are halved."];
abyssMods[@ runes.O] = [3, "Makes the Magnet Badge drag all pons towards you."];
*/