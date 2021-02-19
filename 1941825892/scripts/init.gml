hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// BtT
btt = false;
get_btt_data = false;
slider_movement = -1;
slider_timer = 0;
platform_movement = -1;
platform_timer = 0;
target_movement = -1;
target_timer = 0;
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
lag_repeats = 0;
free_time = 0;
fiyaa_angle = 90;
flashed = true;
special_held = 0;
easter_egg_timer = 0;
balanced_fox = true;
easter_egg_set = false;
fallingfromupb = false;
falco = false;
fair_speed = 0;
new_scaling = 0.3;
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
// wearing_hat = get_player_color(player) == 15;  Christmas
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
faired = 0;
shine_broke = false;
flame_fx = 0;
reflect_timer = 0;
melee_activated = false;
cancelled_melee = false;
falco_activated = false;
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
temp_kirby_shine_buffered = false;
temp_kirby_special_held = 0;
just_daired = 0;
hit_fspecial = false;
already_landed = false;
reflect_parry = false;
slipstream_y = 0;
slipstream_timer = 0;
not_in_slipstream_timer = 0;
absa_cloud_reflected = 9999999;
absa_up_length = 0;
absa_down_length = 0;
zetta_reflect = false;
just_shined = 0;
shovel_knight_exists = false;
test_var = 0;
// Summer
summer = get_match_setting(SET_SEASON) == 2;
if (get_player_color(player) == 15 && summer) {
    sunglasses = true;
} else {
    sunglasses = false;
}
sunglasses_x_offset = 0;
sunglasses_y_offset = 0;
summer_disappeared = false;
seasonal_reflect = 0;
seasonal_shine = 0;
seasonal_shine_air = 0;
grill_gone = hit_fx_create(sprite_get("foxcookingend"), 48);
summer_dir = 1;

spr_airdodge_back = sprite_get("airdodge_back");
spr_airdodge_down = sprite_get("airdodge_down");
spr_airdodge_downback = sprite_get("airdodge_downback");
spr_airdodge_downforward = sprite_get("airdodge_downforward");
spr_airdodge_forward = sprite_get("airdodge_forward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_up = sprite_get("airdodge_up");
spr_airdodge_upback = sprite_get("airdodge_upback");
spr_airdodge_upforward = sprite_get("airdodge_upforward");
spr_roll_backward = sprite_get("roll_backward");
spr_roll_forward = sprite_get("roll_forward");
spr_parry = sprite_get("parry");
spr_parry_spotdodge = sprite_get("parry_spotdodge");
spr_spotdodge = sprite_get("spotdodge");
spr_tech = sprite_get("tech");

spr_hurt = sprite_get("hurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_hurtground = sprite_get("hurtground");
spr_spinhurt = sprite_get("spinhurt");

spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");
spr_doublejump = sprite_get("doublejump");
spr_jump = sprite_get("jump");
spr_jumpstart = sprite_get("jumpstart");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");
spr_pratfall = sprite_get("pratfall");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_walljump = sprite_get("walljump");
spr_waveland = sprite_get("waveland");

spr_dattack = sprite_get("dattack");
spr_jab = sprite_get("jab");
spr_bair = sprite_get("bair");
spr_dair = sprite_get("dair");
spr_fair_balanced = sprite_get("fair_balanced");
spr_fair = sprite_get("fair");
spr_nair = sprite_get("nair");
spr_uair = sprite_get("uair");
spr_dspecial = sprite_get("dspecial");
spr_dspecial_air = sprite_get("dspecial_air");
spr_summer_dspecial = sprite_get("summer_dspecial");
spr_summer_dspecial_air = sprite_get("summer_dspecial_air");
spr_valentines_dspecial = sprite_get("valentines_dspecial");
spr_valentines_dspecial_air = sprite_get("valentines_dspecial_air");
spr_fspecial = sprite_get("fspecial");
spr_fspecial_air = sprite_get("fspecial_air");
spr_nspecial = sprite_get("nspecial");
spr_nspecial_air = sprite_get("nspecial_air");
spr_uspecial = sprite_get("uspecial");
spr_uspecial_cyan = sprite_get("uspecial_cyan");
spr_uspecial_black = sprite_get("uspecial_black");
spr_uspecial_yellow = sprite_get("uspecial_yellow");
spr_uspecial_wolf = sprite_get("uspecial_wolf");
spr_uspecial_red = sprite_get("uspecial_red");
spr_uspecial_blue = sprite_get("uspecial_blue");
spr_uspecial_green = sprite_get("uspecial_green");
spr_uspecial_pink = sprite_get("uspecial_pink");
spr_uspecial_lightblue = sprite_get("uspecial_lightblue");
spr_dstrong = sprite_get("dstrong");
spr_fstrong = sprite_get("fstrong");
spr_ustrong = sprite_get("ustrong");
spr_dtilt = sprite_get("dtilt");
spr_ftilt_up = sprite_get("ftilt_up");
spr_ftilt = sprite_get("ftilt");
spr_ftilt_down = sprite_get("ftilt_down");
spr_utilt = sprite_get("utilt");
spr_taunt = sprite_get("taunt");

// Every sprite name and ID
sprite_name[spr_airdodge_back] = "airdodge_back";
sprite_name[spr_airdodge_down] = "airdodge_down";
sprite_name[spr_airdodge_downback] = "airdodge_downback";
sprite_name[spr_airdodge_downforward] = "airdodge_downforward";
sprite_name[spr_airdodge_forward] = "airdodge_forward";
sprite_name[spr_airdodge] = "airdodge";
sprite_name[spr_airdodge_up] = "airdodge_up";
sprite_name[spr_airdodge_upback] = "airdodge_upback";
sprite_name[spr_airdodge_upforward] = "airdodge_upforward";
sprite_name[spr_roll_backward] = "roll_backward";
sprite_name[spr_roll_forward] = "roll_forward";
sprite_name[spr_parry] = "parry";
sprite_name[spr_parry_spotdodge] = "parry_spotdodge";
sprite_name[spr_spotdodge] = "spotdodge";
sprite_name[spr_tech] = "tech";

sprite_name[spr_hurt] = "hurt";
sprite_name[spr_bouncehurt] = "bouncehurt";
sprite_name[spr_hurtground] = "hurtground";
sprite_name[spr_spinhurt] = "spinhurt";

sprite_name[spr_idle] = "idle";
sprite_name[spr_crouch] = "crouch";
sprite_name[spr_dash] = "dash";
sprite_name[spr_dashstart] = "dashstart";
sprite_name[spr_dashstop] = "dashstop";
sprite_name[spr_dashturn] = "dashturn";
sprite_name[spr_doublejump] = "doublejump";
sprite_name[spr_jump] = "jump";
sprite_name[spr_jumpstart] = "jumpstart";
sprite_name[spr_land] = "land";
sprite_name[spr_landinglag] = "landinglag";
sprite_name[spr_pratfall] = "pratfall";
sprite_name[spr_walk] = "walk";
sprite_name[spr_walkturn] = "walkturn";
sprite_name[spr_walljump] = "walljump";
sprite_name[spr_waveland] = "waveland";

sprite_name[spr_dattack] = "dattack";
sprite_name[spr_jab] = "jab";
sprite_name[spr_bair] = "bair";
sprite_name[spr_dair] = "dair";
sprite_name[spr_fair_balanced] = "fair_balanced";
sprite_name[spr_fair] = "fair";
sprite_name[spr_nair] = "nair";
sprite_name[spr_uair] = "uair";
sprite_name[spr_dspecial] = "dspecial";
sprite_name[spr_dspecial_air] = "dspecial_air";
sprite_name[spr_summer_dspecial] = "summer_dspecial";
sprite_name[spr_summer_dspecial_air] = "summer_dspecial_air";
sprite_name[spr_valentines_dspecial] = "valentines_dspecial";
sprite_name[spr_valentines_dspecial_air] = "valentines_dspecial_air";
sprite_name[spr_fspecial] = "fspecial";
sprite_name[spr_fspecial_air] = "fspecial_air";
sprite_name[spr_nspecial] = "nspecial";
sprite_name[spr_nspecial_air] = "nspecial_air";
sprite_name[spr_uspecial] = "uspecial";
sprite_name[spr_uspecial_cyan] = "uspecial_cyan";
sprite_name[spr_uspecial_black] = "uspecial_black";
sprite_name[spr_uspecial_yellow] = "uspecial_yellow";
sprite_name[spr_uspecial_wolf] = "uspecial_wolf";
sprite_name[spr_uspecial_red] = "uspecial_red";
sprite_name[spr_uspecial_blue] = "uspecial_blue";
sprite_name[spr_uspecial_green] = "uspecial_green";
sprite_name[spr_uspecial_pink] = "uspecial_pink";
sprite_name[spr_uspecial_lightblue] = "uspecial_lightblue";
sprite_name[spr_dstrong] = "dstrong";
sprite_name[spr_fstrong] = "fstrong";
sprite_name[spr_ustrong] = "ustrong";
sprite_name[spr_dtilt] = "dtilt";
sprite_name[spr_ftilt_up] = "ftilt_up";
sprite_name[spr_ftilt] = "ftilt";
sprite_name[spr_ftilt_down] = "ftilt_down";
sprite_name[spr_utilt] = "utilt";
sprite_name[spr_taunt] = "taunt";

char_height = 52;
idle_anim_speed = 0.125;
crouch_anim_speed = .125;
walk_anim_speed = .185;
dash_anim_speed = .20;
pratfall_anim_speed = .25;

walk_speed = 4.5;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 11;
initial_dash_speed = 8.5;
dash_speed = 8;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.7;
moonwalk_accel = 1.0;

jump_start_time = 5;
jump_speed = 15.3;
short_hop_speed = 9.37;
djump_speed = 17.49;
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
walljump_vsp = 11;
walljump_time = 50;
wall_frames = 2;
max_fall = 11.70; //maximum fall speed without fastfalling
fast_fall = 14.21; //fast fall speed
gravity_speed = 0.90;
hitstun_grav = 0.60;
knockback_adj = 1.14; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

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
tcoart = sprite_get("foxtcoart" + string(get_player_color(player)));

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

abyssMods[@ runes.A] = [3, "FAIR is significantly faster."];
abyssMods[@ runes.B] = [1, "NSPECIAL is slightly slower, but stuns."];
abyssMods[@ runes.C] = [1, "NSPECIAL is far slower, but does knockback."];
abyssMods[@ runes.D] = [2, "FSPECIAL has a downward angle, and a spike at the tipper."];
abyssMods[@ runes.E] = [3, "Higher jump height, lower gravity, and lower weight."];
abyssMods[@ runes.F] = [3, "USPECIAL is faster, but has less travel distance."];

abyssMods[@ runes.G] = [2, "DSPECIAL can be charged."];
abyssMods[@ runes.H] = [3, "DSPECIAL can be cancelled into another DSPECIAL while grounded."];
abyssMods[@ runes.I] = [2, "DAIR's sweetspot spikes."];
abyssMods[@ runes.J] = [2, "DSPECIAL sends opponents upwards."];
abyssMods[@ runes.K] = [3, "USPECIAL can be cancelled during charge, and does not send Fox into prat fall."];

abyssMods[@ runes.L] = [2, "DSPECIAL spikes in the air."];
abyssMods[@ runes.M] = [3, "FSPECIAL can be cancelled and has significantly faster startup."];
abyssMods[@ runes.N] = [3, "DSPECIAL's startup is invincible and hitbox lasts for entire startup."];
abyssMods[@ runes.O] = [3, "Jump startup is faster."];

// Official Runes
runesUpdated = get_match_setting(SET_RUNES);

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}