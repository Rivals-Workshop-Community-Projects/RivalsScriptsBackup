//lumina init

//This is truly the experience of a contemporary guardian angel

hurtbox_spr = sprite_get("lumina_hb_n");
crouchbox_spr = sprite_get("lumina_hb_c");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .09;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .14;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.75;//6.5
dash_speed = 6.35;//6
dash_turn_time = 16;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;//1.6

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 5;//5 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5;//5 //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.75;//4.2 //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.5;//3 //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 40;
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.08; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35;//1.3 //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.025;//0.03 //grounded deceleration when wavelanding

wall_frames = 2;

//Lumina specific variables

jab_timer = 0; //counts up during jab2, used to set a minimum duration for the move and spawn hitboxes
jab_min_dur = 20; //Minimum possible duration for Jab2.

dair_timer = 0; //Counts up during Dair, used to set an amount of loops before moving to endlag.
dair_min_dur = 18; //Minimum duration for Dair.

ustrong_target = noone; //Used for linking ustrong hits for consistency's sake.

latest_light_sentry = -4; //For keeping track of the article

parried_storage = -4; //check got_parried for reference


//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 6;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("wavedash");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

lu_ds = false;
lu_ds_timer = 0;
lu_ds_max = 16;

parried_storage = -4;

trummelcodecneeded = false;
otto_bobblehead_sprite = sprite_get("lumina_bobblehead");
tcoart = sprite_get("luminatcoart_old");
Hikaru_Title = "Light magic little miss";
feri_costume = sprite_get("feri_costume_lumina"); //i coded this!
active=false;tt="";tc=0;actlve=false;pc=false;pd=false;si=false;
hypal=0;
hyae=0;
hylalala=0;
hylalala_s=0;
arena_title = "Flowlight Wanderer"
battle_text = "* You feel the faint aura of snow.";

kirbyability = 16;
enemykirby = noone;
swallowed = 0;

extra_col = 0;


phone_disable = true;
phone_manual_init = 0;
AT_PHONE = 40;
phone_arrow_cooldown = 0;


steve_death_message = "Steve was slain by LumiMethu";

//dracula
dracula_portrait = sprite_get("lumina_portrait_dracula");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
//0 = dracula
//1 = lumina
dracula_speaker[page] = 1;
dracula_text[page] = "Greetings, whoever-you-are.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "A young wanderer. You've... went through all of my castle's defenses by yourself?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "I am Lumina Methuselah Flowlight. I have noticed the general area around this castle has been quite unusually dark, for the past several days.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "So, as a wielder of light magic, I am here to bring light.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "You dare bring light to my lair?![glass] You must die!";
page++;

particle1 = hit_fx_create( sprite_get("particle1"), 12 );//9
particle2 = hit_fx_create( sprite_get("particle2"), 12 );//9
particle3 = hit_fx_create( sprite_get("particle3"), 8 );//6
lumihitfx1 = hit_fx_create( sprite_get("hit_effect_test"), 25 );

I_would_not_like_Sephiroth_to_impale_my_character = true; //yes

set_victory_theme( sound_get( "lumina_victory" ));//twinklesky by fether
set_victory_bg( sprite_get( "lumina_victorybg" ));


kart_sprite = sprite_get("lumina_car");
kart_frames = 1;
kart_engine_sound = 1//sound_get("star");
kart_star_sound = sound_get("star");
kart_charge_sound = sound_get("star_charge");
kart_boost_sound = sound_get("star_boost");
kart_horn_sound = sound_get("spark");
kart_push_sound = sound_get("beam_charged");
kart_drift_spr = 3;
kart_anim_speed = 1;
kart_anim_speed_scaling = 1;
//kart_particle1 = particle1;
//kart_particle2 = particle2;
//kart_particle3 = particle3;


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
abyssMods = array_create(16,[-1,"Not Implemented, open for any ideas."]);

abyssMods[@ runes.A] = [1, "DAIR lasts a bit longer, and ends quicker."];

abyssMods[@ runes.L] = [1, "NSPECIAL charge is instant."];









/*

From that moment,

she was plunged into a seemingly
endless slumber.

Thousands of years have passed.

*/