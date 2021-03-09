hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 5;
initial_dash_time = 16;
initial_dash_speed = 8.5;
dash_speed = 6.5;
dash_turn_time = 12;
dash_turn_accel = 1.75;
dash_stop_time = 3;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 9;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .015;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6.5;
walljump_vsp = 11;
walljump_time = 28;
max_fall = 11.5; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .47;
hitstun_grav = .4;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 7;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
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

//Local Variables
attack_tap_timer = 0;
nspecial_charge_timer = 0;
fspecial_aim = 0;

//Status Effect
status_swirlburned = false;
swirlburned_timer = 0;

//D-Special Explosion Meter
dspecial_gague = 0;
dspecial_gague_max = 3;
dspecial_blink_timer = 0;

//The Cat (named Shikoku)
cat_init = false;
mycat = instance_create(x, y, "obj_article1")
mycat.state = "spawn";
mycat.state_timer = -1;
mycat.x = x - mycat.pet_w * 2 * spr_dir;
mycat.y = y - 24;

for (var i = 0; i < 49; i++) {
    cat_attack_spr[i] = sprite_get("cat_idle");
    cat_attack_hurtbox_spr[i] = sprite_get("cat_hurtbox");
    cat_window_amount[i] = 1;
    cat_hitbox_amount[i] = 1;
    cat_window_hitbox_min[i] = 0;
    cat_window_hitbox_max[i] = 0;
    cat_window_min[i] = 0;
    cat_window_max[i] = 0;
}

//Effects
cat_death_fx = hit_fx_create(sprite_get("cat_death"), 30);
cat_nspecial_bang1_fx = hit_fx_create(sprite_get("cat_nspecial_effect2a"), 16);
cat_nspecial_bang2_fx = hit_fx_create(sprite_get("cat_nspecial_effect2b"), 24);
cat_deathghost_fx = hit_fx_create(sprite_get("cat_deathghost"), 24);
smallsmoke_fx = hit_fx_create(sprite_get("smallsmoke"), 16);
burn_fx = hit_fx_create(sprite_get("burnfx"), 24);
uspecial_fx = hit_fx_create(sprite_get("uspecial_projend"), 24);
dspecial_fx = hit_fx_create(sprite_get("dspecial_expl"), 48);


//Trummel & Alto support
trummelcodecneeded = false;
trummelcodec_id = noone;

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");
var page = 0;
dracula_speaker[page] = 1;
dracula_text[page] = "...Hello? Is this Dracula's house?";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "This is no mere house, little girl. What brings you all the way into my castle?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "We saw this big house of yours and had to come inside to look around! Isn't that right, Shikoku?";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "~Nyan!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Well, you're tresspassing on forbidden grounds. Turn back, or else...";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Awww... you're no fun. All you old people act the same.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "I see you chose death, then. Beware, little girl![glass] I won't go easy on you!";
page++;

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
abyssMods[@ runes.A] = [3, "Faster Movement."];
abyssMods[@ runes.B] = [3, "Floatier Jumping."];
abyssMods[@ runes.C] = [1, "FSPECIAL does not run out."];
abyssMods[@ runes.D] = [1, "USPECIAL spawns more projectiles."];
abyssMods[@ runes.E] = [3, "Lower friction."];
abyssMods[@ runes.G] = [0, "NSPECIAL always charged."];
abyssMods[@ runes.H] = [2, "Aerials do more damage."];
abyssMods[@ runes.I] = [0, "The Cat will never separate."];
abyssMods[@ runes.J] = [1, "Charged DSPECIAL's damage increased."];
abyssMods[@ runes.L] = [2, "DSPECIAL needs only one projectile."];