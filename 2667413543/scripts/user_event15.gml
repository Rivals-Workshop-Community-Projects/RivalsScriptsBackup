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
muno_char_name = "Cofagrigus";

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

initTip("Ghostly Disjoint");
initWords("Only direct attacks to the coffin part of Cofagrigus's body will connect. Any attacks that touch its hands will pass right through.");
initWords("This gives Cofagrigus powerful disjoint on its attacks, making it difficult to get in. As a tradeoff, if the opponent does reach Cofagrigus its slow movements and floaty physics make it combo food.");

initTip("Ability: Mummy");
initWords("Cofagrigus's  main gimmick is it's ability, Mummy. Anyone making direct contact with Cofagrigus (aka a non-projectile move) will be afflicted by it's mummy curse.");
initWords("When under the effects of the curse, any move that doesn't land will cause the user to take a small amount of damage, similarly to Ranno's poison. Unlike poison, the only way to get rid of the curse is to wait it out.");
initWords("The curse is also lifted if either the curse giver or reciever loses a stock.");

initTip("NSpecial: Will-O-Wisp");
initWords("Cofagrigus charges Will-O-Wisp, a weak projectile attack that inflicts its Mummy Curse on anyone hit. It can be charged up to 3 levels, and pressing the parry button will store the charge.");
initWords("Charge Level 1: A single Will-O-Wisp orb is fired at a short range. If the charge is stored at this level, charging can be resumed by pressing special.");
initWords("Charge Level 2: Two Will-O-Wisp orbs are fired at a medium range. If the charge is stored at this level, charging can be resumed by pressing special.");
initWords("Charge Level 3: Three Will-O-Wisp orbs are fired at a long range. If the charge is stored at this level, pressing special will automatically fire the attack.");
initImage_ext(sprite_get("tip_nspecial"), -4, fa_right, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("tip_nspecial"), -4, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Snatch");
initWords("Cofagrigus will attempt to grab the opponent, stalling its momentum. This can be used to recover horizontally and slow its descent. The grab will only connect if the opponent is afflicted with Mummy.");
initWords("If an opponent is grabbed, they will be flipped into the air before getting slammed downward. If Cofagrigus is not above the stage, it will drag both of them into the blast zone. Cofagrigus will lose its stock first from this. To prevent suicide killing, press Parry to drop the opponent.");
initWords("When landing on stage the opponent will be dragged forward, taking damage as Cofagrigus moves. If Cofagrigus presses attack the opponent will be tossed foward. If time runs out, Cofagrigus will instead drop the opponent, barely sending them anywhere.");
initWords("The amount of time an opponent can be dragged scales with their percentage, meaning Cofagrigus can carry them along the entire length of the stage at high percents.");
initImage_ext(sprite_get("tip_fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Ominous Wind");
initWords("Cofagrigus summons Ominous Wind to propel itself upward. This move lacks any damage dealing hitboxes, making Cofagrigus's recovery easily interrupted.");
initWords("Despite dealing no direct damage, the wind left behind will curse any opponents that make contact with it. This wind lingers for a good while, making this move useful as a stage hazard.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Hex");
initWords("Hex is a Rest type move, dealing powerful damage with the drawback of a small hitbox and long endlag.");
initWords("While Hex leaves Cofagrigus significantly less vulnerable, the move can also only reach maximum power if landed on a cursed opponent. Landing the move on an opponent who is not cursed deals significantly lower knockback, leaving Cofagrigus vulnerable for a counterattack.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DStrong: Phantom Force");
initWords("While charging Phantom Force, Cofagrigus retreats into ground. This makes the move incredibly safe to use, as Cofagrigus cannot be hit during this time.");
initImage_ext(sprite_get("dstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The center hitbox inflicts the Mummy Curse, as Cofagrigus uses its body to attack.");

initTip("UStrong: Zen Headbutt");
initWords("Cofagrigus quickly pushes itself into the air, using its body to quickly headbutt upwards.");
initWords("This move will leave Cofagrigus in the air after use, making it useful for avoiding grounded attacks.");
initWords("The downside of this move is that it also does not hit grounded opponents, meaning that to attack with this move the opponent must already be above you.");
initImage_ext(sprite_get("ustrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("This attack inflicts the Mummy Curse, as Cofagrigus uses its body to attack.");

initTip("DAir: Body Press");
initWords("Cofagrigus flips before slamming its body downward for a powerful spike.");
initWords("Due to how far downward Cofagrigus slams, this move can be used to attack below platforms if timed correctly.");
initWords("The downside of this move is that it also does not hit grounded opponents, meaning that to attack with this move the opponent must already be above you.");
initImage_ext(sprite_get("dair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("This attack inflicts the Mummy Curse, as Cofagrigus uses its body to attack.");

initTip("High Profile");
initWords("For Cofagrigus's idle hurtbox, it floats slightly above the ground.");
initWords("Hoever Parrying will lower the hurtbox during the active frames, so parrying while a hitbox flies below you will still parry it.");
initImage_ext(sprite_get("parry"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Pokedex Entries");
initWords("It has been said that they swallow those who get too close and turn them into mummies. They like to eat gold nuggets.");
initWords("They pretend to be elaborate coffins to teach lessons to grave robbers. Their bodies are covered in pure gold");
initWords("Grave robbers who mistake them for real coffins and get too close end up trapped inside their bodies.");
initWords("This Pokémon has a body of sparkling gold. People say it no longer remembers that it was once human.");
initWords("	There are many depictions of Cofagrigus decorating ancient tombs. They're symbols of the wealth that kings of bygone eras had.");


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

initPatch("1.0", "November 28th, 2021");
initHeader("General");
initSection("Cofagaming");

initPatch("1.1", "November 28th, 2021");
initHeader("Aesthetic");
initSection("-Will-O-Wisp orbs now have a hit effect when destroyed
-Added unique sound effects for DStrong
-Added unique sound effect for first swipe of FStrong
-Added unique sound effect for Mummy damage
-Updated FSpecial Munophone entry
-Added Topaz Pikmin to credits");
initHeader("Balance");
initSection("-Reduced damage taken from Mummy from 2% to 1%

-FSpecial now only grabs cursed opponents

-Increased DAir ending lag from 9 to 12 frames
-Increased DAir landing lag from 12 to 16 frames

-Increased NAir startup from 10 to 12 frames
-Increased NAir ending lag from 8 to 10 frames
-Increased NAir landing lag from 8 to 12 frames
-Increased NAir BKB from 7 to 8
-Decreased NAir KB scaling from 0.4 to 0.3
-Reduced NAir multihit hitbox size by 10

-Decreased FStrong KB scaling from 0.8 sweetspot, 0.7 sourspot to 0.7 sweetspot, 0.6 sourspot

-Decreased DAttack startup from 4 to 6 frames
-Increased DAttack BKB from 6 to 7
-Decreased DAttack KB scaling from 0.4 to 0.3

-Reduced size on all BAir hitboxes by 5");
initHeader("Bug Fixes");
initSection("-Fixed Miiverse compatability sprite being labeled the wrong strip number
-Mummy particles now continue to appear when the timer is extended from attacking");

initPatch("1.2", "November 28th, 2021");
initHeader("Aesthetic");
initSection("-Updated Munophone to V5
-Added tip for FSpecial about pressing Parry to let go while falling");
initHeader("Balance");
initSection("-Oops forgot to actually implement the FSpecial curse thing from last patch :crydinal:
-Nerfed damage on DAttack from 16 to 7 (my bad I forgot to change the values from Sandbert)
-Buffed FStrong scaling back to 0.8 sweetspot, 0.7 sourspot
-Buffed FStrong sweetspot BKB from 7 to 8
-Buffed FAir BKB from 4 to 6
-Reduced NSpecial storing time from 24 to 15 frames
-Increased size of throw hitbox for FSpecial so it connects more consistently");
initSection("-Mummy particles now appear when the timer is extended by attacking");

initPatch("About Cofagrigus", "");
initHeader("General Info");
initSection("Created in just a month by Flophawk and DynamicLemons of the Fighting Polygon Team for the November 2021 Pokemon Jam.");
initSection("Cofagrigus is a floaty heavyweight zoner with large disjoints but low kill power.");
initHeader("Character by Fighting Polygon Team");
initSection("Flophawk: Project Lead, Lead Artist, Coder");
initSection("DynamicLemons: Lead Coder");
initSection("Mr. Start: Assistant Artist");
initSection("Topaz Pikmin: Balance");

initHeader("SFX from");
initSection("Pokemon White, Smash Ultimate, Luigi's Mansion 3");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Pit");

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

CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced

(hold shield to not fly)");



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
SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
initCodec(0); // this should just always be 0, because there are no codec gimmicks

initCodecPage(SPK_TRUM, 6, GIM_LAUGH_TRACK, "cofa greez nuts");
initCodecPage(SPK_ALTO, 4, 0, "I'm going to kill you,");
initCodecPage(SPK_TRUM, 7, GIM_SHUT_UP * GIM_SKIP, "                                                                                                          ");
initCodecPage(SPK_ALTO, 4, 0, "And then kill you again.");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve was slapped into the void";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 4;

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

initCodecPit();
initCodecPagePit(SPK_PIT,	4,	9,	"Woah, it's some kind of coffin monster!");
initCodecPagePit(SPK_PALU,	0,	1,	"That's Cofagrigus, the Coffin Pokemon.");
initCodecPagePit(SPK_PALU,	0,	2,  "It has four intagible hands it uses to attack from a distance.");
initCodecPagePit(SPK_PIT,	9,	3,	"Did you say INTANGIBLE? So it can just slap me around and I can't even fight back???");
initCodecPagePit(SPK_PALU,	7,	2,	"That's not all. Touching its body will inflict you with its Mummy Curse. Whenever you whiff an attack, you'll get hurt.");
initCodecPagePit(SPK_PIT,	7,	7,	"Every time I touch it you say?");
initCodecPagePit(SPK_PIT,	3,	0,	"I know! I'll just hang back and pelt it with arrows!");
initCodecPagePit(SPK_PALU,	1,	3,	"Even then you're still in danger. Leave Cofagrigus to its own devices for too long and it can charge its powerful Will-O-Wisp.");
initCodecPagePit(SPK_PIT,	10,	10,	"Aw man! This guy is scary!");
initCodecPagePit(SPK_VIR,	5,	1,	"I dunno, I think it's kinda cute!");
initCodecPagePit(SPK_PALU,	1,	0,	"...No, it's just creepy.");
initCodecPagePit(SPK_PALU,	4,	1,	"Pit, the key is to get in close and combo it. It's moves are slow, so it can't counterattack easily.");
initCodecPagePit(SPK_VIR,	2,	7,	"Hey Pit, what's that white hand on your shoulder?");
initCodecPagePit(SPK_PIT,	8,	2,	"HEY! Don't try to scare me like that! There's no hand on me!");
initCodecPagePit(SPK_VIR,	0,	5,	"Oh, looks like you're right...");
initCodecPagePit(SPK_VIR,	1,	1,	"There's four, actually.");
initCodecPagePit(SPK_PIT,	4,	3,	"AAH!");





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