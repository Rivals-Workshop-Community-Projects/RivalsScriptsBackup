// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
small_sprites       = 1;        //
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4.5;		// 4    -  8
max_jump_hsp        = 4.5;		// 4    -  8
air_max_speed       = 3.5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.325;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 14;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.13;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.25;
crouch_anim_speed   = 0.25;
walk_anim_speed     = 0.25;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 3;		// 

// Parry
dodge_startup_frames    = 2;
dodge_active_frames     = 8;
dodge_recovery_frames   = 8;

// Tech
tech_active_frames      = 6;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 3;
techroll_active_frames      = 5;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 3;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 1;
crouch_recovery_frames  = 5;

// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("pt_victory_theme"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("pt_jump");
djump_sound         = sound_get("pt_jump");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// ==================== CHAR. SPECIFIC ====================

// Sprites
spr_idle_air = sprite_get("pratfall");

// SFX
sfx_mach_loop = sound_get("pt_mach_loop");
sfx_mach_dash = sound_get("pt_mach_attack");
sfx_uspec_charge = sound_get("pt_uspec_charge");
sfx_fspec_grab = sound_get("pt_grab");
sfx_parry = sound_get("pt_parry");
sfx_death = sound_get("pt_death");
sfx_fthrow1 = asset_get("sfx_zetter_downb");
sfx_fthrow2 = asset_get("sfx_abyss_hazard_hit");
sfx_dspec_indicator = asset_get("mfx_star");

// VFX
vfx_cheese_land = hit_fx_create(sprite_get("cheese_land_fx"), 24);
vfx_pizza_land = hit_fx_create(sprite_get("pizza_land_fx"), 20);

// Variables
normal_max_jump_hsp = max_jump_hsp;
was_free = false;

grabbed = []; // stores IDs of grabbed opponents

snapped_to_ledge = false; // for snapping over the ledge

jab_parried = false; // for managing jab parry stuff

taunt_sound = noone;
taunt_sfx_array = [
    sound_get("pt_taunt0"),
    sound_get("pt_taunt1"),
    sound_get("pt_taunt2")
];

uspec_charge = 0;
uspec_sound = noone;

dspec_timer = 0; // counts up during falling window of dspec

nspec_turned = false;
nspec_accel = 0.3;
nspec_max_hsp = 10;
nspec_loops = -1;
nspec_dash_charge = 0;
nspec_mach_duration = 45; // how long nspec mach lingers
nspec_mach_timer = 0;
nspec_mach_jump_hsp = nspec_max_hsp * 0.75;
nspec_mach_frict_mult = 0.5;

nspec_mach_sound = noone;

nspec_ai_tot = 3; // total number of afterimages
nspec_ai_cur = 0; // current number of images to draw
nspec_ai_ind = 0; // which index to replace in the rolling buffer
nspec_ai_freq = 5; // higher number --> less frequent updates to after image buffer

// array of afterimages
nspec_afterimages = array_create(nspec_ai_tot, 0);
for (var i = 0; i < nspec_ai_tot; i += 1) {
    nspec_afterimages[i] = {
        sprite: asset_get("empty_sprite"),
        subimg: 0,
        x: x,
        y: y,
        xscale: (1 + small_sprites) * spr_dir,
        yscale: 1 + small_sprites,
        rot: spr_angle,
        col: c_white,
        alpha: image_alpha
    }
}

//Compatability

//dialogue buddy
otherUrl = 0;
diagchoice = [
    "Out-a my way! I've got a delivery to make!",
    "Noise put you up-a to this, didn't he?",
    "Well someone's gotta pay for this-a pizza?!"
];
diag_nrs_diag = [noone];

//prowler buddy
prowler_parry_screen = sprite_get("Prowler_peppino")

//mt ddd
arena_title = "Speedy Chef";

//pokemon stadium
pkmn_stadium_back_img = sprite_get("Peppino_pokemon_back");
pkmn_stadium_front_img = sprite_get("Peppino_pokemon_front");

//smiley kirby
TCG_Kirby_Copy = 4;

//Trial grounds

guiltySprite = sprite_get("Peppino_trial")


//The chosen one
//tcoart = sprite_get("bowsertcoart");

//soulbound conflict
battle_text = "* It's Pizza Time!";

//boxing arena
boxing_title = "Middle-Aged
Speedster";

//Snake interigations

sna_interrogated_line_01 = "YAAAAAAAAAHHHHH!";
sna_interrogated_line_02 = "Let-a go of me!";
sna_interrogated_line_03 = "Wait, I'll pay-a my debt!";

//Henry Stickmin fail

has_fail = true;
fail_text = "There goes your P-Rank.";

//greenwood
greenwood_cheer = [4];


//yooka laylee
laylee_win_quote = "DEFEATED IN 30 MINUTES OR LESS. NOW HAND OVER THE PIZZA!"

//unregistered HyperCam quotes

uhc_victory_quote = "Pienpl pzza ruls!!!!:) ";

//Wall-E Taunt

walle_taunt_sound = sound_get("Walle_peppino");
walle_taunt_type = 1

//Chaos emeralds buddy
super_form_transform_sound = sound_get("Peppino_angry")
super_form_music = sound_get("Peppino_chaos");

//song by Divide music

// Green flower hill zone

gfzsignspr = sprite_get("PeppinoBoard")

gfzsignsfx = sound_get("pt_parry")

//wily castle
 wily_robotmaster_img = sprite_get("Peppino-Megaman");

knight_compat_dream = 
    [
        "I have to protect my resturant.",
        "I'll-a get you eventually Pizza Head",
        "Now-a this bug thing. give me a break."
    ]

 //Last Resort

 //resort_portrait = sprite_get("Bowserjr")
 
//steve-compatiblity

steve_death_message = "Steve couldn't escape in time."

//Hikaru title

Hikaru_Title = "Chef"; 

//Pacman sprite 

Namco_Taunt = sprite_get("Pac_peppino")
Namco_Taunt_Sound = sound_get("Pac_peppino")

//Amber
//plushForAmber = sprite_get("Bowser_Plush")

//Trial grounds

//guiltySprite = sprite_get("Bowser_Trial")

//Miiverse

miiverse_post = sprite_get("Peppino_miiverse")

//wii menu
wiimote_compat_sprite = sprite_get("peppimote")

//ttyd stage

ttyd_audience_sprite = sprite_get("Gustavo")

//po and Gumbo
pot_compat_variable = sprite_get("Peppino_food");
pot_compat_text = "Peppino's Pizza"

//Barr sonic
sonic_rainbowring_atk = 46; //the value corresponds to an attack index, make sure it's unused by your character. this value is used by the template

//Chao
chao_type = 5
chao_custom_spr = sprite_get("Pep_chao")

//so sorry support

//sorry_art = sprite_get("sorryart_[samus_card]");

//loadent

//ltweet = sprite_get( "ltweet" );

//Bailey

kinniku_behind = sprite_get("MuscleBuster-peppino2");
kinniku_front = sprite_get("MuscleBuster-peppino");

//omori battle
omoriface_n = sprite_get("peppino_neutral");
omoriface_h = sprite_get("peppino_happy");
omoriface_s = sprite_get("peppino_sad");
omoriface_a = sprite_get("peppino_angry");
omoriface_t = sprite_get("peppino_toast");

//bbc news
bbc_msg = "Italian found dead, local coroner reports cause of death as a heart attack."

//star/screen ko buddy 
buddy_screenko_sprite = sprite_get("Peppino_Star_KO");

//weegee
weegeefied_sprite = sprite_get("Peppino_Weegee");

//abyss hime
abyssHime_deathspr = sprite_get("Peppino_hime_death");

//clockworks zone

spr_stagefreefall = sprite_get("Drift");

// Highway delivery
truckadspr = sprite_get("Peppino_ads_highway");

//Elizabeth

elizabeth_transformation = sprite_get("Peppino_elizabeth");

//freddy merch compat
has_merch = true //enables Freddy to read your character
merch_sprite = sprite_get("Peppino_taunt_freddyplush"); //replace "your_sprite_here" with the name of your sprite
merch_sound = sound_get("sfx_taunt"); //replace "your_sound_here" with the name of your sound, if you have one
merch_sound_type = 0; //optional, initialize this variable as 1 if your character's audio file is a music track, as this will suppress the stage's background music

//scoop
scoop_personalized_flavour_name = "Spaghett-O-Melt";
scoop_personalized_flavour_sprite = sprite_get("peppino_compat_scoop");

//Dracula support
dracula_portrait = asset_get("peppino-1")
dracula_portrait2 = asset_get("peppino-2") //or asset_get("empty_sprite")
dracula_portrait3 = asset_get("peppino-3") //or asset_get("empty_sprite")
var page = 0;

//Dracula support
dracula_portrait = sprite_get("peppino-1");
dracula_portrait2 = sprite_get("peppino-2");
dracula_portrait3 = sprite_get("peppino-3");
dracula_portrait3 = sprite_get("peppino-3");
var page = 0;

//Page 0
dracula_speaker[0] = 0;
dracula_text[0] = "Ugh, what a horrid smell, tomatoes, cheddar, and... garlic. How dare you sully my castle with such a stench!";
page++;

//Page 1
dracula_speaker[1] = 2;
dracula_text[1] = "Oh, ma che dici! You don’t get to talk to me about smell! You’re the one threatening la mia pizzeria!";
page++;

//page 2

dracula_speaker[2] = 1;
dracula_text[2] = "Your minions made a mess, didn’t pay for the pizzas they destroyed, and worst of all";
page++;

//Page 3
dracula_speaker[3] = 3;
dracula_text[3] = "you haven’t even bought a single slice! Che disastro!";
page++;

//Page 4
dracula_speaker[4] = 0;
dracula_text[4] = "Hah![shake] Your filthy shop isn’t worthy of existing in the same world as me. I shall take great pleasure in wiping it from existence.";
page++;

//Page 5
dracula_speaker[5] = 2;
dracula_text[5] = "That’s it! You’ve crossed the line, stronzo!";
page++;

//Page 6
dracula_speaker[6] = 3;
dracula_text[6] = "I’m gonna knock you and this castle straight to the ground you Basta!";
page++;

//Toon link

//toonlink_photo = sprite_get("Samus_Toon_link");
//toonlink_photo2 = 1

//Feri

//feri_costume = sprite_get("Feri_Bowser");

//Otto bobblehead

//otto_bobblehead_sprite = sprite_get("otto_bobblehead");

//otto_bobblehead_body_sprite = sprite_get("otto_bobblehead_body");

// Spamton ads

spam_ad = sprite_get("peppinoad")

//smash mario
mario_cap_compat = sprite_get("cappytaunt_peppino")

//flatzone 

GWSpr = sprite_get("Peppino_flatzone")

//kirby fighters

kf_custom_icon = sprite_get("Peppino_kirby_Fighters")

//clockworks zone 
stage_freefalling = false;

//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("Amber_pep");
amber_herHugSprite = sprite_get("Amber_pep_amber");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = true; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 70; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 70; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 3; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop