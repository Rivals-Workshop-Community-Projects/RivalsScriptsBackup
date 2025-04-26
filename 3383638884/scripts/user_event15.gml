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
num_alts = 14;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Classic Cook",
	"Avoid",
	"Porcupine",
	"Perfect Clone",
	"Shadow Peppino",
	"Another Fake",
	"Spy!",
	"Your Mother",
	"Frog On Sphere",
	"Happy Hour",
	"Wario Time Never Ends",
	"Real Boy",
	"Fake Fake Peppino",
	"Monochrome",
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
muno_char_name = "Fake Peppino";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = false;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = true;

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

/* template
initTip("[AT]: Name");
initWords("");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("");

//warning
initWords_ext("", fa_left, c_red, 0, false);
*/

//moves
initTip("F-special: the Mach Run");
initWords("Like Peppino and Noise's N-specials, Fake Peppino's F-special is the Mach Run. After a brief startup you will be put into Mach Mode.");
initWords("");
initWords("");
initWords("");
initImage_ext(sprite_get("_phone_preview_machrun"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("");
initWords("In Mach Mode you can cancel successful attacks into new ones. Mach Mode will end after a short ammount of time or when you get hit.");
initWords("In addition, some attacks will be boosted or have special atributes. Throughout the ''tips'' section, those will be listed as the...");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("Start-up gets drastically shortened");

initTip("F-special 2: Grab Dash");
initWords("Like Peppino and Noise's Mach Run, Fake Peppino can cancel his initial run with another F-special, giving him temporary super armor before lunging forward, making it perfect for recovery, approach and counterplay. You can even turn around with this move!");
initWords("");
initWords("");
initWords("");
initImage_ext(sprite_get("_phone_preview_grabdash"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("");
initWords_ext("This move can only be done during the running state of F-special!", fa_left, c_red, 0, false);

initTip("N-special: Taunt");
initWords("Fake Peppino strikes a taunt! This move deals 1% damage and has terrible endlag, so use it cautiously. Or don't. Actually, don't. That's the whole point.");
initImage_ext(sprite_get("_phone_preview_taunt_fx"), -3, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("");
initImage_ext(sprite_get("nspecial"), -30, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("");
initWords("Unlike the Noise's taunt, N-special stops you in place for its duration. It also stops the Mach Run timer; you can use it to stall and bait your opponents into a Mach-boosted combo!");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("Stops Mach mode from expiring (see ''Combo'')");

initTip("U-special: Super Jump");
initWords("If you hold the special button you can charge U-special to go higher, and you can move sideways while charging. You also move faster on the ground.");
initWords("");
initWords("");
initWords("");
initWords("");
initWords("");
initWords("");
initWords("");
initWords("");
initImage_ext(sprite_get("_phone_preview_uspec"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("You move faster while charging, stacks with being grounded");

initTip("U-special 2: Super Taunt");
initWords("After getting a combo of 10 (more on that in the ''COMBO'' section) you get the supertaunt. You can use it whenever you want to, but if you have it you can't use the regular U-special. If you need to recover you can try to use U-air, jumps and dodges, or you could just sacrifice the Super Taunt off-stage and follow up with the normal U-special.");
initImage_ext(sprite_get("s_taunt_idle"), -3, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("sparks"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("If you have a supertaunt ready and you're off-stage, try using U-air to recover. It's not as good, but that way you won't waste it.");

initTip("D-special: Body Slam");
initWords("After a while this move can by cancelled with a second jump, walljump or airdodge.");
initWords("");
initWords("");
initWords("");
initImage_ext(sprite_get("dspecial"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("The move starts faster");
//fun fact: originaly there was another D-special that would give you a clone, like the ones in WAR.
//initWords_ext("In mach mode D-special will be a body slam no matter what!", fa_left, c_red, 0, false);

initTip("D-tilt: Breakdance");
initWords("You can move sideways and hold the attack button to dance forever.");
initImage_ext(sprite_get("dtilt"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("You break it down even harder!");
initImage_ext(sprite_get("dtilt_mach"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("This move makes you lunge forward, if you hit someone it enables you follow up with any attack. If you miss after a while you can cancel it with a jump, walljump or dodge.");

initTip("D-air");
initWords("Hitting someone with D-air enables you to follow up with any attack.");
initImage_ext(sprite_get("dair"), 17, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords_ext("Mach Effect:", fa_center, "h", 0, false);
initWords("Same as D-tilt: you break it down. (see ''D-tilt: breakdance''s mach effect for more info)");
initImage_ext(sprite_get("dtilt_mach"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("D-strong");
initWords("Fake Peppino's feet have a small spiking hitbox.");
initImage_ext(sprite_get("dstrong"), -6, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("F-strong");
initWords("This attack changes as you charge it up:");
initWords("After you hear racking sound the move will shoot out projectiles.");
initImage_ext(sprite_get("fstrong_proj"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("If you charge it up fully and let it start by itself the hitbox gets WAY larger. It also has a sweetspot close to you.");


initTip("Combo");
initWords("Hitting other players will increase your combo by 1. It resets after 2.5 seconds, but getting hit will make it faster. You can also slow it down by spamming N-special.");
initWords("You get a Supertaunt stored when you reach a multiple of 10. You'll know you have a Supertaunt if there's sparks around you and your idle looks like this:");
initWords("");
initImage_ext(sprite_get("s_taunt_idle"), -3, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("sparks"), -3, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("");
initWords("");
initWords("You can only have 1 Supertaunt stored at once. If you have it, it replaces your U-special. (see ''U-special 2: Super Taunt'' for more info)");
//
//add that the timer stops the combo meter

initTip("Misc.");
initImage_ext(sprite_get("head_off"), 18, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("You can hold left or right and taunt for a 2nd animation, which you can loop by holding taunt.");
initWords("");
initImage_ext(sprite_get("intro_preview"), -4, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);
initWords("Peppino and Noise have different intros if Fake Peppino is in the match.");
initWords("");
initWords("");
initWords("");
initWords("");
initWords("");
initWords("Taunt while attacking to make a sound!");
initWords("");
initImage_ext(sprite_get("_kirby_nspecial"), 18, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initWords("Kirby gets a custom ability!");
initWords("");
initImage_ext(sprite_get("walljump"), 4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("You can wallcling by holding jump near a wall.");

//misc
/*
initTip("Gallery");
initWords_ext("idle", fa_left, c_white, 0, true);
initWords_ext("walk", fa_center, c_white, 0, true);
initWords_ext("run", fa_right, c_white, 0, false);
initImage_ext(sprite_get("idle"), -6, fa_left, 3, 3, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("walk"), -4, fa_center, 3, 3, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dash"), -2, fa_right, 3, 3, true, c_white, 1, false, noone, noone, noone, noone);
*/

initTip("Compatibility List");
initWords_ext("PTV by MaxOrSmthn", fa_left, c_white, 0, true);
initWords_ext("                                                                           - custom hud (TBA)", fa_left, c_white, 0, false);
initWords_ext("Munophone by Muno", fa_left, c_white, 0, true);
initWords_ext("                                                                           - this entire menu", fa_left, c_white, 0, false);
initWords_ext("Peppino by Mr Nart", fa_left, c_white, 0, true);
initWords_ext("                                                                           - intro", fa_left, c_white, 0, false);
initWords_ext("the Noise by Mudkid", fa_left, c_white, 0, true);
initWords_ext("                                                                           - intro", fa_left, c_white, 0, false);
initWords_ext("Kirby by Lunaluuuu, Anguish and Ludi", fa_left, c_white, 0, true);
initWords_ext("                                                                           - copy ability", fa_left, c_white, 0, false);
initWords_ext("Miiverse by Dakota and OxiTape", fa_left, c_white, 0, true);
initWords_ext("                                                                           - Miiverse posts", fa_left, c_white, 0, false);
initWords_ext("Miiverse by Flophawk", fa_left, c_white, 0, true);
initWords_ext("                                                                           - Miiverse posts", fa_left, c_white, 0, false);
initWords_ext("Miiverse by FelixBlobDev", fa_left, c_white, 0, true);
initWords_ext("                                                                           - Miiverse posts", fa_left, c_white, 0, false);
initWords_ext("Nintendo Wii by ATalksToSelf and Leopaof", fa_left, c_white, 0, true);
initWords_ext("                                                                           - WiiMote", fa_left, c_white, 0, false);
initWords_ext("Otto by Muno", fa_left, c_white, 0, true);
initWords_ext("                                                                           - bobblehead", fa_left, c_white, 0, false);
initWords_ext("Talking Flower by Flophawk", fa_left, c_white, 0, true);
initWords_ext("                                                                           - voiceline", fa_left, c_white, 0, false);
initWords_ext("Scoop by Flophawk", fa_left, c_white, 0, true);
initWords_ext("                                                                           - ice cream", fa_left, c_white, 0, false);
initWords_ext("                                          ATTACK: next page", fa_left, c_white, 0, false);
initWords_ext("Po & Gumpo by Roboshyguy", fa_left, c_white, 0, true);
initWords_ext("                                                                           - ''food''", fa_left, c_white, 0, false);
initWords_ext("Toad by FelixBlobDev", fa_left, c_white, 0, true);
initWords_ext("                                                                           - voice pitching", fa_left, c_white, 0, false);
initWords_ext("the Toppin Squad by Just Wadin", fa_left, c_white, 0, true);
initWords_ext("                                                                           - taunting", fa_left, c_white, 0, false);
initWords("getting grabbed animation with base cast, Fake Peppinom, Peppino, Noise, Amaya, Phoenix Wright (Mudkid), Wes, Ralsei with a gun");

initTip("Fake Peppino's Lore");
initWords_ext("Entry_1", fa_center, c_gray, 0, false);
initWords_ext("I'm going to go ahead and talk about something that I've been telling others who know about this place of worship that you did this. Well, we're down from your pizzeria, and we're down from this tower. There are customers, and they want to see one of these things. So I got a friend, he went down one of the floors and this guy came up next to me, and the idea was, why is it that when you're in the upper part of the tower there is this Pizzaface character, then there's a man from your previous life leading the way? There's a pizza in your tower with all this information.", fa_left, c_white, 0, true);
initWords_ext("pizzapizzapizzapizza pizzapizzapizza pizza pizzapizzapizza pizzapizza pizzapizzapizzapizzapizzapizzapizza pizza pizza pizzapizza pizzapizza pizza pizzapizzapizzapizzapizzapizzapizzapizzapizzapizzapizzapizzapizzapizza pizzapizzapizzapizzapizzapizzapizza pizza pizza pizza pizzapizzapizzapizza PEPPINO pizzapizzapizzapizzapizzapizzapizza pizzapizzapizzapizza iusdgtaikuhdftaytfdyidgayivcuyvcxiubzbv zzvvwccoiaixbo                asihdfkjsahfgdcuihba asifdgsailhfdcvj hasdjha zsjdvasl pizzapizzapizza da pizza", fa_left, c_white, 0, false);
initWords_ext("Entry_2", fa_center, c_gray, 0, false);
initWords_ext("[REDACTED]", fa_center, c_white, 0, true);


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

initPatch("1.2", "27.12.2024");
initHeader("- CHANGES -");
initSection("* Fixed F-strong's sound indicator playing every frame if you released it frame-perfectly.
* Added the Toppin Squad compat.



that's it.










bye :D");

initPatch("1.1", "17.12.2024");
initHeader("- GENERAL CHANGES -");
initSection("* F-tilt is now faster.");
initHeader("- COMBO CHANGES -");
initSection("* Extended the combo timer to 3.5 seconds.
* Increased combo penalty when getting hit to half a second but made it only once 
 untill you get another hit in.
* Combo now caps at 99. If you somehow get it there you get a combo on each hit.
* Added an indicator for getting a supertaunt at a combo of 20 or more.
");
initHeader("- MISC CHANGES -");
initSection("* I'm not gonna sugarcoat it: added a new N-special taunt sprite for getting parried.
* Fake Peppino is now tagged as ''finished''. (forgot about it at launch)
* Added toad compat. (voicelines will pitch up and down with size)
* Added shading to F-tilt.
* Fixed Fake Peppino's getting grabbed by Fake Peppino compat. Fake Peppino.");

initPatch("1.0", "13.12.2024");
initHeader("- R E L E A S E -");
initSection("


I T'S   F A K E   P E P P I N O   F R I D A Y !!!!!!");

initPatch("About Fake Peppino", "");
initHeader("Character originally from:");
initSection("Pizza Tower");
initHeader("Animation and Rivals workshop coding by:");
initSection("MaxOrSmthn");
initHeader("SFX from:");
initSection("Pizza Tower");

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

phone_cheats_updated[]
phone_cheats[]
*/

#define CORE_cheats

CHEAT_DEBUG			= initCheat("Debug text", [0, 1], ["Off", "On"], "Show debug text");

CHEAT_SUPERTAUNT	= initCheat("Supertaunt", [0], ["Get"], "Get a Supertaunt ready");

CHEAT_NSPECIALTYPE	= initCheat("N-special type", [0, 1, 2], ["Normal", "Fast", "All Supertaunt"], "Modifies N-special:

Normal - normal N-special;
Fast: - faster N-special (rune A);
All Supertaunt - N-special always becomes a Supertaunt (rune L);
is always a Supertaunt

(Equipped runes overwrite this cheat)");

CHEAT_AFTERIMAGE = initCheat("Afterimage", [0, 1, 2, 3], ["Normal", "Red & Green", "Red", "None"], "Gives you a permament afterimage");

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
initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_bobble_body");

// Steve death message.
steve_death_message = "Steve got canceled on Twitter";

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
// Works kind of similarly to Trummel codecs.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

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