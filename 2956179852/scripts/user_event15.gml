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

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Hotel Mario",
	"Luigi",
	"Peach",
	"Bowser",
	"Fire Mario",
	"Wario",
	"Waluigi",
	"Super Show",
	"SMB",
	//"I. M. Meen",
	"Gnorris",
	"Morshu",
	"Eggman",
	"Mah boi",
	"Well excuuuuuuuuuuuuuuuuu",
	"Mr Oarly",
	"Sun",
	"Ms G",
	"Padde",
	"Elly",
	"Dr. Bellinal",
	"Wave",
	"Hectacular",
	"Mr Monopoly",
	"Webbtail145",
	"SuperG64",
	"SuperDom64",
	"Shyrx",
	"MarioMario54321",
	"Mr Dooter EX",
	"Unhand her!",
	"Match my shot",
	"Ice King",
];num_alts = array_length(alt_names);



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
muno_char_name = "Hotel Mario";

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

initTip("NSpecial: Ghost Cologne");
initWords("Mario grabs some ghost cologne and sprays it forward, anyone caught in it will be stunned from the spray. Afterwards it lingers for a couple seconds, freezing any projectiles caught in it. Mario himself is also able to float through it and have lower gravity as the cloud pushes him up.");
initImage_ext(sprite_get("nspecial"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Meatball");
initWords("Mario pulls out a meatball and rolls it along the ground, slowly increasing its size, then tosses it forward.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("meatball"), -9, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);


initTip("USpecial: Where am I?");
initWords("A pipe appears above Mario, which he is sucked into and launched out of at a diagonal angle. While shot out he gains a multihit hitbox over him. Opponents can be sucked into the pipe with him through a windbox on the opening of the pipe.");
initImage_ext(pipesprite, 2, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jump"), 1, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(pipesprite, 1, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("DSpecial: Toaster!");
initWords("Mario holds out a toaster in front of himself. Absorbable projectiles are absorbed, which then load the toaster. Upon use afterwards, it will fire toast forwards along with a hefty explosion from the toaster malfunctioning due to that garbage he stored in it.

- Holding parry will make you not throw out the toast allowing you to continue to stack it
- You can turn around while holding it");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

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
initPatch("1.7", "27th October, 2024");
initHeader("Fixes / Other Changes");
initSection("+ Fixed an error sound with Pig
+ Added burn status to DAttack fire
+ Improved hold input for FTilt and UTilt
+ Made the AI much better, giving it custom code for detecting incoming attacks and projectiles. This allow it to dodge/parry much more effectively in many cases");

initPatch("1.6", "1st June, 2024");
initHeader("Buffs");
initSection("+ FSpecial meatball now charges slightly passively while Hotel Mario is moving around while grounded
+ Mario can now make a comment if you've waited on CSS for a while
+ Mario now has a victory quote
+ Mario will now say 'This is it Luigi', if on a team with any Luigi, and the opposing team is at last stock
+ Mario will now say 'uh oh' if someone gains a stock (IE: Toads, Mr. Monopoly, etc.)
+ Updated the Voice playing to play pitched with size for the Toads
+ NSpecial's cloud now lasts longer with charge
+ NSpecial can be canceled");

initHeader("Nerfs");
initSection("- UAir's pig can no longer be frozen for the first 12 frames, afterwards it can.
- UAir pig no longer hits opponents while frozen");

initHeader("Fixes / Other Changes");
initSection("+ Improved some misc hitbox code
+ Peach's despawn hitbox is no longer freezable
+ Peach now becomes destroyable when Frozen
+ Uair's coins now despawn offscreen (hopefully fixes some lag?)
+ Made DAir work properly with other hittable KoB objects so it can bounce on them
+ NSpecial's cloud now properly disables its hit after the first 4 frames
+ NSpecial's cloud is now grabbable by other characters
+ NSpecial's cloud no longer freezes invisible projectiles
+ Fixed an NSpecial bug that could allow projectiles to be freezable from anywhere
+ Added shaky hitpause effect
+ Added angle 0 galaxy to (Jab 3, FTilt, BAir, FStrong, DAttack)");

initPatch("1.5", "15th November, 2023");
initHeader("Nerfs");
initSection("- UAir pig is now slightly easier to knock around with physical attacks, and weaker hits than before will prevent it from hitting you
- Powerful enough attacks now changes UAir pig's owner (aka letting it hit Hotel Mario back)
- Freezing Peach in the NSpecial cloud now makes her possible to destroy (yay!)");

initHeader("Fixes / Other Changes");
initSection("- DAttack fire ball is now marked as a fire hitbox
- Fixed FStrong poof being freezable");

initPatch("1.4", "7th October, 2023");
initHeader("Nerfs");
initSection("- Hotel Mario now loses some dspecial charge on death
- If toast is frozen by NSpecial it becomes destroyable (no more wall of indestructible toast)
- DStrong now has a bit more endlag (16/24->19/28) so it's not as safe to use anymore, and made the hitboxes slightly smaller (particularly the finisher)
- UAir pig now has slightly bigger hit collision, making it a little easier to challenge");

initHeader("Fixes / Other Changes");
initSection("- Mr Monopoly can now pick up the coins from the pig and gain money from it, skillful
- NSpecial's cloud now recolors properly with alts
- NSpecial's cloud now properly affects other players
- NSpecial's cloud now properly freezes articles
- Fixed some issues with Freezable not overriding other conditions
- Made USpecial's pulling in hitbox unable to be frozen by NSpecial
- Uair's coins are now not freezable or reflectable
- Mario now says 'princess' when doing FStrong like Luigi");

initPatch("1.3", "21st August, 2023");
initHeader("Buffs");
initSection("- Mario can look at all the flying magestic toast above him
- Walking now has sick music
- NSpecial's spray cloud stays out 1 second longer (both rune and normal)");

initHeader("Fixes / Other Changes");
initSection("- Added 'Frozen' variable to projectiles caught in NSpecial's spray cloud. Use it to make things not happen when frozen
- Added poof clouds to USpecial's pipe similar to Luigi
- Uair's pig will no longer spam coins when in hitpause or when frozen
- Peach will no longer lose all speed when unfrozen
- Added sleep animation");

initPatch("1.2", "20th April, 2023");
initHeader("Nerfs");
initSection("- DSpecial explosion base stats are weaker (9->7 dmg, 8->7 bkb, 1.0->0.7 kbs)");

initHeader("Fixes / Other Changes");
initSection("- Fixed some wrong colors on hud
- Added compatibility with Pokemon Stadium and The Last Resort");

initPatch("1.1", "2nd April, 2023");
initHeader("Nerfs");
initSection("- Hitting Mario while doing FStrong will make Peach continue to run but not hit the player
- FStrong is slower on whiff and has a small cooldown (10f)");

initHeader("Fixes / Other Changes");
initSection("- Parrying the cloud on nspecial while it's lingering will not put Mario into parrystun
- Added Wily Castle support");

initPatch("About Hotel Mario", "");
initWords("=====================================================");
initHeader("Developed by");
initSection("FelixBlobDev, DonGT, SkyCrafter1234, and Mr. G");
initHeader("Additional SFX from");
initSection("Hotel Mario");
initHeader("Compatible with");
initSection("Toon Link, Miiverse, Villager, Munophone, Wily Castle");

// Recommended template for non-Sandbert characters (delete the other patches):

/*

// other patches go here...

initPatch("1.20", "20th February, 2023");
initHeader("Buffs");
initSection("");

initHeader("Nerfs");
initSection("");

initHeader("Fixes / Other Changes");
initSection("");

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

CHEAT_TOASTER = initCheat("Toaster charge",[0,1,2],["0","1","2"],"Toaster!");

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

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 0;
Toadie_Ability = 3;
wily_robotmaster_img = sprite_get("Wily_Castle");
pkmn_stadium_front_img = sprite_get("pkmn");
pkmn_stadium_back_img = sprite_get("pkmn_back");
pkmn_stadium_name_override = "H. Mario";
resort_portrait = sprite_get("lastresort");
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

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 3;
miiverse_post = sprite_get("miiverse");
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