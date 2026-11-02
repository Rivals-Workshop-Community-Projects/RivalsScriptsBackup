hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

cheight = 26;
char_height = cheight;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.3;
walk_turn_time = 8;
initial_dash_time = 6;
initial_dash_speed = 8;
dash_speed = 7.2;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;
hue = 0;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 9;
djump_speed = 11.5;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .01;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 16;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 11;
wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .015; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 9;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 8;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 8;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 8;
roll_back_recovery_frames = 2;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

//intro animation
introTimer = -2;
introTimer2 = 0;
introsfx1 = sound_get("sfx_intro1");
introsfx2 = sound_get("sfx_intro2");
introsfxretro = sound_get("alt_retro_intro");
introsfxknight = sound_get("alt_knight_intro");
introgodmode = sound_get("sfx_dogrev");

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Dog
canbluh = 1;
canhonk = 1;
canchicken_sfx = 1;
digup = 0;
digrepeat = 0;
fstrong_parried = 0;
fstrong_distance = 10;
carfuel = 200;
donotlower = 0;
skipcharge = 0;
cssbark = 1;
chicken_climb = 0;
knight_climb = 0;
can_taunt_dance = 0;
dirt_timer = 0;
sparkledelayer = 0;
celebrate_timer = 0;
celebrate_pitch = 1;
sparkle_tracker = 1;

// Debug
effecttester = 0;

// Effects
carsparkle = hit_fx_create(sprite_get("carsparkle_effect"), 12);
bigshot = hit_fx_create(sprite_get("bigshot_effect"), 70);
small_sparkle = hit_fx_create(sprite_get("sparkle2"), 8);
shotcharge = null;

greaterarmor = hit_fx_create(sprite_get("fstrong_proj"), 90);
ftiltbone = hit_fx_create(sprite_get("ftilt_proj"), 30);
realistic_explosion = hit_fx_create(sprite_get("realistic_explosion_EFFECT"), 51);
digupdirt = hit_fx_create(sprite_get("dirt_effect"), 42);
dashtrail = hit_fx_create(sprite_get("dashtrail_effect"), 6);
dstrong_appear = hit_fx_create(sprite_get("dstrong_appear"), 12);
dstrong_appear_knight = hit_fx_create(sprite_get("dstrong_appear_knight"), 12);



set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("sfx_spearappear"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_spearrise"));
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_dash_helmet"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, sprite_get("proj_dash_helmet"));
switch (get_player_color(player))
{
	case 10: // Early Access
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_RETRO"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_RETRO"));
		break;
		
	case 12: // Roaring Knight Alt
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_knight"));
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("alt_knight_appear"));
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("alt_knight_cut"));
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_knight"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_knight"));
		
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_knight"));
		set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack_knight"));
		set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_dash_helmet_knight"));
		set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, sprite_get("proj_dash_helmet_knight"));
		
		// array of afterimages
		total_afterimages = 20; // total number of afterimages
		current_afterimages = 0; // current number of images to draw
		index_afterimages = 0; // which index to replace in the rolling buffer
		afterimages = array_create(total_afterimages, 0);
		for (var i = 0; i < total_afterimages; i += 1) {
			afterimages[i] = {
			ind: 0,
			spr: 0,
			img: 0,
			sprdir: 0,
			opacity: 0.5,
			prevx: x,
			prevy: y,
			}
		}
		break;
}

// is_dog_legal_yet = please;

// [------------Workshop Compatability------------]
godmode = 0;
deltarune_mode = 0;
danganronpa_spotted = 0;
opponent_tracker = 1;

// [------------Characters------------]
// Kirby
kirbyability = 16;
kirby_ability_spr = sprite_get("kirby");
kirby_proj_spr = sprite_get("kirby_proj");
kirby_proj_spr_left = sprite_get("kirby_proj_left");
kirby_ability_spr_air = sprite_get("kirby_air");
kirby_ability_hurt = sprite_get("kirby_hurt");
kirby_ability_hurt_air = sprite_get("kirby_hurt_air");
kirby_sfx = sound_get("sfx_kirby");
kirby_hit = sound_get("sfx_hit2");
kirby_icon = sprite_get("kirbyicon");

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;

// TCO
tcoart = sprite_get("tco_dog");

// Hikaru	
Hikaru_Title = "Annoying Fox";

// Feri
feri_costume = sprite_get("feri_costume_annoyingdog");

// Otto
otto_bobblehead_sprite = sprite_get("bobdog");

// Roaring Knight
Roaring_Knight_Soul_Sprite = sprite_get("roaringknight_soul")
Roaring_Knight_Soul_Color  = c_white;
Roaring_Knight_Death_Text =
[
	"* The Annoying Dog was",
	" subdued and dejected.",
]

// Spamton
spam_ad = sprite_get("spamton_ads");

// The Knight
knight_compat_dream = 
[
    "* Nothing to see here... bark bark bark...",
	"* Hey! Bug guy! Have you seen a skeleton anywhere?",
	"* Don't you have anything better to do?"
]
    
// Solid Snake
sna_interrogated_line_01 = "can't blame a BARK for tryin'";


// [------------Stages------------]
// Miiverse
miiverse_post = sprite_get("miiverse_post");

// Mt DDD / Boxing Ring
arena_title = "The Conniving Canine";
boxing_title = "The Conniving Canine";

// Soulbound Conflict
battle_text = "*You feel some sort of annoying energy";
battle_text2 = " radiating around you.";

// Trial Grounds
guiltySprite = sprite_get("guiltyDog")

// Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokedog");
pkmn_stadium_back_img = sprite_get("pokedog_back");
pkmn_stadium_name_override = "Annoy.Dog";

// Wii Stages
wiimote_compat_sprite = sprite_get("wiimote");
wiimote_stage_sprite = sprite_get("wiimote");

// Keygen
keygen_type = "UNDERTALE";

// Greenwood Town
greenwood_cheer = 1;


// Extra Compatabilities created with the help from @eddyp_34295 in the Rivals Extended Workshop Server! Thank you so much for supporting the mod!

princess_shroob_compat_dialogue = ["...","I can already tell you will be impossible to tolerate so..."]

cranky_kong_quote = "Shouldn't you be making your ''Donut Run'' game or something?";
cranky_kong_quote2 = "Undertale.";
cranky_kong_quote3 = "Sorry little doggy, I haven't seen the skeleton your looking for...";

ror_win_text = "..and so he left, annoying everyone in the process..."

uhc_victory_quote = "legndaree artef4ct obtaned, no doge tutoriel.";

HasTriviaBotQuestion = true
TriviaBotQuestion = "DELTARUNE"
TriviaBotQuestionWrong1 = "YESTERDAY"
TriviaBotQuestionWrong2 = "NOW"
TriviaBotQuestionWrong3 = "TODAY"
TriviaBotQuestionRight = "TOMORROW"

ncode1 = "A strange white dog from unknown origin."
ncode2 = ""
ncode3 = "He is usually pretty annoying like the name says"

hasvesselcheck = true
vesselchecktext = "* DOG - BARK ATK BARK DEF

THE DOG REFUSES THE ELABORATE
ABOUT ANY OF IT'S STATS."

compat_tenna_codec = [
initTennaPageExt(["What an {1}         creature!"], sprite_get("funnytext_annoying"), 1, 10, 5, "default", sound_get("textannoying"), 3, "shimmy", false), 
initTennaPage(["I remember seeing him with the","weird rules guy..."], 2, "none", false),
initTennaPage(["He appeared on a platform and","then just left!"], 3, "none", false),
initTennaPage(["I might have seen him too on...","the gumball machine!"], 3, "none", false),
initTennaPage(["Why is he everywhere? And why","is he so weird?"], 4, "shimmy", false),
initTennaPage(["Whoever finds his owner gets a..."], 10, "none", false),
initTennaPage(["..."], 22, "shimmySlow", false),
initTennaPage(["WAIT HE IS A GAME DEVELOPER?"], 18, "none", false),
initTennaPage(["He made a game with a character","named Tenna?"], 16, "none", false),
initTennaPage(["I know I'm great and all but you","can't just put my face there!"], 16, "none", false),
initTennaPageExt(["Well, you are too cute to","{1}"], sprite_get("funnytext_sue"), 1, 0, 2, "default", sound_get("textsue"), 14, "shimmy", false), 
initTennaPage(["How about you come make games","for the real Tenna instead?"], 12, "shimmy", false),
]


//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
fairbone = 1;
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
//example rune definition:
//abyssMods[@ runes.A] = [3,"Ground speed is faster."];
// Level 1
abyssMods[@ runes.A] = [3, "Become invincible during TAUNT."];
abyssMods[@ runes.B] = [3, "Wall climb is much faster."];
abyssMods[@ runes.C] = [2, "UAIR and UTILT gives poison."];
abyssMods[@ runes.D] = [2, "JAB flinches the opponent."];
abyssMods[@ runes.E] = [3, "DAIR propels you upward."];
abyssMods[@ runes.F] = [2, "DTILT pulls toward you."];

// Level 2
abyssMods[@ runes.G] = [3, "DATTACK travels much further."];
abyssMods[@ runes.H] = [3, "FSTRONG travels much further."];
abyssMods[@ runes.I] = [3, "DSPECIAL is a lot faster."];
abyssMods[@ runes.J] = [1, "NSPECIAL's [[BIG]] shot charges twice as fast."];
abyssMods[@ runes.K] = [2, "USPECIAL has a hitbox the whole way through."];

// Level 3
abyssMods[@ runes.L] = [1, "NSPECIAL comes out as fast as you can press the button. (Does less damage)"];
abyssMods[@ runes.M] = [3, "USTRONG pulls out good items more often and never a snowball."];
abyssMods[@ runes.N] = [3, "Jump-cancel FSPECIAL anywhere, anytime."];
abyssMods[@ runes.O] = [1, "FAIR throws out a bone when the move ends."];


var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
	variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

if runeJ
{
	bigshot = hit_fx_create(sprite_get("bigshot_effect"), 35);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 35);
}

//abyss init code over

#define initTennaPageExt(lines, image, io_x, io_y, f_speed, i_anim, i_sound, c_window, w_anim, r_dir)
return {
    str: lines,
    image_embed: image,
    image_x: io_x,
    image_y: io_y,
    image_anim: i_anim,
    image_sound: i_sound,
    wait_frames: f_speed,
    codec_window: c_window,
    window_anim: w_anim,
    reverse_dir: r_dir,
}
#define initTennaPage(lines, c_window, w_anim, r_dir)
return {
    str: lines,
    image_embed: noone,
    image_x: noone,
    image_y: noone,
    image_anim: noone,
    image_sound: noone,
    wait_frames: 2,
    codec_window: c_window,
    window_anim: w_anim,
    reverse_dir: r_dir,
}
