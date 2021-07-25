swallowed = 0;
confirmed = false;
can_override = true;

//otto
otto_bobblehead_sprite = sprite_get("padldlldldldldler");

//pokemon stadium stuff
pkmn_stadium_front_img = sprite_get("pkmn_front");
pkmn_stadium_back_img = sprite_get("pkmn_back");

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

abyssMods[@ runes.A] = [3, "Increases dash speed."];
abyssMods[@ runes.B] = [3, "Airdodge and roll travel much further."];
abyssMods[@ runes.C] = [2, "The final hit of DAIR spikes."];
abyssMods[@ runes.D] = [3, "FSPECIAL has super armor on part of its startup."];
abyssMods[@ runes.E] = [1, "DASH ATTACK spawns 2 balls."];
abyssMods[@ runes.F] = [2, "BAIR has clairen stun."];

abyssMods[@ runes.G] = [3, "Gives an extra jump."];
abyssMods[@ runes.H] = [2, "Changes FAIR's weak hit to a windbox."];
abyssMods[@ runes.I] = [2, "The sourspots on FSTRONG act the same as the normal hitbox."];
abyssMods[@ runes.J] = [2, "Decreases FAIR's startup and endlag."];
abyssMods[@ runes.K] = [2, "DSTRONG's hitbox stays out for more time."];

abyssMods[@ runes.L] = [3, "USPECIAL has automatic rhythm."];
abyssMods[@ runes.M] = [3, "Increases waveland speed by a lot."];
abyssMods[@ runes.N] = [2, "UAIR's hitbox stays out for much longer, and the attack has less endlag."];
abyssMods[@ runes.O] = [3, "Lowers weight to be normal."];

//END OF RUNES

//brush_smear = create_fx(x + lengthdir_x(4, state_timer * 5), y + lengthdir_y(4, state_timer * 5), sprite_get("brushparticle"))

//kirby ability
kirbyability = 16

//TCO interaction
tcoart = sprite_get("TCOart");

//variables
shouldprompt = 0;
promptheight = 140
promptside = 12
promptheightUI = 140
promptsideUI = 12
canprompt = 2
practice_mode = false;
timer1 = get_game_timer();
timer2 = 0;
uspecialgood = 0;


//newer variables
sfx_rng = 0;
can_time = true;
taunt_works = false;
taunt_rng = 1;
taunt_works_again = false;
oof = false;
old_cancel = false; //setting this to true brings back the up special cancel with pratfall
dtilt_cancel_on = false;
can_time_short = true;
can_time_nspecial = true;
can_turn = false;

hurtbox_spr = sprite_get("idlehurt");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = sprite_get("jumphurt");
hitstun_hurtbox_spr = -1;

char_height = 65;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;

pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .32;
prat_fall_accel = .95; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 25; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .48;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
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


user_event(14);
