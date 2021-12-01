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
num_alts = 11;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Pikachu",
	"Pikablu",
	"Pikared",
	"Pikagreen",
	"Pikablack",
	"Pikurple",
	"Pikalbino",
	"Shiny",
	"Retro",
	"Gameboy",
	"Game & Watch",
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
muno_char_name = "Sandbert";

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

initTip("FSpecial: Electric Thunder Shock");
initWords("Electric Thunder Shock pulls opponents towards Pikachu, but it also causes Pikachu to recoil backwards!");
initWords("Getting back on stage with this move is a bit tricky due to the recoil. Perform FSpecial backwards to fly towards the stage!");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Electric Quick Attack");
initWords("Pikachu lunges upwards multiple times during Electric Quick Attack!");
initWords("The last hit of the move sends opponents downwards and could catch opponents off-guard for an early kill.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Electricity Field");
initWords("Once Pikachu's Electricity Meter, performing Down Special will create an Electricity Field");
initWords("If Pikachu touches the field it charges him and converts his next attack that uses Thunder to Electric");
initWords("Inside the field Pikachu gets a significant speed boost and using NSpecial inside will let Pikachu float wherever direction the joystick is held.");
initWords("Don't get too comfortable inside the Electricity Field though! Staying inside will drain the Electricity Meter faster; as well as using Electric Charged Attacks, inside or outside!");
initImage_ext(sprite_get("field"), -6, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("nair"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nair"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nair_elec"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);


initTip("Electric Attacks");
initWords("Pikachu's Electric Attacks work like Clairen's tippers, but more potent and stuns longer!");
initWords("Electric Attacks will stun opponents and extends hitpause and hitstun");
initWords("Electric Attacks similar to Clairen's Plasma tippers, but Pikachu's stuns last a little bit longer");
initImage_ext(sprite_get("ftilt"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ftilt"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ftilt_elec"), -4, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Crouch Dash");
initWords("Input: Forward, Down, Down Forward");
initWords("(Use the alternate input [Forward, Down Right Stick] on platforms to prevent platform dropping)");
initWords("Pikachu will dash into an evasive crouching stance, giving him brief invincibility and access to certain attacks.");
initWords("Attack Pressed: Wind God Fist");
initWords("Strong Pressed: Dragon Uppercut");
initWords("Special Pressed: Spinning Iron Tail");
initImage_ext(sprite_get("crouchdash"), -4, fa_left, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("EWGF"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("wgf_vfx"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dgf"), -6, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dgf_vfx"), -6, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initImage_ext(sprite_get("hellsweep"), -4, fa_right, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("C.Dash Attack: Wind God Fist");
initWords("A quick uppercut from an evasive move");
initWords("Wind God Fist counts as a tilt move! Since it is a tilt move, you can cancel jab into WGF.");
initImage_ext(sprite_get("EWGF"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("C.Dash Perfect Attack: Electric Wind God Fist");
initWords("Input: Forward, Down, [Down Forward + Attack]");
initWords("Pressing Attack as soon as possible during Crouch Dash will cause Wind God Fist to become Electric Wind God Fist.");
initWords("An electric sound will play on a successful input.");
initWords("It allows Pikachu to use Wind God Fist's Electric variant outside the Electricity Field. Performing it properly inside the Electricity Field does not drain the Electricity Meter.");
initImage_ext(sprite_get("EWGF"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("ewgf_vfx"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("C.Dash Special: Consecutive Spinning Iron Tail");
initWords("Spinning Iron Tail can be done twice in succession! Just press Special again after the first kick and the move will be extended for one more kick.");
initWords("Pressing Strong during any of the kicks will let Pikachu transition into Dragon Uppercut");
initImage_ext(sprite_get("hellsweep"), -4, fa_left, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initImage_ext(sprite_get("dgf"), -6, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dgf_vfx"), -6, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("C.Dash Strong: Dragon Uppercut");
initWords("Slow but hard hitting and a good counter attack!");
initWords("Utilize it's long invulnerability for a counter attack.");
initWords("Could there be more to this technique?");
initImage_ext(sprite_get("dgf"), -6, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dgf_vfx"), -6, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Crouch Dash Cancelling");
initWords("Pressing Forward while in the middle of a Crouch Dash will cancel it into a normal Dash!");
initWords("This makes it easy to chain Crouch Dashes together and approach evasively.");

// initTip("Sandbert's Lore");
// initWords_ext("Chapter 1", fa_center, c_gray, 0, false);
// initWords("Sandbert, a son of the ruling family of the Firelands, is an experienced and hardened warrior. He has fought many wars for the Fire Capital, a bellicose nation that constantly seeks to expand its influence over neighbouring lands. His courage in battle has made him a hero among his people.");
// initWords("However, his straightforward character and unquestioning allegiance to the Fire Nation blind him at times. He is a reliable general on the field, but naive to the larger politics of Aether. In battle, Sandbert is equally forthright; he uses no weapons except for his razor-sharp claws and ability to control flame.");
// initWords_ext("Chapter 2", fa_center, c_gray, 0, false);
// initWords("When he first arrived in Water Town, the merchant capital of Aether, Sandbert was considered a dangerous nuisance and a criminal. Sandbert is a playful trickster, notorious for escaping even the most precarious of situations.");
// initWords("However, while the Water Merchants denounce Sandbert in public, they do not hesitate to call upon him when they need a situation dealt with quietly. Sandbert is sly and can infiltrate even the most secure strongholds. He can transform into water and confuse enemies with a spray of bubbles, making him the perfect candidate for stealth assignments.");
// initWords_ext("Chapter 3", fa_center, c_gray, 0, false);
// initWords("The youngest trainee in the history of the Air Academy, Sandbert has never lived by anyone's rules but his own. After graduating at the top of his class, he joined the Air Armada, the military force of Air Nation.");
// initWords("Within a year, Sandbert became renowned not just in Air Nation but across Aether as a fierce and unpredictable figher. However, among his superiors, he is more infamous for his brashness and arrogance than for his daring deeds. Currently an Aerial Ace for the Air Armada, Sandbert is wrecking havoc among the Armada's enemies and generals alike.");
// initWords_ext("Chapter 4", fa_center, c_gray, 0, false);
// initWords("Sandbert is a defender of the colossal Aetherian Forest. Deliberate and loyal, he is one of the infamous Wall Runners who patrol the Rock Wall. From their position atop the Wall, Sandbert and his fellow Runners defend both sides of the rock face and the forest below.");
// initWords("While normally slow because of their massive bodies, Wall Runners can curl up into balls and traverse the Wall at high speeds. Unlike other Wall Runners, Sandbert has the legendary ability to control the earth with his will. When in peril, Sandbert can summon the earth to aid him, and he repairs the Wall when it is under siege.");



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

//-----------------------//
initPatch("1.2", "30 November, 2021");
initHeader("--Last Stretch Update--");

initHeader("This will be the final update until the Pokemon Jam judging is finished");
initSection("Think of this patch being the final Beta test patch :)");

initHeader("Electricity Field");
initSection("New Mechanic: Holding NSpecial inside the Field will let Pikachu float towards the control stick's direction");
initSection("Non-frame perfect Electric Wind God Fists inside Electricity Field now counts as a proper EWGF");
initSection("Non-frame perfect EWGF will not push back parries");
initSection("Non-frame perfect EWGF will have no Plasma Stun multiplier (Every Charged move deals 120% hitpause of what Plasma Stun normally does)");
initSection("Fixed a bug where attacking too fast consecutively will not charge the attack inside the field");

initHeader("NSpecial");
initSection("Knockback 7 -> 4");
initSection("Angle Flipper 0 -> 9");
initSection("Custom Gravity 50% -> 25%");
initSection("Loop limit [unlimited] -> 5 loops");
initSection("Implemented 20f Cooldown");
initSection("Can now be cancelled into an Attack");

initHeader("DSpecial");
initSection("3rd Elec.Charged Hitbox hitpause 4 -> 15");
initSection("3rd Elec.Charged Hitbox group -1 -> 1 (same as non Elec.charged Hitbox)");
initSection("Non Elec.charged Hitbox group -1 -> 1");

initHeader("FSpecial");
initSection("Disabled B-reverse");
initSection("Holding Special button will flip the direction of the move");

initHeader("UTilt");
initSection("Damage 6 -> 4");

initHeader("UStrong");
initSection("Angle 90 -> 110");

initHeader("Wind God Fist");
initSection("EWGF Hitpause 15 -> 10");
initSection("Fixed a bug where inputting EWGF in the recovery of Wind God Fist shows EWGF's animation");

initHeader("Misc");
initSection("Added Victory Music from Pokken");
initSection("Implemented proper outlined victory portraits for GnW and Gameboy Alts");

//-----------------------//

initPatch("1.1", "30 November, 2021");
initHeader("--Attack Changes and Corrections--");


initHeader("Dash Attack");
initSection("Hitpause Scaling 0 -> 0.7");

initHeader("FSpecial");
initSection("Hitbox moved 12 pixels forward");

initHeader("NSpecial");
initSection("Hitbox moved 2 pixels forward");

initHeader("DTilt");
initSection("Hitbox moved 10 pixels forward");
initSection("Hitbox wideness reduced by 22");

initHeader("FAir");
initSection("Extra Hitpause 0 -> 2");

initHeader("BAir");
initSection("Hitpause Scaling 0.4 -> 0.7");

initHeader("DAir");
initSection("Hitpause 20 -> 10");
initSection("Hitpause Scaling 1 -> 0.7");

initHeader("NAir");
initSection("Endlag 9 -> 10");

initHeader("DStrong");
initSection("Hitbox size reworked to match new visual");
initSection("Hitbox Angle 280 -> 75");
initSection("New 2f spike sweetspot on foot");

initHeader("FStrong");
initSection("Hitbox size reworked to match new visual");

initHeader("Wind God Fist/EWGF");
initSection("Hitbox wideness reduced by 14");
initSection("Hitbox moved 2 pixels forward");

initHeader("Dragon Upper");
initSection("Hitpause Scaling 0 -> 0.7");
initSection("Hitbox wideness reduced by 14");
initSection("Hitbox moved 2 pixels forward");
initSection("Hitbox moved 5 pixels upwards");

initHeader("Attack Sprites Improved");
initSection("FStrong and DStrong Sprites updated");

initHeader("Misc and Bug Fixes");
initSection("Fixed visual bug where attacking too quickly after an Electric Charged Move will retain the Electric VFX");
initSection("Latest patch notes now appear on top of Munophone Patch Menu");

//-----------------------//

initPatch("1.0.2a", "29 November, 2021");
initHeader("--More Adjustments and Misc Improvements Pt.2--");

initHeader("More SFX Adjustments");
initSection("SFX timing adjustmets");

initHeader("Electric Buff");
initSection("Fixed Electric Buff staying after getting knocked out");

initHeader("Sprite Changes");
initSection("F Special and N Special sprites updated");

//-----------------------//
 
initPatch("1.0.2", "29 November, 2021");
initHeader("--More Adjustments and Misc Improvements--");

initHeader("Reduced EWGF early input window");
initSection("EWGF input window 4f -> 2f");

initHeader("Hitstop adjustments");
initSection("Fair 1 hitstop 8f -> 5f");
initSection("Bair hitstop 6f -> 8f");

initHeader("More SFX Adjustments");
initSection("SFX timing adjustmets");

initHeader("Bonus Buff Pikachu Picture In Game Files");
initSection("he ripped yo");

//-----------------------//

initPatch("1.0.1", "28 November, 2021");
initHeader("--SFX Adjustments and Misc Improvements--");

initHeader("Hit SFX");
initSection("Changed Hit SFX of most moves to better fitting SFXs");

initHeader("Crouch Dash");
initSection("Crouch Dash now plays the Dash Start SFX");

initHeader("Camera Shakes");
initSection("Taunt and Down Strong now triggers camera shakes");

initHeader("Attack code Adjustments");
initSection("Adjusted code from attack_update.gml and attack.gml files");
initSection("Nothing has changed functionally in-game, only in code");

initHeader("Muno Phone Info");
initSection("Added more tips and cheats! :D");
initSection("Added some unlisted information in Frame Data viewer");

initHeader("2 New Alts");
initSection("Added Shiny and Game and Watch Colors");


//-----------------------//

initPatch("1.0.0", "28 November, 2021");
initHeader("Pikachu Mishima RELEASE!");
initSection("Have fun!");

//-----------------------//

initPatch("About Pikachu", "");
initWords("Pikachu inspired by Pokken & Tekken");
initHeader("developed by:");
initSection("Turpix");

initHeader("art by:");
initSection("Turpix");

initHeader("follow me :)");
initSection("Twitter - @Turpix_00");
initSection("Youtube - youtube.com/c/Turpix");
initHeader("Additional SFX from");
initSection("Tekken");
initHeader("Compatible with");
initSection("Trummel & Alto, Pit, Steve");

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

CHEAT_METER		= initCheat("Electric Meter always full", [0, 1], ["Off", "On"], "Meter always full when Electro Field isn't on stage");
CHEAT_ELECTRICS		= initCheat("Always EWGF", [0, 1], ["Off", "On"], "All Wind God Fists will be Electric Wind God Fists regardless of executions");
CHEAT_TURBO		= initCheat("Turbo Mode", [0, 1], ["Off", "On"], "All attacks can be cancelled into any attack on hit");
//CHEAT_INSTANT		= initCheat("Instant Attacks", [0, 1], ["Off", "On"], "All attacks will skip to the first active hitbox");
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
	AT_EXTRA_1,
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
SPK_SAND = initSpeaker(1, "Pikachu", sprite_get("_pho_example_speaker"));
SPK_TWIN = initSpeaker(2, "Shiny Pikachu", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 0, 0, "wow is that a Pikachu with a phone?");
initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Pikachu fell from a high place";

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
// Works kind of similarly to MunoPhone.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	3,	0,	"Hey whaddaya know, it's Pikachu!");
initCodecPagePit(SPK_PIT,	1,	8,	"Isn't he fighting a bit... differently?");
initCodecPagePit(SPK_PALU,	4,	1,	"This particular Pikachu seems to be fighting using martial arts.");
initCodecPagePit(SPK_PIT,	6,	7,	"Wait a minute... I think I've seen moves like this in Smash before!");
initCodecPagePit(SPK_PIT,	6,	0,	"He's fighting kinda like Kazuya, isn't he?");
initCodecPagePit(SPK_PALU,	3,	3,	"Correct, Pit!");
initCodecPagePit(SPK_PALU,	0,	1,	"More Specifically: He's fighting using the Mishima Karate Fighting Style");
initCodecPagePit(SPK_PALU,	0,	2,	"It's a style of Karate which was developed and honed by Jinpachi Mishima, Kazuya's grand father.");
initCodecPagePit(SPK_PIT,	7,	8,	"That still doesn't explain why Pikachu is fighting like this though...");
initCodecPagePit(SPK_PALU,	0,	2,	"Who knows? Kazuya's father Heihachi is known for adopting an abandoned bear cub as a pet,");
initCodecPagePit(SPK_PALU,	0,	1,	"taught it sign language, and trained it to fight as his body guard.");
initCodecPagePit(SPK_PALU,	0,	5,	"Maybe he adopted this same Pikachu and became it's pokemon trainer?");
initCodecPagePit(SPK_PIT,	3,	0,	"Wow! He seems like a nice guy caring for animals like that.");
initCodecPagePit(SPK_PALU,	6,	5,	"He sure is. Just ignore the fact that he threw Kazuya off a cliff at age 5.");
initCodecPagePit(SPK_PIT,	1,	8,	"He what?");


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