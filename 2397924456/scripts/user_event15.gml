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
alt_ui_recolor = 0;

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
muno_char_name = "Akira";
muno_char_id = 7;

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

initTip("Legion Basics");
initWords("Your Legion can either be following you (synced) or away from you (desynced); when desynced, the Legion becomes vulnerable to enemy attack and does not regenerate HP.");
initWords("Using any Legion attack except for USpecial uses up some of its HP; when below 5 HP, these attacks cannot be used at all.");
initWords("Letting the Legion's HP reach 0 will inflict recoil damage on Akira.");
initImage(sprite_get("legion_idle"), -6);

initTip("NSpecial: Legion Command");
initWords("NSpecial is the main way to move the Legion and toggle between synced / desynced. Tap it to send it out, tap again to recall. When sending it out, quickly press a direction to aim it.");
initWords("By holding NSpecial, you can freely move the Legion around, which lets it go further than simply tapping NSpecial.");
initImage(sprite_get("legion_walk"), -6);

initTip("FSpecial: Round Sword");
initWords("FSpecial has the Legion rush forward, and then follow up on-hit with a flurry attack. It goes further if used when the Legion is synced.");
initImage(sprite_get("legion_fspecial"), -4);

initTip("USpecial: Beast Legion");
initWords("USpecial while synced is a horizontal leap with the Beast Legion. It's wimpy for vertical recovery, but you can cancel on-hit to combo.");
initImage(sprite_get("uspecial"), -4);

initTip("USpecial: Chain Jump");
initWords("While desynced, the Beast Legion jump will be preceded by a Chain Jump, where you grapple to the Legion while performing a flying kick.");
initWords("If an enemy attacks the Legion while you're trying to USpecial, you'll be immediately dropped into pratfall.");
initWords("Landing the kick allows you to cancel out of the following Beast Legion jump, even if that attack itself does not connect.");
initImage(sprite_get("uspecial2"), -4);

initTip("DSpecial - Chain Drive");
initWords("This is an attack which electrifies the dangling chain and turns it into a hitbox.");
initWords("Used while synced, it takes longer to charge up but is way more powerful.");
initImage(sprite_get("legion_dspecial"), -4);

initTip("Desynced Strongs");
initWords("The Legion can use Strong Attacks while desynced! ...But you can't charge them. We're not running a charity here,  y'know.");
initImage_ext(sprite_get("legion_fstrong"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("legion_dstrong"), -4, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UStrong: Axe Legion");
initImage_ext(sprite_get("legion_ustrong"), -4, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("big. funny.");

initTip("Jab/NAir: X-Baton Combo");
initWords("Akira's Jab and NAir are the same three-hit combo. The combo progress is stored as long as you're in an attack or dodge state; watch the white arrow above your head. (e.g. try jabbing and then spamming attacks)");
initImage_ext(sprite_get("jab1"), -4, fa_left  , 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jab2"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jab3"), -4, fa_right , 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Jab 3's Timed Hit");
initWords("When hitting an enemy with jab 3, you'll see a glow and hear a sound cue. Press B or the C-Stick / Strong Button to have the Legion follow up with FSpecial or a Strong Attack!");
initImage(sprite_get("jab3"), -4);

initTip("DAir: Gladius Slam");
initWords("DAir drags enemies down, but when the move is canceled (or when you near the bottom blastzone), the enemy will be sent UPWARD at an angle.");
initImage(sprite_get("dair"), -4);



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

initPatch("1.4", "05 February, 2022");
initHeader("Legion - Bugfixes");
initSection("Fixed a crash introduced with the new RoA patch.");
initHeader("UStrong - Nerfs");
initSection("Knockback growth 1 -> 0.99999.");

initPatch("1.3", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
Added dust effects to grounded normals.");
initHeader("Strong Attacks - Buffs");
initSection("Duration of desynced casting animation 44 --> 20.");
initHeader("FTilt - Nerfs");
initSection("Now has a 30f cooldown.");
initHeader("UStrong - Nerfs");
initSection("Endlag 20 --> 25.");
initHeader("DStrong - Buffs");
initSection("Startup 20 --> 16.");
initHeader("DAir - Nerfs");
initSection("Falling hitbox's upward range reduced.");
initHeader("BAir - Nerfs");
initSection("Startup 6 --> 8.
Landing lag 6 --> 8.");
initHeader("Jab 3 - Adjustments");
initSection("Lowered the speed cap at the end.")
initHeader("FSpecial - Bugfixes");
initSection("Non-final hits no longer cause the galaxy effect.");
initHeader("USpecial - Bugfixes");
initSection("Chain Jump version can no longer be B reversed during the Beast Legion jump.");
	
initPatch("1.2", "18 February, 2021");
initHeader("NSpecial - Buffs");
initSection("The first midair use of NSpecial now stalls your fall much more.
Legion movement speed increased.");
initHeader("FSpecial - Bugfixes");
initSection("Synced FSpecial now gets interrupted properly when Akira gets hit.");
initHeader("USpecial - Nerfs");
initSection("Last patch's height increase reverted.");
initHeader("Legion - Bugfixes");
initSection("Now ignores enemy hitboxes which deal 0 damage.
No longer reacts to hitting Forsburn clones.");
initHeader("FStrong - Nerfs");
initSection("Angle (both hitboxes) 40 --> 45.");
initHeader("DStrong - Buffs");
initSection("The shockwave hitbox now takes priority over the Fist hitbox against grounded opponents.");
initHeader("UTilt - Buffs");
initSection("Second hitbox moved up a little bit.");
initHeader("DTilt - Buffs");
initSection("Startup 10 --> 8.");
initHeader("FAir - Nerfs");
initSection("Hitbox size reduced, position adjusted.");
initHeader("BAir - Nerfs");
initSection("Landing lag 4 --> 6.");
initHeader("UAir - Adjustments");
initSection("Angle flipper 0 --> 3.");
initHeader("Jab 3 - Nerfs, Aesthetics");
initSection("Knockback growth 0.6 --> 0.4.
Adjusted vfx.");
initHeader("FTilt - Nerfs");
initSection("Behavior on parry corrected.");

initPatch("1.1", "16 February, 2021");
initHeader("USpecial - Buffs");
initSection("Beast Legion jump height increased.
Whiffing the move no longer restricts momentum when you land during the move or when it ends.");
initHeader("FSpecial - Buffs");
initSection("Legion's knee attack hitbox moved forward.");
initHeader("Legion - Bugfixes");
initSection("Added a check for unexpected Legion states - i.e. fixed the bug where the Legion might get frozen for no reason.");

initPatch("1.0", "16 February, 2021");
initHeader("General");
initSection("The character was released.");

initPatch("About Akira", "");
initHeader("Character by");
initSection("Muno - byMuno.com");
initHeader("SFX from");
initSection("Astral Chain
Super Smash Bros. Ultimate");
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

CHEAT_TRAILER	= initCheat("Trailer Mode", [0, 1], ["Off", "On"], "Hides or moves certain HUD elements for trailer recording; meant to be used in conjunction with hiding the overhead name and damage indicators.");
CHEAT_LEGION_HP	= initCheat("Infinite Legion HP", [0, 1], ["Off", "On"], "Lock the Legion's HP permanently at its max value.");



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
	AT_NAIR,
	AT_NTHROW,
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
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
	AT_EXTRA_3,
	AT_FSPECIAL_2,
	AT_FTHROW,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL,
	AT_DSPECIAL_2,
	AT_UTHROW,
	AT_DTHROW,
	AT_EXTRA_1,
	AT_EXTRA_2,
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
initCodecPage(SPK_ALTO, 0, 0, "Another anime fighter... great.");
initCodecPage(SPK_ECHO, 0, 0, "Don't let the game's annoying theme song fool you - Astral Chain has a generally outstanding soundtrack!");
initCodecPage(SPK_ECHO, 2, 0, "There's so much good techno, and the bass line in that one song is just--");
initCodecPage(SPK_OTTO, 0, 0, "Yeah yeah, can we get some fighting tips though?");
initCodecPage(SPK_CODA, 0, 0, "Trummel, Alto - Akira's combat focuses entirely on her Legion.");
initCodecPage(SPK_CODA, 0, 0, "She can dish out good combos on her own, but the otherworldly beast she fights alongside holds the real firepower.");
initCodecPage(SPK_ECHO, 2, 0, "Just make sure to hit it when you get the chance - the Legion's attacks all use its HP as ammo.");
initCodecPage(SPK_ALTO, 4, 0, "Got it - we just need to punish her whenever she tries to throw it at us!");
initCodecPage(SPK_TRUM, 0, 0, "alto wouldnt it be cool if u were my legion");
initCodecPage(SPK_ALTO, 5, 0, "...What?! No!!");
initCodecPage(SPK_ALTO, 6, 0, "I'm not some puppet on a string, Trum.");
initCodecPage(SPK_TRUM, 0, 0, "legion...

attack!!!!!");
initCodecPage(SPK_TRUM, 0, 0, "...");
initCodecPage(SPK_TRUM, 1, 0, "damg");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve ran out of AED Batteries";

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