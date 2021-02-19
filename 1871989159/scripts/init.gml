kirbyability = 15;




pause_joke = 0;
pause_joke_needed = 0;

with (oPlayer) {
	other.pause_joke_needed++;
}

feri_costume = sprite_get("feri")
otto_bobblehead_sprite = sprite_get("otto")

aerial_strong_toggle = 0 
//set_victory_theme(sound_get("mollo_win"));
secretcolor = (object_index == oTestPlayer);

fusesound = noone;


holiday = 6;
//1 = halloween
//2 = christmas
//3 = valentine's
//4 = st. patrick's day
//5 = easter
//6 = summer
if get_player_color(player) != 9 holiday = 0;

wearing_hat = (get_player_color(player) == 9 && holiday == 2);

shock_track = 0;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

bombtype = 0;

bombfusedefault = 160;
//bombfusedefault = 110;

brickmode = 0;

lightsound = sound_get("mollo_light")


mollosmoke = 0;
mollosmokeplayer = 0;
bombfuse = bombfusedefault;
bombangle = 0;
bombins = noone;
last_bomb = noone;

hidden = 0;

sneakycollide = -10;

molloflashbang = -15;
molloflashplayer = 0;

fx_sprites[9] = hit_fx_create(sprite_get("santahat_toss"), 30)

fx_sprites[0] = hit_fx_create(sprite_get("smoketrail"),20)

fx_sprites[1] = hit_fx_create(sprite_get("bombpop"),10)

fx_sprites[2] = hit_fx_create(sprite_get("sparkfx0"),15)

fx_sprites[3] = hit_fx_create(sprite_get("sparkfx1"), 10)

color_effect = 1 //Frostbite
effect_timer = 8
effect_hfx = hit_fx_create(sprite_get("snow"), 80)

if (get_player_color(player) != 13 or color_effect != 1) {
	fx_sprites[4] = hit_fx_create(sprite_get("boom0"), 30) //Normal
	fx_sprites[5] =	hit_fx_create(sprite_get("boom3"), 15) //Flashbang
	fx_sprites[6] = hit_fx_create(sprite_get("boom1"), 20) //Baseball
	fx_sprites[7] = hit_fx_create(sprite_get("boom2"), 40) //Finisher
	fx_sprites[8] = hit_fx_create(sprite_get("boom4"), 30) //Firecracker
}
else {
	fx_sprites[4] = hit_fx_create(sprite_get("boom0G"), 30) //Normal
	fx_sprites[5] =	hit_fx_create(sprite_get("boom3G"), 15) //Flashbang
	fx_sprites[6] = hit_fx_create(sprite_get("boom1G"), 20) //Baseball
	fx_sprites[7] = hit_fx_create(sprite_get("boom2G"), 40) //Finisher
	fx_sprites[8] = hit_fx_create(sprite_get("boom4G"), 30) //Firecracker
}

set_hit_particle_sprite(1, sprite_get("hit_spark"));

flarex = 0;
flarey = -54;
flaremin = 15
uspecialtime = 0;

menualpha = 0;
menuimage = 0;

char_height = 60;
idle_anim_speed = .18;
//idle_anim_speed = 1;
crouch_anim_speed = .18;
walk_anim_speed = .18;
dash_anim_speed = .21;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.0;
//dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 8;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 7;
djump_speed = 9;
djump_speed_A = 9.5;
djump_speed_B = 6.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 2;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
double_jump_time_A = 38; //the number of frames to play the djump animation. Can't be less than 31.
double_jump_time_B = 18; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .5;
hitstun_grav = .55;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

intro = (state == PS_SPAWN);
introspeed = 0.17;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land_med2");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_forsburn_cape_swipe");

djump_sound_A = asset_get("sfx_forsburn_cape_swipe");
djump_sound_B = asset_get("sfx_birdflap");

air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Trummel variables
trummelcodecneeded = false;
trummelcodec_id = noone;

//The Chosen One taunt art
tcoart = sprite_get("TCO");

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



abyssMods[@ runes.A] = [1, "DSPECIAL throws the bat forwards."]; //Done
abyssMods[@ runes.B] = [1, "Bombs instantly explode other bombs."]; //Done
abyssMods[@ runes.C] = [1, "Bombs are randomized every time one is thrown."]; //Done
abyssMods[@ runes.D] = [1, "Baseballs are replaced with hard-hitting bricks."]; //Done
abyssMods[@ runes.E] = [1, "Throwing bombs can be cancelled by parrying."]; //Done

abyssMods[@ runes.G] = [3, "FSPECIAL will lock on to the most recently thrown bomb."]; //Done
abyssMods[@ runes.H] = [3, "USPECIAL drops a bomb at the end."]; //Done

abyssMods[@ runes.L] = [1, "ALL bombs explode on contact."]; //Done
abyssMods[@ runes.M] = [1, "Default and Finisher bombs get flipper 8."];
abyssMods[@ runes.N] = [3, "You cannot be hurt by your own bombs."]; 

dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Shut the &%@# up and fight me.";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "By the--how did you get in here?!";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Window.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "...you little cretin! What do you have to gain from this petty intrusion?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Look, can I kill you or what?";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Hmph. Fine.[glass] I'll make short work of you.";
page++;


print_debug("Trans Rights");