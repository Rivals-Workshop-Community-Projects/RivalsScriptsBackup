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
num_alts = 25;

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
muno_char_name = "Samson";

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

initTip("Fluttering");
initWords("Samson's wings are too small for him to fly, but he can definitely hover. Samson can cancel into aerial attacks or specials while in this state.");
initWords("Samson can flutter in the air for about a second when holding down the jump button.");
initWords("Pressing down and jumping will instantly make Samson hover, even when on the ground.");
initImage_ext(sprite_get("hover"), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("NSpecial: Deploy! Honey Jar");
initWords("Samson throws a jar of honey that can be hit. Samson can detonate it manually by using his special again, or if the jar takes a cumilative 10 percent worth of damage.");
initWords("Opponents caught in the blast are stuck in place, like Maypul's wrap. In this state, Samson's specials, strongs, and dash attack can launch them out of it.");
initWords("Try using Samson's attacks to push them into the blast!");

initWords("When an opponent is no longer honeyed, they cannot be honeyed again for 50 frames.");
initImage_ext(sprite_get("nspecial"), -7, fa_right, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jaridle"), -8, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Bearscrew");
initWords("Samson stole this from his favorite bear from a certain fighting game.");
initWords("This move has very good hit range and goes a decent way horizontally, making it a good edgeguarding tool. The inital hits are untechable.");
initWords("You can cancel into a jump or walljump after Samson starts falling. (If Samson finishes while in the air) Otherwise, Samson will shortly go into pratfall.");
initImage_ext(sprite_get("fspecial"), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Korsakov Bugbear");
initWords("Samson uses his jacket as a small parachute.");
initWords("Pressing down puts you into pratfall. You can also walljump while Samson is parachuting.");
initImage_ext(sprite_get("uspecial"), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Honey Dipper");
initWords("If hit by the honey dipper itself, the opponent enters a state similar to being hit by his NSpecial.");
initWords("When hit by it's shockwave, it flings them away! Useful as a keep-away tool.");
initWords("If done in the air, you can also catch opponents on the way down.");

initWords("When an opponent is no longer honeyed, they cannot be honeyed again for 50 frames.");
initImage_ext(sprite_get("dspecial"), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Megasparkle Honey Detonation");
initWords("Hitting the jar with Dspecial or DSpecial Air (dipper only!) not only causes the jar to explode instantly, but also creates bigger honey shockwaves!");
initWords("Said shockwaves can also honey the opponent!");
initImage_ext(sprite_get("megasparkle"), -5, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initWords("Stage: Tutorial Room (Kirby 64) - Spamite");

initTip("FStrong: Kechadon 2000");
initWords("Samson uses his favorite rhythm game to attack. The sweet spot are at the ends of the sticks.");
initImage_ext(sprite_get("fstrong"), -5, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UStrong: Patapon");
initWords("Samson uses his favorite rhythm game to attack. The sweet spot is at the tip of the spear.");
initImage_ext(sprite_get("ustrong"), -5, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DAttack: Circus Bear!");
initWords("While rolling, pressing the attack button again will cause Samson to strike a pose.");
initWords("If nothing is pressed, Samson will resume a dashing state. Rolling can also be canceled into a jump.");
initWords("Going against Samson, the inital push is untechable.");
initImage_ext(sprite_get("dattack"), -5, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("BAir: Sting Like A Bee!");
initWords("Samson may not be a bee, but his aunt is. Using what he's learned, Samson juts backwards to sting what's behind him. There's a tipper at... well... the tip, which hits harder and deals more knockback.");
initImage_ext(sprite_get("bair"), -5, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
	
initTip("Dair: Doughnuts!");
initWords("Samson smacks below him with a box of doughnuts. If Samson whiffs the attack, there is a 10% chance that a doughnut falls out (because funny). If an opponent touches it, they are healed by 1%. (There is no knockback nor hitpause, so don't worry.)");
initImage_ext(sprite_get("dair"), -7, fa_center, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("RNG? In my fighting game?");


initTip("Samson's Lore");
initWords("Samson is a bugbear, a strange species characterized by a hybrid of any ursine and insectiod. Samson is 36% Polar Bear, 33% Brown Bear, 28% Sleepy Orange Butterfly, and 3% Huntsman Spider. (He knows the numbers by heart!) He is all parts cuddlebug and teddybear <3, and can make webs but refuses to tell you how.");
initWords("Samson is a generally bubbly and vibrant guy. He's quite affectionate to the people he trusts, and is always willing to lend an emotional hand. He is very quick to trust others, which more often than not leads him into grave situations. Samson enjoys hugs, cuddles, rhythm games, and consuming healthy amounts of media featuring best girl, Maypul (He really likes raccoons. Even he can't explain why). He was born with a birth defect that makes his wings too small and thin for flight. Despite this setback, Samson still knows how to utilize his wings to save himself, and has learned to rely on his claws a little more than the average bugbear of his composition. (Even if he isn't good at it) He also cannot utilize his bioluminescent antennas properly, as they only seem to come on during bursts of honest happiness.");
initWords("Despite everything, he's your typical bear making it through life. He lives in Hammockton, a lively town on a planet much like Earth, except it's filled with colorful creatures of varying anthropomorphism.");
initWords("One faithful day in Hammockton, Samson was working on making a mod about himself in Rivals. Only for a portal to appear out of nowhere from his computer and suck him in. Aether has a problem with portals, don't they?");
initWords("After the inital panic about being in a completely different world (possibly universe) passed over, Samson realized he could use the oppertunity to meet some of his favorite characters in Aether... like Maypul! Sad part is, he appeared in Merchant Port, which is a long ways from the forest.");
initWords("On the realization of a new adventure, Samson makes his way to Julesvale, where all the workshop characters seem to originate from. Samson must fight (or hug, he prefers that a lot more) the balanced, the jank, the intimidating, and the all-powerful alike to get stronger and reach the Aetherian Forest.");
initWords("Using the power of hammerspace, Samson can throw pressurized jars of a special honey that's stickier than the consumer brand. (Don't worry, it's ethically sourced!)");





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

initPatch("1.1.1", "September 2025");
initHeader("Jar Patch");
initSection("'''quick''' fix with Samson's Jar and it acting weird in VS mode.");
initSection("Mr. Grizz CSS thing fixed.");
initSection("Disco Bear alt replaced with Picnic Alt.");
initSection("Added custom Jar to Samson's Winnie The Pooh alt.");
initSection("Jar cooldown resets on death.");


initPatch("1.1.0", "November 2024");
initHeader("HUGE patch. Thanks to a lot of feedback, a lot of issues with Samson have been fixed, I hope.");
initSection("It's been like, what, two years?");
initSection("First of all, I appreiate all the support and feedback Samson received. I legit did not expect to get 10,000 subscribers on Samson, but it makes me really happy to see that people enjoy him, despite all his jank. I want to get back into Rivals modding one day, but for now my current obsession is with MUGEN stuff lol. This update has been mostly finished for a while, I just never released it because I got lazy lol. Special thanks to Reaver of Souls for helping me get it out and inspiring me to continue. I really appreciate them :)");

initHeader("N-Special");
initSection("-Samson does an entirely new move when doing his N-Special in the air, now throwing the jar straight downwards instead of forwards.");
initImage_ext(sprite_get("nspecial_air"), -8, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initSection("If you or a loved one has consumed Samson's honey with the batch number 'ROAU2Ftc29u' please contact the Food and Drug Administration of Aether.");

initHeader("Dash Attack");
initSection("-The rolling part of his attack now hits multiple times instead of once, the animation has also been reworked slightly.");
initSection("-Samson slides a little when doing his finisher attack, this should be easier to combo with this move.");
initSection("-Endlag has been reduced, also making it easier to combo.");

initHeader("THE DREADED FSPECIAL");
initSection("-Hitboxes come out faster which makes it harder for opponents to fall out");
initSection("-You can finally wall-jump/jump cancel this!");
initSection("-Range has been halved");
initSection("-Knockback of final hit reduced from 8 > 7");
initSection("-Angle of final hit reduced from 30 > 45");
initSection("-Added hit FX");
initSection("-Ability to not sugarcoat it has reduced by about 90%");

initHeader("F-Tilt");
initSection("-Reworked animation, now has bigger horizontal range.");

initHeader("F-Air");
initSection("-Animation has been changed to better reflect hitboxes.");
initSection("-Hit angle 50 > 70.");

initHeader("F-Strong");
initSection("-Reworked animation, now has bigger horizontal and vertical range.");

initHeader("U-Air");
initSection("-Damage 8 > 6");
initSection("-Damage (late) 7 > 5");

initHeader("U-Strong");
initSection("- Has a hitbox that hits opponents on the ground, more in-tune to Clarien's U-Strong.");
initSection("- Tipper base knockback 8 > 7.");
initSection("- Tipper scaling 1.3 > 1.");

initHeader("B-Air");
initSection("- Sweetspot knockback 10 > 8 ");
initSection("- Sweetspot scaling 1.3 > 0.8 ");
initSection("- Angle changed 119 > 135 ");
initSection("- Cooldown has been reduced from 40 to 20 frames. ");

initHeader("U-Special");
initSection("-Initial hitbox base knockback 11 > 7");
initSection("- Late hitbox base knockback 7 > 4");
initSection("- Samson will no longer be arrested for public indecency while using this move in certain stages.");

initHeader("Misc");
initSection("- Added Runes! Thanks Reaver!");
initSection("- Added custom jars to Seasonal alts");
initSection("- Replaced Inverse Alt with Disco Bear Alt");
initSection("- Replaced Raid alt with Mr. Grizz (Will fix the CSS thing soon...)");
initSection("- Samson now has a character select sound");
initSection("- Replaced Hooded Ralsei Alt with Begin To Hope alt");



initPatch("1.0.1", "28 May, 2022");
initHeader("Samson has been released to the public!");


initPatch("0.9.3", "21 May, 2022");
initHeader("Added a 50 frame cooldown to the honey effect.");
initHeader("Fixed the Dreaded Jar Bug.");
initHeader("The jar's explosion is now transendent.");
initHeader("The large honeyshocks from Samson's megasparkle detonation can honey the opponent as well.");
initHeader("Adjusted hitbox of said honeyshocks.");
initHeader("Samson's honey now contains no added sugar.");

initHeader("DSpecial");
initSection("-Base Hitpause 20 > 10");
initSection("- Honey dipper is now made of olive wood instead of pine.");

initHeader("FSpecial");
initSection("-Adjusted hitbox angle to be higher.");

initHeader("UTilt");
initSection("-Reworked animation, now has bigger vertical range.");

initHeader("UAir");
initSection("-Has been considerabily nerfed.");
initSection("-Damage 8 > 6");
initSection("-Damage (late) 7 > 5");

initHeader("Jab");
initSection("-Jab is a little faster and more intune with basecast");
initSection("-Jab does not lead into parry stun.");

initHeader("Misc");
initSection("- Added Thive Alt, thanks Chaoko!");
initSection("- Added Rainbow alt now that I figured out how to get it to work lol");
initSection("- Fixed compatabilty not working with Kirby and Pit.");


initPatch("0.9.2", "8 May, 2022");
initHeader("Fixed a multitude of bugs with Samson");
initSection("- Flutter canceling doesn't buffer weirdly when doing an attack.");
initSection("- Fixed backwards words on both his UStrong and FStrong.");
initSection("- Samson's phone doesn't shade awkwardly.");
initSection("- Offsets are fixed.");
initSection("- Samson's attack_update.gml has been streamlined better. So hopefully he's a little faster.");
initSection("- Might have fixed spelling issues with his Munophone entries?");
initSection("- NO MORE CYAN RIM!??!?!?!?!? *vine boom*");
initSection("- Fixed Early Access and Abyss alts being in the wrong place.");



initHeader("NSpecial");
initSection("-Adjusted honey explosion visual to better match the hitbox");
initSection("-Fixed bug where Samson throwing his jar while behind a wall wouldn't make the jar move.");

initHeader("DSpecial");
initSection("-Honey shockwaves now stop at the ledge, and not over it.");
initSection("-Honey shockwaves are now transcendent.");
initSection("-Aerial Dspecial has a grabbox while falling.");
initSection("-Doing DSpecial on Samson's jar causes bigger shockwaves. You can read about it in the munophone.");

initHeader("Dash Attack");
initSection("-Added a hitbox between his first and rolling hitbox, preventing Samson from phasing through the opponent.");
initSection("-Fixed weird bug where if Samson hits the opponent while on the ledge, he gets flung off.");
initSection("-The rolling hitbox disappears when Samson does a pose.");

initHeader("FSpecial");
initSection("His recovery period goes into pratfall (if he finishes in the air)");
initSection("Adjusted endlag when Samson finishes on the ground to better match pratland.");
initSection("Samson has less air friction during recovery.");

initHeader("Misc");
initSection("- Added Morpho Knight Alt.");
initSection("- Replaced Rainbow with Hunny Queen Alt.");


initHeader("Thanks for the idea about Samson's Megasparkle Detonation, Reaver! :3");

initPatch("0.9.1", "7 April, 2022");
initHeader("DSpecial");
initSection("- Startup VSpeed 1 > -3");
initSection("- Fixed hurtbox of Air DSpecial ");

initHeader("NSpecial");
initSection("Completely reworked. Check Munophone");

initHeader("FAir");
initSection("- Angle 315 > 50");

initHeader("Nair");
initSection("-Removed air friction stopping his momentum");
initSection("-Angle changed to 10");

initHeader("Bair");
initSection("- Fixed bug where the hit box would spawn while landing");
initSection("- Reduced air rigidity during whifflag, Samson can now drift a little in the air ");

initHeader("Dair");
initSection("- Landing Lag 4 > 7 ");
initSection("- Damage 7 > 5 ");
initSection("- Removed Air friction stopping his momentum  ");
initSection("- Knockback Scaling  1 > 0.6");
initSection("- Hitpause 6 > 5");
initSection("- Hitpause Scaling 1 > 0.5");
initSection("- Doughnut spawns at a different angle");

initHeader("Dash Attack");
initSection("- Startup friction 1 > 0.4");
initSection("- Can now actually go off the ledge ");
initSection("- Added SFX on second window (When Samson first leaps)");

initHeader("Misc");
initSection("- Fixed bug where Samson could still attack while hovering ");
initSection("- Fixed bug where Samson could still hover if he was honeyed");
initSection("- Initial Dash time 15 > 12");
initSection("- Dash Stop Time 4 > 6");

initHeader("Thanks Reaver! :3");


initPatch("0.9", "1 March, 2022");
initHeader("Playtesting Version");
initSection("A prerelease version of Samson sent to few people.");


initPatch("About Samson", "");
initHeader("Developed by");
initSection("Rhythmkoopa34");
initHeader("Additional SFX from");
initSection("Splatoon, Warioware: Get It Together!, Serani Poji - Rabbit Panic, Public Domain Sound Effects");
initHeader("Compatible with");
initSection("Trummel & Alto, Bailey, Feri, Pit, Steve, Henry Stickmin, Amber, TCO, Kirby, Loadent, Hikaru, Agent N");
initSection("Final Smash Buddy, Assist Buddy, Kirby Fighters Buddy");
initSection("Soulbound Conflict, Mt. Dedede Stadium, Pokemon Stadium, The Killing Grounds, Miiverse");
initPatch("Special Thanks", "");
initSection("Reaver of Souls - Prerelease Playtesting and Suggestions, Abyss Runes. Air N-Special");
initImage_ext(sprite_get("thanksreaver"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("Kidma64 - Inspriation and emotional support (Seriously, I could not have done this without you. Thanks Kidma. :)");
initImage_ext(sprite_get("thankskidma"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("Supersonic - Article Hitbox Detection Code + Dust FX Code");
initImage_ext(sprite_get("thankssupersonic"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("Mawral - Grab Code");
initImage_ext(sprite_get("thanksMawral"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("Menace13 - Status Effect Code");
initImage_ext(sprite_get("thanksMenace"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("GoldenEpsilon - Peach Float Code");
initImage_ext(sprite_get("thanksGoldenEpsilon"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("TailwindZ - Samson's Victory Theme");
initImage_ext(sprite_get("thanksTailwind"), -6, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
initSection("Age - Rainbow Code");
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

CHEAT_JAR = initCheat("No Jar Cooldown", [0,1], ["Off","On"], "Samson can spawn a new jar as soon as one disappears.")


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
initCodecPage(SPK_TRUM, 0, 0, "mollo x elatus fanchild");
initCodecPage(SPK_ALTO, 0, 0, "...What?");
initCodecPage(SPK_TRUM, 0, 0, "what");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");


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

/* initCodecPit();
initCodecPage(SPK_VIR,  2,  9,  "EWWWWWWW!!!!");
initCodecPage(SPK_PIT,  4,  1,  "H-Huh? Viridi?!");
initCodecPage(SPK_VIR,  2,  2,  "What is that... freak of nature? What kind of creature is that?");
initCodecPage(SPK_PIT,  1,  8,  "Wouldn't you know...? Since you're the Goddess of Nature and all that...?");
initCodecPage(SPK_PALU, 1,  1,  "Viridi, calm down. That's Samson, a bugbear from another universe.");
initCodecPage(SPK_PIT,  7,  7,  "Huh... I kinda expected a bugbear to be a lot more... scarier from all the folk tales.");
initCodecPage(SPK_VIR,  3,  8,  "Exactly, Pit! I bet this bear couldn't even hurt a fly!");
initCodecPage(SPK_PIT,  7,  7,  "Well... if that's a bugbear, would a fly be his... uncle?");
initCodecPage(SPK_PALU, 0,  1,  "Focus, you two! Pit, you need to watch out for the jars he throws.");
initCodecPage(SPK_PALU, 4,  -999,  "They may look harmless, but it can leave you stuck and vulnerable if you're caught when it explodes.");
initCodecPage(SPK_PIT,  7,  8,  "Where does he even get all that honey?");
initCodecPage(SPK_PALU, 2,  5,  "It's simple, Pit. It's a blessing from the bugbear goddess, Briarslee.");
initCodecPage(SPK_PIT,  1,  -999,  "(What is a Briarslee?!?!?!)");
initCodecPage(SPK_PIT,  1,  10,  "...Right, Lady Palutena.");
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