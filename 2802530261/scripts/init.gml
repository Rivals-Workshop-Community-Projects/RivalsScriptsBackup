// init is a script that creates variables when the player is created on the stage.
/*
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 8;	    // 6
initial_dash_time   = 15;		// 8    -  16
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.6;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 1;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 8;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 8.5;       // 8    -  11


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hbox");
crouchbox_spr       = -1;
air_hurtbox_spr     = sprite_get("crouchbox");
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//victory theme & intro theme
switch(get_player_color(player)){
    case 0:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break; 
    case 1: 
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 2:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 3:
   set_victory_theme(sound_get("sm_victory"));
    sound_play(sound_get("sm_intro"));
    walle_taunt_sound = sound_get("sm_victory");
    walle_taunt_type = 1
    break;
    case 4:
set_victory_theme(sound_get("sm_victory"));
    sound_play(sound_get("sm_intro"));
    walle_taunt_sound = sound_get("sm_victory");
    walle_taunt_type = 1;
    break;
    case 5:
set_victory_theme(sound_get("sm_victory"));
    sound_play(sound_get("sm_intro"));
    walle_taunt_sound = sound_get("sm_victory");
    walle_taunt_type = 1
    break;
    case 6:
set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    walle_taunt_sound = sound_get("fusion_victory");
    walle_taunt_type = 1
    break;
    case 7:
   set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    walle_taunt_sound = sound_get("fusion_victory");
    walle_taunt_type = 1
    break;
    case 8:
set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    walle_taunt_sound = sound_get("fusion_victory");
    walle_taunt_type = 1
    break;
    case 9:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 10:
       set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 11:
        set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 12:
         set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 13:
          set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 14:
      set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 15:
         set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 16:
set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    walle_taunt_sound = sound_get("fusion_victory");
    walle_taunt_type = 1
    break;
    case 17:
set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    walle_taunt_sound = sound_get("prime_victory");
    walle_taunt_type = 1
    break;
    case 18:
set_victory_theme(sound_get("m1_victory"));
    sound_play(sound_get("m1_intro"));
    walle_taunt_sound = sound_get("m1_victory");
    walle_taunt_type = 1
    break;
    case 19:
set_victory_theme(sound_get("m1_victory"));
    sound_play(sound_get("m1_intro"));
    walle_taunt_sound = sound_get("m1_victory");
    walle_taunt_type = 1
    break;
    case 20:
        set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 21:
        set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 22:
set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    walle_taunt_sound = sound_get("prime_victory");
    walle_taunt_type = 1
    break;
    case 23:
set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    walle_taunt_sound = sound_get("prime_victory");
    walle_taunt_type = 1
    break;
    case 24:
set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    walle_taunt_sound = sound_get("prime_victory");
    walle_taunt_type = 1
    break;
    case 25:
set_victory_theme(sound_get("mando_victory"));
    sound_play(sound_get("mando_intro"));
    walle_taunt_sound = sound_get("mando_victory");
    walle_taunt_type = 1
    break;
    case 26:
        set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 27:
set_victory_theme(sound_get("m1_victory"));
    sound_play(sound_get("m1_intro"));
    walle_taunt_sound = sound_get("m1_victory");
    walle_taunt_type = 1
    break;
    case 28:
set_victory_theme(sound_get("m2_victory"));
    sound_play(sound_get("m2_intro"));
    walle_taunt_sound = sound_get("m2_victory");
    walle_taunt_type = 1
    break;
    case 29:
set_victory_theme(sound_get("m2_victory"));
    sound_play(sound_get("m2_intro"));
    walle_taunt_sound = sound_get("m2_victory");
    walle_taunt_type = 1
    break;
    case 30:
        set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
    case 31:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro")); 
    walle_taunt_sound = sound_get("victory");
    walle_taunt_type = 1
    break;
}

//#region compats

//Mt Dedede

arena_title = "Galaxys greatest Bounty hunter";

//Boxing arena

boxing_title = "Bounty queen";

//Soulbound Conflict message

battle_text = "* You feel a little outgunned here.";

//Snake interigations

sna_interrogated_line_01 = "Guess you could keep up afterall";
sna_interrogated_line_02 = "If a x-parasite gets a hold of you. You're going to have a lot more than a sore throat";
sna_interrogated_line_03 = "The Morph Ball is 3 floors down good luck using it";

//AgentN Codec

ncode1 = "Samus Aran is the galaxy's greatest bounty hunter."
ncode2 = "She is credited with the deaths of Kraid, Mother brain,"
ncode3 = "and ridley. She's similar to you. negotiate if possible."

//Henry Stickmin fail

has_fail = true;
fail_text = "Wait, were we supposed to go right or left at Norfair?";


//unregistered HyperCam quotes

uhc_victory_quote = "Metoid - Pim 4 confirmed I n 3 Cutsene";
uhc_victory_quote = "3 d suks cen wie gt fuson 2 !!!!@!!!@!";

//unregistered hypercam video

uhc_taunt_videos[0] = { sprite:sprite_get("metroid nes trailer"), song:sound_get("nes_metroid_trailer_sound_effect"), fps:1 };
uhc_taunt_videos[1] = { sprite:sprite_get("Super_metroid_ad"), song:sound_get("Super-Metroid-Commercial"), fps:1 };
uhc_taunt_videos[2] = { sprite:sprite_get("metroid_fusion_ad"), song:sound_get("metroid_fusion_ad_audio"), fps:1 };
uhc_taunt_videos[3] = { sprite:sprite_get("metroid_prime_ad"), song:sound_get("Metroid_Prime_3_ad"), fps:1 };
uhc_taunt_videos[4] = { sprite:sprite_get("metroid_babies"), song:sound_get("metroid_babies"), fps:1 };

//steve-compatiblity

steve_death_message = "Steve couldn't find the metroid larva."

//ttyd stage

ttyd_audience_sprite = sprite_get("my_audience_sprite")

//Moonchild

childsupport = 1;

//Demopan

object = sprite_get("Samus_demopan");



//Hikaru title

Hikaru_Title = "Varia"; 

//Pokemon Stadium sprite test

pkmn_stadium_name_override = "Samus";
pkmn_stadium_front_img = sprite_get("samus_front_sprite")
pkmn_stadium_back_img = sprite_get("samus_back_sprite")

//Trail grounds

guiltySprite = sprite_get("samus_trial")

//Pacman sprite 

Namco_Taunt = sprite_get("pacman_samus_sprite_test")
Namco_Taunt_Sound = sound_get("pacman_metroid_nes_effect")

// Green flower hill zone

gfzsignspr = sprite_get("SamusBoard")

gfzsignsfx = sound_get("gui_aeon_max")

//wily castle
 wily_robotmaster_img = sprite_get("Samus-Megaman");


//Miiverse

miiverse_post = sprite_get("Samus_miiverse")

//so sorry support

sorry_art = sprite_get("sorryart_[samus_card]");

//loadent

ltweet = sprite_get( "ltweet" );

// Amber

plushForAmber = sprite_get("samus_plush");

//Toon link

toonlink_photo = sprite_get("Samus_Toon_link");
toonlink_photo2 = 1

//Bailey

kinniku_behind = sprite_get("Rosworth_samus_back");
kinniku_front = sprite_get("Rosworth_samus_Front");

// The Chosen One

tcoart = sprite_get("(samus)tcoart");

// Spamton ads

spam_ad = sprite_get("Samus_spam")

//Samson

honeyed_sprite = sprite_get("samus_honeyed");

//Naruto

naruto_sexyjutsu_sprite = sprite_get("Naruto_samus");

//Feri

feri_costume = sprite_get("Feri_samus");


//Otto bobblehead

otto_bobblehead_sprite = sprite_get("otto_bobblehead");

otto_bobblehead_body_sprite = sprite_get("otto_bobblehead_body");

//Last Resort

 resort_portrait = sprite_get("samus_last_resort")
 
//Kirby Fighters

kf_custom_icon = sprite_get("Samus_kirby");

//Po and gumbo

pot_compat_variable = sprite_get("Metroid_sugar_cookies");
pot_compat_text = "Metroid Sugar Cookies"

//Dracula dialouge

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[0] = 0;
dracula_text[0] = "Ah if it isn't samus aran. Here to collect a bounty are you?";
page++;

//Page 1
dracula_speaker[1] = 1;
dracula_text[1] = "...";
page++;

//page 2

dracula_speaker[2] = 1;
dracula_text[2] = "weapons charged";
page++;

//Page 3
dracula_speaker[3] = 0;
dracula_text[3] = "Ah not much for converstion I see, well [glass] let us see what color you bleed Chozo hybrid!";
page++;



//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("Amber_samus_samus");
amber_herHugSprite = sprite_get("Amber_samus_amber");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = false; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 70; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 70; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop

//#endregion compats

//#region variables

//general variables
idle_air_index = 0;
land_sound = sound_get("jump_land");
landing_lag_sound = sound_get("jump_land");
jump_sound = sound_get("jump_spin");
djump_sound = sound_get("jump_spin");

//hud
menu_y = -12; //-12 is low, -42 is high
openmenu = false;
item_id = 1;
moving_text = 0;
name_xval = [27, 22, 19, 59, 51, 45];
menu_alpha = 0;
hud_beam_cooldown = 0;
hud_missile_cooldown = 0;
hud_flash_shift_cooldown = 0;
items_select = [0, 0, 0, 0, 0, 0];
power_ups = [0, 0, 0, 0, 0, 0];
select_timer = 0;
sound_timer = 0;
prev_dameg = get_player_damage(player);
menu_version = get_synced_var(player) - 1;
if(get_synced_var(player) == 0){
	menu_version = 1;
}
menu_v_select = 0;
hologram_y = 0;

//resource values
missile_amount = (has_rune("H")? 275: 35);
power_bomb_amount = (has_rune("H")? 15: 2);
aeion = 700;
aeion_sfx = 0;

//dspecial
ball_angle = 0;
bomb_type = 0; //0 normal bomb, 1 power bomb
bomb_amount = 0;
bomb_timer = 0;
power_charge = 0;
power_cooldown = 0;
power_bomb = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
empty = hit_fx_create(sprite_get("empty"), 1);
dspecial_sound = 0;
freee = free;
cross = noone;
cross_timer = 0;
ball_hsp = 0;
dtap_morph = 0;

//nspecial
beam_sprite = 0; //0 base, 1 plasma, 2 wave, 3 plasma + wave
charge = 0;
hit_0 = hit_fx_create(sprite_get("0_hit"), 4);
hit_1 = hit_fx_create(sprite_get("1_hit"), 4);
hit_2 = hit_fx_create(sprite_get("2_hit"), 4);
hit_3 = hit_fx_create(sprite_get("3_hit"), 4);
diffusion_sprite = 0;
diffusion1 = hit_fx_create(sprite_get("diffusion_" + string(diffusion_sprite)), 14);
diffusion2 = hit_fx_create(sprite_get("diffusion_" + string(diffusion_sprite)), 10);
spread = [];
spreadvsp = [-6, -5.5, -5, -5.5, -6];
spreadhsp = [-2, -1, 0, 1, 2];
spreading = 0;
blink_timer = 0;
c_sound = 0;
cing_sound = 0;

//fspecial
missile_sprite = 0; //0 base, 1 sups, 2 ice
ice_icon = sprite_get("ice_icon");
ice_particle = sprite_get("ice_particle");
missile_hit = hit_fx_create(sprite_get(string(missile_sprite) + "_missile_hit"), 10);

//dattack
spark_timer = 0;
spr_distance = 0;

//flash shift
flash_alpha = [0, 0, 0];
dodgex = [x, x, x];
dodgey = [y, y, y];
dodgendx = [x, x, x];
dodgendy = [y, y, y];
dodge_amount = 3;

//rune F
if(has_rune("F")){
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 88);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 100);
    
    set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 110);
    set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 100);
    
    set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 80);
    set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 60);
    set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 70);
    set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 60);
    set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 80);
    
    set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
    set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 80);
    set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 80);
    
    set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
    set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
    set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
}

//rune k
damage_counter = 0;

//#endregion



trummel_codecs = [];
trummel_speakers = [];
pit_codecs = [];
// Codec speakers
SPK_TRUM = 0;
SPK_ALTO = 1;
SPK_OTTO = 2;
SPK_CODA = 3;
SPK_ECHO = 4;
SPK_MINE = 5;
SPK_SEGA = 6;

// Guidance speakers
SPK_PIT	 = 0;
SPK_PALU = 1;
SPK_VIR	 = 2;
SPK_DPIT = 3;

// Codec gimmicks
GIM_CHOMP		= 2;
GIM_CLONE		= 3;
GIM_LAUGH_TRACK	= 5;
GIM_SKIP		= 7;
GIM_DIE			= 11;
GIM_SHUT_UP		= 13;
GIM_HOWL		= 17;
GIM_SHADER		= 19;
GIM_TEXTBOX		= 23;
GIM_COLOR		= 29;

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
SPK_Samus = initSpeaker(1, "Samus", sprite_get("otto_bobblehead"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 6, 0, "woag, it's metroid");
initCodecPage(SPK_ALTO, 1, 0, "Don't be silly Trummel. thats Samus Aran");
initCodecPage(2, 0, 0, "Isn't she a bounty hunter?");
initCodecPage(SPK_ALTO, 0, 0, "She's more than a bounty hunter Otto. ");
initCodecPage(SPK_ALTO, 0, 0, "She has exterminated 2 entire species.");
initCodecPage(SPK_TRUM, 0, 0, "Wait, isn't that illegal?");
initCodecPage(1, 7, 0, "They were apparently a biological menace killing everything in sight.");
initCodecPage(1, 0, 0, "she's a zoner so blocking is key here.");
initCodecPage(2, 9, 0, "Good plan, but if she's a bounty hunter. Who's she hunting?");
initCodecPage(0, 7, 0, "...");
initCodecPage(1, 10, 0, "... trummel?");
spr_custom_trummel_color = c_red;

initCodecPit();
initCodecPagePit(0,  3,  -1,  "Hey it’s Samus!");
initCodecPagePit(0,  7,  8, "Is it just me or does she look a bit different?");
initCodecPagePit(1,  0,  1,  "She’s apparently had a new adventure since We last saw her in smash.");
initCodecPagePit(2, 0,  0,  "Wonder what species she killed this time?");
initCodecPagePit(0,  9,  0,  "Well She certainly has a lot of new weapons. Not really liking my odds here.");
initCodecPagePit(1,  0,  -1,  "Don’t worry Pit even with all her new tools she’s still a zoner. Keep dodging and parrying and you’ll be ok.");
initCodecPagePit(0,  2,  8, "Right I got this.");
initCodecPagePit(1,  2,  5,  "Oh and watch out for the power bomb.");
initCodecPagePit(0,  4,  1, "THE WHAT?!"); 

#define initCodec(cd_gimmick)



var new_cdc = {
    gimmick: cd_gimmick,
    pages: []
};

array_push(trummel_codecs, new_cdc);

#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)

var new_page = {
    speaker: cd_speaker,
    expression: cd_expression,
    gimmick: cd_gimmick,
    text: cd_text
};

array_push(trummel_codecs[array_length(trummel_codecs) - 1].pages, new_page);

#define initSpeaker(idx, speak_name, speak_sprite)



trummel_speakers[idx] = {
    name: speak_name,        // Name displayed while talking
    sprite: speak_sprite    // Sprite of face
};

return idx * -1;

//initCodec(0);SPK_YOURCHAR = initSpeaker(7, "Samus", sprite_get("otto_bobblehead");

initCodecPage(1, 1, 0, "your text : )");

#define initCodecPit()



pit_codecs = [];

var new_cdc = {
	pages: []
};

array_push(pit_codecs, new_cdc);

#define initCodecPagePit(cd_speaker, cd_expression, cd_sfx, cd_text)
var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	sfx: cd_sfx,
	text: cd_text
};
array_push(pit_codecs[array_length(pit_codecs) - 1].pages, new_page);
