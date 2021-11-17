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
num_alts = 26;

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
muno_char_name = "Incineroar";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 90;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = false;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = false;

// Set to true and this will DISABLE a lot of the phone's side utilities.
// If you're porting the phone to an existing char and don't need any of these
// features, you might as well turn on lightweight to save a tiny bit of
// performance. (see _docs.gml for a full list of what this disables)
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

initTip("Popoff Animations");
initWords("True to their wrestling heel nature, after landing certain attacks (such as Jab 3, Dash Attack, Up Strong or Forward Strong), Incineroar will strike a pose to gloat and celebrate their victory for the crowd.");
initWords("These animations are fairly long, but can be cancelled quickly, after the endlag has taken its proper amount of time to be 2/3 that of the endlag on whiff.");
initImage_ext(sprite_get("ustrong_popoff"), 3, fa_right, 1, 1, true, c_white, 1, true, 80, 80, 148, 2);
initImage_ext(sprite_get("jab_popoff"), 4, fa_left, 1, 1, true, c_white, 1, true, 80, 80, 148, 2);
initImage_ext(sprite_get("fstrong_popoff"), 8, fa_center, 1, 1, true, c_white, 1, true, 80, 80, 148, 2);

initTip("FSpecial: Alolan Grapple");
initWords("Incineroar's FSpecial looks just like Alolan Whip from Super Smash Bros. Ultimate, however it operates somewhat diferently here in Rivals! This new move is called Alolan Grapple.");
initWords("The dashing grab is very similar to Alolan Whip, however if it connects with a foe, they will not be thrown into the ropes. Instead you can choose any of Incineroar's four directional throws, like any Smash character.");
initWords("There's only a fairly short window to pick a throw, and if you take too long Incineroar will get impatient and default to Forward Throw.");
initImage_ext(sprite_get("fspecial"), 5, fa_center, 1, 1, true, c_white, 1, false, 80, 80, 100, 2);

initTip("FSpecial's Throws");
initWords("Incineroar's four throws not only look cool but each have different uses.");
initWords("Up Throw and Back Throw are strong kill options off the top or off the side respectively. Down Throw starts combos and Forward Throw is good for positioning.");
initWords("Something to note is that throws are weaker when Incineroar is in the air. The exception is Down Throw, which actually spikes instead!");
initImage_ext(sprite_get("phone_tip1"), 1, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("phone_tip1"), 2, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Other Grabs?");
initWords("While they may not look like it, USpecial and DStrong both act as command grabs. However, none of them, not even FSpecial, can grab an armored foe, and they can all be parried effectively.");
initImage_ext(sprite_get("uspecial"), 2, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dstrong"), 8, fa_right, 1, 1, true, c_white, 1, true, 100, 100, 150, 4);

initTip("NSpecial: Run the Ropes");
initWords("Lariat has been moved to DStrong in Rivals, in order to make room for this brand new move on NSpecial. The ropes may not appear on Incineroar's new FSpecial, however they play a big role as Incineroar's deployable stage control.");
initWords("Set up the ropes by tapping NSpecial, or hold the button to spawn the ropes a distance away from you.");
initWords("The ropes do nothing on their own, but any player that gets launched into the ropes will be grabbed and shot back! The power of the throw is based on how much horizontal momentum the player has when they touch the ropes.");
initImage_ext(sprite_get("nspecial"), 11, fa_left, 1, 1, true, c_white, 1, true, 80, 80, 108, 2);
initImage_ext(sprite_get("ropes"), 0, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("Warning-- Incineroar will get grabbed and thrown just like any other player if they get launched into their ropes.");

initTip("Additional Uses for Ropes");
initWords("NSpecial's ropes aren't just for bouncing foes off of-- Incineroar can bounce themself off their ropes too for some tricky movement!");
initWords("Try using Dash Attack towards the ropes to bounce off with a faster knee charge that doesnt get weaker as it goes along and can even move off ledges! Also try using FSpecial into the ropes to do a turnaround grab with plenty of range.");
initImage_ext(sprite_get("ropesBack"), 6, fa_left, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("dattack"), 2, fa_center, 1, 1, true, c_white, 1, true, 80, 80, 108, 2);

initTip("Cross Chop's Multiple Mixups");
initWords("Cross Chop, Incineroar's USpecial, is a fairly linear and predictable recovery move at first glance. While it's not the best recovery option in the world, there are several built-in mixups to help ensure your return to the stage is a safe one.");
initWords("In Rivals, Cross Chop functions similarly to Ranno's USpecial in the sense that only the upwards motion is done by default. To do the downwards motion, press B again during the ascent or at the peak.");
initWords("Again like Ranno, doing the downwards motion lets you avoid the pratfall you'd recieve by only doing the upwards version-- leaving you free to use your double jump, FSpecial and airdodge to finish the job.");
initImage_ext(sprite_get("uspecial"), 2, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("uspecial"), 8, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("uspecial"), 13, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Cross Chop's Multiple Mixups, Part 2");
initWords("During the descent, Cross Chop still has multiple ways to influence its path.");
initWords("Just like in Smash, you can control the angle of descent by holding left or right. The amount of control you have this way is greater than the amount of control you'd have in Smash.");
initWords("Also like Smash, you can hold down during the descent to pass through platforms, while normally you'd just land on them.");
initWords("Finally, this is new to Rivals, but if you hold parry as you land during this move, Incineroar will do a 'soft landing' instead of landing with their normal crash-explosion. A soft landing has no hitbox and still has a little lag, but significantly less lag than the normal version.");
initWords("Mastering these mixups is key to a safe recovery.");
initImage_ext(sprite_get("uspecial_burst"), -6, fa_center, 1, 1, true, c_white, 1, true, 100, 100, 100, 100);

initTip("DSpecial: Revenge");
initWords("Just like in Smash, Incineroar's DSpecial is Revenge. It's a counter move, but uniquely the counterattack is just that weak flame burst! Instead, Incineroar will power up, blocking some of the damage from the countered hit, and applying a rapid explosion effect to their next hit.");
initWords("The more damage the incoming attack deals, the more damage the explosions will do-- all the way up to a 3x boost! Also, Incineroar can counter multiple hits, and the multiplier will grow.");
initWords("Block a strong enough hit and you can make any opponent scared! After all, who wouldn't be when they're fighting a giant glowing tiger who just really wants to give them a nice big hug?");
initImage_ext(sprite_get("phone_tip2"), 1, fa_center, 1, 1, true, c_white, 1, true, 400, 400, 170, 70);

initTip("Consuming Revenge");
initWords("With the Revenge status up, hit any player with just about any attack and you can deal additional damage and knockback. In addition, there will be some extra dramatic effects to really rub in your victory!");
initWords("Not all moves will use up Revenge, though! Jab 1 and 2 will never use Revenge, so you're free to do a tilt-cancel followup boosted by Revenge. Also, the ascent and descent of Cross Chop won't use Revenge, only the explosion, so you can recover without fear of wasting it.");
initWords("Players getting thrown by ropes will not consume revenge, and finally, neither will the burst attack of another Revenge counterattack. Feel free to keep stacking multiple Revenge boosts for an extreme boost of power!");
initImage_ext(sprite_get("jab"), 1, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jab"), 7, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jab"), 14, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Revenge's Hidden Bonus");
initWords("While doing a bunch of damage and knockback and having a special hit cutscene is very cool, that's not all Revenge's boost does for Incineroar. Additionally, their movement stats all get a slight upgrade!");
initWords("Typically, they move about as fast as Kragg, however when Revenge's effect is active, their movement stats are comparable to those of Clairen. Not a huge boost, but definitely a noticable one.");
initWords("If you're struggling with a zoner, try using Revenge on a projectile, and then use the enhanced movement speed to help close the distance! You'll still have the boost so you (and Incineroar) can get that sweet cathartic payback on that projectile spammer when you finally corner them.");
initImage_ext(sprite_get("dash"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Revenge's Limits");
initWords("Revenge is a strong move that can turn the tide of battle, however it does have its downsides.");
initWords("Notably, the status will wear off over time. While in Smash, the entire status wears off all at once after a set time or damage taken, in Rivals the effect instead slowly weakens overtime, and weakens faster if Incineroar is hit.");
initWords("Opponents can either decide to play defensively to wait out the buff, or play offensively to beat the buff out of Incineroar. Both methods can be risky, however.");
initWords_ext("- An opponent trying to play defensively may become overwhelmed by the speed boost Revenge grants Incineroar, and throwing projectiles gives Incineroar more chances to Revenge them to boost the timer.", fa_left, c_white, 1, false)
initWords_ext("- An opponent trying to play offensively must be careful, as if they drop a combo, a counterattack is very likely. Fast moves like NAir may be employed as a reversal option, too.", fa_left, c_white, 1, false)

initTip("An Overzealous Taunt");
initWords("For Incineroar's taunt, they pound their chest and strike a pose!");
initWords("However, Incineroar does tend to really get into it when taunting so they can even take self-damage from hitting their own chest too hard-- even moreso if they have a Revenge boost!");
initImage_ext(sprite_get("taunt"), -6, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("







However, this taunt also happens as part of Incineroar's intro animation, which means they start each match at a 1% deficit! Talk about cocky!");



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

/*
initPatch("1.0", "20 September, 2021");
initWords_ext("(Changes from Vanilla Sandbert)", fa_center, c_white, 0, false);
initHeader("Stats - Nerfs");
initSection("Most stats made identical to Zetterburn's.
Prat land time 3 --> 10.");
initHeader("NSpecial - Reworks");
initSection("Replaced entirely with a Kamehameha.");
initHeader("FSpecial - Adjustments, Nerfs, Buffs");
initSection("Movement code retooled.
Now has pratfall.
Damage 6 --> 5.
Endalg 16 --> 15.
Can now be canceled into a wall jump.");
initHeader("USpecial - Reworks, Nerfs, Buffs");
initSection("Flight now lasts a fixed, much shorter amount of time, and cannot be canceled into pratfall.
Flight period begins with a bit of initial upward speed, and can now go downward through platforms.
Hitbox timings adjusted.
Multihit damage 2 --> 1.
Multihit active frames no longer leave blind spots.
Finisher damage 8 --> 6.
Finisher angle flipper 1 --> 8. (acts pretty much the same)
Can now be canceled into a wall jump.");
initHeader("DSpecial - Nerfs");
initSection("Startup 1 --> 3.
Can now be jump-canceled only on hit.
Base knockback 10 --> 8.
Base hitpause 3 --> 6.");
initHeader("Jab - Buffs, Nerfs");
initSection("Now ignores parry stun.
Endlag 6 --> 9.
Damage 8 --> 3.");
initHeader("FTilt - Nerfs");
initSection("Endlag 9 --> 12.
Damage 9 --> 6.");
initHeader("UTilt - Buffs, Nerfs");
initSection("Hitbox width increased.
Damage 5 --> 2.");
initHeader("DTilt - Nerfs");
initSection("Endlag 10 --> 12.
Damage 7 --> 5.");
initHeader("Dash Attack - Nerfs");
initSection("Endlag 7 --> 10.
Damage 6 --> 4.
Hitbox size reduced.");
initHeader("NAir - Nerfs, Adjustments");
initSection("Final hit damage 5 --> 2.
Final hit knockback growth 0.2 --> 0.4.
Startup 4 --> 8.
Endlag 7 --> 8.
Landing lag 4 --> 5.");
initHeader("FAir - Nerfs");
initSection("Startup 4 --> 10.
Endlag 8 --> 12.
Landing lag 6 --> 7.
Angle 30 --> 40.
Base hitpause 6 --> 11.
Knockback growth 0.25 --> 0.4.");
initHeader("BAir - Nerfs");
initSection("Endlag 7 --> 9.
Landing lag 4 --> 7.
Angle 30 --> 40.
Base hitpause 6 --> 11.
Knockback growth 0.25 --> 0.4.");
initHeader("UAir - Nerfs");
initSection("Damage 5 --> 2.
Endlag 6 --> 9.");
initHeader("DAir - Nerfs");
initSection("Startup 9 --> 12.
Landing lag 4 --> 9.
Damage 18 --> 10.
Base knockback 10 --> 7.
Knockback growth 1.0 --> 0.8.");
initHeader("FStrong - Nerfs");
initSection("Damage 10 --> 8.
Startup 12 --> 14.");
initHeader("UStrong - Nerfs");
initSection("Startup 7 --> 13.
Knockback growth 1.2 --> 1.1.
Base hitpause 8 --> 12.
Hitpause growth 0.5 --> 0.6.");
initHeader("DStrong - Nerfs");
initSection("Damage 11 --> 9.
Knockback growth 1.3 --> 0.65.
Base hitpause 7 --> 10.");

initPatch("About Sandbert", "");
initWords("Sandbert was originally released as an overpowered April Fools' joke character, and was later used as a template Steam Workshop character - as an example of how to create a custom fighter.");
initWords("This version of Sandbert, in addition to serving as the template for fighters that use the MunoPhone Touch, also features touched-up animations and a major balance patch.");
initHeader("Originally developed by");
initSection("Dan Fornace and/or his team of RoA developers");
initHeader("Animation and balance edits by");
initSection("Muno - byMuno.com");
initHeader("Additional SFX from");
initSection("Dragon Ball FighterZ");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link");

*/

// Recommended template for non-Sandbert characters:



initPatch("1.081", "November 11th, 2021");
initHeader("FSpecial");
initSection("- Hitbox size reduced.");
initHeader("UAir");
initSection("- Hitbox sizes all reduced.");
initHeader("USpecial");
initSection("* Fixed a bug where you could cancel the move very early by hitting the rising non-scoop hitbox.");
initHeader("UStrong");
initSection("- Visual and hitbox size reduced. Again.");
initSection("+ Made the sweetspot cover a little more of the sourspot.");
initSection("- Sourspot KB reduced (8.5+.95 -> 8.5+.9)");
initHeader("UTilt");
initSection("- Hitbox sizes all reduced.");

initPatch("1.08", "November 10th, 2021");
initHeader("General");
initSection("* Added an alt for LessTime, who placed Top 8 in Blueberry Bout with Incineroar!");
initSection("* Hit SFX adjusted on a lot of moves, did more layering with base cast hit sounds.");
initSection("* Screenshake adjusted on all throws.");
initSection("- Did some slight tweaking to air stats, should feel *slightly* slower now.");
initHeader("DSpecial");
initSection("- When revenging a projectile, players can only get hit by the smaller 'all-target' counterattack hitbox.");
initSection("- When revenging a melee hit, increased the endlag of the counterattack (12 -> 18).");
initSection("+ When revenging a projectile, decreased the endlag of the counterattack (12 -> 9).");
initHeader("FSpecial");
initSection("- Startup increased (13f -> 18f).");
initSection("- Endlag increased (22f -> 25f). Fall speed slightly reduced during endlag.");
initSection("+ If you have a Revenge charge, you can spend the Revenge charge to jump-cancel this move during the active frames if you haven't hit anyone.");
initSection("* Fixed a bug where using an aerial FSpecial into your own ropes to bounce off would not properly move Incineroar to the ropes' throw point.");
initHeader("NAir");
initSection("* Strong Hit Active Frames reduced (3 -> 2).");
initHeader("USpecial");
initSection("- Reduced Knockback on the spike (8+.6 -> 8+.4).");
initSection("- Reduced Hitstun Multiplier on the spike (1 -> .9).");
initSection("* Changed Launch Angle of the weak hitbox of the descent (40 -> 50).");
initSection("- Incineroar will now go into pratfall after using the descending part of USpecial.");
initSection("+ During the endlag of the descending part, you can cancel into jump or FSpecial if you have those resources.");
initSection("+ During the endlag of the descending part, can cancel into an attack if you hit the spike.");
initSection("* Reduced the duration of downwards motion, increased the endlag (cancel) window (30, 10 -> 25, 15).");
initSection("- Incineroar will now go into Soft Landing(15f lag) if you land during the endlag (originally 6f landing lag).");
initSection("- Reduced the amount of horizontal movement allowed during the bounce portion of the move.");
initSection("* Added slight screenshake when crash landing during this move.");
initHeader("UStrong");
initSection("- Smear visual made smaller. Hitbox sizes reduced to match.");

initPatch("1.072", "October 23rd, 2021");
initHeader("General");
initSection("* Will no longer repeatedly play the intro during cutscenes on Adventure Mode stages.");
initSection("* Adjusted the depth of many particle visuals to appear properly on Adventure Mode stages.");
initSection("* Added Character Attribute variables for compatability with Adventure Mode stages.");
initHeader("DSpecial");
initSection("* Now properly functions against Adventure Mode enemies.");
initSection("* When used in Adventure Mode, Revenge's boosted hit has reduced hitpause and only creates one additional explosion.");
initSection("* Fixed the layering order on the ring visual effects.");
initHeader("FSpecial");
initSection("* Now properly functions against Adventure Mode enemies.");
initHeader("USpecial");
initSection("* Now properly functions against Adventure Mode enemies.");

initPatch("1.071", "October 15th, 2021");
initHeader("Jab");
initSection("* Fixed a bug where Jab 1 would do an excessive amount of damage. (Jeez, how'd that happen?)");

initPatch("1.07", "October 14th, 2021");
initHeader("General");
initSection("* Adjusted some local-end Munophone code to hopefully improve performance. Remember, if your computer lags whenever playing as or against Incineroar (or any other Munophone Touch user) online, press F1 on match start to disable some visual aspects and improve performance.");
initHeader("DSpecial");
initSection("- When hitting a player with the boost, the knockback of the initial hit now has a limit.");
initSection("- Increased the effects of SDI on the rapid explosions.");
initHeader("Jab");
initSection("* Incineroar can no longer perform a subsequent jab while holding back on the control stick. This is a parity change, to make Incineroar's jab consistent with base cast jabs, and allows buffering of reverse FTilt out of a whiffed jab.");
initWords_ext("This is a small issue that all workshop characters have because they are coded differently from base cast characters. Thanks, Dan :P", fa_left, c_white, 2, false);
initWords_ext("I advise all workshop developers add this code, it is available in the Steam Change Notes, as well as the #patch_notes channel on the ExW Discord. Huge thanks to Supersonic for writing this code for me!", fa_left, c_white, 2, false);


initPatch("1.06", "October 1st, 2021");
initHeader("General");
initSection("- Wave Land Adj [1.05 -> .9] (This means Incineroar's wavedash moves about 2 training grid tiles instead of 3.)");
initSection("* Munophone firmware updated.");
initSection("* Munophone height properly implemented so the page indicators show up correctly.");
initHeader("DAttack");
initSection("- Late Hit Angle [45 -> 50]");
initSection("- Late Hit Hitstun Multiplier [1 -> .9]");
initHeader("DSpecial");
initSection("- Endlag increased [20 -> 27] when the counter is not triggered.");
initSection("- Increased the amount of Revenge that is lost when Incineroar gets hit.");
initSection("* Revenge's boosted hit now functions much differently.");
initWords_ext("- No longer has any sort of damage or knockback multiplier.", fa_left, c_white, 2, false);
initWords_ext("+ The hit player will now get hit by a set of three rapid explosions a short duration after they are launched.", fa_left, c_white, 2, false);
initWords_ext("> All three hits share the angle of the attack that was Revenge boosted.", fa_left, c_white, 3, false);
initWords_ext("> The first two hits have very little knockback and can be SDI'd well.", fa_left, c_white, 3, false);
initWords_ext("> The third hit shares the knockback of the attack that was Revenge boosted (so it's like Incin hit them again from afar with the same move).", fa_left, c_white, 3, false);
initWords_ext("> If the hit player leaves hitstun (such as if they tech off a wall), no more explosions will occur.", fa_left, c_white, 3, false);
initWords_ext("> The explosions' damage add up to what the boosted damage would have been in the old system. (e.g. if Incin has a 2x multiplier and hits with a move that does 10, the explosions' damage will all add up to 10.)", fa_left, c_white, 3, false);
initHeader("FAir");
initSection("- Late Hit Hitstun Multiplier [1 -> .85]");
initHeader("NAir");
initSection("- Late Hit Hitstun Multiplier [1 -> .85]");
initHeader("UAir");
initSection("- Hitstun Multiplier [1 -> .85]");

initPatch("1.05", "September 25th, 2021");
initHeader("DSpecial");
initSection("- Reduced the maximum damage multiplier you can reach [4x -> 3x]. (Note: the scaling particle effects have been adjusted to do their maximum effect at 3x now)");
initSection("- Reduced the amount of Revenge obtained for each successful use [0.5 + 0.15*damage -> 0.3 + 0.12*damage].");
initSection("- Natural damage multiplier decay sped up [0.06/s -> 0.72/s].");
initSection("+ Natural damage multiplier decay now does not begin until 2 seconds after the Revenge stack is gained.");
initHeader("FStrong");
initSection("- Added a high-priority sourspot at the base of the move.");
initHeader("UAir");
initSection("- Hurtbox size increased.");
initSection("- Hitbox size slightly reduced.");
initHeader("UTilt");
initSection("* Hurtbox adjusted.");

initPatch("1.04", "September 24th, 2021");
initHeader("General");
initSection("* Fixed a bug that would cause opponents to be warped into DStrong if used immediately after hitting only the rising hit of USpecial.");

initPatch("1.03", "September 24th, 2021");
initHeader("General");
initSection("* Updated Munophone");
initSection("* Fixed a bug that would cause opponents to die several times when grabbed near a blast zone.");
initSection("* Fixed CSS Portrait (it was using the old version).");

initPatch("1.02", "September 21st, 2021");
initHeader("General");
initSection("* Adjusted backend code so Lukaru AI no longer crashes against Incineroar??? (please luka include a failsafe for this lol i did nothing wrong)");
initSection("* Adjusted portrait to reduce blue highlights.");
initHeader("DStrong");
initSection("* Launcher Hit Angle [60 -> 50].");
initSection("- Launcher Hit KB [9+1.1 -> 9+.95].");
initHeader("FSpecial");
initSection("- Now only breaks projectiles for the first two active frames of the dash grab.");
initHeader("NSpecial");
initSection("* Melee Hit Active Frames [3 -> 1]. Fixed a bug where multiple ropes could be spawned when landing the attack in an unintended manner.");
initSection("* Rope Throw Angle [40 -> 35].");
initSection("+ Increased the detection radius for the ropes' grab.");
initSection("+ You can now hold up during the charge time to spawn the ropes higher.");
initHeader("USpecial");
initSection("- Descending Hit Damage [8/7 -> 6/4].");
initSection("- Rising Motion Startup [F7 -> F9].");
initSection("- Bounce now is cancelled when Incineroar touches the ground, however it now has 6f landing lag. All in all balances out to +5f of lag when bouncing and landing on the same surface (30f -> 35f).");
initSection("- Increased lag when doing a Soft Landing out of the downwards motion (10f -> 15f).");
initSection("* Changed how the command grab functions. Now players should only be dragged when the move continues instead of instantly, and should not move at all if the move trades with an enemy attack.");
initSection("+ Made it easier for the rising hit to connect into the falling hit.");
initSection("+ Increased the amount of horizontal control Incineroar has during the rising portion of the move.");
initHeader("UStrong");
initSection("- Top hitbox (sourspot) KB [8.5+1 -> 8.5+.95].");	

initPatch("1.01", "September 19th, 2021");
initHeader("General");
initSection("* Swapped the position of the Tony the Tiger alt with the Shiny alt (so the Shiny alt has the golden skin shine effect).");
initSection("* Added skin for BowlingKing, who placed Top 8 in the Good Times tournament using Incineroar.");
initSection("* Fixed CSS text.");
initSection("* Adjusted portrait slightly to reduce the amount of blue highlight.");
initSection("* Added code on the backend that should prevent certain bugs from occurring.");

initPatch("1.0", "September 19th, 2021");
initHeader("General");
initSection("* The character was released.");

initPatch("About Incineroar", "");
initHeader("Character by");
initSection("Nackles42");
initHeader("Commissioned by");
initSection("InnerOtaku and Snolid Ice");
initHeader("SFX from");
initSection("Super Smash Bros. Ultimate, Pokemon Diamond/Pearl/Platinum, Pokemon Sun/Moon, Pokemon Anime");
initHeader("Compatible with");
initSection("TrumAlto 2, Otto 2, Steve, Link, Pit, Boxing Ring, Dedede Arena, Soulbound Conflict");





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

CHEAT_DISPLAY		= initCheat("Visible Revenge Stack", [0, 1], ["Off", "On"], "Displays Incineroar's damage multiplier at all times! (1x is default, 4x is maximum)");

CHEAT_BUFF		= initCheat("Self-Sufficient Revenge", [0, 1, 2], ["Off", "On (Trigger counterattack)", "On (Don't trigger counterattack)"], "Trigger Revenge without countering an enemy attack!

(During the counterattack window, press a button to simulate getting hit. Taunt for a weak hit, Attack for a medium hit or Special for a strong hit)");


CHEAT_PERSIST		= initCheat("Persistent Revenge", [0, 1, 2, 3], ["Off", "No Decay", "No Consumption", "No Decay or Consumption"], "Makes it harder for Revenge to go away. 
'No Decay' prevents Revenge from getting weaker over time or when Incineroar is hit. 
'No Consumption' prevents Revenge from being used up on hit.");

CHEAT_HUG		= initCheat("Extended Grab Time", [0, 1, 2,], ["1x", "2x", "Infinite"], "Increases the time Incineroar can hold their opponents with FSpecial.

take me into your lovin' aaaaaaaarms");

CHEAT_MORE		= initCheat("Unlimited Ropes", [0, 1,], ["Off", "On"], "Make more ropes.");

CHEAT_NONE		= initCheat("Destroy All Ropes", [0], ["Activate"], "Press A to destroy all ropes.");
CHEAT_CALM		= initCheat("Tranquility", [0], ["Activate"], "Press A to remove your Revenge stack.");





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
	AT_UTILT,
	AT_FTILT,
	AT_DTILT,
	AT_DATTACK,
	AT_USTRONG,
	AT_FSTRONG,
	AT_DSTRONG,
	AT_USTRONG_2,
	AT_FSTRONG_2,
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
	AT_FTHROW,
	AT_NTHROW,
	AT_UTHROW,
	AT_DTHROW,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL_2,
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
phone.stats_notes = "Some stats change depending on whether Incineroar has a revenge boost or not.";

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

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 0, 0, "garfelf");
initCodecPage(SPK_ALTO, 0, 0, "...........Close enough.");
initCodecPage(SPK_TRUM, 0, 0, "lasaga");
initCodecPage(SPK_ALTO, 2, 0, "That's Incineroar, the Heel Pokemon.");
initCodecPage(SPK_ECHO, 2, 0, "Heel? Is that why they keep attacking with their feet?");
initCodecPage(SPK_ALTO, 4, 0, "Not that kind of heel.");
initCodecPage(SPK_ALTO, 9, 0, "In wrestling, a heel is someone who plays a villanous role. They're usually trying to get the crowd to go against them.");
initCodecPage(SPK_ALTO, 0, 0, "To do that, they tend to break the rules and fight disrespectfully, as well as just generally being rude and arrogant.");
initCodecPage(SPK_CODA, 1, 0, "Is that why Incineroar keeps taunting?");
initCodecPage(SPK_CODA, 9, 0, "And what crowd are they even trying to play to here?");
initCodecPage(SPK_OTTO, 2, 0, "Old habits die hard, I presume? Or maybe they just really like playing the bad guy.");
initCodecPage(SPK_OTTO, 8, 0, "Or maybe someone's watching us that we can't see!");
initCodecPage(SPK_TRUM, 0, 0, "         
       
spooky");
initCodecPage(SPK_ALTO, 10, 0, "Otto, I don't have time for an existential crisis right now.");
initCodecPage(SPK_ALTO, 9, 0, "Ugh, someone else take over.");
initCodecPage(SPK_CODA, 2, 0, "....Right. As for actual battle tips, Incineroar hits really hard, has quick moves and has good range.");
initCodecPage(SPK_CODA, 3, 0, "However, their main weakness is mobility. They're big and slow, so you should be able to camp them out with projectiles.");
initCodecPage(SPK_OTTO, 5, 0, "I wouldn't be so sure. They can block moves with Revenge to power up, but it also makes them move faster.");
initCodecPage(SPK_ECHO, 3, 0, "Wow, uh.... I'm glad I'm not the ones fighting them.");
initCodecPage(SPK_TRUM, 0, 0, "yea lol


adapt");
initCodecPage(SPK_CODA, 7, 0, "Trummel. You DO know you're about to fight them, right?");
initCodecPage(SPK_TRUM, 0, 0, "oh noag");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "It's super effective! Steve fainted!";

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