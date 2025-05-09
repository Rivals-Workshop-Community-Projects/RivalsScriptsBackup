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
num_alts = 28;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Default",
	"Pastel Paste",
	"Purple Putty",
	"B&W",
	"Matt",
	"Aria",
	"Cosmar",
	"Ghostie",
	"Ghost King",
	"Toadie",
	"BlobDev",
	"BGS",
	"BGW",
	"NES",
	"Star Warrior",
	"Prince of Pufftop",
	"Lad",
	"G Devil",
	"Jigglypuff",
	"Green Goo",
	"Orange Slime",
	"Sky",
	"Neon Nova",
	"King Blob",
	"KoB",
	"Mr Oarly",
	"Blue Ball",
	"Box God",
	"Mudkip",
	"Galacta Knight",
	"Navy Nectar",
	"Silver Sludge"
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
muno_char_name = "Blue Blob";

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
initPatch("1.84", "7th December 2024");
initHeader("Fixes / Other Changes");
initSection("+ Made the AI much better
+ Fixed a recovery exploit");

initPatch("1.83", "16th August 2024");
initHeader("Fixes / Other Changes");
initSection("+ Added Green Flower Zone compat
+ Removed old Feri compat");

initPatch("1.82", "June 6th 2024");
initHeader("Buffs");
initSection("+ Hold DSpecial is stronger overall and does more damage and knockback, and also has less startup
+ BAir has a bit less startup (f18->f14)
+ FStrong does a bit more damage (10->12) and has less startup (f16->f13)
+ UStrong does a bit more damage (11->12), has less startup (f17->f15), and a bit more knockback scaling (1.0->1.05). It also goes higher up with charge
+ UAir, FStrong, and UStrong are a bit more consistent on hit");
initHeader("Nerfs");
initSection("- Hold USpecial does a bit less base knockback (8->7) to be a bit less crazy
- UStrong goes a bit less high up when uncharged
- Adjusted some hitboxes that were very large to be a bit more reasonable (DTilt dragdown, DAir)");
initHeader("Fixes / Other Changes");
initSection("+ Added extra impact to powerful hits, and made hits in general feel better with a custom shaky hitpause effect
+ Added silly angle 0 to some moves
+ Misc compatibility fixes
+ Fixed Rune O not working correctly when facing left (apparently), and added SFX to the laser");

initPatch("1.81", "23rd July 2023");
initHeader("Buffs");
initSection("+ Hold USpecial can now be done multiple times in the air (it just only pushes BB upward once)
+ BAir is stronger (damage 9 -> 10, bkb 6->7.5, kbs 1.0->1.05)
+ UAir multihits now pull through platforms (helps prevent teching/falling out of the move)");
initHeader("Fixes / Other Changes");
initSection("+ Blue Blob can now look at Kewtians
+ Improved BB's AI a lot, as it'll recover better and much more");

initPatch("1.80", "27nd April 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed some bugs from last patch with the blob ball and FSpecial");

initPatch("1.79", "22nd April 2023");
initHeader("Fixes / Other Changes");
initSection("- Fixed a small bug with the latest patch where FSpecial turning the blob ball into it's steam form wouldn't flip it to Blue Blob's direction (so now it works like it used to)");

initPatch("1.78", "21st April 2023");
initHeader("Buffs");
initSection("+ NAir can now be held cuz yay
+ Many moves now have a bit of disjoint to them, like most KoB characters (BB noteably lacked this)
+ DSpecial ice block can now spike during the falling sourspot on aerial opponents, and in general the move should be a bit better due to some redone code and improved stats
+ Blue Blob can now turn around with his double jumps like other multi-jump characters");
initHeader("Nerfs");
initSection("- When blowing up the blob ball, the ownership of the explosion should match the balls owner (aka BB can't just punish you for hitting or grabbing it anymore)
- Technically a nerf, but some DSpecial stuff is a bit weaker in some ways due to buggy/janky stats");
initHeader("Fixes / Other Changes");
initSection("- Improved some animations to be a bit smoother (ex: jab), and some smears to look better (ex: dair)
- Redid some DSpecial stuff as it was pretty janky
- Blob Ball now displays an outline color if it's owned by another player, to help indicate the owner change (if BB himself owns it then it'll have no outline like before, since that just looks best)
- Added Villager compatibility & fixed a bunch of KoB interaction stuff
- Did a bunch of misc fixes");

initPatch("1.77", "5th October 2022");
initHeader("Fixes / Other Changes");
initSection("- Added crown sprite to most animations when using King Blob or KoB alts");

initPatch("1.76", "5th October 2022");
initHeader("Buffs");
initSection("- Blue Blob can now taunt in the air, and he now has 2 new taunts (side taunt and down taunt). Credit to Skycrafter for making the taunts");

initPatch("1.75", "18th August 2022");
initHeader("Buffs");
initSection("- Jab3 kbs increased (0.5->0.9) to kill better, and does more damage (5->8)");
initSection("- DAttack now goes off ledges");
initHeader("Nerfs");
initSection("- Jab1 and Jab2 dmg decreased (3->2)");

initPatch("1.74", "22nd July 2022");
initHeader("Buffs");
initSection("- NSpecial Blob Ball does more damage and knockback when moving at higher speeds than before when in Steam mode. Steam mode also has more kbs when blown up as well");
initSection("- DSpecial ice block has a bit more knockback when sliding");
initSection("- Reduced DTilt startup (11->8) and FTilt startup (10->9). FTilt, UTilt, and DTilt are also all a bit faster overall");
initSection("- DTilt now does a bit more damage, kills better, and has a sort of dragdown hitbox added at the top. The endlag can also be cancelled on hit");
initSection("- UTilt sourspot has less bkb and kbs to combo better");
initSection("- DAttack can be cancelled a little earlier on hit than before");
initSection("- DAir has an extra hitbox and is overall slightly larger due to the new animation");
initHeader("Fixes / Other Changes");
initSection("- Updated DAir animation, hit SFX, etc");
initSection("- Fixed DSpecial ice block multihitting opponents");
initSection("- Fixed some missing hitpause scaling on certain hitboxes (mainly Blob Ball)");

initPatch("1.73", "10th May 2022");
initHeader("Buffs");
initSection("- USpecial now gives BB more of an upwards boost, doesn't halt his horizontal momentum as much, and it can also be held much longer");
initSection("- USpecial sweetspot is more powerful and the sourspot lasts way longer (90->180). If hit, the move can also be cancelled into other things");
initSection("- FSpecial steam cloud stays longer (480->720)");
initHeader("Fixes / Other Changes");
initSection("- Blob Ball and FSpecial cloud are now snaccable for Matty");
initSection("- FSpecial cloud can now also be grabbed by all characters (ownership returns to Blue Blob if he hits the cloud however)");

initPatch("1.72", "22nd April 2022");
initHeader("Buffs");
initSection("- Blob Ball now explodes when going off-screen, making it more reliable in certain ways");
initHeader("Fixes / Other Changes");
initSection("- Replaced a bunch of alts, and added the rest of his alts");

initPatch("1.71", "31st March 2022");
initHeader("Fixes / Other Changes");
initSection("- Fixed bug where recovery options wouldn't reset on death, forcing you to land first");

initPatch("1.70", "21st March 2022");
initHeader("Buffs");
initSection("- FAir has more range,,,");
initSection("- DAir hitboxes are a bit bigger, and the sourspot is a bit stronger (bkb 5->6, kbs 0.7->0.9)");
initSection("- Small FSpecial clouds now have hitstun and knockback");
initSection("- Increased FStrong kbs (0.92->1.0)");
initSection("- Changed UStrong angle (95->90) and increased knockback (bkb 6->7, kbs 0.98->1.0)");
initSection("- Decreased DStrong startup (24->20)");
initSection("- All strongs now have lower ground friction, letting you slide a bit during the startup");
initSection("- FTilt and UTilt do more damage and knockback");
initSection("- Blob Ball no longer despawns over time");
initSection("- DSpecial tap down now spikes");
initSection("- Hold USpecial is now much stronger, the sourspot can combo better, and it has less endlag");
initSection("- DAttack endlag can now be cancelled on hit");
initHeader("Fixes / Other Changes");
initSection("- Lowered ground friction (0.5->0.25)");
initSection("- Improved FAir animation, giving it a bit more weight and smoother endlag");
initSection("- Added a trail effect to UStrong");
initSection("- Fixed an sfx issue on jab");

initPatch("1.69", "24th November, 2021");
initHeader("Buffs");
initSection("- C r a w l");

initPatch("1.68", "24th November, 2021");
initHeader("Buffs");
initSection("- Crouch buffs again because epic");
initSection("- Increased airdodge speed a bit (7.5->8)");
initHeader("Fixes / Other Changes");
initSection("- Changed crouch animation");
initSection("- Added 5 new alts, with Box God alt having special box sprites for DSpecial, parry, and blob ball");
initSection("- Added phone");

initPatch("About Blue Blob", "");
initSection("");
initHeader("Character by");
initSection("FelixBlobDev");
initHeader("Compatible with");
initSection("Toon Link, Miiverse, Green Flower Zone, Dracula, TCO, Wily Castle, Trial Grounds, Pkmn Stadium, Last Resort, Mt. Dedede, Boxing Ring, Agent N, Otto, Steve, Link");

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
otto_bobblehead_sprite = sprite_get("otto_bobblehead");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("otto_bobblehead_body");

// Steve death message.
steve_death_message = "Steve got canceled on Twitter";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 6;

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