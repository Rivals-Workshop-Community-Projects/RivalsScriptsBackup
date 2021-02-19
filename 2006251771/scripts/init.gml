hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// BtT
get_btt_data = false;
btt = false;
ud_targ_timer = 0;
ud_targ_movement = 1;
targ_timer = 0;
targ_window = 0;
targ_win_length = [100, 50, 50, 25];
targ_frozen = false;
targ_frozen_timer = 0;
targ_prev_value = 0;
song_played = false;
experimental_music = false;
music_text = true;
music_timer = 0;
music_changed = false;
target_song = 0;
music_changed_alt = false;

kirbyability = 16;
kirby_shine_hold_timer = 0;
enemykirby = -1;
kirby_reflect_fx = 0;
kirby_player_id = 0;
swallowed = -1;
trummelcodecneeded = false;
trummelcodec_id = noone;
lcancel_timer = -8;
autocancel = false;
jab_finishable = false;
multihit_repeat = false;
aerial_laser = false;
laser_repeat = false;
buffered = false;
move_queue1 = 0;
move_queue2 = 0;
move_queue3 = 0;
move_queue4 = 0;
move_queue5 = 0;
move_queue6 = 0;
move_queue7 = 0;
move_queue8 = 0;
move_queue9 = 0;
previous_move = 0;
illusion_landed = true;
moved_up = false;
illusion_air = false;
free_time = 0;
fiyaa_angle = 90;
flashed = true;
special_held = 0;
easter_egg_timer = 0;
balanced_falco = true;
easter_egg_set = false;
fallingfromupb = false;
fox = false;
laser_vfx = hit_fx_create(sprite_get("laser_vfx"), 9);
laser_vfx_air = hit_fx_create(sprite_get("laser_vfx_air"), 9);
shine_buffered = false;
back_jump = false;
free_timer = 0;
starting_vsp = 0;
parry_spotdodge = false;
illusion_set = false;
hit_ustrong = false;
attack_held = 0;
buffer_clear = "";
jab_buffered = false;
jab_ready = false;
second_punch = false;
wearing_hat = get_player_color(player) == 15;
laser_fx = 0;
laser_time = 0;
laser = 0;
hit_laser_air = false;
reflect = false;
reflect_distance = 0;
reflected = 0;
window_start = 0;
shine_turn = false;
shine_turnavailable = false;
reflect_fx = 0;
parried_timer = 0;
last_player_reflected = [];
shine_broke = false;
flame_fx = 0;
reflect_timer = 0;
melee_activated = false;
cancelled_melee = false;
fox_activated = false;
no_more_aiming = false;
illusion_grounded = false;
not_free_time = 0;
illusion_fx0 = 0;
illusion_fx1 = 0;
illusion_fx2 = 0;
illusion_fx3 = 0;
shortened = false;
multihit_time = false;
buddy_fix = false;
shine_hold_timer = 0;
shine_ready = false;
uspecial_cancellable = false;
fspecial_cancellable = false;
hit_fspecial = false;
already_landed = false;
fair_landing_hitbox = false;
reflect_parry = false;
slipstream_y = 0;
slipstream_timer = 0;
not_in_slipstream_timer = 0;
absa_cloud_reflected = 9999999;
absa_up_length = 0;
absa_down_length = 0;
zetta_reflect = false;
shovel_knight_exists = false;
temp_laser_repeat = false;
temp_buffered = false;
temp_hit_laser_air = false;
temp_aerial_laser = false;
temp_laser_time = 0;
// Summer
summer = get_match_setting(SET_SEASON) == 2;
summer_disappeared = false;
seasonal_reflect = 0;
seasonal_shine = 0;
seasonal_shine_air = 0;
tan_gone = hit_fx_create(sprite_get("falcotanningend"), 48);
summer_dir = 1;
fair_parry = false;
shine_kick_buffered = false;
shine_held = false;

char_height = 52;
idle_anim_speed = 0.125;
crouch_anim_speed = .125;
walk_anim_speed = .185;
dash_anim_speed = .20;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 11;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.7;
moonwalk_accel = 1.0;

jump_start_time = 5;
jump_speed = 15.07;
short_hop_speed = 7.31;
djump_speed = 13.60;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 12;
walljump_time = 50;
wall_frames = 2;
max_fall = 10.94; //maximum fall speed without fastfalling
fast_fall = 12.35; //fast fall speed
gravity_speed = 0.60;
hitstun_grav = 0.55;
knockback_adj = 1.11; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3
techroll_active_frames = 7;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

// visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// TCO art
tcoart = sprite_get("falcotcoart" + string(get_player_color(player)));

// Rune Support

// Rune Buddy

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

abyssMods[@ runes.A] = [2, "DAIR has no late hit."];
abyssMods[@ runes.B] = [1, "NSPECIAL is faster, but doesn't stun."];
abyssMods[@ runes.C] = [1, "NSPECIAL is far slower, but does knockback."];
abyssMods[@ runes.D] = [3, "Falco is invincible during FSPECIAL travel."];
abyssMods[@ runes.E] = [2, "DAIR weak hit sends into strong hit."];
abyssMods[@ runes.F] = [3, "USPECIAL has less startup, travels farther, and is a multihit."];

abyssMods[@ runes.G] = [3, "DSPECIAL can be kicked at any frame of the shine and is much faster."];
abyssMods[@ runes.H] = [3, "Falco has higher air mobility."];
abyssMods[@ runes.I] = [3, "DSPECIAL can be jump cancelled after it is kicked."];
abyssMods[@ runes.J] = [2, "DSPECIAL sends opponents away from the center vertically."];
abyssMods[@ runes.K] = [3, "USPECIAL charge has a hitbox, is cancellable, and has no prat fall."];

abyssMods[@ runes.L] = [1, "Lasers are shines, and laser is far slower."];
abyssMods[@ runes.M] = [3, "FSPECIAL can be cancelled and has significantly faster startup."];
abyssMods[@ runes.N] = [3, "DSPECIAL's startup is invincible and hitbox lasts for entire startup."];
abyssMods[@ runes.O] = [3, "Falco has five jumps."];


// Official Runes
runesUpdated = get_match_setting(SET_RUNES);

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
