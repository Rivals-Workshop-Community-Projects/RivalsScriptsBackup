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
muno_char_name = "Gumbo";

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

// Set to true and this will DISABLE a lot of the phone's side features, mostly
// the coding shortcuts.
// See _docs.gml for a full list of what it disables.
// If you don't intend to use any of those bonus features in your character,
// you should set this to true since it saves a bit of performance.
// (it's false by default since Phone Sandbert uses some of those features)
phone.lightweight = true;

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

initTip("Main Gimmick: Scalding");
initWords("Using attacks that involve Po, (the shrimp), Gumbo can apply a status effect to enemies called Scalding. When enemies are scalding, they can be hit into Gumbo's cooking pot to be trapped.");
initWords("The attacks that apply scalding are listed below:
Fstrong
Dstrong
Ustrong
Fspecial
Uspecial
Dspecial");
initImage_ext(sprite_get("ustrong"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Nspecial: Cooking Pot");
initWords("Using Nspecial, Gumbo deploys his cooking pot. The pot is an article that can be hit around by both you and opponents.");
initWords("If an enemy is scalding and is in hitstun when near the pot, they will be trapped in it. After a little while, the pot will explode, and send the opponent upwards.");
initWords("The explosion the pot creates grows stronger the higher spice level it has. Gumbo can increase the spice level by hitting the pot with tilts and Fspecial without Po. The highest level the pot can have is 3.");
initWords("When the pot bursts, it creates a meal that can be typically found in Louisiana as a visual treat.");
initImage_ext(sprite_get("_pho_nspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Po Throw / Secondary Gimmick");
initWords("Gumbo's Fspecial throws Po as a projectile. This attack serves as a good spacing tool, but because Gumbo doesn't have Po anymore, his moveset changes until Po's cooldown is over.");
initWords("All of Gumbo's specials and strongs are changed in a way when he doesn't have Po, and has no way of applying Scalding without him.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Interacting with the Pot");
initWords("If Po is thrown into the pot, he'll start a timer until the pot can be exploded. Gumbo can press Nspecial again when the timer is done to detonate the pot. When the pot is in this mode, it can't be hit by opponents while it is charging and doesn't have a hitbox when pushed around to easily transport closer to enemies.");
initWords("Fspecial without Po can easily increase the pot's spice level in this state. If all 3 projectiles hit the pot, they will increase the spice level by 3.");
initImage_ext(sprite_get("_pho_shrimpstir"), -6, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Bubble Beam / Gator Roll");
initWords("Uspecial with Po is a fairly good recovery move with no kill power. You can angle the direction it flies with the joy stick.");
initWords("Uspecial without Po doesn't travel as far but is good at killing off the top.");
initWords("If you press Shield in the starting frames of Uspecial with Po, it will be the version without Po.");
initImage_ext(sprite_get("uspecial"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Chef's Dropkick / Chef's Kiss");
initWords("Dspecial with Po is an attack that travels far but can be difficult to hit. During the startup of the attack, Gumbo can turn around or even airdodge out of the attack. If Dspecial hits the pot, Po will enter it.");
initWords("Dspecial without Po is similar but worse. You can't airdodge or turn around without Po.");
initImage_ext(sprite_get("dspecial"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Secret Alts");
initWords("These secret alts can be activated at the beginning of the round if you press Attack + Taunt. They're pretty much reserved for players who have gotten top 8 with P&G, or notable players who use them.");
initWords("The secret alts are on the following alts:
Fishing Trout Lads - Avocado, snappystunner
Something Something Flordia Alligator - Old TAG color scheme
Odor Blocker - BLW Champ, Jordan
Leakage - Best in the World, BendyJW
From Mud to Sludge - Kazuya Mishima, Jay/InnerOtaku");

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

initPatch("1.18", "7 May, 2022");

initHeader("Nerfs:");
initSection("- Jab 2 is no longer untechable
- Dtilt's hitboxes are a little smaller now
- Bair angle changed, 145 -> 135
- Dair's kbscaling was reduced, 0.7 -> 0.6
- Fspecial's projectile now has a 0.65 hitstun mult
- Fspecial now has 4 more frames of endlag
- Fspecial now puts Shrimpless Fspecial into cooldown for longer after it's use
- Shrimpless Fspecial's projectiles now have a 0.5 hitstun mult
- Shrimpless Fspecial now has 4 more frames of endlag
");

initHeader("Changes:");
initSection("= Added one more secret alt
");

//
initPatch("1.17", "25 April, 2022");

initHeader("Nerfs:");
initSection("- Air friction was lowered, 0.05 -> 0.04
");

initHeader("Changes:");
initSection("= Ftilt's spice vfx is bigger and easier to see
= Secret alts now properly show up on the victory screen
");

//
initPatch("1.16", "25 April, 2022");

initHeader("Nerfs:");
initSection("- Dtilt's overall active frames was lowered, 9 -> 6
- Dattack's sweet hitbox's lifetime was decreased, 6 -> 4, overall active frames, 12 -> 10
");

initHeader("Changes:");
initSection("= Fair's kb was adjusted, 7 * .6 -> 6 * .7
= Updated TAG alt's color-scheme
= Added 3 new secret alts, check Pumbo's new munophone section for more information
= Changed yet another pot bug regarding Gumbo's projectiles
");

//
initPatch("1.15", "21 April, 2022");

initHeader("Buffs:");
initSection("+ Bair comes out 2 frames faster, F16 -> F14
+ Dspecial comes out 4 frames faster, F28 -> F24
+ If Gumbo has no stocks left, and his pot has Po on the field, he can press special while dead to detonate it
+ All aerials except for Fair have 1 less landing lag
");

initHeader("Nerfs:");
initSection("- Fair's smear now has a hurtbox
- Bair's hitbox was made smaller
- Fstrong's bkb was reduced, 9 -> 8
- Shrimpless Dspecial now has a late weaker hitbox
- The pot (with Po) can now be hit by opponents if it's done charging for detonation
");

initHeader("Changes:");
initSection("= Fixed possible bug caused by the Scalding effect
= Dstrong's kb was adjusted, 8 * 1, 7 * 1.15
= Shrimpless Fstrong's kb was adjusted, 9 * 1 -> 8 * 1.15
= Shrimpless Fspecial now correctly resets it's lifetime when parried
= FINALLY FIXED THE ANTIGRAVITY POT BUG (HOPEFULLY!)
= Added custom dishes for the Walter White and Kaiman alts, detonate the pot to see!
= Fixed bug where when in a ditto match, pots would act weird if they were hit by each other
  I dub that tech clinking, rip clinking lol
");

//
initPatch("1.145", "9 April, 2022");

initHeader("Changes:");
initSection("= Quick Bug Fix, Oops!
");

//
initPatch("1.14", "9 April, 2022");

initHeader("Buffs:");
initSection("+ Dspecial now regains double jump on hit
+ Uspecial 2 can be used outside of shrimpless if shield is pressed during it's beginning frames
");

initHeader("Nerfs:");
initSection("- turned off april fools mode lol
- Uspecial 2's bkb was reduced, 9 -> 8
- Empowered Uspecial 2's bkb was reduced, 10 -> 9
");

initHeader("Changes:");
initSection("= Fstrong has an additional late hitbox to match visuals better
= Shrimpsplosion Rework:
  No longer works as a time bomb, but has a remote detonation. After 3 seconds of charging,
  press Nspecial to detonate.
");

//
initPatch("1.13", "1 April, 2022");

initHeader("April Fools!");

//
initPatch("1.12", "27 March, 2022");

initHeader("Buffs:");
initSection("+ Dstrong hitboxes made a little further away from Gumbo, matches visual a little bit better
+ Ustrong's kb scaling was increased, 1 -> 1.1, 0.9 -> 1
+ All shrimpless Dstrong hitboxes were made bigger
+ When deployed, the pot slows down quicker so that it can be hit faster
+ When scalding, Shrimpless Uspecial is powered up
");

initHeader("Nerfs:");
initSection("- Shrinkwrapped Ustrong's hitboxes a bit
- The pot can no longer be hit to make it move when an enemy is trapped inside of it
- Fspecial is now reflected on parry
- Shrimpless Fspecial's projectiles have a little less hsp
- If reflected Fspecial hits Gumbo, he will be scalded and able to be trapped in his own pot
- Getting parried removes an opponent's scalding
");

initHeader("Changes:");
initSection("= Jab 1 has more hitpause and a little less lag so that it can actually confirm into dtilt
= Adjusted Utilt's hitboxes again, current utilt wouldn't scoop up Ori and other smaller characters well
= Added 4 alts
= Lowered Uair hitpause a little
= Lightweighted Gumbo's munophone. No texting on the job!
(Anyone who lags off of P&G still let me know if they lag in matches)
= Fixed yet another pot bug, screw you Seija!!!
");

//
initPatch("1.11", "15 March, 2022");

initHeader("Changes:");
initSection("= Hopefully fixed the issue with pot interacting with projectiles for the last time (probably not, still ping me if it breaks lol)
= The Pot explosion bar is now brighter
");

//
initPatch("1.1", "15 March, 2022");

initHeader("Buffs:");
initSection("+ Dspecial lasts longer, 10 -> 15
");

initHeader("Nerfs:");
initSection("- Nair 2 was made smaller
- Utilt 2 & 3 were made smaller
");

initHeader("Changes:");
initSection("= Opponents are trapped in the pot for less time to not disrupt gameplay for as long, 65 frames to 35
= Dspecial's animation was modified to better communicate when the hitbox is gone
= The pot is no longer hit by 0 hitpause projectiles/ 0 priority hitboxes
= Added 2 alts
");

//
initPatch("1.0", "14 March, 2022");
initWords_ext("Po and Gumbo are released!", fa_center, c_white, 0, false);
initImage_ext(sprite_get("no_fucking_way"), -3, fa_center, 0.5, 0.5, false, c_white, 1, false, noone, noone, noone, noone);

initPatch("About Po & Gumbo", "");
initWords("Po & Gumbo were released on the 14th of March, 2022. They were developed as part of the BHM jam. They're inspiration draws from Creole/Cajun foods and animals typically seen in Louisiana. Po is the shrimp and Gumbo is the alligator.");
initWords("Gumbo is a heavyweight with some stage control actions. With the help of Po, he can trap enemies into his cooking pot and turn up the heat in the battle field.");
initHeader("Animation, coding, and balance edits by");
initSection("roboshyguy");
initHeader("Portrait by");
initSection("Gnome");
initHeader("Compatible with");
initSection("Munophone Touch");

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

/*
// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve got canceled on Twitter";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 3;
*/
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
// Works kind of similarly to Trummel codecs.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ
/*
initCodecPit();
initCodecPagePit(SPK_PIT,	3,	0,	"Hey, it's Sandbert!");
initCodecPagePit(SPK_PIT,	1,	6,	"...Isn't he a bit above my power level?");
initCodecPagePit(SPK_PALU,	0,	3,	"Actually, this version of Sandbert has received a lot of nerfs to his damage and frame data.");
initCodecPagePit(SPK_PALU,	0,	2,	"He can't even cancel his USpecial or end it early anymore!");
initCodecPagePit(SPK_VIR,	5,	1,	"But yes, Pit, he IS still above your power level.");
initCodecPagePit(SPK_PIT,	6,	0,	"Pssh, sounds like a pushover to me.");
initCodecPagePit(SPK_PALU,	0,	4,	"Don't be so sure - despite the nerfs, his power and attack speed are still a force to be reckoned with.");
initCodecPagePit(SPK_PALU,	0,	2,	"Also, he has the same MunoPhone as you do - so he'll be well-versed in his frame data and combos.");
initCodecPagePit(SPK_VIR,	6,	4,	"Maybe you should turn on some Cheats for this fight, Pit?");
initCodecPagePit(SPK_PALU,	0,	2,	"No, I'm sure he'll be fine.");
initCodecPagePit(SPK_PALU,	2,	5,	"...As long as he avoids the Kamehameha.");
initCodecPagePit(SPK_PIT,	4,	1,	"The WHAT?!?");
*/


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