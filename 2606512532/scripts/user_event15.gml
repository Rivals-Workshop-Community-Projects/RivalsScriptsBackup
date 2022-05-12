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
num_alts = 15;

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
	alt_ui_recolor = 1;
	break;
	
	case 10:
	case 11:
	alt_ui_recolor = 6;
	break;
}

// The list of names for the alts, if enabled.
alt_names = [
	"Dark Pit",
	"Blue",
	"Red",
	"Green",
	"Purple",
	"Yellow",
	"Pit",
	"Medusa",
	"Hades",
	"Pandora",
	"Sephiroth",
	"Zagreus",
	"Phosphora",
	"Fleet",
	"Dev"
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
muno_char_name = "Dark Pit";

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

initTip("Differences from Pit");
initWords("Like smash, Dark Pit is an echo fighter of Pit. Howwever, many more of his moves are changed from Pit, including most of his Specials and all his Strong attacks.");
initImage_ext(sprite_get("fstrong"), 5, fa_left, 1, 1, true, c_white, 1, true, 150, 200, 120, 0);
initImage_ext(sprite_get("fspecial"),2, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("uspecial"),4, fa_right, 1, 1, true, c_white, 1, false, 100, 230, 110, 20);
initWords_ext("Changed Moves:", fa_left, $e32fa3, 0, false);
initWords_ext("- NSpecial: Silver Bow
- FSpecial: Dark Pit Staff
- Uspecial: Burning Palm
- Fstrong: Electroshock Arm
- Ustrong: EZ Cannon
- Dstrong: Viridi Claws
", fa_left, $ffffff, 1, false);

initTip("NSpecial: Silver Bow");
initWords("Just like in Smash, NSpecial can be aimed in 3 directions, and arrows can be controlled after releasing them.");
initImage_ext(sprite_get("nspecial"), 4, fa_left, -1, 1, true, c_white, 1, true, 100, 200, 100, 20);
initImage_ext(sprite_get("nspecial"), 17, fa_center, 1, 1, true, c_white, 1, true, 200, 200, 100, 20);
initImage_ext(sprite_get("nspecial"), 4, fa_right, 1, 1, true, c_white, 1, false, 100, 200, 100, 20);
initWords_ext("Controlling the Arrows", fa_center, $e32fa3, 0, false);
initWords("You can aim arrows freely after they are fired, even during hitstun. Dark Pit's arrows are stronger than Pit's arrows, but are slower to curve.");

initTip("FSpecial Properties");
initWords("While Pit uses a blade, Dark Pit uses his signature Dark Pit Staff. Just like Pit, use off cooldown to shoot a powerful Charge shot, or use while on cooldown to perform continuous fire.");
initImage_ext(sprite_get("fspecial_roll"),					4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fspecial_vfx_large"), 			4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fspecial_proj_strong_trail_2"),	4, fa_right, 1, 1, true, c_white, 1, true, 30, 400, 60, 50);
initImage_ext(sprite_get("fspecial_proj_strong"),			0, fa_right, 1, 1, true, c_white, 1, false, 60, 130, 70, 20);

initImage_ext(sprite_get("fspecial"),						3, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("fspecial_proj_weak"),				0, fa_right, 1, 1, true, c_white, 1, true, 80, 370, 64, 50);
initImage_ext(sprite_get("fspecial_proj_weak"),				0, fa_right, 1, 1, true, c_white, 1, false, 80, 200, 64, 50);
initWords_ext("Differences from Pit FSpecial", fa_center, $e32fa3, 0, false);
//initWords("Dark Pit's FSpecial can be angled slightly more than Pit's, and Charge Shot has slightly more recoil. However, Charge Shot has slightly more startup, and the rate of contunious fire is also reduced.");
//initWords_ext("Charge Shot Power Scaling", fa_center, $e32fa3, 0, false);
initWords("While Pit's Charge Shot is consistent in power, Dark Pit's Charge Shot gets stronger the further it travels. Snipe opponents from afar to get maximum reward!");

initTip("Guardian Orbitars");
initWords("Dark Pit's DSpecial using the Guardian Orbitars is identical to Pit's.");
initImage_ext(sprite_get("indicator"), 0, fa_center, 1, 1, true, c_red, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("orbitars_attack"), 4, fa_center, 1, 1, true, c_white, 1, true, 39, 39, 33, 20);
initImage_ext(sprite_get("orbitars_shield"),			-3, fa_center, 1, 1, true, c_white, 0.9, true,	250, 180, 40, 35);
initImage_ext(sprite_get("orbitars_shield"),			-3, fa_center, -1, 1, true, c_white, 0.9, false,	250, 180, 40, 35);

initWords_ext("
Reflective Properties", fa_center, $e32fa3, 0, false);
initWords("The Guardian Orbitars will reflect both Dark Pit's and Pit's own projectiles should they be in the match. Also, Dark Pit's FSpecial charge shot projectile will keep increasing in power even after being reflected.")

initTip("Charged FStrong");
initWords("The longer you charge Fstrong, the further Dark Pit will dash!
Dark Pit's Electroshock arm sends at a more horizontal angle than Pit's Upperdash Arm, but his dashing speed is reduced slightly.");
initImage_ext(sprite_get("fstrong"), 1, fa_left, 1, 1, true, c_white, 1, true, 150, 200, 120, 0);
initImage_ext(sprite_get("fstrong"), 2, fa_center, 1, 1, true, c_white, 1, true, 150, 200, 120, 0);
initImage_ext(sprite_get("fstrong"), 5, fa_right, 1, 1, true, c_white, 1, false, 150, 200, 120, 0);

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
/*
initPatch("1.X", "20 September, 2021");
initHeader("Both");
initSection("");
initHeader("Pit");
initSection("");
initHeader("Dark Pit");
initSection("");
initHeader("Bug Fixes");
initSection("")
initHeader("Other");
initSection("");
*/
initPatch("1.12", "11 April, 2022");
initHeader("Both");
initSection("- Fspecial recoil distance decreased
- Fspecial back hitbox size decreased
- Fspecial rapidfire attack no longer can be performed if move is not on cooldown (ie: Charge shot will always be performed off cooldown regardless of tap or hold).
- Fspecial base projectile lifetime decreased slightly (both variations)
- Nair landing lag decreased: 10 -> 8
- Fair landing lag decreased: 10 -> 8
- Fair hitstun multiplier decreased: 0.85 -> 0.8
- Jab startup increased: 5 -> 6
- Jab 1/2/3 endlag increased: 8 -> 12, 8 -> 12, 10 -> 16
- Bair sweetspot hitstun multiplier increased: 0.85 -> 1
- Nspecial endlag increased: 24 -> 30
- Orbitar hitbox collision hitstop reduced (-3f per hit)
- Dair hitstun multiplier decreased: 1 -> 0.85");
initHeader("Pit");
initSection("- Fstrong angle decreased: 50 -> 45
- Fstrong base hitpause decreased: 16 -> 10
- Ustrong launcher kbg decreased: 1.1 -> 1.0");
initHeader("Dark Pit");
initSection("- Fstrong base hitpause decreased: 16 -> 12
- Fstrong kbg increased: 0.9 -> 1.1
- Ustrong sourspot removed (entire launcher hitbox now has sweetspot stats)
- Dstrong sweetspot range increased
- Dstrong sourspot range decreased
- Dstrong sweetspot angle increased: 85 -> 90");
initHeader("Bug Fixes");
initSection("- Utilt 1 correctly inflicts parrystun when parried
- Pit/Dpit correctly reflects off their own orbitars");
initHeader("Other");
initSection("- Added vfx for when Fspecial charge shot projectile expires naturally
- Added 1 new alt to each
- Pit's Palutena's Guidance added compatibility with the new Workshop 4 characters");

initPatch("1.11", "7 October, 2021");
initHeader("Both");
initSection("- Fspecial charge shot cooldown increased: 130f -> 150f
- Reflected Fspecial rapidfire is polite
- Remote Dspecial activation/deactivation cooldown increased: 10f -> 30f
- Remote Dspecial activation startup increased: 8f -> 12f
- Remote Dspecial angle changed: 60 -> 90
- Opponents can destroy remote Dspecial with a hitbox while in non-activated state
- Cooldown for remote Dspecial destroy increased: 90f -> 140f");
initHeader("Pit");
initSection("- Fspecial rapidfire rate decreased: 1 per 12f -> 1 per 14f");
initHeader("Dark Pit");
initSection("- Fspecial rapidfire rate decreased: 1 per 16f -> 1 per 18f");

initPatch("1.10", "4 October, 2021");
initHeader("Bug Fixes");
initSection("- Utilt/Ustrong special code no longer affects armoured opponents");

initPatch("1.9", "4 October, 2021");
initHeader("Both");
initSection("- Removed custom Fspecial buffer (no longer will put you in rapidfire state when holding special during charge shot endlag)
- Utilt and Ustrong hit 1 should connect into launcher hitboxes more reliably");

initPatch("1.8", "27 September, 2021");
initHeader("Both");
initSection("- Nair multihits hitbox adjusted (opponents should fall out less).
- Bair sweetspot hitbox size increased.
- Bair sweetspot angle reverted: 50 -> 45");

initPatch("1.7", "24 September, 2021");
initHeader("Dark Pit");
initSection("- Arrow glow intensity decreased");
initHeader("Other");
initSection("- Improved Fspecial code performance");

initPatch("1.6", "23 September, 2021");
initHeader("Both");
initSection("- Nair launcher damage decreased: 6 -> 3
- Nair launcher hitstun multiplier decreased: x1 -> x0.85
- Nair hitbox size decreased");
initSection("- Fair multihit damage decreased: 2 -> 1
- Fair launcher damage decreased: 6 -> 5
- Fair launcher kbg decreased: 0.6 -> 0.4
- Fair launcher bkb increased: 7 -> 8
- Fair launcher hitstun multiplier decreased: x1 -> x0.85");
initSection("- Uair multihit damage decreased: 2 -> 1
- Uair launcher damage increased: 4 -> 5");
initSection("- Dair sourspot damage decreased: 8 -> 6");
initSection("- Bair sourspot damage decreased: 9 -> 6
- Bair sourspot has angle flipper 7
- Bair sourspot kbg decreased: 0.6 -> 0.4
- Bair sweetspot damage decreased: 11 -> 10
- Bair sweetspot now has lower priority than sourspot
- Bair sweetspot angle changed: 45 -> 50
- Bair hitbox sizes adjusted
- Bair sweet/sourspot hitstun multiplier decreased: x1 -> x0.85");
initSection("- Fspecial charge shot cooldown increased: 100f -> 130f");
initSection("Utilt 1 damage decreased: 4 -> 3");
initSection("- Fstrong damage decreased: 14 -> 12");
initHeader("Pit");
initSection("- Arrow base damage decreased: 3 -> 2
- Arrow full charge damage decreased: 13 -> 9
- Arrow base speed decreased: 16 -> 14
- Arrow turn rate decreased: 6 -> 5.5
- Arrow base hitpause decreased: 8 -> 6
- Arrow hitpause scaling decreased: 0.5 -> 0.2
- Ustrong launcher damage decreased: 10 -> 8
- Uspecial late hit damage decreased: 8 -> 6");
initHeader("Dark Pit");
initSection("- Arrow base damage decreased: 5 -> 4
- Arrow full charge damage decreased: 15 -> 11
- Arrow base speed reduced: 18 -> 16
- Uspecial multihit damage decreased: 2 -> 1
- Dstrong sourspot damage decreased: 9 -> 8
- Dstrong sweetspots have higher priority than sourspots
- Dstrong hitbox sizes adjusted");

initPatch("1.5", "22 September, 2021");
initHeader("Both");
initSection("- Nair number of hits reduced (8 -> 6)
- Nair multihit hitboxes reworked, now a single circle hitbox that sends at a set angle (45)
- Nair multihit hitpause increased: 2 -> 4
- Nair multihit kb/bkb adjusted
- Bair sweetspot bkb decreased: 10 -> 7
- Fstrong hitbox 2 lifetime increased to match anim
- Fstrong hitbox 1 removed
- Fstrong startup decreased (to make first hitbox come out same frame as before)
- Ustrong launcher kbg decreased: 1.2 -> 1.1");
initHeader("Other");
initSection("- Nair/Fair/Uair multihit sfx intensity toned down
- Nair/Fair/Dattack anims updated to better match startup/endlag length");

initPatch("1.4", "21 September, 2021");
initHeader("Both");
initSection("- Dattack startup increase: 6 -> 9
- Dattack whifflag increased
- Dattack hsp boost reduced slightly
- Dair endlag increased (+3f)
- Nair startup increased (+1f)
- Ustrong startup increased (+2f)
- Ustrong whifflag fixed/increased");
initHeader("Pit");
initSection("- Ustrong launcher bkb decreased: 10 -> 7 (absa ustrong stats)
- Ustrong launcher kbg increased: 1.0 -> 1.2 (absa ustrong stats)");
initHeader("Dark Pit");
initSection("- Ustrong launcher hit comes out slightly faster to better connect from first hit (overall faf unchanged)
- Ustrong sweetspot height increased slightly
- Ustrong sweetspot bkb decreased: 11 -> 7 (same as Pit)
- Ustrong sweetspot kbg increased: 0.8 -> 1.2 (same as Pit)
- Ustrong sourspot bkb decreased: 9 -> 7
- Ustrong sourspot kbg increased: 0.8 -> 1.0");

initPatch("1.3", "21 September, 2021");
initHeader("Other");
initSection("- Fixed graphical issues with arrows and improved performance");

initPatch("1.2", "21 September, 2021");
initHeader("Other");
initSection("- fixed Fstrong bug and improved performance");

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
initWords_ext("Dark Pit was released!", fa_center, c_white, 0, false);

initPatch("About Dark Pit", "");
initHeader("Animations and code by");
initSection("RuberCuber");
initHeader("Character originally created by");
initSection("Masahiro Sakurai and Sora Ltd");
initHeader("SFX assets from");
initSection("Super Smash Bros Ultimate
Super Smash Bros Brawl
Kid Icarus: Uprising");

initHeader("Compatibility with");
initSection("Palutena's Guidance
Abyss Runes
Steve
Link");

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