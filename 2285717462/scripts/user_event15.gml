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
num_alts = 16;

// Whether or not to display a name for each alt.
use_alt_names = false;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
switch(get_player_color(player)){
	case 1: // shoes
		alt_ui_recolor = 2;
		break;
	case 5: // gloves
	case 15:
		alt_ui_recolor = 6;
		break;
	case 6: // skin
		alt_ui_recolor = 4;
		break;
	default:
		alt_ui_recolor = 0;
		break;
}

// The list of names for the alts, if enabled.
alt_names = [];



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
muno_char_name = "Sonic";
muno_char_id = 6;

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
	
initTip("Wisp Capsule: Canceling");
initWords("After performing a directional Special, you'll leave behind a Wisp Capsule. Once per airtime, you can Special into a Wisp Capsule to cancel into its respective Special Move (i.e. the Special you PLACED the Capsule with). Doing a Special out of a Capsule like this also allows you to aim it in any direction!");
initImage_ext(sprite_get("capsule_idle_laser"), -8, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("capsule_idle_rocket"), -8, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Wisp Capsule: Exploding");
initWords("After placing a Capsule, hit it with a normal attack to cause it to explode. This is Sonic's only projectile option (he's accustomed to BEING the projectile), so use it resourcefully!");
initImage_ext(sprite_get("capsule_idle_drill"), -8, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("capsule_explode_drill"), -8, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Wisp Capsule: Quick Place");
initWords("Hold the dodge button during the startup of a directional Special, and you'll cancel the Special while placing the Wisp Capsule. This leaves you open, so use it tactically.");

initTip("NSpecial: Spin Dash");
initWords("The aerial NSpecial is the Drop Dash, meaning you need to land on the ground to activate it. The aerial charge is very useful for hitting opponents or the Wisp Capsule.");
initWords("You can jump during a grounded NSpecial charge to hit enemies directly above. You can also perform this jump from the moving roll; doing this in midair conserves your double jump!");
initImage(sprite_get("nspecial"), -4);

initTip("FSpecial: Cyan Laser");
initWords("Hold up or down during FSpecial's startup to shoot off at an angle, able to bounce off of the floor, wall, or ceiling.");
initImage(sprite_get("fspecial"), -4);

initTip("DSpecial: Yellow Drill");
initWords("You can drill through the ground with DSpecial, following a fixed arc but able to choose your direction (left or right). Drilling into the ground avoids pratfall. DSpecial next to a wall and hold in to drill sideways! Hit an enemy before burrowing and you can cancel frame 1 of the burrow into anything except Wisps.");
initImage(sprite_get("dspecial"), -4);

initTip("Strongs: Elemental Shields");
initWords("FStrong and UStrong gain travel distance when charged. Greet faraway foes with a kill hitbox!");
initImage_ext(sprite_get("fstrong"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ustrong"), -4, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UAir: Tornado Kick");
initWords("Hit with the tip of UAir and then fastfall to drag a foe back down to earth!");
initImage(sprite_get("uair"), -4);

initTip("BAir: Jump Dash");
initWords("BAir sends Sonic on a down-angled trajectory while hitting enemies. If you catch a foe in FRONT of you right at the start, you can retreat in one direction while launching your foe the other way.");
initImage(sprite_get("bair"), -4);

initTip("Skydiving");
initWords("Sonic's pratfall state after using a Special is unique: just like in Sonic Colors, he starts skydiving! Hold down to speed up.");
initImage(sprite_get("pratfall"), -30);



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

initPatch("1.11", "14 April, 2023");
initWords("Advertising");

initPatch("1.10", "22 October, 2021");
initHeader("General");
initSection("Added a new Cheat.");

initPatch("1.9", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
Added dust effects to grounded normals.
Brightened color palette.");
initHeader("Stats - Adjustments");
initSection("Ground friction 0.7 --> 1.");
	
initPatch("1.8", "15 January, 2021");
initHeader("Damage Output - Nerfs");
initSection("Jab 3/7 --> 2/5.
UTilt 7 --> 6.
DAttack 8 --> 7.
FAir 7 --> 6.
UAir 2/2/2/3 --> 2/2/2/2.
DAir 12/8 --> 10/6.
NSpecial ground charge 2 --> 1.");
initHeader("FStrong, Ustrong - Nerfs, Adjustments");
initSection("You can no longer slide off an edge to charge in midair.
FStrong endlag now has more ground friction.
UStrong uncharged jump height slightly decreased.");

initPatch("1.7", "15 December, 2020");
initHeader("Stats - Nerfs, Adjustments");
initSection("Max air speed 6 --> 4.
Air friction 0.04 --> 0.02.");

initPatch("1.6", "08 December, 2020");
initHeader("USpecial - Nerfs");
initSection("The last 4 frames of the move are now a sourspot.");
initHeader("FStrong - Nerfs");
initSection("Knockback scaling 1.1 --> 1.0.");
initHeader("FAir - Nerfs, Adjustments");
initSection("Startup 6f --> 8f.
Hitbox is now a rounded rectangle instead of an ellipse (overall height slightly reduced to account for this).");

initPatch("1.5", "01 December, 2020");
initHeader("DSpecial - Nerfs");
initSection("The move now has whifflag, but only after burrowing and emerging directly vertically from the ground.");
initHeader("NAir - Nerfs");
initSection("Hitbox size decreased.");
initHeader("DAttack - Nerfs");
initSection("On-hit sliding mechanic removed.");
initHeader("MunoPhone - Aesthetics");
initSection("Phone now gets recolored to the alt.");

initPatch("1.4", "22 November, 2020");
initHeader("NSpecial - Nerfs");
initSection("Uncharged / dropdash speed lowered; max charge speed preserved.
Hitboxes are smaller.");
initHeader("DSpecial - Buffs");
initSection("No longer a multi-hit. Instead, it's a single strong hit with horizontal (initial) or vertical (after emerging from the ground) knockback.
If you land the hitbox and then burrow, you can cancel the first frame of the emerging state into any action.");
initHeader("DAttack - Nerfs");
initSection("Endlag 12 --> 14.");
initHeader("FStrong - Buffs");
initSection("Knockback scaling 0.9 --> 1.1.");
initHeader("UStrong - Buffs");
initSection("Knockback scaling 1.0 --> 1.1.");

initPatch("1.3", "18 November, 2020");
initHeader("Stats - Nerfs");
initSection("Knockback adj 1.05 --> 1.2.");
initHeader("FSpecial, DSpecial - Buffs, Nerfs");
initSection("These moves now share a 90f cooldown.
Endlag 25 --> 30.
Laser: Pratfall is no longer avoided by bouncing off of terrain.
Drill: Hold toward the wall to drill sideways into it.");
initHeader("NSpecial - Bugfixes");
initSection("Spin charge sfx is now canceled when Sonic gets hit.");
initHeader("NAir - Experiments");
initSection("Removed last hit's angle flipper.");

initPatch("1.2", "14 November, 2020");
initHeader("FSpecial - Nerfs");
initSection("Extra hitpause 25 --> 15.");
initHeader("USpecial - Adjustments");
initSection("Knockback base/scaling 10/0.95 --> 9/1.");
initHeader("FTilt - Buffs");
initSection("Startup 16 --> 12.");
initHeader("NAir - Adjustments");
initSection("Last hit angle flipper 0 --> 3.");
initHeader("Jab - Adjustments");
initSection("Jab 2 angle flipper 6 --> 0.");
initHeader("Misc. - Clarity, Bugfixes");
initSection("Wisp Capsules now have an offscreen indicator.
Wisp Specials now cancel certain sfx when interrupted by an attack.");

initPatch("1.1", "13 November, 2020");
initHeader("Phone - Bugfixes");
initSection("Fixed an issue in the About app.");

initPatch("1.0", "13 November, 2020");
initHeader("General");
initSection("The character was released.");

initPatch("About Sonic", "");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("Sonic 3
Sonic Colors
Sonic Lost World
Sonic Adventure 2
Probably another Sonic game that I'm forgetting");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link");



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

CHEAT_AIM		= initCheat("Free Wisp Aim", [0, 1], ["Off", "On"], "Freely aim Wisp Specials, even when they're not done from a Wisp Capsule.");
CHEAT_DRILL		= initCheat("Drill Control", [0, 1], ["Off", "On"], "Control Sonic's movement during DSpecial.");



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

initCodec(0);
initCodecPage(SPK_TRUM, 0, 0, "Sonic the Hedgehog (commonly referred to as Sonic '06) is a 2006 platform game developed by Sonic Team and published by Sega. It was produced in commemoration of the Sonic series' 15th anniversary, and intended as a reboot for the seventh generation video game consoles. Players control Sonic, Shadow, and new character Silver, who battle Solaris, an ancient evil pursued by Doctor Eggman. Each playable character has his own campaign and abilities, and must complete levels, explore hub worlds and fight bosses to advance the story. In multiplayer modes, players can work cooperatively to collect Chaos Emeralds or race to the end of a level.

Development began in 2004, led by Sonic co-creator Yuji Naka. Sonic Team sought to create an appealing game in the vein of superhero films like Batman Begins, hoping it would advance the series with a realistic tone and multiple gameplay styles. Problems developed after Naka resigned to form his own company, Prope, and the team split to work on the Wii game Sonic and the Secret Rings (2007). As a result, Sonic the Hedgehog was rushed so it could release in time for the holiday season. It was released for Xbox 360 in November 2006 and for PlayStation 3 the following month. Versions for Wii and Windows were canceled. Downloadable content featuring new single-player modes was released in 2007.

Sonic the Hedgehog received praise in prerelease showings, as journalists believed it could return to the series' roots after years of mixed reviews. However, it was a critical failure. Reviewers criticized its loading times, camera system, story, stability, and controls. It has been frequently described as the worst game in the series. In 2010, Sega delisted Sonic the Hedgehog from retailers, following its decision to remove all Sonic games with below-average Metacritic scores to increase the value of the brand. Its failure led to a rethinking of the series' direction; future games ignored its tone and most characters.");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve got sent to Minecraft";

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