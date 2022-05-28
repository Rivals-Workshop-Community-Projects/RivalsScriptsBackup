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
muno_char_name = "Duster";

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

initTip("NSpecial: Wall Staple");
initWords("Duster's Nspecial throws a Wall Staple. It's not that special as an attack. Wall staples is just a projectile. It can be used in neutral or for combo extensions.");
initWords("If a Wall staple connects with an active Smoke Bomb (see Dspecial), the bomb will pop up and it's lifetime will be reset.");
initImage_ext(sprite_get("nspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Blinding Speed");
initWords("Duster attacks with blinding speed! This attack is a fast horizontally traveling attack that Duster can use to start or extend combos. If Duster hits the first hitbox, he'll followup with a second.");
initWords("Fspecial can be useful for recovering, but be careful using it offstage. If you whiff the attack, Duster is put into pratfall.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Bird Cage");
initWords("Duster's Uspecial uses a cage full of birds. This attack has a semi-powerful upward sending hitbox that is useful for killing off the top.");
initWords("After the first initial boost of vertical speed, Duster will be able to float around while being carried by the birds, but is forced to let go after a little while. You can press Special, Shield, or Down to drop Duster early.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Smoke Bomb");
initWords("Using Dspecial primes a Smoke Bomb. While Duster holds this bomb, all of his attacks except for his specials are replaced with moves that throw the bomb forwards, upwards, or downwards. Pressing Dspecial again while Duster holds a bomb discards the bomb similarly to Z-drops in the Smash Bros series.");
initWords("When the smoke bomb comes in contact with the ground or an enemy, it activates and starts spewing smoke. Once it makes 5 hitboxes, it'll disappear.");
initWords("If Duster holds a smoke bomb for too long, it'll activate on Duster, trapping him for a little bit. This can be used strategically to prevent dying from a strong attack, but the timing is tricky.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Gimmick: 16-Hit Combos");
initWords("Duster's gimmick comes from his source material. Mother 3 is an RPG which has a battle system based on the music playing in the battle. If you can time button presses with the beat of the song, you can hit an enemy up to 16 times.");
initWords("In Rivals, if Duster hits an opponent, it will start a combo chain. He has a 7 second period to hit the opponent again to raise his combo, which is reset each time he does. If he doesn't hit an enemy within these 6 seconds, his combo is reset. This timer can be reset by activating a parry. Hit an enemy 16 times to unleash a very powerful attack!");
initWords("Every 16th hit is boosted damage-wise and knockback-wise. All attacks do 16 percent and the knockback buffs are listed below:
Grounded normals are raised to 6 * 1.1
Aerials and Specials are raised to 7 * 1.15
Strongs are raised to 8 * 1.2
All attacks boosted have a knockback scaling of 1.1");
initWords("Once Duster hits a 16-hit combo, his meter will go on cooldown for 10 seconds. The same applies if he is parried during his combo, but the cooldown is only 5 seconds. The cooldown created by getting parried can be removed by Duster parrying an attack.");
initImage_ext(sprite_get("_pho_16hit"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);


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

initPatch("1.14", "25th May, 2022");

initHeader("Buffs:");
initSection("+ Dtilt angle changed from 70 -> 90
+ Extended Fstrong's hitbox to match it's visual again
+ Fstrong comes out 2 frames faster, F16 -> F14
+ Uair now has a late tipman hitbox
");

initHeader("Nerfs:");
initSection("- Dash speed lowered, 7.5 -> 7
- Initial Dash speed lowered, 8.5 -> 8
- Bair's angle was changed, 145 -> 135
- Bair's bkb was lowered, 7 -> 6
- Extended Fstrong's hurtbox
- Fstrong's angle was changed, 40 -> 50
- Nspecial's startup was increased, F8 -> F10
- Bomb throw startup was increased, F9 -> F11
");

initHeader("Changes:");
initSection("= Fstrong kb adjusted, 8 * .9 -> 6 * 1.05
= Ustrong kb adjusted, 9 * 1.1 -> 7 * 1.2
= Dstrong kb adjusted, 11 * .9 -> 7 * 1.2
= 16 Hit crit kb adjusted
    = Aerial, 8 * 1 -> 6 * 1.1
    = Grounded, 9 * 1 -> 7 * 1.15
    = Strong, 11.5 * 1 -> 8 * 1.2
= Uair has a new smear! Thank you Delta!
= Uair, Utilt, Ustrong, and Fspecial now have hurtboxes on smears
= Parry now correctly resets Combo Timer
= Updated the TAG alt's color scheme
= Cleaned up most smears
= Lightweighted munophone
");


//
initPatch("1.13", "6 April, 2022");

initHeader("Nerfs:");
initSection("- turned off april fools mode lol
- Fstrong has lowered kb scaling, 1.1 -> 0.9
- Uspecial's kb was lowered, 9 * .8 -> 8 * .7
- Forward thrown Smoke bomb has a little less HSP
- Dspecial's hitboxes have a drift mult of 1.5
");

initHeader("Changes:");
initSection("= Uair's kb was adjusted, 7 * .2 -> 6 * .5
= Uspecial's base hitpause was lowered, 10 -> 8
= Various attacks that had kb scaling lowered were reverted
(I don't remember the specifics and didn't write them down anywhere oops)
");


//
initPatch("1.12", "1 April, 2022");

initHeader("April Fools!");

//
initPatch("1.11", "4 March, 2022");

initHeader("Buffs:");
initSection("+ Various minor damage buffs
+ Uair, Dair, and Bair have 2 less frames of endlag
+ Dair overall damage increased, 8 -> 10
+ Dair has less time between hits
+ Dair angle changed, 50 -> 45
+ Ustrong's kb scaling was increased, 1 -> 1.1
+ Fspecial comes out 2 frames faster, F15 -> F13
+ Fspecial's finisher now has lowered sdi multipliers
+ Uspecial's hitbox was made a little wider
+ Uspecial's bkb was increased, 8 -> 9
+ Dspecial's initial hitbox (the bomb being thrown) no longer has parry stun, instead disappears on parry
+ Dspecial can no longer be escaped from by spamming parry
+ Combo Timer increased from 6 seconds to 7
");

initHeader("Nerfs:");
initSection("- Fstrong has more base hitpause, 12 -> 17 
- Fstrong has 5 more frames of endlag
- Uspecial now puts Duster into immediate pratfall if it is parried
- Letting smoke bomb explode on Duster now puts Dspecial in cooldown
- Smoke Bomb lasts for 25 less frames, no longer has force flinch.
");

initHeader("Changes:");
initSection("= Short hop VSP lowered, 7 -> 5.5
= Various attacks that don't kill have less kb scaling (Fair, Utilt, etc.)
= Fspecial's burst of speed was played around with, overall has more speed but less active frames
");

//
initPatch("1.1", "2 March, 2022");

initHeader("Buffs:");
initSection("+ Jab damage was adjusted, 2, 2, 10 -> 4, 4, 8, overall buffed from 14 to 16
+ Jab 3 has lowered endlag, 10 -> 8
+ All tilts have 4 less frames of endlag
+ Dattack has a little less endlag (but also has a little less range because of it)
+ Fair has 2 less frames of endlag
+ Fstrong's angle was changed, 50 -> 40
+ Dstrong's damage was increased, 10 -> 12
+ Fspecial can now snap to ledge
+ 16-Hit crit has increased damage, 12 -> 16
+ Various minor damage buffs
");

initHeader("Nerfs:");
initSection("- Dattack's hitbox was made smaller  
- Fair's hitboxes were made smaller
- Uair's hitbox was made smaller
- Nspecial's cooldown was increased from 2 seconds to 3
- Dspecial's cooldown was increased from 4 seconds to 5
");

initHeader("Changes:");
initSection("= Jab 1 and 2 have a little less hitpause
= Added 2 extra alts
= Fspecial's first hitbox will no longer activate 16-hits
= Bomb throw should not have the specific frame where duster can throw a bomb and be hit at the same time and keep the bomb anymore
= Some variables that weren't correctly being reset after a 16-Hit are now fixed
");

//
initPatch("1.0", "28 February, 2022");
initWords_ext("Duster is released!", fa_center, c_white, 0, false);
initImage_ext(sprite_get("sus_master"), -3, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);

initPatch("About Duster", "");
initWords("Duster was released on the 28th of February, 2022. He was developed in around a month. He's one of the main characters in Mother 3.");
initWords("Duster is a combo-based All-Rounder character. If he hits 16 attacks in a row within a time period, the 16th hit will be stronger than normal.");
initHeader("Origins");
initSection("Mother 3 developed by Nintendo");
initHeader("Animation, coding, and balance edits by");
initSection("roboshyguy");
initHeader("SFX from");
initSection("Mother 3, Super Smash Bros. Ultimate");
initHeader("Compatible with");
initSection("Munophone Touch, Pit, Link");

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
*/
// Steve death message.
steve_death_message = "Steve took mortal damage!";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 2;

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
initCodecPagePit(SPK_PIT,	6,	7,	"Hm.. I don't recognize this guy.");
initCodecPagePit(SPK_PALU,	0,	2,	"Do you remember Lucas from Super Smash Bros? Duster is a friend of his.");
initCodecPagePit(SPK_VIR,	3,	1,	"Let's hope Lucas didn't go crying to this guy after you won against him!");
initCodecPagePit(SPK_PIT,	9,	8,	"Uh oh, I hope this guy isn't here for revenge.");
initCodecPagePit(SPK_VIR,	0,	3,	"Well, it certainly wouldn't be unfounded.");
initCodecPagePit(SPK_PALU,	5,	1,	"Keep on your feet, Pit. Duster moves quickly and can easily overwhelm you.");
initCodecPagePit(SPK_PALU,	0,	3,	"The residents of Tazmily fight by sound battle. If you get hit 16 times, you'll take critical damage.");
initCodecPagePit(SPK_PIT,	0,	7,	"Wow, maybe I could take some lessons from Duster. Sound battles.. sound fun!");
initCodecPagePit(SPK_VIR,	1,	7,	"Hm... Duster wouldn't be a good mentor. He's a thief. Stealing is a bad thing you know.");
initCodecPagePit(SPK_PALU,	1,	2,	"That's right, he has a variety of 'Thieves Tools' at his disposal. Don't get caught in one of his traps.");
initCodecPagePit(SPK_VIR,	5,	6,	"Well it's not like Pit has anything that valuable on him. The most Duster could steal is a victory!");
initCodecPagePit(SPK_PIT,	8,	3,	"Yeah! I just have to worry abo- Hey! I'm not poor!");



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