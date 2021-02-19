set_victory_bg(CH_SYLVANOS);
set_victory_theme(sound_get("victory_by_tictacto"))


intro = 1;
introspeed = 0.18
tcoart = sprite_get("TCO_Art");
Hikaru_Title = "The Inevitable";
swallowed = 0;
enemykirby = noone;
kirbyability = 16;

feri_costume = sprite_get("feri");

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("mush_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;


trummelcodecneeded = 0;
//CUSTOM VARS HERE



sendspores = 0;
sendrate = 0.1

cloudboost = 15

clingtime = 0;

mushins = noone;
mushalpha = 0;
blockalpha = 0
X_alpha = 0;

reflects_left = 0;
max_reflects = 3;
reflect_spin = 0;

selfstab = 0;
selfstab_damage = 10;
selfstab_x = 0;
selfstab_y = 0;
selfstab_angle = 0;
selfstab_target = 0;
selfstab_speed = 0;
selfstab_dist = 0;
selfstab_image = 0;
selfstab_sound = 0;
selfstab_mode = 0;

selfstab_hbox = noone;

fspecial_dist = 250;
fspecial_nodex = 0;
fspecial_nodey = -40;

fspecial_nodey_start = -40;
fspecial_box = noone;
fspecial_target = noone;

fspecial_mintime = 30;

fspecial_dir = 0;

fspecial_dontcheese = 0;

normal_charge = 0



healdiv = 10;

fspecial_health = 20;
char_height_default = char_height;

attack_offset = 0;

atstart_x = 0;
atstart_y = 0;

harvestmult = 20;

mycolich_sporetime = 0;
mycolich_healed = 0;
mycolich_type = 0;
healdraw = 0;

//tick = 25;
tick = 25;

sporecap = 300;
sporediv = 16;


fx_sprites[0] = hit_fx_create(sprite_get("nodepop"), 32);
fx_sprites[1] = hit_fx_create(sprite_get("parry_front"), 32);
fx_sprites[2] = hit_fx_create(sprite_get("parry_back"), 32);
fx_sprites[3] = hit_fx_create(sprite_get("block_fx"), 18);
fx_sprites[4] = hit_fx_create(sprite_get("roll_forward_proj"), 18);
fx_sprites[5] = hit_fx_create(sprite_get("roll_backward_proj"), 18);
fx_sprites[6] = hit_fx_create(sprite_get("crouch_fx"), 12);
fx_sprites[7] = hit_fx_create(sprite_get("dair_pop"), 20);

hit_sprites[0] = hit_fx_create(sprite_get("hit_fx_small"), 16);
hit_sprites[1] = hit_fx_create(sprite_get("hit_fx_big"), 20);
hit_sprites[2] = hit_fx_create(sprite_get("hit_fx_forward"), 16);
hit_sprites[3] = hit_fx_create(sprite_get("hit_fx_up"), 16);
hit_sprites[4] = hit_fx_create(sprite_get("hit_fx_down"), 16);
hit_sprites[5] = hit_fx_create(sprite_get("hit_fx_long"), 16);
hit_sprites[6] = hit_fx_create(sprite_get("hit_fx_twirl"), 16);
hit_sprites[7] = hit_fx_create(sprite_get("hit_fx_bite"), 20);

fx_sprites[AT_FSPECIAL] = hit_fx_create(sprite_get("fspecial_break"), 24);
fx_sprites[AT_DSTRONG] = hit_fx_create(sprite_get("dstrong_proj"), 40);

roll_sprites[0] = hit_fx_create(sprite_get("tinymush0"), 24);
roll_sprites[1] = hit_fx_create(sprite_get("tinymush1"), 24);
roll_sprites[2] = hit_fx_create(sprite_get("tinymush2"), 24);

blocked = 0;
blockstun = 0;
blocktime = 3;
block_cur = 0;
blockcool = 0;
blockcool_max = 31;
blocklimit = 0+(has_rune("J")*8)

last_fx = noone;

fx_image = 0;

roll_x = 0;

mush_time = 3;

//


idle_anim_speed = .13;
crouch_anim_speed = .12;
walk_anim_speed = 0.2;
//dash_anim_speed = 1;
dash_anim_speed = 0.3;
pratfall_anim_speed = .25;

walk_speed = -5; //haha

walk_speed = 1;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 4;
initial_dash_speed = 2;
dash_speed = 4.5;
dash_turn_time = 6;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.1;

jump_start_time = 4;
jump_speed = 7;


short_hop_speed = 5;
djump_speed = 6;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .08;
max_djumps = 2;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 0;
walljump_vsp = 7;
walljump_time = 16;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .25;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

can_wall_cling = 1;

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 0.85; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 6.66; //roll speed
roll_backward_max = 6.66;

land_sound = asset_get("sfx_waveland_may");
landing_lag_sound = asset_get("sfx_waveland_may");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_absa_jump");
djump_sound = sound_get("mushjump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;





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



abyssMods[@ runes.A] = [2, "FSPECIAL's temp-heal lasts longer."]; //Done
abyssMods[@ runes.B] = [0, "The proxy mushroom has a higher damage limit."]; //Done
abyssMods[@ runes.C] = [1, "USPECIAL's spore clouds spread farther."]; //Done

abyssMods[@ runes.G] = [2, "FSPECIAL has no cooldown."]; //Done
abyssMods[@ runes.H] = [3, "UAIR and BAIR have no hitpause when grabbing terrain."]; //Done
abyssMods[@ runes.I] = [3, "Dodge rolls can be held."]; //Done
abyssMods[@ runes.J] = [3, "Crouch blocking has more armor."]; //Done

abyssMods[@ runes.L] = [0, "DSPECIAL heals 1% every time you land a melee hit."]; //Done
abyssMods[@ runes.M] = [3, "You constantly leave a trail of spore clouds."]; //Done
abyssMods[@ runes.N] = [2, "Sporelings add a reflect on bite."]; 

runecloud = 0;


dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]Y O U .";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Ah, yes, you again. I thought I had rid of you. And yet you continue to seep through my castle walls, again and again. What do you want?";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]Y O U R   I M M O R T A L I T Y   H A S   D I S R U P T E D   L I F E   A N D   D E A T H ,   A N D   S O   W E   A R E   C A L L E D .";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]A L L   T H I N G S   M U S T   E N D .   R E T U R N   T O   T H E   E A R T H .";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "It was not by my hand that I am once again given flesh. I was called here by--";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]W E   A R E   A W A R E .   Y O U R   S U M M O N E R S   H A V E   A L S O   A T T R A C T E D   O U R      A T T E N T I O N .";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]T H E Y   T O O   H A V E   B E E N   S I L E N C E D .   P E R H A P S   Y O U   C O U L D   L E A R N          F R O M   T H E M .";
page++;


//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Do not compare me to those worthless beings! [glass]They are bound to this mortal coil, but I shall rule over their souls for eternity!";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]Y O U   R E S I S T   T H E   C A L L   O F   D E A T H ?   Y O U   A R E   N O   D I F F E R E N T   T H A N   T H E M .";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]C O M E .   L E T   U S   D A N C E   W I T H   T H E   I N E V I T A B L E .";
page++;

