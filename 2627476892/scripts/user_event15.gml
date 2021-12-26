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
num_alts = 6;

// Whether or not to display a name for each alt.
use_alt_names = true;

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
muno_char_name = "Lancer";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = false;

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

initTip("NSpecial: Spade Whip");
initWords("Lancer's Nspecial is a command grab. This attack may look like a disjoint, but it actually isn't.");
initWords("If an opponent is hit by the initial grab, they'll be pulled in close to Lancer, who then has a small window to perform a throw.");
initWords("Lancer can throw upwards, downwards, forwards, and backwards. If the grab whiffs, the enemy isn't close enough for Lancer to pull in, or Lancer successfully performs the grab, this attack will go on cooldown for a second.");
initImage_ext(sprite_get("_pho_nspecial"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Cool Bike Trick");
initWords("Lancer's Fspecial is a quick move that changes attributes depending on how much his Cool Meter is filled (it is down on his hud). The speed that it travels, it's damage, knockback, and even some other things increase as the Cool Meter increases.");
initWords("Using Fspecial will use up any Cool Meter Lancer has. Example: If Lancer has 2 Cool Meter, and uses Fspecial, the Fspecial will have the attributes of 2 Cools (Rad), and the meter will be reset back down to Lame. You can increase your Cool Meter with Dspecial.");
initWords("With 1 and 2 levels of Cool, Fspecial will be cancelled shortly after it connects with an enemy, leading to follow ups. At levels 0 and 3, Lancer will bounce off of enemies when he hits them.");
initWords("Fspecial can be good for recoveries, or can finish off combos. If Lancer misses, he'll enter an endlag state.");
initImage_ext(sprite_get("_pho_fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Cool Bike Trick Mk 2");
initWords("Lancer's Uspecial is a flashy recovery move, which has Lancer do a cool bike trick, which results into an explosion. It can be an easy kill move when you are close to the top blast zone.");
initWords("With no Cool Meter stored up, Uspecial doesn't fly very high, but when Lancer's Cool Meter is higher than 0, using Uspecial will use one charge in return for a higher vertial recovery.");
initImage_ext(sprite_get("_pho_uspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial and Gimmick: Engine Rev");
initWords("Dspecial's primary use is charging Lancer's cool meter, which is shown down on his player hud. Different charges affect Fspecial and Uspecial. You can press shield, jump, and attack to cancel Dspecial at any time.");
initWords("When Lancer's Cool Meter is full, Dspecial can use the Cool Meter in a different way. Lancer can become slippery with Dspecial this way.");
initImage_ext(sprite_get("_pho_dspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("_pho_epicmeter"), -4, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);

initTip("Gimmick: Cool Meter and Slippery");
initWords("Lancer's Cool Meter fuels his other specials (aside from Nspecial). He starts with 1 charge at the start of a match. Dspecial isn't the only way Lancer can raise his cool meter. Parrying an attack will raise it by one level, but getting parried as well as dying will empty the meter.");
initWords("Slippery is an effect Lancer can get when he uses Dspecial when his Cool Meter is full. Being slippery allows Lancer to slide during his strong charges, similarly to Sandbert's Fstrong. Slippery goes away after 10 seconds, getting parried, or dying.");
initImage_ext(sprite_get("_pho_slippery"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Chargable Strongs: FStrong, DStrong, and FStrong");
initWords("Lancer's strongs have additional properties when they are held long enough.");
initWords("Fstrong creates an additional explosion hitbox instead of the usual glass particles.");
initWords("Ustrong throws the Thrash Machine higher than it usually does.");
initWords("Dstrong creates two more spades on each side, giving it more range.");
initImage_ext(sprite_get("dstrong"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fstrong"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ustrong"), -4, fa_right, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("The Spoinkus Boinkus: Bair");
initWords("Is it just me, or does Lancer's back air animation look similar to Old Exetior's back air animation? i'm not mad, I'm just saying they look similar.");
initImage_ext(sprite_get("bair"), -4, fa_center, 3, 3, true, c_white, 1, false, noone, noone, noone, noone);



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

initPatch("1.18", "22 December, 2021");

initHeader("Buffs:");
initSection("+ Fair's base kb was increased, 8 -> 9
+ Dair's final hitbox does more kb, 7 -> 8
");

initHeader("Nerfs:");
initSection("- Fair's kb scaling was reduced, .6 -> .5
- Bair angle changed from 280 -> 270
- Uair damage lowered, 7 -> 6
- Ustrong now has extended parry stun
");

initHeader("Changes:");
initSection("= Fspecial overall has more hitpause
");


//
initPatch("1.17", "12 December, 2021");

initHeader("Buffs:");
initSection("+ Fair base kb increased, 7 -> 8
+ Nspecial's Down-throw can no longer be teched
+ Uspecial's first hit does a little more KB to combo better
+ Dspecial can now truly be parried out of
+ Added a new alt
");

initHeader("Changes:");
initSection("= All attacks should correctly set SDI and Drift back to 1
");


//
initPatch("1.16", "23 November, 2021");

initHeader("Buffs:");
initSection("+ Ftilt's hitbox size was increased
+ Ftilt's finishing kb scaling was increased, .5 -> .6
+ Utilt's hitbox size was increased slightly
+ Dtilt's hitbox size was increased slightly
+ Dtilt comes out 1 frame faster, Frame 7 -> 6
+ Nair's hitbox size was increased slightly
+ Nair comes out 1 frame faster, Frame 9 -> 8
+ Fair's hitbox size was increased
+ Dair's hitbox size was increased
+ Dair comes out 1 frame faster, Frame 10 -> 9
+ Uair's hitbox size was increased slightly
+ Bair deals 2 more damage, 6 -> 8
+ Bair comes out 2 frames faster, Frame 16 -> 14
+ Fstrong base kb increased, 9 -> 10
+ Fstrong kb scaling increased, 0.8 -> 0.9
+ Fstrong explosion base kb increased, 9 -> 11
+ Fstrong comes out 2 frames faster, Frame 18 -> 16
+ Increased Fstrong's hitbox size a little
+ Increased Dstrong's hitbox size
+ Nspecial comes out 3 frames faster, Frame 19 -> 16
+ Fspecial's hitbox size was increased
+ Fspecial kb was increased overall
+ Uspecial's hitbox size was increased slightly
for some reason munophone is not letting me scroll down from this section sooooo
Changes:
= Removed Bair's early sour spot
= The amount of time left to charge Dspecial by 1 is kept upon cancel 
(It now works similarly to Samus or Sheik Nspec instead of relying on specific window frames)");


//
initPatch("1.15", "2 November, 2021");

initHeader("Buffs:");
initSection("+ Fair has more range (he needs it)
+ Uair was made bigger (he needs it)
+ Uair does more damage and knockback
+ Bair spiking hitbox was made bigger
+ Fstrong hitbox made just a tiny bit bigger
+ Hitting 0 and 3 charge Fspecial has less endlag, 26 -> 18
+ Boosted Uspecial goes a little higher, 13 -> 14
");

initHeader("Nerfs:");
initSection("- Fair has more endlag, 8 -> 10, and 1 more landing lag, 6 -> 7
- Uair is an actual move now so startup increased, frame 6 -> frame 8
");

initHeader("Changes:");
initSection("= Jab, Ftilt, Utilt, Ustrong have more exaggerated attack poses (and in turn some range buff from this lol)
= Dattack rework, it's now a multihit (and it can go off ledge lol)
");


//
initPatch("1.14", "17 October, 2021");

initHeader("Buffs:");
initSection("+ Redid Lancer's portrait (it was not rushed this time :) )
");

initHeader("Nerfs:");
initSection("- Nspecial's farthest reaching grab hitbox was made a little smaller (more of a fix than a nerf)
");

initHeader("Changes:");
initSection("= Nspecial should more consistently pull in at long ranges now
= Added the 1.13 patch notes to Lancer's munophone cause I forgot last time lol");


//
initPatch("1.13", "16 October, 2021");

initHeader("Buffs:");
initSection("+ Ftilt's angle was changed, 60 -> 45
+ Fstrong has increased base kb, 8 -> 9
+ Fstrong's explosion has more kb scaling, .8 -> .9
+ Dstrong now has more range when fully charged
+ Base Uspecial flies a little further forward, 5 HSP -> 6 HSP
+ Uspecial deals less damage to Lancer, 6 -> 4");

initHeader("Nerfs:");
initSection("- Ftilt's kb scaling was reduced, .65 -> .5
");

initHeader("Changes:");
initSection("= Slippery now lasts for 10 seconds, and does not go away after 1 use of any strong
= Slippery lowers Lancer's base ground friction, .5 -> .2");


//
initPatch("1.12", "15 October, 2021");

initHeader("Buffs:");
initSection("+ When leaving the respawn platform, a reverse splat noise is made
+ Nspecial comes out 2 frames faster");

initHeader("Changes:");
initSection("= Fixed a bug where getting hit during dspecial would spawn a lot of hit fx
= Adjusted some SFX
= Added some extra VFX to slippery strongs
= When Lancer is Slippery, his outline turns from black to dark green");


//
initPatch("1.11", "14 October, 2021");
initWords_ext("The Dattack revert lol", fa_center, c_white, 0, false);

initHeader("Dattack");
initSection("= Late hit lifetime lowered, 8 -> 4
= Attacking window lasts shorter, 10 -> 6");

//
initPatch("1.1", "14 October, 2021");
initHeader("Buffs:");
initSection("+ Uair comes out 3 frames faster, frame 9 -> 6
+ Bair comes out 2 frames faster, frame 16 -> 14
+ Fstrong's explosion is made a little farther away from Lancer
+ Nspecial has more range (he needs it)
+ Fspecial overall has more Hsp, +2 for each level
+ Base Uspecial flies higher (he needs it)
+ Cool Uspecial creates a bigger and more powerful explosion
+ Dspecial charges 1 Cool Meter 8 frames faster
+ Dspecial can now also be cancelled with Jump and Attack");

initHeader("Nerfs:");
initSection("- Dattack has 4 more frames of endlag
- Dattack's strong hitbox has lower base kb, 9 -> 8.5
- Fstrong's and Ustrong's explosion hitbox lasts shorter, 16 -> 12
- Fstrong's and Ustrong's explosion now give parry stun when parried
- Ustrong has 3 more frames of endlag
- Nspecial comes out 4 frames slower
- Uspecial's explosion hitbox was made a little smaller
- Base Uspecial's explosion has lower base kb, 9.5 -> 8
");

initHeader("Changes:");
initSection("= Uspecial rework: Cool Charged Uspecial now gains height with the explosion and not the jump, Meter is used up with explosion.
= Dspecial rework: Using Dspecial while Cool Meter is full makes Lancer slippery. All strongs have low ground friction until they are used/Lancer dies.
= Increased hitpause for Dtilt, Utilt, Dattack, Fair, Nair, Uair, Fstrong, and Dstrong
= You can no longer fast fall out of Dtilt
= 'Gotta go Fast!' alt renamed to 'Show me your Moves!'
= Replaced alt 'Weird Clown Fairy' with alt 'Lancer Gaming'");

//
initPatch("1.0", "13 October, 2021");
initWords_ext("Lancer is released!", fa_center, c_white, 0, false);
initImage_ext(sprite_get("lancer_neutral"), -4, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);

initPatch("About Lancer", "");
initWords("Lancer was released on the 13th October, 2021. He was developed in around a month. He's one of the main characters in the first chapter of Deltarune.");
initWords("Lancer is a fast lightweight rushdown character. Use his overwhelming speed and mobility to get in opponent's faces, like a real bad guy. Lancer's bike runs on 'Cool Fuel', which can be charged with Dspecial.");
initHeader("Origins");
initSection("Deltarune by Toby Fox");
initHeader("Animation, coding, and balance edits by");
initSection("roboshyguy");
initHeader("SFX from");
initSection("Undertale and Deltarune");
initHeader("Compatible with");
initSection("Munophone Touch, Pit, Henry Stickmin, Mt. Dedede Stadium, Soulbound Conflict, Steve, Hikaru, Unregistered Hypercam 2");

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

CHEAT_FLY		= initCheat("No", [0, 1], ["Okay", "Okay"], "There are no cheats

cry");



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

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 3;

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
initCodecPagePit(SPK_PIT,	3,	0,	"Look, it's Sans!");
initCodecPagePit(SPK_VIR,	2,	3,	"...That's not Sans, Pit.");
initCodecPagePit(SPK_PIT,	5,	6,	"Hmm... Are you sure? This guy looks a lot like him.");
initCodecPagePit(SPK_PALU,	0,	1,	"This is Lancer. He is a Darkner who helped seal a Dark Fountain and fufill a prophecy.");
initCodecPagePit(SPK_PALU,	2,	5,	"Because of his help, the light and dark were balanced once again, and the world still exists today.");
initCodecPagePit(SPK_PIT,	1,	5,	"I don't remember Sans telling me that when I met him in Smash.");
initCodecPagePit(SPK_VIR,	4,	2,	"Sans isn't even in smash! Who are you talking about!?");
initCodecPagePit(SPK_PIT,	3,	0,	"Sure he is! Him and that Ness guy are the same person! I learned about it on youtube.");
initCodecPagePit(SPK_VIR,	2,	7,	"... What is 'youtube'..?");
initCodecPagePit(SPK_PALU,	5,	3,	"Pit, Lancer is quick on his bicycle. Keep your distance and don't let him overwhelm you.");
initCodecPagePit(SPK_PIT,	10,	10,	"Y'know, I think you're right Viridi. I don't think this guy is Sans.");
initCodecPagePit(SPK_VIR,	1,	1,	"Thank you for finally coming to your senses! Now enough chit chat! Beat Lancer up!");
initCodecPagePit(SPK_PIT,	8,	1,	"Ness is Sans, so Lancer must be Lucas!");



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