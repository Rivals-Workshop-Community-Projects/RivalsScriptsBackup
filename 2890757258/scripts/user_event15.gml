// phone - frontend

if object_index == asset_get("cs_playerbg_obj"){
	CORE_css_draw();
	exit;
}

CORE_general();
CORE_tips();
CORE_patches();
CORE_cheats();
CORE_frame_data();
CORE_muno_compatibility();



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ CSS Draw																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Set parameters that are used by the CSS drawing code.

*/

#define CORE_css_draw

// The number of alt costumes your char has, up to 32.
num_alts = 32;

// Whether or not to display a name for each alt.
use_alt_names = false;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Vanilla",
	"Blueberry",
	"Strawberry",
	"Mint",
	"gray",
	"Lemon",
	];



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ General Settings															║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Set miscellaneous values to customize how your character interacts with the
MunoPhone Touch.

*/

#define CORE_general

// Character's name, used in a couple of places in the phone.
// (if you delete this line, it'd just use the config.ini name)
muno_char_name = "Shantae";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = true;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = false;

// Set to true and this will DISABLE a lot of the phone's side utilities.
// If you're porting the phone to an existing char and don't need any of these
// features, you might as well turn on lightweight to save a tiny bit of
// performance. (see _docs.gml for a full list of what this disables)
phone.lightweight = false;

// If you've created custom AG_ or HG_ indexes for your character already,
// use these to change where the phone starts assigning custom AG_s and HG_s.
// If you have no idea what that means, leave these alone!
// There's probably an upper bound here, but it's at least 200, so...
phone.starting_ag_index = 80;
phone.starting_hg_index = 80;

// The above, but for the AT_PHONE index.
// Maximum value is 50, minimum value (to avoid overlap w/ normal ones) is 39.
phone.phone_attack_index = 40;



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Tips																		║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Add Tips to your character, giving info on how to play or trivia. You can add
both text and images. It's recommended to keep these short-and-sweet, as in the
examples.

Use the initTip() function to start a new Tip:

	initTip(name);

Then, use the following functions to add content or paragraphs:

	initWords(text)
	
	initWords_ext(text, alignment, color, indent, ignore_height)
	
	initImage(sprite, frame)
	
	initImage_ext(sprite, frame, alignment, xscale, yscale, uses_shader, color,
		alpha, ignore_height, crop_left, crop_right, crop_up, crop_down)

Glossary:
	
	"_ext" at the end of a function name means an extended version of the
		function it's named after - giving you more formatting options.
	
	"alignment" can be the GML constants fa_left, fa_center, or fa_right.
	
	"color" can be any GML color, e.g. c_red, #00ff00, or make_color_hsv(...).
		Set this to a string (e.g. "h"), and it will be colored to the main
		color of whichever phone app the text is being displayed in.
	
	"indent" basically allows you to put any amount of "tabs" to the left of a
		paragraph.
	
	"sprite" can be any sprite index, e.g. sprite_get(...) or asset_get(...).
	
	"ignore_height" prevents this element from pushing the one below it
		downward. Set this to true to achieve effects such as two elements
		being side-by-side.
	
	"frame" can be 0 or any positive number for a static image, or a negative
		number for an animated image. The size of the negative number determines
		the framerate; -1 is the fastest, -2 is half as fast, -3 a third, etc.
	
	"uses_shader" determines whether or not the image should recolor with the
		character's alt costumes.
	
	"crop_left", "crop_right", etc allow you to crop an image by determining how
		far from the image's offset it should be drawn. Set all four to "noone"
		and it will use the entire image (including empty space).

NOTE: It's recommended to separate each paragraph into its own initWords() line,
so that things like page breaks can work properly.

*/

#define CORE_tips

initTip("NSPECIAL: Fireball");
initWords("Spend some magic to roast your foes from LONG RANGE control.");
initWords("On a single press, you shoot one fireball, but if you hold down the special button, you will shoot out three fireballs instead.");
initWords("But becareful though, if you run out of magic, the only thing you will be shooting is smoke.");
initImage_ext(sprite_get("nspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial_proj"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSPECIAL: Monkey Bullet");
initWords("Transform into a monkey and charges into her foe with a powerful strike!");
initImage_ext(sprite_get("fspecial"), 6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("It's handy as a mixup when recovering, plus, you can cling/climb on a wall when using this attack too.");
initImage_ext(sprite_get("monke_wallcling"), 7, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSPECIAL: Storm Puff");
initWords("Shantae uses a Storm Puff and it floats up above her and stays in place in mid-air.");
initImage_ext(sprite_get("stormpuff_attack"), -4, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("dspecial"), 2, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Use the puff in various ways, such as setups, traps, combo extenders and so on.");
initWords("However, it costs lot of magic to summon one. And you can only use one at a time.");

initTip("DSPECIAL_AIR: Elephant Stomp");
initWords("Transform into an Elephant in the air and slam downwards with armor. Landing huge damage and huge knockback on your unfortunate foe.");
initWords("Also, by holding down the special button or input down, Shantae will fall through platforms while crashing down too.");
initImage_ext(sprite_get("dspecial_air"), 8, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dspecial_air"), 11, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("However, if you happen to make a mistake, you can airdodge out of the attack. Only in the air, of course.");
initWords("Though, becareful with the end-lag.");

initTip("USPECIAL: Harpy Flight");
initWords("Transform into a harpy and flies straight up that deals great damage and knockback.");
initImage_ext(sprite_get("uspecial"), 7, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("uspecial"), 9, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("It's a good move to out of most situations and finishers, but becareful with the vertical recovery.");
initImage_ext(sprite_get("pratfall"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UAIR: Mid-Air Flip Kick");
initWords("If you hold down the attack button while doing this attack, Shantae will float up a bit higher.");
initImage_ext(sprite_get("uair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Also, the final swing hitbox can spike aerial opponents.");

/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Patches																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Keep a record of your character's update history, and at the end, also give
credits to the developer(s) of the character or any assets used.

Use the initPatch() function to start a new Patch:

	initPatch(version_number, date)

If the "date" field is set to an empty string, then the Patch will act more like
a Tip - mainly useful for making an "About [character]" page.

Use the same functions as in the Tips app to populate the Patch with text and
images.

Here are two more content functions, which are designed for use in Patches but
also work in Tips:

	initHeader(text)
	initSection(text)

These are basically shortcuts for two different types of formatted text.
initHeader() is a text heading that is colored either blue or green, depending
on whether it's a Tip or a Patch. initSection() is an indented block of text.

These are handy for dividing a Tip/Patch into sections, such as different moves
in a Patch.

*/

#define CORE_patches

initPatch("1.14", "12 April, 2024");
initHeader("General:");
initSection("* Updated the localisation files.");
initHeader("FSPECIAL:");
initSection("+ If used in the air and not hit anyone, Shantae will now go into pratfall.
* Hitboxes no longer break projectiles.
* Re-adjusted the ledge snap stuff.");

initPatch("1.13", "03 March, 2024");
initHeader("General:");
initSection("* Updated the localisation files.");
initHeader("DSPECIAL:");
initSection("(related to the Stormpuff)
* The Extended Parry Stun is only active on the Stormpuff's second and third electric strikes.
* In team matches, the Stormpuff can no longer be destroyed by teammates.");
initHeader("~BONUS~:");
initSection("+ Added Dream Nail Dialogue for The Knight (Reiga).");

initPatch("1.12", "03 February, 2024");
initHeader("General:");
initSection("* Updated the localization files

FTILT:
* Updated the Hurtbox sprites

FSTRONG:
* Updated the Hurtbox sprites
(all hitboxes)
- BKB reduced from 7.5 -> 7
+ KBS increased from 1 -> 1.10

FAIR:
* Updated the Hurtbox sprites");
initHeader("Specials:");
initSection("USPECIAL:
* Adjusted the moveability");
initHeader("~BONUS~:");
initSection("* Updated the Dialogue Buddy lines with Masky, Spark & Bowsette");

initPatch("1.11", "08 August, 2023");
initHeader("General:");
initSection("Updated the localization files");
initHeader("Specials:");
initSection("FSPECIAL:
* Changed how Invincibility works on Start-Up. Only invincible to projectiles now

USPECIAL:
* Invincibility should now be working as intended for Start-Up. Invincible to all attacks

DSPECIAL_AIR:
* Invincibility should now be working as intended for Start-Up. Invincible to all attacks");

initPatch("1.10", "29 April, 2023");
initHeader("GENERAL:");
initSection("Fixed a bug for the chara-selec portrait that didn’t reset the colour mapping");
initHeader("NSPECIAL:");
initSection("(triple fireball related)
The triple fireballs are briefly transcendent on cast before gradually losing it");
initHeader("FSPECIAL:");
initSection("Can now ledge snap instead of being oddly stuck on stage corners");
initHeader("DSPECIAL_AIR:");
initSection("- Endlag reduced from 44 -> 32
+ If the Elephant has hit any opponent and has successfully landed, 
Shantae can cancel out of the move sooner
If parried, Elephant cannot fall through platforms.");

initPatch("1.09", "25 April, 2023");
initHeader("GENERAL:");
initSection("Updated the localization files");
initHeader("USTRONG:");
initSection("(for hitboxes 3 & 4)
+ Knockback Scaling increased from 1.0 -> 1.10");
initHeader("FSTRONG:");
initSection("(for all hitboxes)
+ Base Knockback increased from 7 -> 7.5");

initPatch("1.08", "22 April, 2023");
initHeader("GENERAL:");
initSection("Updated the localization files");
initHeader("DSTRONG:");
initSection("+ Start-Up increased from 6 -> 8
(final hitbox related)
* Angle Flipper changed from 3 to 6
- KBS decreased from 1.05 -> 0.90");
initHeader("NSPECIAL:");
initSection("Readjusted the triple fireball positions and hitbox sizes once more as 
there were rare cases where the fireballs would destroy themselves when parried.");

initPatch("1.07", "08 April, 2023");
initHeader("GENERAL:");
initSection("Added Shantae’s final stock death sfx in the mute button
Updated the localization files");
initHeader("USPECIAL:");
initSection("Certain colour alts now change the Harpy colours more");
initHeader("MISC:");
initSection("Slight update for the Dialogue Buddy that adds a few new one-liners, a funky Crib member and Carol the Wildcat (Aperson)");

initPatch("1.06", "21 December, 2022");
initHeader("MISC:");
initSection("Fixed a bug where Shantae gained magic on activating a Parry instead of gaining magic on a successful Parry");

initPatch("1.05", "03 December, 2022");
initHeader("General:");
initSection("Added a CSS Toggle button on the char-select to disable the smash sfxs instead of doing it pre-matches");
initHeader("MISC:");
initSection("Added another Rune that allows NAIR to be cancellable on hit");

initPatch("1.04", "22 November, 2022");
initHeader("General:");
initSection("Slight adjustments have been made for FTILT’s, DTILT’s & FAIR’s hurtbox sprites
Updated the localization files");
initHeader("DATTACK:");
initSection("Window active of dash reduced from 8 -> 6
Momentum hspeed has been increased from 6 -> 6.75");
initHeader("DSPECIAL_AIR:");
initSection("Elephant can fall through platforms again. This time by holding down special instead of holding input down.

this was an accident as I misread things from my notes in the last patch ;-;");
initHeader("MISC:");
initSection("Rune G has been removed and two have been added in its place. Runes A & B.");

initPatch("1.03", "21 November, 2022");
initHeader("General:");
initSection("Updated the localization files");
initHeader("NSPECIAL - Triple Fireball related:");
initSection("When the Triple Fireballs are active:
The Total dmg from the three is 6 instead of 12
The bkb and kbs are also temporarily reduced as well 
Bkb 6 -> 4
Kbs 0.40 -> 0.35");
initHeader("DSPECIAL_AIR:");
initSection("Elephant can no longer fall through platforms. 
This has been repurposed into a rune.");

initPatch("1.02", "20 November, 2022");
initHeader("General:");
initSection("Added an option to turn off Smash related SFXs at the start of a match.");
initHeader("JAB:");
initSection("Start-up reduced from 5 -> 4 ");
initHeader("FTILT:");
initSection("Resized/Shrunken the hitboxes");
initHeader("NAIR:");
initSection("Hitbox 1’s Angle changed from 80 -> 361
Hitbox 2’s Angle changed from 361 -> 80");
initHeader("FAIR:");
initSection("Resized/Shrunken the hitboxes");
initHeader("DAIR - sour hitbox related:");
initSection("Removed the second/copy and gave its position to the original
More touch-ups have been made to the sfxs");
initHeader("DSPECIAL:");
initSection("No longer fills up Magic Meter on hit");

initPatch("1.01", "20 November, 2022");
initImage_ext(sprite_get("taunt2"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initHeader("General:");
initSection("Made some SFX changes for FTILT, DTILT, USTRONG, FAIR, BAIR & DAIR");
initHeader("JAB:");
initSection("Minor update for the sprites");
initHeader("DTILT:");
initSection("Start-Up increased from 7 -> 9
Hitbox 1’s Angle has been changed from 70 -> 80
Hitbox 2’s Angle has been changed from 80 -> 70
Updated DTILT’s hurtbox sprites");
initHeader("DATTACK:");
initSection("Shantae no longer bounces back on hit");
initHeader("DAIR:");
initSection("Start-Up increased from 10 -> 13");
initHeader("NSPECIAL:");
initSection("Fireballs no longer fill up Magic Meter on hit
Three Fireballs now cost 25 instead of 20");
initHeader("FSPECIAL:");
initSection("You can now only climb the wall once in Monkey form");
initHeader("DSPECIAL:");
initSection("Enemy Players can now hit/destroy the Stormpuff");

initPatch("1.0", "19 November, 2022");
initHeader("Ret-2-Go!");
initSection("HOLY CRAP(tm)! Here comes a Half-Genie Hero!");
initImage_ext(sprite_get("taunt"), 3, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initPatch("About Shantae", "");
initWords("Wayforward's Cute Mascot and the undisputed queen of indie characters.");
initHeader("Made by");
initSection("TheGreatGBA - https://twitter.com/TheGreatGBA");
initHeader("Additional SFX from");
initSection("Shantae Half-Genie Hero");

// Recommended template for non-Sandbert characters (delete the other patches):

/*

// other patches go here...

initPatch("1.0", "42 Shmebruary, 2021"); // (replace the date lol)
initHeader("General");
initSection("The character was released.");

initPatch("About CHARACTER NAME", "");
initHeader("Character by");
initSection("your name here");
initHeader("SFX from");
initSection("any places you got sfx (or other assets)");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link");

*/



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Cheats																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Create options for players to change how the character plays, either as silly
fun bonuses or useful training utilities (e.g. filling a meter instantly).

Use the initCheat() function to create a Cheat:

	CHEAT_[NAME_HERE] = initCheat(name, [options], [option_names], description)

Glossary:
	
	"CHEAT_[NAME_HERE]" is a variable that stores the ID of the Cheat. In the
		example below, CHEAT_FLY is equal to 0. This is necessary for
		referencing your cheat later in your character's code.
	
	"[options]" is an array of the possible values that the Cheat can have. A
		simple example is [0, 1] for on and off, but it could also be something
		like [0, 1, 5, 9] or ["Cherry", "Strawberry", ""].
	
	"[option_names]" is an array of the displayed names for the options given in
		"[options]". It should be the same length as "[options]", and each entry
		should be a string.
	
To access a Cheat's current value inside your character's code, grab the entry
in the "phone_cheats" array at the index of the "CHEAT_" variable. For example:

	// update.gml
	
	if phone_cheats[CHEAT_FLY] == 1{
		vsp = -2;
	}

The "phone_cheats" array entry holds whatever value you defined in "[options]",
for the Cheat's current setting. (e.g. "phone_cheats" could contain a string,
not just a number)

You can also run code only at the moment that the Cheat was clicked on, by
using the "phone_cheats_updated" array (each entry is just true or false):
	
	// update.gml
	
	if phone_cheats_updated[CHEAT_FLY]{
		phone_cheats_updated[CHEAT_FLY] = 0; // you have to reset it yourself
		if phone_cheats[CHEAT_FLY]{
			print("Flight started");
		}
		else{
			print("Flight ended");
		}
	}

Pro tip: having a Cheat with only a single option is useful if you just need a
"click button to do X" thing for your character, e.g. "click to reset meter to
zero".

*/

#define CORE_cheats

CHEAT_METER		= initCheat("Auto Magic Regen", [0, 1], ["Off", "On"], "Magic will now regen.");

CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced (hold shield to not fly)");

CHEAT_DJUMPS	= initCheat("More_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Shantae's maximum number of double jumps.");
CHEAT_WIDE		= initCheat("wide?", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "why");
CHEAT_RECOIL	= initCheat("stop hitting yourself", [0, 1], ["Off", "On"], "Owie!");


/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Frame Data																║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Customise the Frame Data guide.

*/

#define CORE_frame_data

// Reorder this list to change the order that moves appear in the guide!
phone.move_ordering = [
	AT_JAB,
	AT_FTILT,
	AT_DTILT,
	AT_UTILT,
	AT_DATTACK,
	AT_FSTRONG,
	AT_USTRONG,
	AT_DSTRONG,
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_DSTRONG_2,
	AT_NAIR,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
	AT_FSPECIAL,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL_2,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL_2,
	AT_NTHROW,
	AT_FTHROW,
	AT_UTHROW,
	AT_DTHROW,
	AT_EXTRA_1,
	AT_EXTRA_2,
	AT_EXTRA_3,
	AT_TAUNT,
	AT_TAUNT_2,
	AT_PHONE,
	2,
	3,
	39,
	42,
	43,
	44,
	45,
	46,
	47,
	48,
	49,
	50
];

// Whether or not to include the "Stats" page.
phone.include_stats = true;

// Notes for the "Stats" page - put "-" for no notes.
phone.stats_notes = "-";

// Whether or not to include a custom data page, which can hold any values you
// want - useful for data that's specific to your character's mechanics.
phone.include_custom = false;

// The name of the custom page.
phone.custom_name = "Example Custom Data"

// The content of the custom page.
initCFDHeader("Article lifetime");
initCFDBody("100 frames");
initCFDHeader("Second value");
initCFDBody("459");
initCFDBody("epic");



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Muno Character Compatibility												║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Add bonus features and interactions with Muno's characters, like a codec for
Trummel & Alto.

If you don't feel like adding one of them, you can just comment out the lines
of code.

*/

#define CORE_muno_compatibility

/*
Trummel codec:

initCodec(gimmick)
initCodecPage(speaker, expression, gimmick, text)

The variable trummel_id is initially set to noone (-4). When Trummel opens this
char's codec, trummel_id is set to Trummel's object ID.

Codec speaker handles:
SPK_TRUM: Trum
SPK_ALTO: Alto
SPK_OTTO: Otto
SPK_CODA: Coda
SPK_ECHO: Tempo
SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
SPK_SEGA: Sonic (see above)

Codec speaker expressions:
https://pastebin.com/qTLnsNFY

Codec gimmicks:
there aren't any

Page gimmicks:
GIM_CHOMP			make the enemy ftilt
GIM_CLONE 			display 2 speakers
GIM_LAUGH_TRACK		play the funny haha sound
GIM_SKIP 			advance the page immediately when the text finishes
GIM_DIE				die
GIM_SHUT_UP			no chatter sfx
GIM_HOWL			make the enemy dspecial
GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
GIM_TEXTBOX			text color				is set to the value of the	spr_custom_trummel_textbox	variable in the player object
GIM_COLOR			textbox sprite index	is set to the value of the	spr_custom_trummel_color	variable in the player object

To use multiple gimmicks on a single page, MULTIPLY them together.
*/

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
SPK_GENIE = initSpeaker(1, "Shantae", sprite_get("_pho_shantae_speaker"));
//SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_ALTO, 1, 0, "Whoa, is that a genie?!");
initCodecPage(SPK_TRUM, 0, 0, "wishes");
initCodecPage(SPK_GENIE, 0, 0, "Correction! A HALF GENIE!");

initCodecPage(SPK_TRUM, 6, 0, "make wish");
initCodecPage(SPK_ALTO, 0, 0, "Pardon my friend here, but he really wants a wish.");
initCodecPage(SPK_TRUM, 6, 0, "yes");

initCodecPage(SPK_GENIE, 0, 0, "I'm... I'm not that kind of genie.");
initCodecPage(SPK_TRUM, 0, 0, "...");
initCodecPage(SPK_TRUM, 2, 0, "disappoint");

initCodecPage(SPK_GENIE, 1, 0, "HEY!");
initCodecPage(SPK_ALTO, 0, 0, "Great... Nice one, buddy.");
initCodecPage(SPK_TRUM, 0, 0, "lol");

initCodecPage(SPK_GENIE, 1, 0, "And I thought Squid Baron was annoying.");

//spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve couldn't dance through the danger...";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 5;

/*
Spear IDs:

1: Traveler's Spear
2: Knight's Halberd
3: Wooden Mop
4: Spiked Boko Spear
5: Flamespear
6: Frostspear
7: Thunderspear
8: Guardian Spear
*/

// Palutena's Guidance (for RuberCuber's Pit character)
// Works kind of similarly to MunoPhone.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	6,	6,	"Is that supposed to be Shantae?");
initCodecPagePit(SPK_PIT,	0,	8,	"The girl that got everyone riled up when she was a Spirit?");
initCodecPagePit(SPK_PALU,	2,	3,	"That's her, Pit. Shantae, the belly-dancing Half-Genie Hero of Scuttle Town!");
initCodecPagePit(SPK_PIT,	1,	6,	"Half... Genie? So, if I beat her and wish for a large pizza, I'll just get four slices?");
initCodecPagePit(SPK_VIR,	0,	5,	"No, Pit... A Half-Genie means one of her parents was a genie.");
initCodecPagePit(SPK_PIT,	10,	0,	"Darn... I was really hoping for lunch...");
initCodecPagePit(SPK_PALU,	2,	3,	"She may look beautiful, but don't get distracted. She has a lot of abilities at her disposal.");
initCodecPagePit(SPK_PALU,	2,	3,	"Fireballs, storm puffs and even whipping her hair back and forth.");
initCodecPagePit(SPK_VIR,	0,	1,	"But her most famous ability is her belly dancing.");
initCodecPagePit(SPK_VIR,	3,	1,	"When she dances, she can transform into a monkey, elephant, or even a harpy.");
initCodecPagePit(SPK_PIT,	0,	7,	"Huh... I never knew belly dancing could be so powerful.");
initCodecPagePit(SPK_VIR,	5,	1,	"The only power I've seen it do is hypnotize...");
initCodecPagePit(SPK_PALU,	2,	5,	"Maybe I should give it a try someday. Hee hee...");

/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Behind-The-Scenes															║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

This is the end of the stuff you need to worry about!

Below this point are just all of the functions used to make the above sections
work.

It's not recommended to edit anything below here unless you know what you're
doing and have a good reason to.

*/

#define initTip(tip_name)

array_push(phone.tips, {
	name: tip_name,
	objs: [],
	page_starts: [0]
});

phone.currently_edited_obj = phone.tips[array_length(phone.tips) - 1];

initWords_ext("- " + tip_name + " -", fa_center, phone.apps[phone.APP_TIPS].color, 0, 0);

#define initPatch(patch_version, patch_date)

array_push(phone.patches, {
	name: (patch_date == "" ? "" : "v") + patch_version,
	objs: [],
	page_starts: [0]
});

phone.currently_edited_obj = phone.patches[array_length(phone.patches) - 1];

if patch_date == ""{
	initWords_ext("- " + patch_version + " -", fa_center, phone.apps[phone.APP_PATCHES].color, 0, 0);
}
else{
	initWords_ext("- v" + patch_version + ": " + patch_date + " -", fa_center, phone.apps[phone.APP_PATCHES].color, 0, 0);
}

#define initHeader(obj_text)

initWords_ext(obj_text, fa_left, "h", 0, 0);

#define initSection(obj_text)

initWords_ext(obj_text, fa_left, c_white, 1, 0);

#define initWords(obj_text)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	side_by_side: false
});

#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_ignore_height)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	side_by_side: obj_ignore_height
});

#define initImage(obj_sprite, obj_frame)

array_push(phone.currently_edited_obj.objs, {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: fa_center,
	xscale: 1,
	yscale: 1,
	uses_shader: 1,
	color: c_white,
	alpha: 1,
	margin_l: noone,
	margin_r: noone,
	margin_u: noone,
	margin_d: noone,
	needs_auto_margins: true,
	side_by_side: false
});

#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_yscale, obj_uses_shader, obj_color, obj_alpha, obj_ignore_height, obj_l, obj_r, obj_u, obj_d)

array_push(phone.currently_edited_obj.objs, {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	yscale: obj_yscale,
	uses_shader: obj_uses_shader,
	color: obj_color,
	alpha: obj_alpha,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: (obj_l == noone && obj_r == noone && obj_u == noone && obj_d == noone),
	side_by_side: obj_ignore_height
});

#define initCheat(ch_name, ch_opt, ch_opt_name, ch_desc)

array_push(phone.cheats, {
	name: ch_name,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
});

array_push(phone_cheats, ch_opt[0]);
array_push(phone_cheats_updated, 0);
return array_length(phone.cheats) - 1;

#define initCFDHeader(text)

array_push(phone.custom_fd_content, {
	type: 0, // header
	content: text
});

#define initCFDBody(text)

array_push(phone.custom_fd_content, {
	type: 1, // body
	content: text
});

#define initCodec(cd_gimmick)

if "trummel_codecs" not in self trummel_codecs = [];

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

if "trummel_speakers" not in self trummel_speakers = [];

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;

#define initCodecPit()

with oPlayer if "ruber_pit" in self {
	load_codecs = true;
}

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