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
num_alts = 6;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
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
muno_char_name = "Bully";

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
phone.lightweight = true;

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

initTip("Misc. Info");
initWords_ext("- Full Force -", fa_left, $139B7A, false, false);
initWords("Ramming forward with full commitment is what Bully is all about! Slowing down, not so much! While having high ground and air speed, Bully has low friction and accelration in every way, being slow to speed up and turn around.");
initWords("Think carefully before rushing in, because before you know it it'll be too late to change your mind! ...Or commit to the role and don't think about anything whatsoever, slamming forward in a blaze of glory! Probably do that last one, it sounds more fun-");
initWords_ext("- Deceptive Disjoint -", fa_left, $139B7A, false, false);
initWords("While Bully doesn't seem to have much range, looks can be deceiving when Koopas are involved! Its horns are fully intangible, and it's kick attacks have a regular-sized hurtbox even when it's limbs grow big! (For attacks where it's body grows, this isn't the case.)");

initTip("NSpecial: Boiling Fireball");
initWords("With NSpecial Bully spits a slow moving fireball, good for the usual projectile purposes. Holding the button however, charges the fire into a burst of 3! While the charge is held, press Parry to store the charge for later. Charged fireballs are just as quick to come out but have a lot more endlag, so having it charged isn't always strictly better!");
initWords("Bully will hold the fireballs in as long as the button is held, including pulling a charge back out! Use this to bait parries on unsuspecting foes, or just store the charge for a better time and place.");
initWords("When in the air, fireballs are launched at a downward angle, though unlike flames from FStrong or USpecial, they won't travel through platforms. The angle is useful for making safe landings, and gives a small upward boost to mix up your recovery.");
initImage_ext(sprite_get("pho_fireball"), -3, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Bully Bash");
initWords("Bully charges forwards with its horns, ramming into anyone in it's way! Hitting an opponent or wall will make Bully bounce off, cancelling the move early.");
initWords("When started on the ground, Bully will keep running no matter what! Running off a ledge during the grounded bash will keep Bully floating in mid-air, and it can even jump! If a bash is started in mid-air however, Bully can only jump after touching the ground.");
initWords("Jumping during a bash is both a great mixup, and will extend the length of the move. Watch out though, jumping too close to the ledge can be risky and make it fly too far! The risk can be well worth it however, since again, landing the move will stop Bully in its tracks.");
initImage_ext(sprite_get("pho_fspecial"), -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("pho_fspecial"), -4, fa_right, -1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Groundpound");
initWords("A full send groundpound to spike your enemies into oblivion! No jump cancels, around here we go all in! Landing the move (or landing in general) is the only way to stop, and hitting someone with it will pop Bully up into the air.");
initWords("If for some reason you use this on the ground (lame!) hitting the stage will create a shockwave. It doesn't do much damage, but it's quick, safe, and disruptive! The initial flip also retains all horizontal momentum, so it's surprisingly versatile.");
initImage_ext(sprite_get("pho_dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Lava Boost");
initWords("Using a stream of fire, Bully propels into the air. This move only hits below Bully and doesn't have much knockback, or send it very high. On the other hand it lets Bully gain a lot of horizontal momentum, and the fire passes through platforms to burn opponents when attacking onstage!");
initImage_ext(sprite_get("pho_uspecial"), -2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FStrong: Flamethrower Breath");
initWords("For FStrong, Bully will spew flames from its... mouth? While spewing flames, holding up and down will aim the fire in either direction. This can be handy for sneaky platform plays, either for hitting opponents on a higher platform or vice versa!");
initWords("Fire that's aimed downward will collide with the ground but pass straight through platforms. The flames also burn about as much as you'd expect, inflicting the Burn effect on opponents.");
initImage_ext(sprite_get("pho_fstrong"), -2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UStrong: Chill Skewer");
initWords("ill skewer you,,,");
initWords("While hard to hit, the tip of Bully's horn is a powerful sweetspot! Time it just right, and the results will be well worth it!");
initImage_ext(sprite_get("ustrong"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("










Disclaimer: The name of this move has nothing to do with temperature, and is simply to warn opponents of your approachable vibes.");

initTip("DStrong: Firebar Spin");
initWords("Spin a firebar along the elusive Z axis, scorching either sides of Bully! While slow, this move is active for a long time and it's just as disjointed as Bully's other fire attacks. Also like those attacks, it inflicts the Burn effect for extra damage.");
initWords("While charging, the fireballs also give the Burn effect, although deal no damage or knockback otherwise.");
initImage_ext(sprite_get("pho_dstrong"), -4, fa_left, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("pho_dstrong"), -4, fa_right, -2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Jab: Horn Stab");
initWords("Impale your enemies, stopping them in their tracks! If this move connects, it'll stun opponents and let Bully cancel into a basic attack. Including another jab! Don't get any wobbly ideas though, there's a cooldown before it'll stun someone again.");
initImage_ext(sprite_get("jab"), -5, fa_center, 2, 2, true, c_white, 1, true, noone, noone, noone, noone);

initTip("NAir: Orb Burst");
initWords("Bully fills with power (and fire) then ejects a burst of flame around itself, inflicting a Burn effect on anyone who touches it! During startup, as Bully grows in size it will also very slightly slow down it's momentum.");
initImage_ext(sprite_get("nair"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

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


initPatch("1.4", "24 May, 2023");
initHeader("Fixes");
initSection("-Fixed a desync when ramming into a wall with FSpecial online");

initPatch("1.3", "19 May, 2023");
initHeader("Aesthetic");
initSection("-Projectile Blue alt no longer uses the alternate respawn platform
-Adjusted DAttack star effect to be bigger
-UAir sweetspot now uses the heavy stab SFX
-Munophone tips updated to reflect DStrong changes");
initHeader("Balance");
initSection("-DStrong sweetspot angles adjusted from 60 to 45
-DStrong first hit now extends farther behind Bully
-DStrong returning hit now matches the late sourspot
-DStrong charge window now has a Burn effect hitbox when touching the spawned fire
-FSpecial now gives a higher vertical recoil when hitting a wall");
initHeader("Fixes");
initSection("-Fixed UI elements not being properly set online
-Fixed USpecial sprites playing when parrying after using USpecial
-Fixed Projectile Blue alt being buggy online thanks d a n i e l
-Fixed the get_color_profile crash for real this time i am so tired");

initPatch("1.2", "18 May, 2023");
initHeader("Aesthetic");
initSection("-Added these patches to the Munophone (forgor)");
initHeader("Balance");
initSection("-DTilt angle changed from 75 to 50");
initHeader("Fixes");
initSection("-Respawn platform no longer appears before Bully is visible
-Moved some stuff from CSS Draw to CSS Update (hopefully should work better online?)
-(hopefully) fixed an online crash involving get_color_profile_slot");

initPatch("1.1", "18 May, 2023");
initHeader("Fixes");
initSection("-Munophone fixed to not call Bully Sandbert (this is new lore that Bully bullied Sandbert and stole his phone)
-Added a victory theme (i forbor)");

initPatch("1.0", "18 May, 2023");
initSection("its a funny lil guy :)");


initPatch("About Bully", "");
initHeader("General Info");
initSection("The Boiling Hothead from SM64, Bully, bashes into Rivals of Aether! A simple, no frills rushdown for those who like to charge in and get their hands dirty! ...Or rather horns, in this case!");

initHeader("Credits");
initSection("Flophawk: Everything xoxo
Zard: Legacy Wario FSpecial Code & Effect Sprite
TheAcidCat: Miiverse Posts (Miiverse Stage Compatability)
VaporV01D: Character Inspiration (aka its his fault i decided to make this)");

initHeader("Stuff used:");
initSection("''Prince Bully Throws Coke at LH Martin and Gets Grounded'' by Weatherstar4000video");
initSection("SFX sourced from Super Mario 64, Super Mario 3D World, Smash 64, Mariokart DS, SMB2, Super Mario Maker, SML2, Mario's Game Gallery, Marvel vs Capcom 3, and Toilet in Wonderland");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, The Chosen One, Wall-E, Moonchild, TCG Kirby, Miiverse, Mt. Dedede, Soulbound Conflict, The Last Resort, and Pokemon Stadium");

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

CHEAT_FIREBALL_SPAM		= initCheat("No Fireball Cooldown", [0, 1], ["Off", "On"], "Self explanatory!");
CHEAT_BURNLESS          = initCheat("Burn Heal", [0, 1], ["Off", "On"], "Disables Bully giving the Burn effect.");


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
	AT_EXTRA_3,
	AT_TAUNT,
	AT_TAUNT_2,
	AT_EXTRA_2,
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
initCodecPage(SPK_ALTO, 2, 0, "Oh hey, it's Bully (from mario)!");
initCodecPage(SPK_TRUM, 1, 0, "thats just u");
initCodecPage(SPK_ALTO, 4, 0, "Lies and slander!");
initCodecPage(SPK_ALTO, 6, 0, "I'm bully (from slingshell (by muno))");
initCodecPage(SPK_TRUM, 0, 0, "pleas buy my game :)");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve got bullied to death";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 5;

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

initWords_ext(obj_text, fa_left, $4ABAA7, 1, 0);

#define initWords(obj_text)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: $4ABAA7,
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