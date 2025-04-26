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
	case 6: // tan
		alt_ui_recolor = 2;
		break;
	case 11: // collar
		alt_ui_recolor = 7;
		break;
	case 12: // guitar
	case 13:
	case 14:
		alt_ui_recolor = 2;
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
muno_char_name = echo ? "Tempo" : "Coda";
muno_char_id = 3 + echo;

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 84;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = true;

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

if echo{
	initTip("Tempo VS Coda");
	initWords("Tempo is Coda's Echo Fighter, and both of her gameplay differences are related to her artificial Air Keytar (compared to Coda's mythical Air Guitar).");
	initWords("First, Tempo has an entirely different set of Power Chords, which are more situational but allow for creative plays.");
	initWords("Also, Tempo's FSpecial instantly reaches full charge (unless the Air Keytar is already floating somewhere away from her).");
}

initTip("NSpecial: Power Chords");
initWords("Use NSpecial to select 1 of 5 Power Chords - your Air Guitar infuses you with its power. Each one has its own upsides, downsides, and cooldown timer.");
if echo initWords("Tempo's Power Chords are entirely different from Coda's!");
initImage_ext(sprite_get("nspecial"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("hud_chord_icons"), -12, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Chord Switching");
initWords("You can switch Power Chords at any time - even while attacking or taking damage!");
initWords("If your Air Guitar is deployed using FSpecial or DSpecial, using NSpecial will bring it right back.");
initWords("While selecting a Power Chord, your fall speed is capped.");

var chord_descs = echo ? [
	"Float Chord (IV)
	+ Floatiness, Air Movement
	* Absa DJump
	- Weight",
	
	"Slide Chord (V)
	* Near-Zero Friction
	* Accelerating Dash
	+ Moving During Ground Attacks
	+ FAir / BAir Speed Boost
	- Damage Dealt, Knockback Dealt",
	
	"Dodge Chord (II)
	+ Rolls, Airdodge
	- Weight",
	
	"Stun Chord (III)
	+ Clairen Stun, Damage Dealt
	* Less Knockback Dealt
	- Damage Resistance, Weight, Air Movement",
	
	"Reverse Chord (V7)
	* Reversed KB Angles
	* Chord Menu Reverses Momentum"
	]
:
[
	"Jump Chord (IV)
	+ Jump Height, Air Movement, Fall Speed
	+ USpecial Distance
	- Weight",
	
	"Speed Chord (V)
	+ Ground Speed, Air Speed
	+ DAttack Distance
	- Jump Height, Damage Dealt, Knockback Dealt",
	
	"Shield Chord (II)
	+ Weight, Damage Resistance
	+ Parry Duration
	- All Movement, Damage Dealt, Knockback Dealt",
	
	"Buster Chord (III)
	+ Damage Dealt
	* Less Knockback Dealt
	- Damage Resistance, Weight",
	
	"Smash Chord (V7)
	+ Knockback Dealt
	- Damage Dealt, Damage Resistance, Weight"
	];

initTip("Each Power Chord's Effect");
for (var index = 1; index < 6; index++){
	initImage_ext(sprite_get("hud_chord_icons"), index, fa_left, 1, 1, false, chord_color[index], 1, true, 50, 60, 50, 40);
	initWords_ext(chord_descs[index-1], fa_left, chord_color[index], 4, index == 5);
}

initTip("F/DSpecial: Guitar Drive");
initWords("Use FSpecial or DSpecial to throw the Air Guitar as a projectile. While it's out, the Power Chord's timer is paused, BUT you don't get its effects.");
initImage_ext(sprite_get("fspecial"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("guitar_hitbox"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Guitar Lingering");
initWords("While it's thrown, you can use FSpecial or DSpecial to ''throw'' the Air Guitar again. Charged FSpecial has a longer-lasting initial throw, AND allows you to string together many remote throws. The enemy can hit the guitar, though.");
initWords("Separately, having a Power Chord active will change the properties of the charged FSpecial throw.");
initImage_ext(sprite_get("fspecial"), -5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("guitar_hitbox_charged"), -5, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: B-Side Kick");
initWords("There are two ways to cancel USpecial. First, if you transition from ground to air during a non-upward USpecial, you can act after the hitbox ends. It's like a very generous edge-cancel.");
initWords("Second, you can USpecial into the thrown Air Guitar to cancel into a grounded jumpsquat - and even USpecial AGAIN!");
initImage(sprite_get("uspecial"), -5);

initTip("FStrong: Hook Spin");
initWords("During FStrong's charge, there's a hitbox behind you. Release with good timing, and you can combo into the main attack!");
initImage(sprite_get("fstrong"), -5);

initTip("Jab: Rapid Tag");
initWords("You can keep using Jab for quite a while, but there is a limit. Try using this time to tactically switch Power Chords!");
initImage(sprite_get("jab"), -5);

initTip("NAir: Back-Hit Wonder");
initWords("The back hit of NAir sends enemies FORWARD.");
initWords("That is all.");
initImage(sprite_get("nair"), -5);

initTip("Taunt: Solo Gig");
initImage_ext(sprite_get("taunt"), -5, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("You can play songs with your taunt! The key is A Major.");
initWords("Controls:
- Attack: Play Note
- Special: Play Note, -1 Octave
- Jump: Play Note, +1 Octave
- Shield (Hold): Sharp
- Taunt: Quit");
initWords("Megalovania is IV IV IV+1 I+1, VII VI# V#, IV V# VI#.");
initWords("P.S. Hold a direction to taunt without opening the MunoPhone.");

if echo {

	initTip("Tempo's Lore");
	initWords("Tempo is Coda's sister and partner-in-crime, wielding an artificial Air Keytar instead of Coda's magical artifact.");

}

else {

	initTip("Coda's Lore");
	initWords("Coda is a media manager from the future, and he owns his own record label that rivals Pomme's work. He found the mystical Air Guitar in the Six-String Sands ruins, and now he's ready to play some really cool music but also beat people up.");

}



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

initPatch("1.23", "06 April, 2025");
initWords("Community Patch: JPEG Warrior");
initHeader("Bair - Adjustments");
initSection("Early hit hitpause scaling 0.25 --> 0.45");
initHeader("Uspecial - Bugfixes");
initSection("Now properly goes into parrystun if parried while grounded.");

initPatch("1.22", "08 November, 2023");
initWords("Community Patch: JPEG Warrior
(again again)");
initHeader("FStrong - Nerfs");
initSection("Main hit angle 40 --> 45.");
initHeader("UStrong - Adjustments");
initSection("Angle 85 --> 90.
Base knockback 9.5 --> 9.
Hitpause scaling 0.5 --> 0.8.");

initPatch("1.21", "14 April, 2023");
initWords("Advertising");

initPatch("1.20", "29 December, 2022");
initWords("Community Patch: JPEG Warrior
(again)");
initHeader("UAir - Buffs");
initSection("SDI Multiplier 1.0 --> 0.5.
Adjusted multi-hit pull code to connect more reliably.");
initHeader("FSpecial - QoL");
initSection("Melee hit lifetime 5 --> 4.");
initHeader("Ustrong - QoL");
initSection("Hit vfx changed.");
initHeader("DTilt - QoL");
initSection("Hitpause scaling 0.5 --> 0.7.
Hit vfx changed.");
initHeader("UTilt - QoL");
initSection("Hit sfx changed.");

initPatch("1.19", "19 September, 2021");
initHeader("General");
initSection("Upgraded to MunoPhone Touch.
Added dust effects to grounded normals.
Gave a second pass to certain sprites.
Brightened color of the guitar, and made it the color used for generic hit effects and dust clouds.");
initHeader("DStrong - Reworks");
initSection("Added a slide along the ground that scales with charge.");
	
initPatch("1.18", "29 July, 2021");
if echo{
	initWords("Parity update to go along with Coda's.");
}
else{
	initHeader("
	Otto and Coda are in the upcoming Riptide tournament's Workshop side event! This patch just gets a couple of things ready for that event.")
	initHeader("Cosmetics");
	initSection("Seasonal alt replaced with a special Riptide-colored alt.
	To avoid copyright issues, during 10-13 September, 2021, their victory themes will be replaced with Trummel's.");
}

initPatch("1.17", "29 June, 2021");
initWords("Community Patch: JPEG Warrior");
if echo{
	initHeader("Power Chords - Nerfs");
	initSection("Reverse now changes knockback_adj to 1.2, while also multiplying knockback dealt by 0.6 and damage taken by 1.1.
	Reverse momentum-flip meter consumption 60 --> 80.");
	initHeader("FSpecial - Buffs, Nerfs, Bugfixes");
	initSection("Tempo's FSpecial no longer auto-charges.
	Dodge FSpecial has a larger hitbox, hitpause scaling 0.6 --> 0.8, and shorter travel distance.
	Stun FSpecial extra hitpause 30 --> 50.
	Fixed a bug where FSpecial would still retain Stun's effects even after the Chord ended.
	It is no longer possible to open the Power Chord dial during FSpecial or DSpecial.");
}
else{
	initHeader("Power Chords - Nerfs");
	initSection("Jump Chord air speed 8 --> 7, air accel 0.4 --> 0.35, jump/djump heights 17/16 --> 16/15.
	Buster damage multiplier 1.5 --> 1.4.");
	initHeader("FSpecial - Bugfixes");
	initSection("It is no longer possible to open the Power Chord dial during FSpecial or DSpecial.");
}
initHeader("DAir - Nerfs");
initSection("Sweetspot angle 280 --> 270.");
initHeader("USpecial - Adjustments");
initSection("Knockback 9/0.5 --> 8/0.55.");

initPatch("1.16", "31 January, 2021");
if echo{
	initWords("Parity update to go along with Coda's.");
}
else{
	initHeader("Buster FSpecial - Nerfs, Bugfixes");
	initSection("Damage of each rapid hit 2 --> 1.
	Last hit damage 5 --> 4.
	Puts FSpecial on cooldown during the rapid hits.
	Command grab code now only affects enemies in hitstun.");
}

initPatch("1.15", "15 January, 2021");
initHeader("Power Chords - Adjustments");
initSection("You can now recall the guitar with NSpecial from slightly further away.");
initHeader("BAir - Nerfs");
initSection("Startup 6f --> 8f.");

initPatch("1.14", "14 January, 2021");
initHeader("Power Chords - Nerfs, Adjustments");
initSection("You can no longer open the Power Chord menu while the guitar is away from you.
Press NSpecial while touching the guitar to open the menu, or just USpecial into it / wait out its timer / wait for an enemy to hit it.
NSpecial while away from the guitar does the full animation, including i-frames...");
if echo{
	initHeader("MunoPhone - Corrections");
	initSection("Added Slide Chord's damage and knockback nerfs to its description in the Tips app.");
}

initPatch("1.13", "12 December, 2020");
if echo{
	initHeader("FSpecial - Buffs");
	initSection("TEMPO-EXCLUSIVE: The initial guitar throw is instantly fully charged.
	(Effectively, it's 16f faster to use)");
}
initHeader("Power Chords - Nerfs");
initSection("You can no longer cancel a Power Chord by double-tapping.");
initHeader("FSpecial, DSpecial - Nerfs, Bugfixes");
initSection("Cooldown on guitar returning 30f --> 45f.
Cooldown on uncharged throws corrected to account for the increase in linger time from 1.12.");

initPatch("1.12", "08 December, 2020");
if echo{
	initHeader("Power Chords - Experiments");
	initSection("Stun Chord now nerfs aerial movement to the same degree as Shield Chord.
	Stun Chord damage multiplier 1.1 --> 1.2, kbg multiplier 0.9 --> 0.6.");
}
else{
	initHeader("Power Chords - Nerfs");
	initSection("Jump Chord now nerfs damage taken (1.2x) and damage dealt (0.8x).
	Jump Chord air accel 0.5 --> 0.4, jump heights 19/18/11 --> 17/16/9.");
}
initHeader("FSpecial, DSpecial - Buffs");
initSection("Uncharged throw guitar linger time 60f --> 120f.");
initHeader("DStrong - Buffs");
initSection("Endlag 14 --> 12.");

initPatch("1.11", "30 November, 2020");
initHeader("FAir - Nerfs, Adjustments");
initSection("Hitboxes consolidated into only one (smaller overall).
Startup 11 --> 12.
Hitpause base/scaling 7/0.4 --> 9/0.6.
Whifflag corrected (increased).");
initHeader("MunoPhone - Aesthetics");
initSection("Phone now gets recolored to the alt.");

initPatch("1.10", "29 November, 2020");
if !echo{
	initHeader("Power Chords - Nerfs");
	initSection("Jump Chord USpecial has a little less distance.
	Speed Chord initial dash speed 10 --> 9.");
}
initHeader("USpecial - Bugfixes");
initSection("Guitar cancel no longer happens after getting parried / during hitpause.
Ledge cancel no longer happens after getting parried.");

initPatch("1.9", "19 November, 2020");
if !echo{
	initHeader("Power Chords - Nerfs");
	initSection("Speed Chord DAttack has a little less distance.");
}
initHeader("FAir - Nerfs");
initSection("Landing lag 6 --> 8.");
initHeader("UAir - Adjustments");
initSection("Hit 1 damage 5 --> 3.
Hit 2 damage 5 --> 7.");

initPatch("1.8", "18 November, 2020");
initHeader("Power Chords - Nerfs");
if !echo{
	initSection("Smash Chord knockback multiplier 1.5 --> 1.3.
	Buster Chord knockback multiplier 0.5 --> 0.7.
	You can no longer switch chords after getting parried.");
}
else{
	initSection("You can no longer move with Slide Chord after getting parried.
	You can no longer switch chords after getting parried.");
}
initHeader("FSpecial, DSpecial - Nerfs");
initSection("There is now a 30f cooldown on these moves after catching the guitar again.");

initPatch("1.7", "17 November, 2020");
initHeader("Taunt - Bugfixes");
initSection("The III#-1 note now plays correctly.
Removed the cheat code for minor scale because it doesn't work. Might try to get it working again at a later date.");

initPatch("1.6", "14 November, 2020");
if echo{
	initHeader("Power Chords - Buffs");
	initSection("Slide Chord now gives FAir and BAir momentum.");
}
initHeader("FStrong - Buffs");
initSection("Angle 45 --> 40.");

initPatch("1.5", "13 November, 2020");
if echo{
	initHeader("Power Chords - Experiments Reverted");
	initSection("Reverse Chord no longer has the untechable thing.");
}
initHeader("FSpecial, DSpecial - Clarity");
initSection("The guitar now has an indicator for when it's offscreen.");

initPatch("1.4", "13 November, 2020");
if echo{
	initHeader("Power Chords - Experiments");
	initSection("Reverse Chord now makes attacks untechable, with no ground bounce.");
}
initHeader("FSpecial - Buffs");
initSection("Charged FSpecial is now transcendent.");
initHeader("FSpecial, DSpecial - Nerfs");
initSection("Projectiles now have extended parry stun.");
initHeader("DStrong - Buffs");
initSection("Endlag 18 --> 14.
Last hit base knockback 0.7 --> 0.6.");
initHeader("UStrong - Buffs");
initSection("Knockback base/growth 8.5/1 --> 9.5/1.1.");
initHeader("FAir - Buffs");
initSection("Angle 50 --> 40.");
initHeader("Power Chords - Performance");
initSection("Chord vfx are less laggy.");
initHeader("Misc. - oops");
initSection("The Steve death message is no longer the same as Otto's.");

initPatch("1.3", "12 November, 2020");
if echo{
	initHeader("Power Chords - Buffs, Aesthetics");
	initSection("Slide Chord charged FSpecial now makes the guitar follow the enemy.
	Dodge Chord charged FSpecial now makes a powerful explosion.
	Dodge Chord now buffs tech roll distance.
	Reverse Chord now uses a different on-hit sound effect.");
}
initHeader("FSpecial, DSpecial - Bugfixes, Performance");
initSection("Guitar size gets reset properly after USpecial bounce.
Fast Graphics now lowers the intensity of thrown guitar's chord VFX.");
initHeader("DTilt - Buffs");
initSection("Knockback growth .4 --> .8.
Angle 361 --> 45.");
initHeader("DAttack - Buffs");
initSection("Early/late angle 361/361 --> 70/50.");
initHeader("Jab - Consistency");
initSection("Jab 1 base knockback 2 --> 4.");

initPatch("1.2", "11 November, 2020");
if echo{
	initHeader("Power Chords - Nerfs, Bugfixes");
	initSection("Slide Chord now multiplies damage and knockback growth by 0.9x.
	Dodge Chord airdodge no longer causes permanent invincibility.
	Reverse Chord NSpecial now works during hitpause of your attacks.");
}
initHeader("FSpecial, DSpecial - Buffs, Bugfixes");
initSection("Uncharged throw guitar linger time 30f --> 60f.
Uncharged INITIAL throw no longer prohibits a remote throw.
Cooldown time 60f --> 90f.");
initHeader("BAir - Buffs");
initSection("Startup 9 --> 6.");

initPatch("1.1", "11 November, 2020");
if echo{
	initHeader("Power Chords - Buffs");
	initSection("Float Chord DJump speed/accel -7/-1.3 --> -3/-1.05.
	Slide Chord now allows you to move during ground attacks.
	Reverse Chord now gives you R-00 NSpecial.");
}
initHeader("AI - Bugfixes");
initSection("The AI now works, though it's still the default Sandbert AI.");

initPatch("1.0", "11 November, 2020");
initHeader("General");
initSection("The character was released.");

initPatch("About " + (echo ? "Tempo" : "Coda"), "");
initHeader("Character by");
initSection("Muno - byMuno.com");
// initHeader("SFX from");
// initSection("any places you got sfx (or other assets)");
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
CHEAT_NO_CD		= initCheat("Disable Cooldowns", [0, 1], ["Off", "On"], "Disables all restrictions on move usage.");
CHEAT_CHORDS	= initCheat("Everlasting Power Chords", [0, 1], ["Off", "On"], "Makes your Power Chords last forever AND have no cooldown. Also allows you to cancel a Chord by double-tapping special.");
CHEAT_ROOT		= initCheat("Taunt Root", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"], "Change the root key used by the taunt's musical notes.");



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
phone.include_custom = true;

// The name of the custom page.
phone.custom_name = "Power Chord Data"

// The content of the custom page.
initCFDHeader("NOTE")
initCFDBody("''Knockback Dealt'' refers specifically to knockback growth.");

initCFDHeader("
- SHARED -");
initCFDHeader("Duration");
initCFDBody(string(guitar.chord_juice_max) + "f");
initCFDHeader("Cooldown");
initCFDBody(string(guitar.chord_cooldown_max) + "f");

if echo{
	initCFDHeader("
	- SLIDE -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[2].damage_multiplier) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[2].launch_multiplier) + "x");
	
	initCFDHeader("
	- STUN -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[4].damage_multiplier) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[4].launch_multiplier) + "x");
	initCFDHeader("Damage Taken");
	initCFDBody(string(chord_objs[4].dtaken_multiplier) + "x");
	
	initCFDHeader("
	- REVERSE -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[5].damage_multiplier) + "x");
	initCFDHeader("Knockback Taken");
	initCFDBody(string(chord_objs[5].knockback_adj) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[5].launch_multiplier) + "x");
}

else{
	initCFDHeader("
	- JUMP -");
	initCFDHeader("Damage Taken");
	initCFDBody(string(chord_objs[1].dtaken_multiplier) + "x");
	initCFDHeader("Knockback Taken");
	initCFDBody(string(chord_objs[1].knockback_adj) + "x");
	
	initCFDHeader("
	- SPEED -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[2].damage_multiplier) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[2].launch_multiplier) + "x");
	
	initCFDHeader("
	- SHIELD -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[3].damage_multiplier) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[3].launch_multiplier) + "x");
	initCFDHeader("Damage Taken");
	initCFDBody(string(chord_objs[3].dtaken_multiplier) + "x");
	initCFDHeader("Knockback Taken");
	initCFDBody(string(chord_objs[3].knockback_adj) + "x");
	
	initCFDHeader("
	- BUSTER -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[4].damage_multiplier) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[4].launch_multiplier) + "x");
	initCFDHeader("Damage Taken");
	initCFDBody(string(chord_objs[4].dtaken_multiplier) + "x");
	
	initCFDHeader("
	- SMASH -");
	initCFDHeader("Damage Dealt");
	initCFDBody(string(chord_objs[5].damage_multiplier) + "x");
	initCFDHeader("Knockback Dealt");
	initCFDBody(string(chord_objs[5].launch_multiplier) + "x");
	initCFDHeader("Damage Taken");
	initCFDBody(string(chord_objs[5].dtaken_multiplier) + "x");
}



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
initCodecPage(SPK_ALTO, 6, 0, "You think your Power Chords are gonna save you, " + (echo ? "Tempo" : "Coda") + "?");
if echo{
	initCodecPage(SPK_ECHO, 2, 0, "Says the guy who's holding a Molotov behind his back. ...Unless you wanna man up and fight without it?");
}
else{
	initCodecPage(SPK_CODA, 0, 0, "I'm up for an honorable fight if you are... wanna get rid of that pistol and I'll stay vanilla?");
}
initCodecPage(SPK_TRUM, 7, 0, "*gulp*");
initCodecPage(SPK_ALTO, 5, 0, "UHHHHHHH on second thought I'm good!!");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve got hit with a guitar and died";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = echo ? 8 : 7;

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