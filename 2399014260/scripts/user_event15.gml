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
	case 4: // yellow
	case 7:
	case 10:
		alt_ui_recolor = 2;
		break;
	case 6: // white
	case 14:
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
muno_char_name = "Captain Toad";
muno_char_id = 8;

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

initTip("FSpecial: Luma Shot");
initWords("FSpecial sends Luma out as a projectile, and then he sticks around onstage. Pressing FSpecial again has Luma attack in that direction with the Wii Remote pointer.");
initWords("The cooldown is displayed by the arrow above your head.");
initImage_ext(sprite_get("luma_idle"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("luma_fspecial"), -4, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("NSpecial: Luma Spin");
initWords("NSpecial without Luma deployed is the iconic spin move from Super Mario Galaxy, complete with the same cooldown indicator. It boosts you upward in midair.");
initImage(sprite_get("nspecial"), -4);

initTip("NSpecial: Pull Star");
initWords("If Luma is out on the stage, NSpecial is instead the Pull Star! (Hold the button for best results.) You can also use attacks while being pulled.");
initWords("The strength of both the pull and the gravity nullification get stronger the closer you are.");
initWords("Try fullhopping and using this move at the same time to orbit around Luma like a planet!");
initImage(sprite_get("luma_nspecial"), -4);

initTip("USpecial: Bee Mushroom");
initWords("USpecial uses the Bee Mushroom! You can cancel it with any action, and then resume it again - but keep an eye on the Fly meter.");
initWords("The amount of Fly meter also determines the speed of ascent, so it gets slower the less meter you have left.");
initImage(sprite_get("uspecial"), -4);

initTip("DSpecial: Vegetapull");
initWords("DSpecial on the ground has you pluck a turnip, run around freely, and then throw it! Throw it at Luma to bounce it upward, or cancel with a dodge.");
initWords("In the air, you'll grab enemies instead, with a time limit that ends early if you go below the stage. Dodge-canceling the move pops enemies up.");
initWords("When you throw an enemy, Luma will automatically perform FSpecial.");
initImage_ext(sprite_get("dspecial"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dspecial_air"), -4, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DAttack: Minecart Glide");
initWords("If you either A) hit an enemy with DAttack or B) end the move in midair, you'll cancel into a jump upward, able to immediately act!");
initImage(sprite_get("dattack"), -4);

initTip("DStrong: POW Drop");
initWords("When the POW Block from DStrong hits something, it'll create a huge shockwave that stuns enemies... but can only hit them if they're on the ground.");
initWords("Also, the POW Block will fall if you use the move at a ledge.");
initImage_ext(sprite_get("dstrong"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("vfx_pow"), -4, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Taunt: Warp Box");
initWords("Taunt turns you into Toadette! (Hold a direction to taunt without pulling out the phone.)");
initWords("If you press or are holding taunt during the intro animation, you can begin a match this way.");
initImage(sprite_get("taunt"), -4);



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

initPatch("1.5", "11 October, 2021");
initHeader("NSpecial - Adjustments");
initSection("When Luma gets hit during the Pull Star, Toad now gets popped up a bit instead of keeping his prior momentum.");

initPatch("1.4", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
Added dust effects to grounded normals.");
initHeader("BAir - Reworks");
initSection("Replaced with a three-hit attack that has similar stats.");
initHeader("DSpecial - Buffs, Adjustments, Aesthetics, Bugfixes");
initSection("Movement speed while holding an enemy or turnip 6 --> 8.
Grab hitbox extended downward.
Turnips bounced by Luma lifetime 35 --> 120.
Thrown turnips now travel faster depending on Toad's horizontal speed.
Throw hitbox lifetime 16 --> 3.
Hit sound for grabbing enemies changed.
Luma now turns to face turnips when bouncing them.
Lowered sfx volume.
Toad no longer drops a turnip on-hit if it's already been thrown.");
initHeader("DStrong - Adjustments");
initSection("Projectile angle 90 --> 270.
Projectile knockback 8/0.9 --> 6/0.7.
Shockwave hitbox is now transcendent.");
initHeader("USpecial - Bugfixes");
initSection("No longer gets canceled when Steve's water is anywhere onscreen - only when Toad is actually touching the water.");
	
initPatch("1.3", "17 July, 2021");
initWords("Community Patch: BowlingKing");
initHeader("FSpecial - Nerfs");
initSection("Luma Shot damage 9 --> 7.
Luma cooldown when killed by enemy 25f --> 60f.");
initHeader("USpecial - Buffs");
initSection("Upward travel speed increased.");
initHeader("DTilt - Buffs");
initSection("Can now be jump-canceled instantly on hit.");
initHeader("FStrong - Buffs");
initSection("Damage 10 --> 12.
Knockback growth 1.1 --> 1.2.");
initHeader("UStrong - Nerfs");
initSection("Startup 12f --> 15f.
Knockback growth 1.2 --> 1.1.");
initHeader("UAir - Buffs, Adjustments");
initSection("Damage 5 --> 6.
Angle 80 --> 90.
Base knockback 8 --> 9.
Knockback growth 0.8 --> 0.7.");

initPatch("1.2", "27 February, 2021");
initHeader("DSpecial Air - Buffs, Adjustments, Clarity");
initSection("Midair usage limit and stall removed.
Grab hitbox size and shape adjusted.
Visual effect added to sprite.");
initHeader("Jab - Buffs");
initSection("Both cancel windows start 3 frames earlier.");
initHeader("DTilt - Buffs");
initSection("Endlag can be canceled on hit.");
initHeader("NAir - Buffs, Adjustments");
initSection("Damage 6 --> 7.
Knockback growth 0.7 --> 0.8.");
initHeader("FAir - Buffs");
initSection("Damage 4 --> 5.");
initHeader("UAir - Buffs");
initSection("Endlag 18f --> 14f.");

initPatch("1.1", "18 February, 2021");
initHeader("NSpecial (Luma Spin) - Nerfs");
initSection("Now only grants height once per airtime (also refreshes when walljumping or getting hit).");
initHeader("DSpecial - Aesthetics, Bugfixes");
initSection("Luma now has an animation for throwing a turnip upwards.
Visual for dropping a turnip no longer appears when hit by non-flinching hitboxes.");
initHeader("USpecial - Funny");
initSection("Is now ended prematurely by Steve water.");
initHeader("DAir - Adjustments");
initSection("Base knockback 9 --> 8.
Knockback growth 1 --> 0.7.");
initHeader("Luma - Bugfixes");
initSection("Now ignores enemy hitboxes which deal 0 damage.");

initPatch("1.0", "17 February, 2021");
initHeader("General");
initSection("The character was released.");

initPatch("About Captain Toad", "");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("Super Mario Galaxy
Super Mario 3D World
Super Mario Bros. 2
Minecraft
Smash Ultimate");
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

CHEAT_BEE		= initCheat("Infinite Bee", [0, 1], ["Off", "On"], "Bzzzzz");



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
initCodecPage(SPK_TRUM, 0, 0, "coward");
initCodecPage(SPK_ALTO, 0, 0, "Captain Toad may seem like a lazy scaredy-cat who cowers at the slightest sign of danger...");
initCodecPage(SPK_ALTO, 2, 0, "...and practically, he kind of is...");
initCodecPage(SPK_ALTO, 6, 0, "...but he's fearless at heart!");
initCodecPage(SPK_CODA, 0, 0, "It takes a lot to be the leader of the Toad Brigade, after all.");
initCodecPage(SPK_ECHO, 2, 0, "Yeah - he got, like, three Power Stars that one time!");
initCodecPage(SPK_ECHO, 0, 0, "Only about 110 shy of Mario's total. Impressive.");
initCodecPage(SPK_OTTO, 0, 0, "To be fair, he can't even jump in his starring roles... kind of a handicap.");
initCodecPage(SPK_TRUM, 0, 0, "Can you beat Super Mario Galaxy WITHOUT JUMPING?!?
SmallAnt - 988K views

spoiler: no u cant");
initCodecPage(SPK_OTTO, 0, 0, "Exactly! Cut the guy some slack...");
initCodecPage(SPK_ALTO, 3, 0, "Luckily he packed a little bit lighter for his Rivals appearance... makes our job harder though!")

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve is sleeping under the tree on the hill!";

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