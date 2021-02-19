//hurtboxes
hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = sprite_get("hurtbox_air");
hitstun_hurtbox_spr = -1;


// Meter stuff
meter_current = 0.0;
meter_max = 100.0;
meter_activated = false;
chaos_boost = 1.6;
chaos_boost_KB = 1.25;
base_damage = 1.0;
base_KB = 1.0;
damage_multiplier = 1.0;
KB_multiplier = 1.0
boost_duration = 30;
lose_ratio = 0.7;
drain = meter_max * 0.3;
drain2 = meter_max * 0.6;
boost_fx = sprite_get("boost_fx");
boost_timer = 0;
draw_boost = 0;
dspecial_fx = hit_fx_create(sprite_get("dspecial_effect"), 2);
dspecial_air_fx = hit_fx_create(sprite_get("dspecial_effect_air"), 2);
chaos_heavy = hit_fx_create(sprite_get("chaos_hit1"), 20);
chaos_med = hit_fx_create(sprite_get("chaos_hit2"), 21);
boost_aerial = -1;
game_paused = false;
show_note = true;
ftilt_fx = hit_fx_create(sprite_get("ftilt_proj"), 17);
ftilt_boosted_fx = hit_fx_create(sprite_get("ftilt_boosted_proj"), 31);

//Stuff that makes moves work
nspcl_loop = 0;
lastDir = 90;
can_edge_cancel = false;
used_uspecial = false;
used_dspecial = false;
used_djump = false;
can_cancel_uspecial = false;
proj = noone;
grabbedid = noone;
fspecial_loop = 0;
used_fspecial = false;
ftilt_x = 0;
draw_ftilt = 0;
ftilt_index = 0;
orb = sprite_get("smol_orb");
destination_angle = 90;
nair_loop = 0;
starting_x = 0;
starting_y = 0;
has_been_corrected = false;
dspecial_attack = false;
can_jump_dattack = false;
custom_stage_y = -4;
initiated = false;
initiated2 = false;
below_custom = false;

//kirby stuff
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;

//other support features
otto_bobblehead_sprite = sprite_get("shadow_hudbobblehead");
trummelcodecneeded = false;
trummelcodec_id = noone;
Hikaru_Title = "The Edgiest"


//intro
introTimer = -4;
introTimer2 = 0;
is_in_practice = false;
toggle_draw = false;
disp_on = false;
disp_trigger = false;
disp_special = false;
disp_attack = false;

//Effective Weight
knockback_adj = 1.12;
gravity_speed = .4;
hitstun_grav = .45;
air_friction = .04;
air_accel = .35;
max_fall = 8; 
fast_fall = 12;


//Movement
ground_friction = .5;
dash_speed = 8;
initial_dash_speed = 8; //Shadow has special code that slows this down to 3.25-7.25
initial_dash_time = 16;
dash_stop_time = 4;
dash_stop_percent = .75;
dash_turn_time = 20;
dash_turn_accel = 1;
walk_speed = 4;
walk_accel = 0.4;
walk_turn_time = 6;
wave_land_time = 6;
wave_land_adj = 1.3;
wave_friction = .00;
moonwalk_accel = 1.4;


//Aerial
air_max_speed = 5;
max_djumps = 1;
jump_start_time = 5; //Not 4, manual is wrong
jump_speed = 10;
djump_speed = 10;
short_hop_speed = 5.25;
max_jump_hsp = 6;
leave_ground_max = 7; 
jump_change = 3;
walljump_time = 25;
walljump_vsp = 8;
walljump_hsp = 6;
air_dodge_speed = 8;
prat_fall_accel = .85;
prat_land_time = 16;
land_time = 4;


//Misc
roll_forward_max = 9; 
roll_backward_max = 9;
techroll_speed = 9;


//animation stuff
color_opacity = 0;
outline[0] = 0;
outline[1] = 0;
outline[2] = 0;
rgb[0] = 200;
rgb[1] = 0;
rgb[2] = 0;
outline_increment = true;
boost_color = $1313f6;
hue = 0;
color_timer = 0;

char_height = 72;//60
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .175;
pratfall_anim_speed = .25;
double_jump_time = 25;

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 5;
techroll_active_frames = 1;
techroll_recovery_frames = 5;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 5;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 5;



land_sound = asset_get("sfx_land");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = sound_get("chaos_snap");
hurt_sound = sound_get("death");
set_victory_theme(sound_get("shadow victory theme"));
set_victory_bg(sprite_get("Ark"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = -8;





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
//Tier 1
abyssMods[@ runes.A] = [3, "USPECIAL has less landing lag"];
abyssMods[@ runes.B] = [3, "NAIR becomes Palutena NAIR. Comes with the SFX too."];
abyssMods[@ runes.C] = [1, "All projectiles stun."];
abyssMods[@ runes.D] = [3, "DSPECIAL startup decreases and cooldown gets removed."];
abyssMods[@ runes.E] = [2, "FSPECIAL strength increases."];
abyssMods[@ runes.F] = [3, "DSTRONG startup decreases and power increases."];
//Tier 2
abyssMods[@ runes.G] = [3, "(06 Chaos boost) Boost mode activates when meter is filled. Less energy loss on death."];
abyssMods[@ runes.H] = [3, "Chaos meter passively increases."];
abyssMods[@ runes.I] = [3, "Halves charge costs. Less energy loss on death."];
abyssMods[@ runes.J] = [3, "Reduces teleport restrictions, including restrictions on other teleport runes."];
abyssMods[@ runes.K] = [3, "Mobility enhances. Moves fast like it's a Sonic game, complete with aerial momentum."];
//Tier 3
abyssMods[@ runes.L] = [1, "Chaos Lance fires 3 more lances from the sky."];
abyssMods[@ runes.M] = [3, "Press UP/DOWN + TAUNT to activate Chaos Control/Blast. Consumes 3 charges"];
abyssMods[@ runes.N] = [1, "Boosted FTILT becomes Chaos Rift."];
abyssMods[@ runes.O] = [3, "Airdodges teleport to opponent after hitting them."];


//Rune Support

//Sets the variables runeA, runeB, etc according to whether or not that rune was selected
 
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
	variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}


did_nair = false;
rune_uspecial = true;
rune_meter = false;
chasing_rune = false
blast_charge = 0;
charge_fx = hit_fx_create(sprite_get("blast_charge_effect"), 16);
blast_fx = hit_fx_create(sprite_get("blast_effect"), 30);
used_za_wurdo = false;
za_wurdo = false;

is_level_9 = false
/*intro_text = "";
draw_intro = true;
*/