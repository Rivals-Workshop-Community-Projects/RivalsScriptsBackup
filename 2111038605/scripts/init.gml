//TCO art
tcoart = sprite_get("TCOart");

//otto bobblehead
otto_bobblehead_sprite = sprite_get("bobblehead");


nspecial_cooldown_thing = 0;
block_cooldown = 450;
block_cooldown_def = 450;
block_cooldown_fell = 100;

fspec_cooldown = 60;

//Muno start

max_blocks = 5; //Max # of blocks from USpecial
block_num = 0; //Current USpecial block

for (i = 0; i <= max_blocks; i++){
    blocks[i] = noone; //Holds IDs of USpecial block articles. This starts at one!
    blocks_x[i] = 0; //X positions of blocks, in units of 1
    blocks_y[i] = 0;
}

spr_uspecial_block = sprite_get("uspecial_block");
spr_uspecial_arrow = sprite_get("uspecial_arrow");

can_u = true; //Used to draw arrows or not
can_d = true;
can_r = true;
can_l = true;

//Muno end


uspec_timer = 0;
uspec_max_time = 135;
uspec_sweat_time = 35;


do_the_thing = false;

fspecial_timer = 0;

killarticles = false;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .09;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .45;
hitstun_grav = .47;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 24;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 4;
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
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("djump"); //yes these are switched on purpose
djump_sound = sound_get("jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



//rune variables
bair_speed_def = 9;
bair_speed_rune = 12;

flip_cooldown = 0;
flip_cooldown_max = 35;

dattack_speed_def = 8;
dattack_speed_rune = 16;









//runes

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




abyssMods[@ runes.A] = [3, "Gives you 3 more midair jumps."];
abyssMods[@ runes.B] = [3, "Increases your airdodge/roll speed."];
abyssMods[@ runes.C] = [3, "Decreases the cooldown on spawning your box after it gets parried."];
abyssMods[@ runes.D] = [3, "Adds super armor to USTRONG."];
abyssMods[@ runes.E] = [3, "Makes BAIR travel further."];
abyssMods[@ runes.F] = [0, "Boxes no longer get destroyed when you lose a stock."];

abyssMods[@ runes.G] = [2, "Lets you cancel DTILT, BAIR, and DATTACK on-hit."];
abyssMods[@ runes.H] = [3, "Adds super armor to FSPECIAL."];
abyssMods[@ runes.I] = [3, "Lets you use up to 12 boxes during USPECIAL."];
abyssMods[@ runes.J] = [3, "Better waveland."];
abyssMods[@ runes.K] = [3, "DATTACK travels further."];

abyssMods[@ runes.L] = [0, "USPECIAL creates boxes in every location one is placed when cancelled."];
abyssMods[@ runes.M] = [0, "DSPECIAL always lets you boost boxes into the air, even if they're grounded."];
abyssMods[@ runes.N] = [3, "Pressing TAUNT while in the air will reverse your speed."];
abyssMods[@ runes.O] = [2, "Aerials are cancellable into specials on-hit + FSPECIAL is cancellable after startup."];