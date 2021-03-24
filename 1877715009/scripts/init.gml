// Rubber ducky
Hikaru_Title2 = "";

godmode = false;
godmode_key = false;
yes = false;

trummelcodecneeded = false;
trummelcodec_id = noone;

tcoart = sprite_get("notcoart");

arena_title = "The Kitsune of Light";

battle_text = "* You remember her from ASCIITALE.";
battle_text2 = "* But something feels different..."

abyssHime_deathspr = sprite_get("utilt");

curse_effect = hit_fx_create( sprite_get( "curse" ), 60 );
fire_effect = hit_fx_create( sprite_get( "fire" ), 60 );
transform_effect = hit_fx_create( sprite_get( "transform" ), 10 );
charge_effect = hit_fx_create( sprite_get( "charge" ), 18 );
tele_effect = hit_fx_create( sprite_get( "tele" ), 20 );
paw_effect = hit_fx_create( sprite_get( "pawfx" ), 36 );
shinestar_effect = hit_fx_create( sprite_get( "shinestar" ), 10 );
trail_effect = hit_fx_create( sprite_get( "trail" ), 5 );
blast_effect = hit_fx_create( sprite_get( "blast" ), 10 );
swirl_effect = hit_fx_create( sprite_get( "swirl" ), 52 );
pew_effect = hit_fx_create( sprite_get( "pew" ), 8 );
burst_effect = hit_fx_create( sprite_get( "burst" ), 15 );
flash_effect = hit_fx_create( sprite_get( "flash" ), 24 );
bash_effect = hit_fx_create( sprite_get( "bash" ), 24 );

// BlueyBot
tauntpics = hit_fx_create(sprite_get("tauntpics"), 1);

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .12;
crouch_anim_speed = .10;
walk_anim_speed = .14;
dash_anim_speed = .35;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.2;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .55; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
//djump_speed = 10.5;
djump_speed = -2;
djump_accel = -1.40;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 13; // is 21 frames if fspec
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 8;
techroll_recovery_frames = 5;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
//roll_forward_startup_frames = 3;
//roll_forward_active_frames = 8
//roll_forward_recovery_frames = 5
roll_forward_startup_frames = 1;
roll_forward_active_frames = 10;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 10;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Rune Support
abyssEnabled = false;
abyss_paused = false;
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
abyssMods[@ runes.A] = [0, "Hikaru clones don't despawn."];											//done
abyssMods[@ runes.B] = [1, "NSPEC charges faster."];												//done
abyssMods[@ runes.C] = [2, "DSPEC can be charged to travel farther."];								//done
abyssMods[@ runes.D] = [3, "Increased Dash Speed."];												//done
abyssMods[@ runes.E] = [3, "Increased USPEC distance."];											//done
abyssMods[@ runes.F] = [3, "Increased Air Max Speed."];												//done
abyssMods[@ runes.G] = [3, "DSPEC can be used in hitpause when getting hit."];						//done
abyssMods[@ runes.H] = [3, "USPEC has no pratfall when teleporting to the ground."];				//done
abyssMods[@ runes.I] = [0, "Hyper Jumps leave behind a Hikaru clone."];								//done
abyssMods[@ runes.J] = [1, "NSPEC charge starts at stage 2."];										//done
abyssMods[@ runes.K] = [0, "2 more Hikaru clones."];												//done
abyssMods[@ runes.L] = [0, "DSPEC spawns a Time Break field that Hikaru can use Fakie freely in."];	//done
abyssMods[@ runes.M] = [3, "FSPEC has no prat fall."];												//done
abyssMods[@ runes.N] = [3, "100% Accurate Hikaru."];												//done
abyssMods[@ runes.O] = [0, "DSPEC will trigger when passing through other Rivals."];				//done

var runess = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var i = 0; i < array_length(runess); ++i) variable_instance_set(self, "rune" + runess[i], has_rune(runess[i]));

// AS (Void ball)
as_charge = 0;
as_charging = false;
as_frame = 0;
as_reverse = false;
as_fire = false;
as_flash = 0;

// Counter
counter_dmg = 0;
aura = false;
aurainf = false;
aurapt = [0, 0, 0, 0, 0, 0, 200, sprite_get("idle"), 0, 1]; // x, y, startx, starty, timer, onoff, maxtimer, sprite_index, image_index, spr_dir
old_dspec = false;
auraalpha = 0; // render alpha
auraburn = 0;
buffcolour = false;
buffmag = 100;
zawarudotime = 0;
zawarudomaxtime = 78;
dspecsize = 0;
dspeccancel = false;
dspeccancelled = false;
dspecsound = false;
parryaura = false;

// Teleport
tele_x = 0;
tele_y = 0;
org_x = 0;
org_y = 0; // what
//through_stage = false;
topcustom = 0;
origfree = false;
uspec_timer = 0;
uspec_timer_max = 60;

// FSpecial
FSpecSweetspot = false;
dir = 1;
prat_land_time1 = prat_land_time;
prat_land_time2 = 21; // for fspec
fspeccoolhud = false;
fspeccool = 55;

// Kirby
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;

// Feri
feri_costume = sprite_get("feri_costume_hikaru");

// Otto
otto_bobblehead_sprite = sprite_get("my_bobblehead_sprite");

// Floaty jump
floatjumptime = 0;
djumpTimer = 0;
djumpNumOfAfterImages = 26;
djumpArray = array_create(djumpNumOfAfterImages, -1);

// Transform
transformplease = 0;
counterid = noone;
transformtime = 0;
transformeffect = false;
transformeffecttime = 0;
drawxx = 0;
drawyy = 0;
theirAnim = sprite_get("nspecial_proj4");
theirAnimSpeed = .5;
transProj = false; // trans rights lmao
walksword = false;
hue = 0;

// Jab boost
jabby = false; // I like my variable names

// Workshop_previous
practice = false;
practiceparry = false;
workprev = true;

// DSpec / ground fastfall
ffx = 0;
ffy = 0;
ffcounter = 0;
dspecshivertimer = 0;
dspecshiver = 0;

// flag
transcounter = 0;
irishcounter = 0;
qr = 0;

// New idle
newidle = false;

// crouch
charHeightStand = char_height;
charHeightCrouch = 40;

// Article stuff
killarticles = false;
killarticles2 = false;
killarticles3 = false;
clone_lifetime = 60*2;
b_infamous = get_player_color( player ) == 3;
b_yeeet = true;
b_shape = 0;
switch (get_player_color( player ))
{
	// Diamond
	case 1: // f420
	case 13: // asriel
		b_shape = 2;
		break;
	
	// Square
	case 4: // aco
	case 9: // gameboi
	case 14: // arcade
		b_shape = 1;
		break;
	
	// Triangle
	case 5: // vapourwave
	case 15: // temmel
		b_shape = 3;
		break;
	
	// Spike
	case 7: // e6
	case 8: // suzuhime
		b_shape = 4;
		break;
}
instance_create(0, 0, "obj_article2");
if (get_player_color( player ) == 8)
{
	var h;
	var hh;
	h = instance_create(x, y, "obj_article3");
	h.b_whip = true;
	h.previous = self;
	for (var i = 0; i < 3; ++i)
	{
		hh = instance_create(x, y, "obj_article3");
		hh.b_whip = true;
		hh.previous = h;
		hh.ropeindex = i+1;
		h = hh;
	}
}

infamous_dir = 1;

// Beast Deity
stupidbossbool = false;
speedrun_timer = 0;
run_timer = false;
aifree = true;
beast_state = 0;
beast_state_timer = 0;
max_hp = 700;
hp = 0;
beast_deity = false;
hp_x = 48;
hp_y = 42;
textbox_y = 120;
talk = true;
talktime = 0;
cout[0] = "";
cout[1] = "";
cout[2] = "";
cout[3] = "";
cout[4] = "";
tempcout[0] = "";
tempcout[1] = "";
tempcout[2] = "";
tempcout[3] = "";
tempcout[4] = "";
coutline = 0;		//The line number (0-4)
coutpage = 0;		//The page number
coutindex = 0;		//The line index
coutindexmax = 0;	//The index count
coutpagemax = 0;	//The page count
isasking = false;	//Interactive bossfight
isleftchoice = true;//Interactive bossfight
wasleftchoice = true;
genderplayer = 0;	//Non binary, male, female
raincloud = -1;
rockx = 0;
timebreak = false;
thevoid = false;
nice = false;
ishomestage = false;

// Tutorial
practicemode = false;
practiceinit = (get_training_cpu_action() != CPU_FIGHT);
tutalpha = 0;
tuton = true;
tutstate = 0; //Start, Menu, Yes
tutstatebuffer = 0;
tutmenu = 0;
tutpart = 0;
tuttimer = 0;
holdtimer = 0;
tutstring = "";
tutstring2 = "";
noofmainmenu = 4;
noofitems = 21;
nooftechs = 19;
noofV = 9;
noofsubV = 0;
for (var i = 0; i < nooftechs; ++i)
	techdone[i] = false;

// Ditto
o_copyplayer = noone;

// Instakill
instakill = false;
deadx = 0;
deady = 0;
tempplayer = player;

// Time break 2
singleton_charge = noone;
in_field = false;

// Copyright Sounds
muted = true;
muteaplha = 1;
mutebg = false;

// FS
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;

// alts
altnum = 0;
if (get_player_color(tempplayer) == 15)
{
	set_num_palettes(64);
	
	// Temmel
	set_color_profile_slot( 1, 0, 122, 63, 0 ); //Hoodie
	set_color_profile_slot( 1, 1, 191, 56, 29 ); //Tips
	set_color_profile_slot( 1, 2, 227, 135, 36 ); //Hair
	set_color_profile_slot( 1, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 1, 4, 175, 188, 210 ); //Shading
	set_color_name(1, "Temmel")
	
	// Haruhi Suzumiya
	set_color_profile_slot( 2, 0, 83, 159, 193 ); //Hoodie
	set_color_profile_slot( 2, 1, 241, 164, 36 ); //Tips
	set_color_profile_slot( 2, 2, 76, 36, 45 ); //Hair
	set_color_profile_slot( 2, 3, 254, 204, 181 ); //White Fur
	set_color_profile_slot( 2, 4, 196, 129, 112 ); //Shading
	set_color_name(2, "Haruhi Suzumiya")
	
	// Lucario
	set_color_profile_slot( 3, 0, 222, 222, 150 ); //Hoodie
	set_color_profile_slot( 3, 1, 54, 53, 52 ); //Tips
	set_color_profile_slot( 3, 2, 36, 116, 157 ); //Hair
	set_color_profile_slot( 3, 3, 127, 181, 209 ); //White Fur
	set_color_profile_slot( 3, 4, 64, 122, 148 ); //Shading
	set_color_name(3, "Lucario")
	
	// Tails
	set_color_profile_slot( 4, 0, 218, 10, 59 ); //Hoodie
	set_color_profile_slot( 4, 1, 255, 255, 255 ); //Tips
	set_color_profile_slot( 4, 2, 214, 146, 32 ); //Hair
	set_color_profile_slot( 4, 3, 241, 188, 101 ); //White Fur
	set_color_profile_slot( 4, 4, 181, 124, 27 ); //Shading
	set_color_name(4, "Tails The Fox")
	
	// Wolf O' Donnell
	set_color_profile_slot( 5, 0, 83, 83, 135 ); //Hoodie
	set_color_profile_slot( 5, 1, 168, 72, 111 ); //Tips
	set_color_profile_slot( 5, 2, 110, 108, 122 ); //Hair
	set_color_profile_slot( 5, 3, 193, 190, 214 ); //White Fur
	set_color_profile_slot( 5, 4, 110, 108, 122 ); //Shading
	set_color_name(5, "Wolf O' Donnell")
	
	// Dio Brando
	set_color_profile_slot( 6, 0, 235, 194, 41 ); //Hoodie
	set_color_profile_slot( 6, 1, 69, 189, 59 ); //Tips
	set_color_profile_slot( 6, 2, 235, 194, 41 ); //Hair
	set_color_profile_slot( 6, 3, 254, 226, 213 ); //White Fur
	set_color_profile_slot( 6, 4, 196, 146, 133 ); //Shading
	set_color_name(6, "Dio Brando")
	
	// Peach
	set_color_profile_slot( 7, 0, 245, 126, 197 ); //Hoodie
	set_color_profile_slot( 7, 1, 104, 199, 242 ); //Tips
	set_color_profile_slot( 7, 2, 246, 197, 7 ); //Hair
	set_color_profile_slot( 7, 3, 254, 219, 203 ); //White Fur
	set_color_profile_slot( 7, 4, 196, 129, 112 ); //Shading
	set_color_name(7, "Peach")
	
	// Ashley
	set_color_profile_slot( 8, 0, 218, 29, 10 ); //Hoodie
	set_color_profile_slot( 8, 1, 237, 150, 20 ); //Tips
	set_color_profile_slot( 8, 2, 19, 23, 22 ); //Hair
	set_color_profile_slot( 8, 3, 254, 221, 206 ); //White Fur
	set_color_profile_slot( 8, 4, 196, 129, 112 ); //Shading
	set_color_name(8, "Ashley")
	
	// Kumatora
	set_color_profile_slot( 9, 0, 136, 136, 248 ); //Hoodie
	set_color_profile_slot( 9, 1, 154, 224, 226 ); //Tips
	set_color_profile_slot( 9, 2, 249, 17, 113 ); //Hair
	set_color_profile_slot( 9, 3, 254, 204, 181 ); //White Fur
	set_color_profile_slot( 9, 4, 196, 129, 112 ); //Shading
	set_color_name(9, "Kumatora")
	
	// Winnie The Pooh
	set_color_profile_slot( 10, 0, 230, 0, 0 ); //Hoodie
	set_color_profile_slot( 10, 1, 179, 158, 35 ); //Tips
	set_color_profile_slot( 10, 2, 255, 226, 49 ); //Hair
	set_color_profile_slot( 10, 3, 255, 235, 110 ); //White Fur
	set_color_profile_slot( 10, 4, 181, 160, 34 ); //Shading
	set_color_name(10, "Winnie The Pooh")
	
	// Joker
	set_color_profile_slot( 11, 0, 130, 75, 204 ); //Hoodie
	set_color_profile_slot( 11, 1, 201, 62, 62 ); //Tips
	set_color_profile_slot( 11, 2, 68, 196, 9 ); //Hair
	set_color_profile_slot( 11, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 12, 4, 196, 129, 112 ); //Shading
	set_color_name(11, "The Joker")
	
	// Little Mac
	set_color_profile_slot( 12, 0, 255, 96, 176 ); //Hoodie
	set_color_profile_slot( 12, 1, 51, 182, 63 ); //Tips
	set_color_profile_slot( 12, 2, 55, 55, 55 ); //Hair
	set_color_profile_slot( 12, 3, 254, 218, 201 ); //White Fur
	set_color_profile_slot( 12, 4, 196, 129, 112 ); //Shading
	set_color_name(12, "Little Mac")
	
	// Hatsune Miku
	set_color_profile_slot( 13, 0, 179, 186, 194 ); //Hoodie
	set_color_profile_slot( 13, 1, 54, 150, 145 ); //Tips
	set_color_profile_slot( 13, 2, 69, 194, 187 ); //Hair
	set_color_profile_slot( 13, 3, 254, 221, 206 ); //White Fur
	set_color_profile_slot( 13, 4, 196, 136, 120 ); //Shading
	set_color_name(13, "Hatsune Miku")
	
	// Linne
	set_color_profile_slot( 14, 0, 232, 171, 51 ); //Hoodie
	set_color_profile_slot( 14, 1, 141, 80, 122 ); //Tips
	set_color_profile_slot( 14, 2, 122, 76, 78 ); //Hair
	set_color_profile_slot( 14, 3, 254, 204, 181 ); //White Fur
	set_color_profile_slot( 14, 4, 196, 129, 112 ); //Shading
	set_color_name(14, "Linne")
	
	// Carmelita Fox
	set_color_profile_slot( 15, 0, 207, 154, 0 ); //Hoodie
	set_color_profile_slot( 15, 1, 254, 125, 52 ); //Tips
	set_color_profile_slot( 15, 2, 53, 53, 108 ); //Hair
	set_color_profile_slot( 15, 3, 254, 165, 114 ); //White Fur
	set_color_profile_slot( 15, 4, 194, 95, 39 ); //Shading
	set_color_name(15, "Carmelita Fox")
	
	// Amaterasu
	set_color_profile_slot( 16, 0, 188, 181, 167 ); //Hoodie
	set_color_profile_slot( 16, 1, 223, 60, 59 ); //Tips
	set_color_profile_slot( 16, 2, 222, 216, 204 ); //Hair
	set_color_profile_slot( 16, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 16, 4, 199, 194, 182 ); //Shading
	set_color_name(16, "Amaterasu")
	
	// Fox McCloud
	set_color_profile_slot( 17, 0, 251, 229, 167 ); //Hoodie
	set_color_profile_slot( 17, 1, 143, 151, 74 ); //Tips
	set_color_profile_slot( 17, 2, 254, 121, 43 ); //Hair
	set_color_profile_slot( 17, 3, 254, 165, 114 ); //White Fur
	set_color_profile_slot( 17, 4, 194, 95, 39 ); //Shading
	set_color_name(17, "Fox McCloud")
	
	// Absa
	set_color_profile_slot( 18, 0, 120, 121, 161 ); //Hoodie
	set_color_profile_slot( 18, 1, 187, 155, 143 ); //Tips
	set_color_profile_slot( 18, 2, 217, 135, 205 ); //Hair
	set_color_profile_slot( 18, 3, 193, 194, 230 ); //White Fur
	set_color_profile_slot( 18, 4, 132, 133, 158 ); //Shading
	set_color_name(18, "Absa")
	
	// Acid Rainbow
	set_color_profile_slot( 19, 0, 71, 184, 89 ); //Hoodie
	set_color_profile_slot( 19, 1, 254, 39, 31 ); //Tips
	set_color_profile_slot( 19, 2, 181, 73, 219 ); //Hair
	set_color_profile_slot( 19, 3, 254, 218, 201 ); //White Fur
	set_color_profile_slot( 19, 4, 196, 129, 112 ); //Shading
	set_color_name(19, "Acid Rainbows")
	
	// Zerra
	set_color_profile_slot( 20, 0, 194, 213, 252 ); //Hoodie
	set_color_profile_slot( 20, 1, 99, 155, 255 ); //Tips
	set_color_profile_slot( 20, 2, 99, 155, 255 ); //Hair
	set_color_profile_slot( 20, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 20, 4, 136, 164, 210 ); //Shading
	set_color_name(20, "Zerra")
	
	// Rayman
	set_color_profile_slot( 21, 0, 95, 36, 116 ); //Hoodie
	set_color_profile_slot( 21, 1, 184, 40, 40 ); //Tips
	set_color_profile_slot( 21, 2, 226, 193, 28 ); //Hair
	set_color_profile_slot( 21, 3, 254, 204, 181 ); //White Fur
	set_color_profile_slot( 21, 4, 196, 129, 112 ); //Shading
	set_color_name(21, "Rayman")
	
	// Strider Hiryu
	set_color_profile_slot( 22, 0, 158, 143, 242 ); //Hoodie
	set_color_profile_slot( 22, 1, 243, 32, 0 ); //Tips
	set_color_profile_slot( 22, 2, 126, 34, 34 ); //Hair
	set_color_profile_slot( 22, 3, 254, 221, 206 ); //White Fur
	set_color_profile_slot( 22, 4, 196, 136, 120 ); //Shading
	set_color_name(22, "Strider Hiryu")
	
	// Frisk
	set_color_profile_slot( 23, 0, 39, 132, 255 ); //Hoodie
	set_color_profile_slot( 23, 1, 224, 34, 211 ); //Tips
	set_color_profile_slot( 23, 2, 74, 29, 13 ); //Hair
	set_color_profile_slot( 23, 3, 255, 235, 110 ); //White Fur
	set_color_profile_slot( 23, 4, 181, 160, 34 ); //Shading
	set_color_name(23, "Frisk")
	
	// Conker
	set_color_profile_slot( 24, 0, 0, 162, 232 ); //Hoodie
	set_color_profile_slot( 24, 1, 255, 215, 165 ); //Tips
	set_color_profile_slot( 24, 2, 207, 104, 12 ); //Hair
	set_color_profile_slot( 24, 3, 255, 129, 15 ); //White Fur
	set_color_profile_slot( 24, 4, 166, 59, 10 ); //Shading
	set_color_name(24, "Conker")
	
	// Mettaton
	set_color_profile_slot( 25, 0, 223, 63, 251 ); //Hoodie
	set_color_profile_slot( 25, 1, 86, 105, 99 ); //Tips
	set_color_profile_slot( 25, 2, 19, 23, 22 ); //Hair
	set_color_profile_slot( 25, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 25, 4, 153, 153, 153 ); //Shading
	set_color_name(25, "Mettaton")
	
	// Zero Suit Samus
	set_color_profile_slot( 26, 0, 0, 182, 243 ); //Hoodie
	set_color_profile_slot( 26, 1, 100, 149, 237 ); //Tips
	set_color_profile_slot( 26, 2, 255, 255, 0 ); //Hair
	set_color_profile_slot( 26, 3, 254, 219, 203 ); //White Fur
	set_color_profile_slot( 26, 4, 196, 129, 112 ); //Shading
	set_color_name(26, "Zero Suit Samus")
	
	// Velma
	set_color_profile_slot( 27, 0, 255, 114, 35 ); //Hoodie
	set_color_profile_slot( 27, 1, 157, 28, 39 ); //Tips
	set_color_profile_slot( 27, 2, 108, 29, 23 ); //Hair
	set_color_profile_slot( 27, 3, 254, 221, 206 ); //White Fur
	set_color_profile_slot( 27, 4, 196, 136, 120 ); //Shading
	set_color_name(27, "Velma Dinkley")
	
	// Astra
	set_color_profile_slot( 28, 0, 153, 224, 255 ); //Hoodie
	set_color_profile_slot( 28, 1, 116, 99, 168 ); //Tips
	set_color_profile_slot( 28, 2, 148, 124, 156 ); //Hair
	set_color_profile_slot( 28, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 28, 4, 166, 139, 175 ); //Shading
	set_color_name(28, "Astra")
	
	// Pomme
	set_color_profile_slot( 29, 0, 167, 83, 132 ); //Hoodie
	set_color_profile_slot( 29, 1, 177, 47, 102 ); //Tips
	set_color_profile_slot( 29, 2, 183, 101, 184 ); //Hair
	set_color_profile_slot( 29, 3, 255, 217, 239 ); //White Fur
	set_color_profile_slot( 29, 4, 186, 145, 169 ); //Shading
	set_color_name(29, "Pomme")
	
	// Wii Fit Trainer
	set_color_profile_slot( 30, 0, 98, 186, 213 ); //Hoodie
	set_color_profile_slot( 30, 1, 214, 214, 214 ); //Tips
	set_color_profile_slot( 30, 2, 109, 109, 109 ); //Hair
	set_color_profile_slot( 30, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 30, 4, 153, 153, 153 ); //Shading
	set_color_name(30, "Wii Fit Trainer")
	
	// R-00
	set_color_profile_slot( 31, 0, 62, 61, 92 ); //Hoodie
	set_color_profile_slot( 31, 1, 213, 214, 0 ); //Tips
	set_color_profile_slot( 31, 2, 48, 47, 71 ); //Hair
	set_color_profile_slot( 31, 3, 111, 103, 126 ); //White Fur
	set_color_profile_slot( 31, 4, 60, 55, 69 ); //Shading
	set_color_name(31, "R-00")
	
	// Hit or Miss Girl
	set_color_profile_slot( 32, 0, 222, 219, 218 ); //Hoodie
	set_color_profile_slot( 32, 1, 255, 174, 186 ); //Tips
	set_color_profile_slot( 32, 2, 57, 47, 48 ); //Hair
	set_color_profile_slot( 32, 3, 254, 226, 213 ); //White Fur
	set_color_profile_slot( 32, 4, 196, 129, 112 ); //Shading
	set_color_name(32, "Hit or Miss Girl")
	
	// Sly Cooper
	set_color_profile_slot( 33, 0, 19, 117, 204 ); //Hoodie
	set_color_profile_slot( 33, 1, 255, 197, 10 ); //Tips
	set_color_profile_slot( 33, 2, 45, 45, 45 ); //Hair
	set_color_profile_slot( 33, 3, 147, 152, 156 ); //White Fur
	set_color_profile_slot( 33, 4, 94, 97, 99 ); //Shading
	set_color_name(33, "Sly Cooper")
	
	// Abyss
	set_color_profile_slot( 34, 0, 217, 114, 249 ); //Hoodie
	set_color_profile_slot( 34, 1, 145, 60, 207 ); //Tips
	set_color_profile_slot( 34, 2, 79, 61, 91 ); //Hair
	set_color_profile_slot( 34, 3, 245, 254, 255 ); //White Fur
	set_color_profile_slot( 34, 4, 163, 172, 189 ); //Shading
	set_color_name(34, "Abyss")
	
	// Hilary Dev
	set_color_profile_slot( 35, 0, 214, 73, 94 ); //Hoodie
	set_color_profile_slot( 35, 1, 235, 168, 248 ); //Tips
	set_color_profile_slot( 35, 2, 109, 0, 0 ); //Hair
	set_color_profile_slot( 35, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 35, 4, 175, 188, 210 ); //Shading
	set_color_name(35, "Hilary")

	// Neuromance
	set_color_profile_slot( 36, 0, 55, 56, 59 ); //Hoodie
	set_color_profile_slot( 36, 1, 126, 31, 213 ); //Tips
	set_color_profile_slot( 36, 2, 0, 0, 0 ); //Hair
	set_color_profile_slot( 36, 3, 0, 0, 0 ); //White Fur
	set_color_profile_slot( 36, 4, 0, 0, 0 ); //Shading
	set_color_name(36, "Neuromance")
	
	// Rosa
	set_color_profile_slot( 37, 0, 71, 71, 71 ); //Hoodie
	set_color_profile_slot( 37, 1, 228, 73, 145 ); //Tips
	set_color_profile_slot( 37, 2, 71, 71, 71 ); //Hair
	set_color_profile_slot( 37, 3, 108, 190, 252 ); //White Fur
	set_color_profile_slot( 37, 4, 83, 147, 194 ); //Shading
	set_color_name(37, "Rosa")
	
	// Eevee
	set_color_profile_slot( 38, 0, 154, 116, 80 ); //Hoodie
	set_color_profile_slot( 38, 1, 246, 227, 187 ); //Tips
	set_color_profile_slot( 38, 2, 154, 116, 80 ); //Hair
	set_color_profile_slot( 38, 3, 191, 140, 91 ); //White Fur
	set_color_profile_slot( 38, 4, 150, 111, 78 ); //Shading
	set_color_name(38, "Eevee")
	
	// Amy Rose
	set_color_profile_slot( 39, 0, 224, 0, 8 ); //Hoodie
	set_color_profile_slot( 39, 1, 248, 248, 248 ); //Tips
	set_color_profile_slot( 39, 2, 194, 81, 138 ); //Hair
	set_color_profile_slot( 39, 3, 240, 128, 184 ); //White Fur
	set_color_profile_slot( 39, 4, 152, 64, 87 ); //Shading
	set_color_name(39, "Amy Rose")
	
	// Sally Acorn
	set_color_profile_slot( 40, 0, 22, 139, 209 ); //Hoodie
	set_color_profile_slot( 40, 1, 240, 214, 132 ); //Tips
	set_color_profile_slot( 40, 2, 148, 31, 38 ); //Hair
	set_color_profile_slot( 40, 3, 214, 125, 0 ); //White Fur
	set_color_profile_slot( 40, 4, 140, 82, 0 ); //Shading
	set_color_name(40, "Sally Acorn")
	
	// Tangle
	set_color_profile_slot( 41, 0, 235, 183, 86 ); //Hoodie
	set_color_profile_slot( 41, 1, 217, 226, 243 ); //Tips
	set_color_profile_slot( 41, 2, 217, 226, 243 ); //Hair
	set_color_profile_slot( 41, 3, 107, 131, 154 ); //White Fur
	set_color_profile_slot( 41, 4, 55, 68, 79 ); //Shading
	set_color_name(41, "Tangle")

	// Spectrum
	set_color_profile_slot( 42, 0, 255, 41, 116 ); //Hoodie
	set_color_profile_slot( 42, 1, 93, 250, 253 ); //Tips
	set_color_profile_slot( 42, 2, 135, 139, 142 ); //Hair
	set_color_profile_slot( 42, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 42, 4, 175, 188, 210 ); //Shading
	set_color_name(42, "Spectrum")
	
	// Linkle
	set_color_profile_slot( 43, 0, 149, 175, 54 ); //Hoodie
	set_color_profile_slot( 43, 1, 154, 87, 36 ); //Tips
	set_color_profile_slot( 43, 2, 255, 205, 102 ); //Hair
	set_color_profile_slot( 43, 3, 255, 239, 207 ); //White Fur
	set_color_profile_slot( 43, 4, 194, 182, 157 ); //Shading
	set_color_name(43, "Linkle")
	
	// Renamon
	set_color_profile_slot( 44, 0, 100, 100, 204 ); //Hoodie
	set_color_profile_slot( 44, 1, 248, 248, 248 ); //Tips
	set_color_profile_slot( 44, 2, 236, 176, 32 ); //Hair
	set_color_profile_slot( 44, 3, 248, 224, 68 ); //White Fur
	set_color_profile_slot( 44, 4, 236, 176, 32 ); //Shading
	set_color_name(44, "Renamon")

	// Donkey Kong
	set_color_profile_slot( 45, 0, 128, 55, 24 ); //Hoodie
	set_color_profile_slot( 45, 1, 196, 0, 0 ); //Tips
	set_color_profile_slot( 45, 2, 128, 55, 24 ); //Hair
	set_color_profile_slot( 45, 3, 255, 224, 191 ); //White Fur
	set_color_profile_slot( 45, 4, 239, 175, 96 ); //Shading
	set_color_name(45, "Donkey Kong")

	// Papyrus
	set_color_profile_slot( 46, 0, 252, 99, 20 ); //Hoodie
	set_color_profile_slot( 46, 1, 148, 164, 176 ); //Tips
	set_color_profile_slot( 46, 2, 255, 255, 255 ); //Hair
	set_color_profile_slot( 46, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 46, 4, 175, 188, 210 ); //Shading
	set_color_name(46, "Papyrus")
	
	// Undyne
	set_color_profile_slot( 47, 0, 49, 49, 49 ); //Hoodie
	set_color_profile_slot( 47, 1, 255, 62, 62 ); //Tips
	set_color_profile_slot( 47, 2, 255, 62, 62 ); //Hair
	set_color_profile_slot( 47, 3, 98, 153, 193 ); //White Fur
	set_color_profile_slot( 47, 4, 75, 117, 148 ); //Shading
	set_color_name(47, "Undyne")
	
	// Siren
	set_color_profile_slot( 48, 0, 241, 37, 30 ); //Hoodie
	set_color_profile_slot( 48, 1, 74, 78, 130 ); //Tips
	set_color_profile_slot( 48, 2, 252, 228, 60 ); //Hair
	set_color_profile_slot( 48, 3, 255, 224, 197 ); //White Fur
	set_color_profile_slot( 48, 4, 255, 190, 167 ); //Shading
	set_color_name(48, "Siren")
	
	// Nicole The Holo-Lynx
	set_color_profile_slot( 49, 0, 168, 112, 156 ); //Hoodie
	set_color_profile_slot( 49, 1, 61, 63, 64 ); //Tips
	set_color_profile_slot( 49, 2, 12, 19, 23 ); //Hair
	set_color_profile_slot( 49, 3, 175, 127, 84 ); //White Fur
	set_color_profile_slot( 49, 4, 112, 70, 30 ); //Shading
	set_color_name(49, "Nicole The Holo-Lynx")
	
	// Shantae
	set_color_profile_slot( 50, 0, 240, 0, 0 ); //Hoodie
	set_color_profile_slot( 50, 1, 255, 233, 28 ); //Tips
	set_color_profile_slot( 50, 2, 112, 42, 140 ); //Hair
	set_color_profile_slot( 50, 3, 218, 175, 112 ); //White Fur
	set_color_profile_slot( 50, 4, 140, 92, 47 ); //Shading
	set_color_name(50, "Shantae")
	
	// Krystal
	set_color_profile_slot( 51, 0, 211, 186, 81 ); //Hoodie
	set_color_profile_slot( 51, 1, 116, 149, 232 ); //Tips
	set_color_profile_slot( 51, 2, 67, 102, 191 ); //Hair
	set_color_profile_slot( 51, 3, 224, 226, 232 ); //White Fur
	set_color_profile_slot( 51, 4, 163, 177, 204 ); //Shading
	set_color_name(51, "Krystal")
	
	// Mikuru Asahina
	set_color_profile_slot( 52, 0, 79, 69, 113 ); //Hoodie
	set_color_profile_slot( 52, 1, 255, 255, 255 ); //Tips
	set_color_profile_slot( 52, 2, 195, 117, 93 ); //Hair
	set_color_profile_slot( 52, 3, 252, 216, 198 ); //White Fur
	set_color_profile_slot( 52, 4, 171, 146, 134 ); //Shading
	set_color_name(52, "Mikuru Asahina")
	
	// Itsuki Koizumi
	set_color_profile_slot( 53, 0, 36, 78, 96 ); //Hoodie
	set_color_profile_slot( 53, 1, 131, 31, 53 ); //Tips
	set_color_profile_slot( 53, 2, 97, 74, 50 ); //Hair
	set_color_profile_slot( 53, 3, 236, 199, 162 ); //White Fur
	set_color_profile_slot( 53, 4, 192, 140, 105 ); //Shading
	set_color_name(53, "Itsuki Koizumi")
	
	// Klonoa
	set_color_profile_slot( 54, 0, 0, 162, 232 ); //Hoodie
	set_color_profile_slot( 54, 1, 255, 242, 0 ); //Tips
	set_color_profile_slot( 54, 2, 59, 59, 59 ); //Hair
	set_color_profile_slot( 54, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 54, 4, 141, 141, 141 ); //Shading
	set_color_name(54, "Klonoa")
	
	// Foxy
	set_color_profile_slot( 55, 0, 168, 90, 27 ); //Hoodie
	set_color_profile_slot( 55, 1, 97, 97, 97 ); //Tips
	set_color_profile_slot( 55, 2, 153, 35, 35 ); //Hair
	set_color_profile_slot( 55, 3, 196, 82, 82 ); //White Fur
	set_color_profile_slot( 55, 4, 153, 52, 52 ); //Shading
	set_color_name(55, "Foxy")
	
	// Brock
	set_color_profile_slot( 56, 0, 135, 163, 122 ); //Hoodie
	set_color_profile_slot( 56, 1, 170, 83, 24 ); //Tips
	set_color_profile_slot( 56, 2, 104, 82, 38 ); //Hair
	set_color_profile_slot( 56, 3, 228, 169, 107 ); //White Fur
	set_color_profile_slot( 56, 4, 196, 127, 58 ); //Shading
	set_color_name(56, "Brock")
	
	// Mollo
	set_color_profile_slot( 57, 0, 74, 55, 76 ); //Hoodie
	set_color_profile_slot( 57, 1, 135, 49, 49 ); //Tips
	set_color_profile_slot( 57, 2, 244, 199, 144 ); //Hair
	set_color_profile_slot( 57, 3, 171, 106, 152 ); //White Fur
	set_color_profile_slot( 57, 4, 137, 79, 126 ); //Shading
	set_color_name(57, "Mollo")
	
	// Penny
	set_color_profile_slot( 58, 0, 71, 81, 89 ); //Hoodie
	set_color_profile_slot( 58, 1, 151, 164, 168 ); //Tips
	set_color_profile_slot( 58, 2, 138, 74, 45 ); //Hair
	set_color_profile_slot( 58, 3, 235, 157, 94 ); //White Fur
	set_color_profile_slot( 58, 4, 212, 118, 43 ); //Shading
	set_color_name(58, "Penny")
	
	// Shaymin
	set_color_profile_slot( 59, 0, 123, 173, 33 ); //Hoodie
	set_color_profile_slot( 59, 1, 247, 74, 66 ); //Tips
	set_color_profile_slot( 59, 2, 123, 173, 33 ); //Hair
	set_color_profile_slot( 59, 3, 255, 255, 255 ); //White Fur
	set_color_profile_slot( 59, 4, 206, 206, 214 ); //Shading
	set_color_name(59, "Shaymin")
	
	// Delphox
	set_color_profile_slot( 60, 0, 154, 66, 74 ); //Hoodie
	set_color_profile_slot( 60, 1, 254, 254, 254 ); //Tips
	set_color_profile_slot( 60, 2, 239, 112, 66 ); //Hair
	set_color_profile_slot( 60, 3, 250, 225, 96 ); //White Fur
	set_color_profile_slot( 60, 4, 169, 124, 52 ); //Shading
	set_color_name(60, "Delphox")
	
	// Raynb0w
	set_color_profile_slot( 61, 0, 255, 0, 0 ); //Hoodie
	set_color_profile_slot( 61, 1, 255, 255, 0 ); //Tips
	set_color_profile_slot( 61, 2, 0, 255, 0 ); //Hair
	set_color_profile_slot( 61, 3, 0, 255, 255 ); //White Fur
	set_color_profile_slot( 61, 4, 0, 166, 166 ); //Shading
	set_color_name(61, "Raynb0w")
	
	// Weiss Schnee
	set_color_profile_slot( 62, 0, 242, 253, 255 ); //Hoodie
	set_color_profile_slot( 62, 1, 199, 0, 0 ); //Tips
	set_color_profile_slot( 62, 2, 180, 203, 236 ); //Hair
	set_color_profile_slot( 62, 3, 246, 223, 206 ); //White Fur
	set_color_profile_slot( 62, 4, 215, 146, 137 ); //Shading
	set_color_name(62, "Weiss Schnee")
	
	// Clairen
	set_color_profile_slot( 63, 0, 170, 34, 74 ); //Hoodie
	set_color_profile_slot( 63, 1, 182, 181, 181 ); //Tips
	set_color_profile_slot( 63, 2, 66, 53, 81 ); //Hair
	set_color_profile_slot( 63, 3, 66, 53, 81 ); //White Fur
	set_color_profile_slot( 63, 4, 43, 38, 49 ); //Shading
	set_color_name(63, "Clairen")
}

#define set_num_palettes(_numPalettes)
{
	for (var i = 0; i <= _numPalettes; ++i)
		alts[i] = {	r1:255,	g1:255,	b1:255,
					r2:184,	g2:164,	b2:164,
					r3:255,	g3:255,	b3:255,
					r4:255,	g4:255,	b4:255,
					r5:182,	g5:164,	b5:164,
					name:"White"};
}

#define set_color_profile_slot(_altNum, _slotNum, _r, _g, _b)
{
	variable_instance_set(alts[_altNum], "r" + string(_slotNum+1), _r);
	variable_instance_set(alts[_altNum], "g" + string(_slotNum+1), _g);
	variable_instance_set(alts[_altNum], "b" + string(_slotNum+1), _b);
}

#define set_color_name(_altNum, _name)
{
	alts[_altNum].name = _name;
}