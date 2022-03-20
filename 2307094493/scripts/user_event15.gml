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
muno_char_name = "Loadent";

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

initTip("NSpecial: nut...");
initWords("A nut is spit up in the air with a consistent hit box as long as its moving, 1 can exist at a time. Anyone can hit the nut and send it flying.");
initWords("Using the nuts with the Fields can leads to some sick snipes. If your tail is charged, hitting the nut with it will share the charge with the nut and affect its knock back.");
initWords("A positive nut will send the target inward and a Negative nut will launch them further. Regular nuts have a weak knock back and may hit multiple times with poor DI.");
initImage_ext(sprite_get("nspecial"), -4, fa_right, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), -4, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: SAcorn");
initWords("This moves spits out an acorn that you can arc up and place in the air. If you have a charge, the acorn will summon a field with that same charge and remove it from your tail..");
initWords("Holding Down Special will also send the current charge you have to the acorn and give it a positive or negative field.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Jawstrings");
initWords("Taken from Hime Daisho with permission from Sakamoto and Archytas, You can angle Loadent draw strings in 32 directions to use as grapple hooks.");
initWords("You can grapple to an acorn and if it has a field, that will replenish your up B.
Hitting an opponent with it will launch them inwards, Use the momentum from it or cancel it on hit to drag in your opponent.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Charge");
initWords("His gimmick involves using Down special to change the charge of his tail to first positive then negative.");
initWords("The charge you have will also affect your other specials.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Stage control: Fields");
initWords("Positive Fields will hold you, your opponent, and any projectiles in place. It is also possible to shoot yourself through it with moves like Dash Attack.");
initWords("Negative Fields will bounce away you, your opponent, and any projectiles. This could mess up a possible kill, or stop and enemy recovery. The fields will float indefinitely but will be destroyed in one hit.")
initImage_ext(sprite_get("positive"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Moves of note");
initWords("Back Air has sweet spots on the aglets of his drawstrings. the first one is positive and will do reverse knock back, and the second one is a sweet spot with strong launch power. This move is also disjointed.");
initWords("Side Tilt and Up Air have sweet spots on the tip of the tail. Catch your opponent of guard by spacing well");
initWords("Fair grants great momentum that can circumvent his slow speed.");
initWords("Down strong digs up a rock behind him. This projectile can catch people off guard and rack up damage, not to mention fly offstage.");
initWords("Forward Strong is a stunning headbutt that at low percents, will connect with a slap from his checks that launch your opponent backwards.");
initWords("Loadents tail during Up Strong is intangible, so you may jump over some low hitting attacks");
initImage_ext(sprite_get("bair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
	
initTip("Loadents Lore");
initWords_ext("Chapter 1", fa_center, c_gray, 0, false);
initWords("Loadent (similar to Claren) is from the future. There, he is a notorious for being a professional spy for the metal colonlies (a subset of the earth element). They are forced to work with the fire capital (as they have taken over) to build structures for them with metal work. The metal colony, for obvious reasons, does not trust the fire capitol, so they made Loadent (Their smallest member) become a spy. With access to lots of metal and technology, he decked himself out with metal claws, metal teeth, magnetic floating acorns, and metal nuts.");
initWords("He also wears a hood with jaw strings that can extend and attach to the acorns, letting him swing around. He’s also able to give the acorns different magnetic fields which can push and pull him and others around. All this new tech really inflated his ego, and he started going rogue. Well, still working as a spy. Occasionally, he would steal valuables from the fire capital, and to make it worse, constantly live-streamed his heist on his phone. This built him a fanbase only of people who also disliked the fire capital, and gave him notoriety.");
initWords_ext("Chapter 2", fa_center, c_gray, 0, false);
initWords("During one of his heists, he got caught and had to end his stream early to make a hasty escape. This had happened before, but the fire capitol recently added a new security guard specifically to deal with Loadent, a fire cow named Tystin. Loadent was not prepared for his speed and power and was caught off guard. They raced through the capitol until Loadent was cut off and hit into a wall. Very conveniently, the other side of the wall housed the time travel machines, which Loadent fell into.");
initWords("He had no idea what the machine was, so in panic, he pressed random buttons until he warped out of existence. He ended up traveling to our main timeline, in the middle of a sparring match between Olympia and Astra. Rightfully so, Olympia started attacking this strange future chipmunk, until Astra deescalated the situation, and they realized Loadent was just confused.");
initWords_ext("Chapter 3", fa_center, c_gray, 0, false);
initWords("They housed him for the night, but by the next morning, a loud crash woke them up, and a similar time machine was right outside. Instantly, Loadent used his positive pulling acorn to hold Olympia and Astra in place while he went outside to deal with the other time machine. Out came the fir cow, Tustin, with a new weapon. The two had a great battle until Oplmpia broke free from the magnetic field and assisted loadent in defeating Tystin.");
initWords("The only issue is during the fight, they accidentally destroyed both time machines, making them stuck in their past. Astra informed them that their only chance at getting back home may be Claren, as she also came from the future. The journey there is very far and dangerous, so the two decide on a truce while they venture to find Claren, and get back to the future.");

initTip("Character Compadability");
initWords("Hold taunt to subtweet opponent after youve hit them that match.");
initWords("Info on how to add custom message on his steam page!");
initWords("All of basecast has support.");
initImage_ext(sprite_get("loadtweetblank"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
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

initPatch("2.4 Compatibility", "11 March, 2022");
initHeader("Overall stuff");
initSection("Fixed CSS
Switched Jem and Sparks alts
Replaced Icy alt with new Reward Alt
Added Intro
Livestream Stage Pomme notes comparability with all 3 original songs")
initHeader("Acorn BUFFS!!");
initSection("Decreased startup and ending for down special(W2_15>10) (W4_16>10) (W5_10>8) 
Ds_discharge_time = 36>23
Acorn initial horizontal speed increased (0.5>0.8)
Acorn HP Increased to 5
Acorn summon (damnage 2>6) (KB scale .3 > .4) (Flipper 1/3 >3) (Angle 75/90>45)")
initHeader("Removed Increase and decrease KB mechanic");
initSection("Edited HUD to remove KB arrow indicator")
initHeader("Character Compadability");
initSection("Updated Taunt to include Character Compadability for Loadent! Hold taunt to subtweet opponent after youve hit them that match. 
Info on how to add custom message in description and discussion!")
initHeader("Added compatibility support for the following characters/stages");
initSection("Full Muno Phone
Mii Verse 3 Images
Feri
Trem/Alto
Steve
Agent N
Link spear drop
Pit
Otto
Mt. DeDeDe
Hikaru
Pkm stadium
TCO
Kirby (Just Mayple)
Final Smash
Soulbound Conflict")
initHeader("These changes where made to promote a differnt playstlye, 
rewarding freakwent use of the Acorn and more freedom play the way youd like.");

initPatch("2.3 UpB change", "10 April, 2021");
initHeader("UpStrong");
initSection("Sweetspot has a different sound effect on normal hit and more hitpause (7 > 9)");
initHeader("Bair");
initSection("Changed all sfx more or less");
initHeader("Dash attack");
initSection("Startup Increased (10>14)
New sound effect for sour spot
Sweetspot hitbox taller but skinnier
Window 2 Hspeed reduced from 6 > 4");
initHeader("Fair");
initSection("Window 2 length 13>16");
initHeader("Dtilt");
initSection("Removed small sweetspot,
Made other hitbox bigger W(70>90)H(16>20)");
initHeader("Dspecial");
initSection("Custom gravity 0.25> 0.50");
initHeader("UpB- Generally nerfed");
initSection("Less kb, less range, less overshoot, easier to jump cancel, Hits up more
Added HG_Angle 115
Angle flipper 9>7
throw_speed = 20>18
stay_time = 80>60
dist = 64>150");
initHeader("All of these changes were made to encourage more fair areal play and preventing extensive stalling. As well as general polish, cleanup, and balancing.
We are aware and currently working on the Galaxy glitches, but we hope in the meantime, reducing the strength of the charge multipliers will alleviate the issue a little.");

initPatch("2.1-2.25", "6-10 April, 2021");
initHeader("Very minor 2.0 hotfixes");
initSection("Fixed CSS date
Quick fix to Uptilt")

initPatch("2.0 Revamp", "6 April, 2021");
initWords("Loadent 2.0 is here! Thanks to everyone who gave him a try and provided feedback. Our team has taken that feedback to heart and we have a load of changes, tweaks, and even overhauls for you to sink your teeth into!");
initWords("New Stage: LiveStream
That's right, Loadent has his own stage now, LiveStream, a small stage with a low ceiling and wide blastzones. In its Basic form it has a bi-platform layout with high, wide static platforms. In its Aether form, however, it gains a third platform above the other two of variable widths and all three appear and disappear at random as Loadent grows his community!");
initHeader("Visual Upgrades!");
initSection("Loadent's getting a new coat of paint with a whole heap of visual changes small and large!
New bAir animation.
Meter added below Loadent during dSpecial to show how his progress in building his charge.
Aim indicator on uSpecial now matchs Loadent's current alt.
Additional hitstun animations.
New waveland aniamation.
Ten new alt palettes including references to Masked Man, Anglara, Zephrie, and Stinker.
Alts reordered on CSS to better match the base cast order.
CSS user interface cleaned and updated.
Feri support!");
initHeader("Smooth Moves -Thanks Regina Reforged for the help!");
initSection("Walk speed has been increased from 1.3 > 3.
Pivot time has been reduced from 12 > 6 frames.
Initial dash speed has been increased from 4.3 > 6.
Dash speed has been increased from 4.5 > 5.5.
Dash turn time has been decreased from 18 > 12 frames.
Dash turn acceleration has been increased from 0.3 > 0.8.
Dash stop time decreased from 12.5 frames > 6 frames.
Ground friction reduced from 1.3 > 1.
Moonwalk acceleration increased from 1.0 > 1.2.
Jump speed increased from 10 > 10.5.
Short hop speed decreased from 8 > 6.
Double jump speed decreased from 13.1 > 10.99.
Speed when double jumping in a direction increased from 3 > 4.
Air acceleration increased from 0.185 > 0.2.
Wall jump speed decreased from 13 > 11.4.
Wall jump angle changed from 67.38° > 52.13°.
Gravity decreased from 0.75 > 0.6.
Hitstun gravity decreased from 0.51 > 0.5.
Normal landing frames decreased 6 > 4.
Waveland friction decreased from 0.07 > 0.06.");
initHeader("Dash Attack:");
initSection("Startup reduced from 20 > 10 frames.
Speed is now a burst of speed rather than constant speed.
Initial speed during startup increased from 2 > 6.
Initial speed during active window increased from 1 > 6.
Endlag reduced 10 > 9.
Can now cancel into uStrong on hit during the active window.
﻿Dev's Note: Loadent lacked a consistent kill confirm and an aggressive combo starter, so we've overhauled dash attack to fit
this purpose.");
initHeader("Jab:");
initSection("Bug Fix: Jabs now cancel into tilts like the base cast.
Knockback scaling removed from hit 1.
Knockback scaling on hit 2 reduced from 0.4 > 0.2.
Angle of hit 2 changed from 90° > 100°.
Base knockback on hit 3 increased from 5 > 8.");
initHeader("fTilt:");
initSection("Sweet spot width decreased 12 > 10.
Sweet spot base knockback decreased 12 > 9.
Sweet spot knockback scaling increased 0.35 > 0.9.");
initHeader("uTilt:");
initSection("Knockback scaling removed from hit 1.");
initHeader("fStrong:");
initSection("Knockback scaling on hit 1 reduced from 0.6 > 0.4.
Added angle flipper 9 to hit 1 so that it more consistently combos into hit 2.
Base hitpause on hit 1 reduced from 12 > 8.
Extra hitpause removed from hit 1.
Base knockback on hit 2 increased from 6 > 7.
Knockback scaling on hit 2 increased from 0.8 > 1.
Hitpause scaling on hit 2 decreased from 1 > 0.4.");
initHeader("dStrong:");
initSection("Tail hitbox knockback scaling reduced from 0.7 > 0.3.
Sweet spot knockback scaling increased from 0.8 > 1.
Sweet spot angle adjusted from 260° > 120°.");
initHeader("uStrong:");
initSection("Added weak hitbox to startup that combos into final hit.
Damage increased from 7 > 10.
Base knockback increased from 6 > 7.
Knockback scaling increased from 0.5 > 0.8.
Hitbox width increased from 40 > 55.
Sweet spot damage increased from 10 > 12.
Sweet spot knockback scaling increased from 1 > 1.2.
Added a forward boost to the active window.");
initHeader("uAir:");
initSection("Startup increased from 7 > 11.
Endlag increased from 10 > 14.
Base knockback increased from 5 > 7.
Knockback scaling decreased from 0.7 > 0.5.");
initHeader("bAir:");
initSection("Bug Fix: Flipping bug fixed.
Startup increased from 10 > 13.
Endlag increased from 12 > 15.
Hitbox 1's dimensions changed from 55 x 85 > 30 x 70.
Hitbox 2's dimensions changed from 55 x 75 > 70 x 75.
Hit 2's knockback scaling increased from 0.7 > 0.8.
New animation to fit the changed hitbox sizes.");
initHeader("fAir:");
initSection("Momentum and animation timing adjusted to make the move appear as intended.
Can now cancel into specials on hit during the active window.
Startup increased from 10 > 13.
Endlag increased from 6 > 12.
Hit 1's angle adjusted from 20° > 45°.
Hit 2's angle adjusted form 20° > 60°.");
initHeader("dAir:");
initSection("First two hits now have angle flipper 6.
Knockback scaling on first two hits have been normalized to 0.2.
Hitpause scaling on first two hits has been reduced from 0.8 > 0.6.
Extra hitpause on hit 2 reduced from 7 > 4.
Custom gravity removed.
Upward boost from startup reduced from 1 > 2.");
initHeader("fSpecial:");
initSection("Bug Fix: Bug where field sound would continue to play after being dismissed has been fixed.
Field strength variable increased from 2000 > 2500.
When used while Loadent has a charge the acorn will take on that charge. Doing this removes Loadent's charge as though he used overcharged dSpecial.
When an acorn spawns with a charge it now creates a small hitbox upon being placed, like Absa's cloud.");
initHeader("uSpecial:");
initSection("Quality of Life: Implemented an auto-aim system to make it much easier to hit the acorn. If Loadent is close enough to the acorn and aims within 23° of it, Loadent will not automatically aim for the acorn.
Quality of Life: Possible aiming angles increased from 16 > 32.");
initHeader("Dev's Note:");
initSection("Loadent's tether was a powerful movement option, but difficult to use effectively in tandem with his acorn, which was envisioned to be a core part of his mobility. These changes should make Loadent's advanced movement much more accessible, especially for keyboard players.");

initPatch("1.1 Polish", "20 February, 2021");
initWords("Thanks for all the support so far, I'm currently working on polishing a bit more! More changes with numbers will come later!");
initHeader("Up B");
initSection("Base KB 11 -> 8
KB Scaling 0.1 -> 0.3
Up B, ball form is no longer invincible
Fixed sprite for Up B when angled down");
initHeader("Other");
initSection("-Added Finished Tag
-Updated HuD sprite, moved HuD, now shows a white outline for your current charge
-Default red for the cheek is now the same color as his nose. (To increase contrast for accessibility)
-New charge affects, now same on the ground as in the air. Different animations for + and -. Also shows + and - symbols for more accessibility
-Forward special spit animation timing adjusted to look as intended
-Shrunk animation for down strong and adjusted hitboxes accordingly
-Adjusted Bair animation to improve accuracy
-Visually updated Backroll for better accuracy");

initPatch("1.0 Cleanup", "15 February, 2021");
initWords_ext("(Changes from Vanilla Loadent)", fa_center, c_white, 0, false);
initHeader("Fields");
initSection("Negative field X 1->2.5
Force Constant k= 2000 ->2500");
initHeader("NSpecial - Nut");
initSection("nut hitlockout 10->30
Nut max 2->1
Negative Nut KB 1.15->1.40");
initHeader("Other");
initSection("Added placeholder Kirby ability
-Updated many Alts to make Positive always be the darker color. This has not been done for the default one so if there are any concerns upon release, I may go back and adjust the default.
-Flipped results_small");

initPatch("About Loadent", "");
initWords("Loadent is PK_KING544's first REAL character. He was made as a vessel for content at first. A 7 part series developing him was made to follow the progress over a year.");
initWords("This bleed into an exuse to make videos about making a stage and other things and became sorta a channel mascot. To watch, plz sub to https://www.youtube.com/c/PKKing544");
initSection("Loadent 3.0 will most likely be one of his last as PK wants to move on to differnt characters. He is aweare Loadent isnt the best looking or playing character, but he hopes you will still enjoy Loadent and try his new characters aswell");
initHeader("basically all the code from");
initSection("Deor  <3");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link, Goku, Feri, Mii Verse, Agent N, Pit");

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

CHEAT_FLY		= initCheat("Fly", [0, 1], ["Off", "On"], "Take flight. So balanced

(hold shield to not fly)");



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
initCodecPage(SPK_ECHO, 6, 0, "wait, i recognize that chipmunk");
initCodecPage(SPK_ALTO, 4, 0, "thats a chipmunk?");
initCodecPage(SPK_ECHO, 2, 0, "yeah, hes pretty popular in the future");
initCodecPage(SPK_TRUM, 1, 0, "here you go about the future again, how many time machines are there?!"); 
initCodecPage(SPK_ECHO, 8, 0, "no idea, but im pretty sure he stole it from the Fire Capitol himself");
initCodecPage(SPK_CODA, 0, 0, "yup, livestreams the whole heist, im a tier 3 sub");
initCodecPage(SPK_TRUM, 3, 0, "Livestream? like a river?"); 
initCodecPage(SPK_ECHO, 7, 0, "no, um, anyways, he's a pro spy. He uses magnetic acorns that change the polarity of things around them.");
initCodecPage(SPK_CODA, 8, 0, "His jawstrings are also grappling hooks, and he can attach them to the acorns and fly around.");
initCodecPage(SPK_ALTO, 2, 0, "whats he hiding in them cheeks?... His mouth...");
initCodecPage(SPK_ECHO, 3, 0, "Nuts.. umm like seeds, y'know, cuz chipmunk...");
initCodecPage(SPK_CODA, 0, 0, "plus, his tail can magnetically charge them and pull you forward instead of knock you away.");
initCodecPage(SPK_TRUM, 1, 0, "Wow, sounds like alot. Ill just get it all wet till it stops working."); 
initCodecPage(SPK_ECHO, 33, 0, "hum, that should work.");
spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve has been removed for violating Community Guidelines";

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

// Palutena's Guidance (for RuberCuber's Pit character)
// Works kind of similarly to Trummel codecs.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit(0);
initCodecPagePit(SPK_PIT,	5,	9,	"Woah! Look at that tail, I wanna lay on it!");
initCodecPagePit(SPK_PALU,	4,	0,	"I wouldnt recommend doing that Pit. Im pretty sure thats Loadent");
initCodecPagePit(SPK_PALU,	0,	1,	"He keeps alot of electricity in there, especially the pink at the end.");
initCodecPagePit(SPK_VIR,	5,	1,	"Unless you wanna mess up your hair!");
initCodecPagePit(SPK_PALU,	5,	4,	"He uses it to apply static to his projectiles and send you flying in ways you wont expect.");
initCodecPagePit(SPK_PIT,	3,	0,	"Pssh, so, ill just fly back, no biggie.");
initCodecPagePit(SPK_VIR,	1,	8,	"Yeah, until he places an acorn in the air, get to close and the'll push you back.");
initCodecPagePit(SPK_PALU,	0,	3,	"or pull you in and keep you suspended in the air");
initCodecPagePit(SPK_PIT,	7,	7,	"Wow, alot to watch out for. Im sure I can manage.");
initCodecPagePit(SPK_VIR,	0,	4,	"Honestly, just uses your sheilds. He'll have a hard time setting up in that case.");
initCodecPagePit(SPK_PIT,	6,	5,	"Cool, maybe after, he'll let me hug his tail.");



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