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
muno_char_name = "Kodiak [DE]";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

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

initTip("NSPECIAL: Crusher Ball(5) | Blitz(10)");
initWords("Kodiak does a quick hop and tosses a homing projectile that will knock opponents forward, you can use this to start quick aerial hits.");
initImage_ext(sprite_get("nspecial"), -4, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("If you hold the special button down Kodiak will hold his ground and toss two Crusher balls forward quickly. Kodiak keeps his momentum when used in the air so be careful off stage. ");
initImage_ext(sprite_get("nspecial2"), -4, fa_right, -1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSPECIAL: Aura Dash(10) | Rush(20)");
initWords("Kodiak musters his energy to dash forward knocking anyone in his way. If you hold the special button you can rush forward in any direction.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The Tap variation doesn't go into a pratfall so you can use other specials however you won't be able to use the F Special again until you wall jump or land.");
initImage_ext(sprite_get("fspecial2"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The Held Variation will always go into a pratfall regardless of how much energy you have left.");

initTip("USPECIAL: Explosion Kick(25) | Bear Uppercut(50)");
initWords("Kodiak creates an explosion for a straight upper kick. The Explosion can spike if they're caught in the blast.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The Held Variation Kodiak transforms his energy into a manifested Bear and delivers a spinning uppercut but beware the excessive energy gives Kodiak a tiny boost up in the air.");
initImage_ext(sprite_get("uspecial2"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSPECIAL: Super God Fist Overdrive(25) | Rolling Bear Axe Kick (50)");
initWords("Kodiak burns his power forward into a stunning punch, once connected Kodiak unleashes a combo of attacks. But if you miss you'll slip, and if you miss in the air Kodiak will go into a pratfall.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The Held Variation Kodiak turns into a bear and rolls into an Axe Kick. Do take care if you roll off stage.");
initImage_ext(sprite_get("dspecial2"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DTILT: Slide Kick | Tornado Slide(10)");
initWords("Kodiak slides down for a safe kick, it's so safe you won't accidently slide off ledges. Tapping the Attack button during a slide as long as you have 10 energy in your meter.");
initImage_ext(sprite_get("dtilt"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DATTACK: Flip Reflect");
initWords("If you can time it right, Kodiak can reflect projectiles with his dash attack! Definitely catch your opponent off-guard.");
initImage_ext(sprite_get("dattack"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSTRONG: Absolute Heel Kick");
initWords("Kodiak lifts his legs and drops it for a heavy hit, but it does stagger Kodiak for a bit. ");
initImage_ext(sprite_get("fstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USTRONG: Soul Overdrive");
initWords("Kodiak focuses his power and recovers his energy, and shoots excessive power straight up in the air. You can recover a tiny sliver of energy hitting people but using Soul Overdrive is the fastest way to recover his energy.");
initImage_ext(sprite_get("ustrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSTRONG: Duck Uppercut");
initWords("Kodiak lays low to the ground and jumps into the air with a nasty uppercut, the longer you charge the higher you go into the air, hitting someone with Crusher Ball and sending them to into a charged Uppercut is a safe but not guaranteed KO. ");
initImage_ext(sprite_get("dstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
	
initTip("Kodiak's Lore");
initWords_ext("Summary", fa_center, c_gray, 0, false);
initWords("Kodiak N Route, the Time Patroller of short stature; who during a rift raid was caught in a world shattering rupture and found himself stranded in the world of Aether with his energy consistently sapped. Despite running on constant fumes, Kodiak vows to stop the time abnormalities plaguing the Aether.");


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

initPatch("1.05", "25 Feb, 2025");
initHeader("GENERAL:");
initSection("* Updated the localisation files.
* Fixed an 'overlooked' detail with the meter when Kodiak is KO'd. If the meter is over 50, it will reset to 50 on respawn. If the meter is below 50, it will reset to 0.
+ Charging FSTRONG and DSTRONG also builds meter too, though not as much compared to USTRONG's.
* Kodiak now gains a small/reasonable vertical boost when he's out of meter when you try to use any special, but now it goes into pratfall.
* Fixed another minor error debug message related to sound effects.");
initHeader("NORMALs:");
initSection("UTILT:
+ Base Hitpause increased from 9 -> 10
- Hitpause scaling reduced from 0.60 -> 0.25

FTILT:
+ Base Hitpause increased from 7 -> 8
- Hitpause scaling reduced from 0.60 -> 0.25
* Changed the visual hit effect

FSTRONG:
+ Added another hitbox to act as the move's sweetspot.
+ Base Knockback set to 8
+ Knockback scaling set to 1.15
(hitbox 2, the previous single hitbox)
- Knockback scaling reduced from 1.10 -> 1
- Base Hitpause reduced from 15 -> 10
- Hitpause scaling reduced from 1 -> 0.70

UAIR:
* Changed the hitbox from a curved rectangle to a circle.
+ Base Hitpause increased from 6 -> 7
- Hitpause scaling reduced from 0.60 -> 0.35");
initHeader("~BONUS~:");
initSection("Updated the Dialogue Buddy lines against Brella, Camic, Randalf Rhino, Geebs and Rayman");

initPatch("1.04", "25 April, 2024");
initHeader("GENERAL:");
initSection("* Updated the localisation files.
* Fixed a few minor error debug messages.
+ Added a Mute Button");
initHeader("NORMALS:");
initSection("USTRONG:
(hitbox 1, sour)
* Changed the Angle from 85 -> 90.
+ DMG increased from 7 -> 9
+ KBS increased from 0.80 -> 1.00.

(hitbox 2, sweetspot)
+ DMG increased from 9 -> 11.
+ BKB increased from 7 -> 8.
+ KBS increased from 1.00 -> 1.10.

DATTACK:
* Repositioned and readjusted all hitboxes

FAIR:
(hitbox 2, spike box)
* Repositioned the hitbox away from Kodiak and readjusted the size

BAIR:
(hitbox 1, normal)
+ DMG increased from 6 -> 7

(hitbox 2, spike)
* This hitbox only hurts airborne enemies.");
initHeader("SPECIALS:");
initSection("* Adjusted the moveability after launching into the air");
initHeader("~BONUS~:");
initSection("+ Added Dream Nail Dialogue against The Knight (Reiga)
* Updated the Dialogue Buddy lines against Shantae, Disco, Masky, Spark, Bowsette and RyeGuy & Beaky");

initPatch("1.03", "21 December, 2022");
initHeader("MISC:");
initSection("Fixed a bug where Kodiak gained meter on activating a Parry instead of gaining meter on a successful Parry");

initPatch("1.02", "20 November, 2022");
initHeader("FSTRONG:");
initSection("Start-Up reduced from 17 -> 15");
initHeader("NSPECIALs:");
initSection("No longer gain meter from hit");

initPatch("1.01", "23 September, 2022");
initHeader("BAIR:");
initSection("Tweaked the priority order for the hitboxes");
initHeader("Misc:");
initSection("Updated the Tip Section regarding the Dash Attack.");

initPatch("1.0", "?? September, 2022");
initHeader("A tiny man...");
initSection("Has grown a few inches");
initImage_ext(sprite_get("taunt"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);


initPatch("About Kodiak", "");
initWords("Kodiak is an OC that belongs to Dr. Rover. He's a time patroller, a pizza nut and a bit of a cocky prick.");
initWords("This new definitive version is help correct the mistakes of the now labelled 'Legacy' version.");
initWords("Hope you enjoyed this new updated take of this semi-small fry fighter!");
initHeader("Sprites made by");
initSection("Dr. Rover - https://twitter.com/RoverThx");
initHeader("Coding by");
initSection("TheGreatGBA - https://twitter.com/TheGreatGBA");

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

CHEAT_METER		= initCheat("Auto Meter Regen", [0, 1], ["Off", "On"], "Meter will now regen.");

CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced (hold shield to not fly)");

CHEAT_DJUMPS	= initCheat("More Djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change the maximum number of double jumps.");
CHEAT_WIDE		= initCheat("wide?", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "why");
CHEAT_RECOIL	= initCheat("stop hitting yourself", [0, 1], ["Off", "On"], "Kodiak will now hurt himself. Good work.");

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
SPK_KODI = initSpeaker(1, "Kodiak", sprite_get("_pho_kodiak_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_KODI, 0, 0, "Are you guys even real cops?");
initCodecPage(SPK_TRUM, 0, 0, "yes");
initCodecPage(SPK_ALTO, 2, 0, "Yes. Why do you ask?");

initCodecPage(SPK_KODI, 0, 0, "Where's your warrant?");

initCodecPage(SPK_TRUM, 4, 0, "...");
initCodecPage(SPK_ALTO, 5, 0, "...");

initCodecPage(SPK_KODI, 1, GIM_LAUGH_TRACK, "Right then.");

//spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Hopefully this doesn't show up in the patch notes.";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 7;

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
initCodecPagePit(SPK_VIR,	4,	3,	"Wow, look at this pipsqueak.");
initCodecPagePit(SPK_PIT,	4,	5,	"...A little rude, don't you think?");
initCodecPagePit(SPK_VIR,	5,	6,	"Aw, what's this mortal going to do? Grow up?");
initCodecPagePit(SPK_PIT,	6,	6,	"Judging from his power level... Maybe?");
initCodecPagePit(SPK_PALU,	0,	3,	"You may want to becareful with him, Pit. I sense a dangerous over flow of energy from him.");
initCodecPagePit(SPK_VIR,	1,	1,	"Pssh, sounds like a pushover to me.");
initCodecPagePit(SPK_PIT,	3,	0,	"Well, whatever he's packing, he's no match for me!");
initCodecPagePit(SPK_PALU,	2,	5,	"If you say. As long as you avoid that ferocious bear of his.");
initCodecPagePit(SPK_PIT,	4,	9,	"Yeah-WAIT! The WHAT?!?");



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