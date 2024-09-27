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
num_alts = 31;

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
muno_char_name = "Rayman";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = true;

// Set to true and the copyrighted sfx will be replaced with RoA menu sounds.
// They'll still be present in the files.
phone.copyright_safe_mode = false;

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

initTip("Helicopter Hair Fun!");
initWords("With just a little flick of his hair, Rayman can glide gracefully through the air, giving him extra hang time to outmaneuver opponents or extend his combos.")
initWords("Whether you’re dodging attacks or setting up the perfect strike, this hover lets you stay in the fight longer and make those aerial plays that much sweeter!");
initImage_ext(sprite_get("float_hover"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Crawling");
initWords("Rayman can sneak right under low attacks and projectiles, keeping a low profile while closing in on his opponents.")
initWords("It’s perfect for dodging danger and staying unpredictable. Who knew getting down on all fours could be so effective?");
initImage_ext(sprite_get("crawling"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("NSpecial: Plunger Blaster");
initWords("With his trusty plunge gun, he can fire projectiles to keep opponents at bay, zoning them out and controlling the fight from a distance. Perfect for keeping those pesky foes on their toes!");
initImage_ext(sprite_get("nspecial_proj_REAL"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Grappling Fist");
initWords("Hold on to your hats, here’s the Grappling Fist! Rayman will be able to reach out and grab foes from a distance, pulling himself right to them.");
initWords("Whether it's an enemy, terrain, or even his own Plunger Guard, nothing's out of reach with this versatile move. It’s the perfect tool for closing gaps and keeping the pressure on!");
initImage_ext(sprite_get("fspecial"), 4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("fspec_grapple_fist_tether"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("fspec_grapple_thrown"), 0, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Here's the kicker—Rayman can cancel out of the Grappling Fist into various attacks or even a jump boost. This makes it a great setup for combos or unexpected aerial plays. Mix it up and keep your opponents guessing!");
initWords("Though, watch out if you miss or happen to break the darn thing! Takes a while for it to recover before Rayman can use it again!");

initTip("USpecial: Throttle Copter");
initWords("Up, up, and away! With Rayman’s USPECIAL, the Throttle Copter, he takes to the skies using his trusty hair-helix.");
initImage_ext(sprite_get("uspecial"), 7, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Need to recover or outmanoeuvre an opponent? This move’s got you covered, letting Rayman soar through the air with precision and style.");
initWords("Perfect for staying in the fight when the going gets tough! And if you really REALLY feel like trying it, you can also use it to finish off foes into ceiling blastzones!");

initTip("DSpecial: Plunger Guard");
initImage_ext(sprite_get("dspecial"), 4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Rayman’s Plunger Guard brings a whole new level of strategy to the fight. This little gadget locks onto targets and fires projectiles, either in a straight line or at an angle.");
initWords("But that’s not all, you can kick it around to reposition and catch your opponents off-guard. It’s the ultimate tool for setting traps and keeping control of the battlefield!");
initImage_ext(sprite_get("dspec_plungerguard_spawn"), 8, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Grounded Use: When Rayman activates the Plunger Guard on the ground, he slams it down with force, creating a reasonable hitbox that knocks nearby foes away. It's perfect for clearing some space and setting up your next move.");
initWords("Aerial Use: If used in the air, Rayman tosses the Plunger Guard downward like a makeshift projectile. It lands and activates shortly after, giving you the chance to disrupt opponents from above before the guard starts firing.");
initImage_ext(sprite_get("dspec_plungerguard_toss"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The Plunger Guard isn’t just Rayman’s toy that opponents can kick it around or even knock Rayman himself with it, adding a layer of unpredictability to the match.");
initWords("Be strategic with its use! If the Plunger Guard gets destroyed or parried, Rayman will face a significant cooldown before he can deploy another, so timing is key to keeping up the pressure.");
initWords("Also, you wanna becareful if Rayman gets hurt while the turret is out. If Rayman takes a hit, the Plunger Guard will go into a cooldown period until it can be used again.");


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

initPatch("1.02", "11 September, 2024");
initHeader("GENERAL:");
initSection("* Updated the localization files.");
initHeader("NORMALS:");
initSection("UTILT:
(hitbox 1)
* Now using the basic small directional vfx instead of the large vfx.

FSTRONG:
* Minor adjustments for the height and width for the hitbox.");
initHeader("DSPECIAL:");
initSection("- Fixed an issue where if Rayman is parried while summoning the Plunger Guard while grounded, the turret would still spawn.
- The Plunger Guard now goes away if enemy players manage to parry it if Rayman tosses/knocks it around.");

initPatch("1.01", "30 August, 2024");
initHeader("UTILT:");
initSection("+ Added another hitbox to scoop up smaller opponents (e.g. Orcane)
+ Now a multihit attack");
initHeader("~BONUS~:");
initSection("+ Added the Dialogue Buddy lines");

initPatch("1.0", "30 August, 2024");
initImage_ext(sprite_get("taunt"), 9, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initHeader("Holy Crap! It's Rayman!!!");

initPatch("About Rayman", "");
initWords("Rayman is the title character and main protagonist of the Ubisoft's Rayman series.");
initWords("He is an anthropomorphic limbless protagonist dressed with a red neckerchief and white gloves with the ability to use his hair as helicopter blades and punch at a distance.");
initWords("And he is one of my favourite Fictional characters of all time.");
initHeader("Additional SFX from");
initSection("Rayman 3");
initSection("Rayman Origins/Legends");
initSection("Mario & Rabbids Sparks of Hope");
initHeader("Made by");
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

CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced (hold shield to not fly)");

CHEAT_DJUMPS	= initCheat("More_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Rayman's maximum number of double jumps.");
CHEAT_WIDE		= initCheat("wide?", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "why");
CHEAT_RECOIL	= initCheat("stop hitting yourself", [0, 1], ["Off", "On"], "Rabbids... That is all.");



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
SPK_RAYM = initSpeaker(1, "Rayman", sprite_get("_pho_rayman_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 0, 0, "eggplant");
initCodecPage(SPK_ALTO, 4, 0, "That's a bit rude, Trummel.");

initCodecPage(SPK_RAYM, 0, 0, "I get that alot. So, who are you two, exactly?");
initCodecPage(SPK_ALTO, 1, 0, "I’m Alto, and this is my partner, Trummel. We’re detectives.");
initCodecPage(SPK_TRUM, 7, 0, "yeah… mysteries…");

initCodecPage(SPK_RAYM, 0, 0, "Detectives, huh? That’s awesome!");
initCodecPage(SPK_RAYM, 0, 0, "I'm Rayman, maybe you can help me find my friend, Globox.");
initCodecPage(SPK_ALTO, 2, 0, "Did something happen to your friend?");
initCodecPage(SPK_RAYM, 1, 0, "We got seperated when I arrived... Well, whatever this place is.");
initCodecPage(SPK_RAYM, 1, 0, "And knowing how out there he can be at times, he’s probably hiding someplace.");

initCodecPage(SPK_TRUM, 6, 0, "money");
initCodecPage(SPK_ALTO, 11, 0, "Trummel, come on!");

initCodecPage(SPK_RAYM, 0, GIM_LAUGH_TRACK, "Sounds like you’ve got your hands—uh, I mean your trails-full.");

//initCodecPage(SPK_RAYM, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve just lost all his Lums!";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 1;

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
initCodecPagePit(SPK_PIT,	1,	8,	"Whoa, is that... A walking Eggplant? Is this another trick by that Wizard?!");
initCodecPagePit(SPK_PALU,	2,	5,	"No, no, Pit. That's Rayman, the Glade of Dreams hero. A unique fighter with some pretty unusual abilities.");
initCodecPagePit(SPK_PALU,	0,	1,	"He doesn’t have arms or legs, but that doesn’t stop him from packing a punch—or a kick!");
initCodecPagePit(SPK_PIT,	0,	2,	"Yeah, I can see that! What’s up with those floating hands? They’re all over the place!");
initCodecPagePit(SPK_PALU,	0,	1,	"Rayman’s hands and feet may be detached, but they give him incredible reach and flexibility.");
initCodecPagePit(SPK_PALU,	1,	2,	"He can throw his fists to attack from a distance, and even use his hair to hover in the air.");
initCodecPagePit(SPK_PALU,	1,	5,	"Plus, his arsenal includes some creative gadgets, like a Plunger Blaster and a Grappling Fist.");
initCodecPagePit(SPK_VIR,	1,	3,	"Don’t underestimate his Plunger Guard, either. That thing can be a real nuisance!");
initCodecPagePit(SPK_VIR,	5,	6,	"It locks onto you and fires projectiles! Oh, and it can be kicked around too.");
initCodecPagePit(SPK_PIT,	10,	8,	"So how do I deal with him?");
initCodecPagePit(SPK_PALU,	0,	0,	"Stay mobile and unpredictable. Rayman’s strength lies in his versatility and ability to control the battlefield.");
initCodecPagePit(SPK_PALU,	1,	3,	"Try to keep him on his toes and avoid getting caught in his traps.");
initCodecPagePit(SPK_PALU,	2,	4,	"Also, watch out for his hover ability. It makes him harder to hit when he’s airborne.");
initCodecPagePit(SPK_VIR,	6,	1,	"And remember, Pit, he’s got a history of saving the world, so don’t take him lightly!");
initCodecPagePit(SPK_PIT,	3,	0,	"Got it! I’ll show him that the Kid Icarus series isn’t just about floating hands and feet, either!");



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