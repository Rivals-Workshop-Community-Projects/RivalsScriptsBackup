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
num_alts = 17;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 7;

var pcol = get_player_color(player);
switch pcol {
	case 0:
	case 3:
	case 5:
	case 6:
	case 7:
	alt_ui_recolor = 6;
	break;
}

// The list of names for the alts, if enabled.
alt_names = [
	"Pit",
	"Blue",
	"Red",
	"Purple",
	"Green",
	"Black",
	"Pink",
	"Dark Pit",
	"Palutena",
	"Viridi",
	"Kris",
	"Early Access",
	"NES",
	"Wrastor",
	"Mollo",
	"Acid Rainbows"
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
muno_char_name = "Pit";

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

initTip("NSpecial: Palutena's Bow");
initWords("Just like in Smash, NSpecial can be aimed in 3 directions, and arrows can be controlled after releasing them.");
initImage_ext(sprite_get("nspecial"), 4, fa_left, -1, 1, true, c_white, 1, true, 100, 200, 100, 20);
initImage_ext(sprite_get("nspecial"), 17, fa_center, 1, 1, true, c_white, 1, true, 200, 200, 100, 20);
initImage_ext(sprite_get("nspecial"), 4, fa_right, 1, 1, true, c_white, 1, false, 100, 200, 100, 20);
initWords_ext("Controlling the Arrows", fa_center, $1e82f2, 0, false);
initWords("You can aim arrows freely after they are fired, even during hitstun. Arrows are like Brawl arrows and last for a very long time. With good aim they can be used to extend your combos from offstage.");

initTip("FSpecial Variants");
initWords("FSpecial makes Pit shoot using a Blade. Tap special to perform a powerful Charge shot, or hold special to perform continuous fire.");
initWords_ext("Tap: Charge Shot", fa_center, $1e82f2, 0, false);
initWords_ext("Charge shot can be angled upwards or downwards by holding in a direction. Pit also has a hitbox on his back while traveling backwards.", fa_center, c_white, 0, true);
initImage_ext(sprite_get("fspecial_roll"),					4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fspecial_vfx_large"), 			4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fspecial_proj_strong_trail_2"),	4, fa_right, 1, 1, true, c_white, 1, true, 30, 400, 70, 50);
initImage_ext(sprite_get("fspecial_proj_strong"),			0, fa_right, 1, 1, true, c_white, 1, false, 60, 170, 70, 50);
initWords_ext("Hold: Continuous Fire", fa_center, $1e82f2, 0, false);
initWords_ext("Continuous fire can be canceled into a roll, parry or airdodge. Deals no knockback unless it hits an opponent in hitstun or is reflected (see 'Throwing the Orbitars' tip).", fa_center, c_white, 0, true);
initImage_ext(sprite_get("fspecial"),						3, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fspecial_proj_weak"),				0, fa_right, 1, 1, true, c_white, 1, true, 80, 370, 64, 50);
initImage_ext(sprite_get("fspecial_proj_weak"),				0, fa_right, 1, 1, true, c_white, 1, false, 80, 200, 64, 50);

initTip("Guardian Orbitars");
initWords("Tapping DSpecial makes Pit summon Guardian Orbitars to either side of him. Orbitars have a hitbox upon activation.");
initImage_ext(sprite_get("dspecial"),					2, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("orbitars_shield"),			-3, fa_center, 1, 1, true, c_white, 0.9, true,	250, 180, 62, 70);
initImage_ext(sprite_get("orbitars_shield"),			-3, fa_center, -1, 1, true, c_white, 0.9, false,	250, 180, 62, 70);
initWords_ext("Windbox", fa_center, $1e82f2, 0, false);
initWords_ext("Like Smash, orbitars have a constant windbox effect, pushing opponents who get too close.", fa_center, c_white, 0, false);
initWords_ext("Soft Armour", fa_center, $1e82f2, 0, false);
initWords_ext("While orbitars are out, Pit has a bit of soft armour. Getting hit will push Pit back slightly!", fa_center, c_white, 0, false);
initWords_ext("Jump Cancel On Hit", fa_center, $1e82f2, 0, false);
initWords_ext("This move can be jump canceled on hit, similar to a shine.", fa_center, c_white, 0, false);

initTip("Throwing the Orbitars");
initWords("Holding DSpecial will make Pit throw the Guardian Orbitars in front of him. The pair of orbitars will slowly track back towards Pit while idling.");
initImage_ext(sprite_get("indicator"), 0, fa_center, 1, 1, true, c_red, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("orbitars_idle"), -5, fa_center, 1, 1, true, c_white, 1, false, 39, 39, 33, 20);
initWords_ext("Activating Orbitars", fa_center, $1e82f2, 0, false);
initWords("Pressing DSpecial while orbitars are out will activate them, locking them into place. Orbitars have a hitbox when activated just like the Tap version.");
initImage_ext(sprite_get("indicator"), 0, fa_center, 1, 1, true, c_red, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("orbitars_attack"), 4, fa_center, 1, 1, true, c_white, 1, true, 39, 39, 33, 20);
initImage_ext(sprite_get("orbitars_shield"),			-3, fa_center, 1, 1, true, c_white, 0.9, true,	250, 180, 40, 35);
initImage_ext(sprite_get("orbitars_shield"),			-3, fa_center, -1, 1, true, c_white, 0.9, false,	250, 180, 40, 35);
initWords_ext("Reflective Properties", fa_center, $1e82f2, 0, false);
initWords("The Guardian Orbitars will reflect Pit's own NSpecial and FSpecial projectiles. Other moves like FStrong and FSpecial will make Pit bounce off the Orbitars if he hits them. Orbitars can also reflect opponents in hitstun, reversing their horizontal speed. Try hitting opponents into Orbitars to get an easy followup!");

initTip("Charged FStrong");
initWords("The longer you charge Fstrong, the further Pit will dash! Pit will automatically swing when he detects an opponent in front of him.");
initImage_ext(sprite_get("fstrong"), 1, fa_left, 1, 1, true, c_white, 1, true, 150, 200, 100, 0);
initImage_ext(sprite_get("fstrong"), 2, fa_center, 1, 1, true, c_white, 1, true, 150, 200, 100, 0);
initImage_ext(sprite_get("fstrong"), 5, fa_right, 1, 1, true, c_white, 1, false, 150, 200, 100, 0);

initTip("Palutena's Guidance");
initWords("Just like in Smash, pressing Down + Taunt for a short duration will activate a Palutena's Guidance codec.
Pit has in-built compatibility with all base cast characters, as well as a select few workshop characters, but you can add a codec via compatibility to your own characters as well.");
initImage_ext(sprite_get("taunt_codec"), 2, fa_center, 1, 1, true, c_white, 1, false, 50, 50, 50, 20);
initWords_ext("Adding Palu Guidance Compatibility to your Workshop Character", fa_center, $1e82f2, 0, false);
initWords("Documentation for adding compatibility can be found on Pit's Steam workshop page. You can also add compatibility via the Munophone Touch should your character implement it, but reading the documentation on the Steam page is still recommended.");


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
initPatch("1.1", "20 September, 2021");
initHeader("Both");
initSection("- Nair endlag increased (+2f)
- Nair landing lag increased (+2f)
- Fair landing lag increased (+2f)
- Uair landing lag increased (+2f)
- Uair endlag increased (+3f)
- Bair landing lag increased (+2f)
- Dair landing lag increased (+2f)
- FSpecial charge shot hitbox timer resets upon parry
- FSpecial blindspot cover hitbox interacts with parry properly
- Fstrong startup decreased (-2f)
- Fstrong uncharged dash speed/distance increased (fully charged dash speed/distance unchanged)
- Fstrong endlag decreased (-5f)
- Weight decreased (kba: 1.05 -> 1.1)
- Successive multijumps gain less height
- Added cooldown to Dspecial when orbitars are broken (90f)");
initHeader("Pit");
initSection("- Fstrong kbg increased: 0.9 -> 1.1");
initHeader("Dark Pit");
initSection("- Fstrong kbg increased: 0.7 -> 0.9");
initHeader("Bug Fixes");
initSection("- Fixed issue of some characters momentum halting when hitting orbitars.")
initHeader("Other");
initSection("- Improved overall performance slightly
- Alts are more consistent to easily differentiate between Pit and Dark Pit (Dark Pit's bow is always some greyish hue, Pit's bow is either golden or has the cosmetic skins)
- Pit/Dpit Uspecials can interact with each other's orbitars")

initPatch("1.0", "19 September, 2021");
initWords_ext("Pit was released!", fa_center, c_white, 0, false);
initWords_ext("Moveset differences from SSBU Pit:", fa_center, c_white, 0, false);
initHeader("Strong Attacks");
initSection("- FStrong uses the Upperdash Arm, reminiscent to SSB4/SSBU Pit FSpecial.
- UStrong uses the Dynamo Cannon, multihit attack.
- DStrong uses the Tiger Claws, reminiscent of Wolf DSmash.");
initHeader("Special Attacks");
initSection("- NSpecial arrows last for much longer, akin to SSBB/PM Pit arrows.
- FSpecial uses the First Blade, completely original attack.
- USpecial uses the Mirror Shield, has a hitbox. Similar to PM Pit USpecial but more height.
- DSpecial has option to throw Guardian Orbitars out as stage control. Can only reflect Pit's own projectiles (reflecting other character's projectile can cause issues and unwanted jank)");
initHeader("Grounded Normals");
initSection("- UTilt puts Pit into an aerial state.");

initPatch("About Pit", "");
initHeader("Animations and code by");
initSection("RuberCuber");
initHeader("Character originally created by");
initSection("Masahiro Sakurai and Sora Ltd");
initHeader("SFX assets from");
initSection("Super Smash Bros Ultimate
Super Smash Bros Brawl
Kid Icarus: Uprising");

initHeader("Compatibility with");
initSection("Abyss Runes
Steve
Link");

initHeader("Palutena's Guidance codec template provided by");
initSection("Muno");

// Recommended template for non-Sandbert characters:

/*

initPatch("1.0", "42 Shmebruary, 2021");
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

CHEAT_QUICK_CHARGE		= initCheat("Quick Charge", [0, 1], ["Off", "On"], "FSpecial cooldown removed");
CHEAT_STRONG_SHIELD		= initCheat("Unbreaking III", [0, 1], ["Off", "On"], "Guardian Orbitars never break from regular hits");



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

Codec gimmicks:
there aren't any

Page gimmick handles:
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
//SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
//SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));

//initCodec(0); // this should just always be 0, because there are no codec gimmicks
//initCodecPage(SPK_TRUM, 0, 0, "floor icecream");
//initCodecPage(SPK_ALTO, 3, 0, "Palutena, you mind sharing some tips on fighting Pit?");
//initCodecPage(SPK_TRUM, 5, 0, "does he eat snails");
//initCodecPage(SPK_ALTO, 0, 0, "I think you're safe for now Trummel. We have a battle at hand.");


//initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
//initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
//initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

//spr_custom_trummel_color = c_red;

// Otto bobblehead.
//otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
//otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve was killed by magic";

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