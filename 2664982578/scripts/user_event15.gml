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
muno_char_name = "Egg";

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

initTip("Gimmick: Egg Hatch");
initWords("Like eggs from Pokemon, Egg's mechanic is to hatch. If Egg moves around enough, it gains access to an attack called 'Egg Hatch'. Once it's meter is full, you'll hear a jingle. Press Attack + Special or Attack + Taunt to activate it.");
initWords("Egg Hatch is a very powerful move that covers most of the stage, similar to Hero's Magic Burst. The Pokemon that Egg hatches into while performing this attack is randomized.");
initWords("Certain attacks Egg has can easily increase it's movement meter, like Dattack, Fspecial, and Dspecial. Although, if Egg dies, it has restart the process.");
initImage_ext(sprite_get("shiny_hatched"), 0, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("_pho_hatch"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("NSpecial: Adrenaline Orb");
initWords("In Pokemon, the Adrenaline Orb can be used to increase the chance that a wild encounter calls for help, creating an SOS battle. SOS chains are a popular way of finding shinies in the Generation 7 games.");
initWords("In Rivals, it works a little bit differently. Egg can place the Adrenaline orb down as an article. This article can be interacted with by Egg's specials.");
initImage_ext(sprite_get("_pho_nspecial"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Egg Drop");
initWords("Egg Drop is a lunging command grab. If the first hitbox connects, Egg will slam the opponent into the ground.");
initWords("The mechanics of Fspecial work similarly to Bowser's Fspecial, in that the second hitbox of the move is only created if Egg lands with an opponent.");
initWords("Egg is forced to drop the opponent if they don't land within 1 1/2 seconds.");
initWords("Fspecial can be cancelled mid air if Special is pressed again. Egg will squeeze the opponent which has set knockback.");
initImage_ext(sprite_get("_pho_fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Wonder Trade");
initWords("Uspecial is a VERY funny move. Like Wondertrades in Pokemon, if this attack hits, it will switch the positions of Egg and it's opponent.");
initWords("Uspecial spawns a trade symbol which can be controlled by using directional inputs. Pressing Special again after the symbol is created will teleport Egg to it. If the symbol is activated on an enemy, they will be sent to where Egg was.");
initWords("Uspecial can be cancelled by pressing Shield.");
initImage_ext(sprite_get("wonder_trade"), -10, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("_pho_uspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Shiny Charm");
initWords("Dspecial is a counter. Unlike most Rivals counters, Shiny Charm is coded so that when it's activated, Egg turns to face the way it's hit. Dspecial's counter power also scales to the attack it was triggered by.");
initWords("Hitting Dspecial will activate Egg's Shiny Charm, which increases it's hatch rate times 2 for 10 seconds.");
initWords("In Practice Mode, the counter activation boxes will be visible.");
initImage_ext(sprite_get("_pho_dspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("NSpecial: Interactions with Specials");
initWords("Nspecial: The Adrenaline Orb, can be used in multiple ways with Egg's specials.");
initWords("With Fspecial, Egg can grab the Orb like an opponent, and slam it down. If this hits and opponent, it will increase Egg's hatch rate by 100.");
initWords("If Egg already has grabbed an opponent with Fspecial, it can bounce off of the Adrenaline orb, which creates a Basketball hoop in front of it. Egg can use the hoop to slam dunk the opponent it has. Hitting this attack increases the hatch rate by 200.");
initWords("If hit by Uspecial, the Adrenaline Orb will switch places with Egg and create an explosion. If this hits and opponent, it will increase Egg's hatch rate by 100.");
initWords("Adrenaline Orb can also be grabbed with Dspecial. Egg throws the orb as a projectile if this happens. If this hits and opponent, it will increase Egg's hatch rate by 100.");
initWords("Keep in mind that the amount of hatch increase hitting these attacks gives doubles if Egg's shiny charm is active.");
initImage_ext(sprite_get("_pho_fspecial2"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);



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

initPatch("1.16", "5 January, 2022");

initHeader("Nerfs:");
initSection("- MB base kb reduced, 12 -> 10
- MB kb scaling reduced, 1.2 -> 1.1
- MB overall damage reduced, 34 -> 30
");

//
initPatch("1.15", "1 January, 2022");

initHeader("Nerfs:");
initSection("- Nair has 2 more frame of startup
- Nair hitbox was made smaller
- Bair's base kb was reduced, 8 -> 7
- Ustrong base kb lowered, 11 -> 10
- Fspecial's kb scaling was reduced, 1 -> 0.9
- Fspecial's angle was changed, 50 -> 60
- Balling's base kb was reduced, 8 -> 7
");

initHeader("Changes:");
initSection("= Fspecial has forced cancel when egg reaches near the bottom blast zone
= When Egg cancels Fspecial while holding the Adrenaline Orb, the explosion hitbox is created 1 frame after the grab release (to prevent false galaxies)
");

initHeader("Unknown:");
initSection("? Added parry sfx
");

//
initPatch("1.14", "11 December, 2021");

initHeader("Buffs:");
initSection("+ Dash turn now has increased hatch rate (Dash dancing is now more optimal)
+ Hoop lasts a little longer, 2 sec -> 2.5 sec
+ Dtilt now has a smaller weaker hitbox closer to egg
+ Dair can now be wall jumped out of
+ Fspecial can now be cancelled mid air
+ Added 6 new alts (two of which are champion alts shoutouts to WS Elites)
");

initHeader("Nerfs:");
initSection("- Fair comes out 1 frame slower, 18 -> 19
- Fair's landing lag was increased, 10 -> 11
- Nspecial's max hsp was lowered a bit
- Hoop base kb lowered, 9 -> 8
- Hoop kb scaling lowered, .7 -> .6
- Egg is forced to drop Fspecial sooner, 2 sec -> 1.5 sec
");

initHeader("Changes:");
initSection("= Fair's base kb and scaling were increased, 8 -> 9, .6 -> .8 (Changed with hopes that it won't combo as easily anymore)
= All moves should correctly set drift and sdi multipliers back to 1(thank you menace and ducky)
");

//
initPatch("1.13", "30 November, 2021");

initHeader("Buffs:");
initSection("+ Bair has increased range (egg grew legs)
+ Bair's hitbox was made bigger
+ Dair comes out 2 frames faster, Frame 17 -> 15
");

initHeader("Nerfs:");
initSection("- Bair's base kb was decreased, 8.5 -> 8
- Bair's landing lag was increased, 8 -> 10
- Dair sweetspot's kb scaling was reduced, 0.8 -> 0.7
");

initHeader("Changes:");
initSection("= Fixed a bug where Egg's Uspecial article would still be active after death and could teleport them during respawn (mb)
= Did the same fix for Egg's Counter articles because I foresee that the same issue could occur
= Tell me if it still happens (I got it to work once by myself and then never again lol)
");

//
initPatch("1.12", "29 November, 2021");

initHeader("Buffs:");
initSection("+ Dspecial comes out 1 frame faster, Frame 8 -> 7
+ Hoop stays out a little longer
");

initHeader("Nerfs:");
initSection("- Utilt's hitbox was made smaller
- Fair's hitboxes were made smaller
- Uair's hitbox was made smaller
- Uair's kb scaling was decreased, .8 -> .75
- Dspecial no longer has super armor on whiff
");

initHeader("Changes:");
initSection("= Uair has more hitpause
= Dstrong now sends up with no angle flipper (troll complete, returning to hq)
= Fixed a bug where Hoop was grabbable upon whiffing fspecial BY MAKING IT A FEATURE BABY
= YOU CAN NOW GRAB THE FUCKING HOOP AND DUNK IT
= I FORGOT TO ADD THE PATCHES TO MUNOPHONE I added the patches to munophone
");

//
initPatch("1.11", "27 November, 2021");

initHeader("Buffs:");
initSection("+ Uspecial has faster startup, 12 -> 8
+ Uspecial has a little bit lowered gravity during startup
+ Added a trans rights alt (outline code is by lukaru)
+ Added a BLW alt
");

initHeader("Nerfs:");
initSection("- Ustrong has lowered kb scaling, 1 -> .85
- Uspecial now has extended parry stun
");

initHeader("Changes:");
initSection("= Nspecial no longer stops Egg mid air, instead has lowered gravity
= Fspecial's hoop was adjusted a little bit (it's a little farther and a little higher)
");

//
initPatch("1.1", "26 November, 2021");

initHeader("Buffs:");
initSection("+ Made it a little easier to input magic burst (it can be cancelled into from the first frames on Jab, Nair, and Nspecial)");

initHeader("Changes:");
initSection("= Various sfx fixes
= Various sprite tweaks
= Fixed a gamebreaking Article bug that made Egg invuncerable and unable to move LOL");

//
initPatch("1.0", "26 November, 2021");
initWords_ext("Egg is released!", fa_center, c_white, 0, false);
initImage_ext(sprite_get("egg"), -4, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);

initPatch("About Egg", "");
initWords("Egg was released on the 26th November, 2021. He was developed for the Pokejam event hosted by Spam. While not technically a Pokemon per say, all pokemon aside from a set few all come from eggs.");
initWords("Egg us a grappler that incorporates shiny hunting methods into it's moveset. It's signature attack is 'Egg Hatch', a powerful move that is obtained by moving around, similar to how eggs hatch in pokemon games.");
initHeader("Origins");
initSection("Pokemon, published by Nintendo");
initHeader("Animation, coding, and balance edits by");
initSection("roboshyguy");
initHeader("SFX from");
initSection("A mix of Pokemon, Paper Mario 64, Minecraft, and Kirby Super Star Ultra");
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

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
/*
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
*/
// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 8;

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