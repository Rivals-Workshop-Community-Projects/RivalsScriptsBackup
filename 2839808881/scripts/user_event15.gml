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
num_alts = 32;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Kirby",
	"Mirror Yellow",
	"Mirror Red",
	"Mirror Green",
	"Ocean Blue",
	"Smashing Orange",
	"Shiny Emerald",
	"Rider Purple",
	"Rider Brown",
	"Rider White",
	"Spray Carbon",
	"Spray Ivory",
	"Spray Snow",
	"Spray Cherry",
	"Mirror's Shadow",
	"Fighter's Shadow",
	"Common Foe",
	"Lord of the Trees",
	"Block-Pusher",
	"Golden Ball",
	"Legendary Machine",
	"Hand Drawn",
	"Hammer King",
	"Lone Swordsman",
	"Friendly Matter",
	"Jester's Betrayal",
	"Soul of the Art",
	"Soul of the Crown",
	"Soul of the System",
	"Soul of Everything",
	"Trans Rights!!",
	"Adventure Awaits!",
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
muno_char_name = "Kirby";

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

initTip("NSpecial: Inhale");
initWords("Neutral Special is Kirby's trademark ability: Inhale!");
initWords("Kirby will attempt to swallow up anything in front of him with this move. It can be held indefenitely.");
initWords("Inhaling something has Kirby store it in his mouth. There, he can move around and jump. Pressing Down will have Kirby swallow whatever he inhaled.");
initImage_ext(sprite_get("nspecial"), -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("NSpecial: Inhale (Cont.)");
initWords("Inhaling an opponent and swallowing them allows Kirby to take the opponent's Copy Ability! The Copy Ability will then replace Inhale as Neutral Special.");
initImage_ext(sprite_get("nspecial"), 1, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), 23, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), 30, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("








Inhaling a projectile will allow Kirby to spit it out right back at 'em as a star! The damage of the star is equal to 0.8x the original projectiles damage. Swallowing this does nothing.");
initImage_ext(sprite_get("nspecial"), 14, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_star, -5, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("FSpecial: Wheel");
initWords("Kirby uses his Wheel Copy Ability as his Forward Special!");
initWords("Kirby will turn into a wheel and rev forward at high speeds.");
initWords("Kirby can jump and turn around while grounded.");
initWords("In the air, the move can be canceled with a jump!");
initWords("Pressing Special or Parry during this move will have Kirby turn back to normal and stop moving.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Jet");
initWords("Kirby uses his Jet Copy Ability as his Up Special!");
initWords("Kirby can take aim and soar in 1 of the 8 cardinal directions with this move. (Up, Down, Left, Right, and inbetweens.)");
initWords("This move can be charged to increas the distance Kirby flies. While charging, your vertical and horizontal speed are slowed.");
initWords("You can also store the charge of USpecial by pressing Parry while charging. This way, you can use USpecial and fly max distance without charging it!");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial (Ground): Stone Uppercut");
initWords("Kirby uses his Stone Copy Ability for his Down Special!");
initWords("This move has different variations depending on where you use the move.");
initWords("On the ground, Kirby will use the Stone Uppercut technique that Stone Kirby has. It's quite slow, but really packs a punch if it lands!");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial (Air): Stone");
initWords("Following off of Stone Uppercut, using Down Special in the air has Kirby turn into a Stone!");
initWords("Kirby will fall straight downward dealing big damage and knockback. Has soft armor while he's turned into stone.");
initWords("After landing, you can hold Special to stay in stone form... although you won't have soft armor.");
initWords("The form Kirby takes is also different every time he uses the move. With so many things to transform into, who knows what he'll be next?");
initImage_ext(spr_stone, -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_stone_form, 0, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_stone_form, 3, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Copy Ability: Basics");
initWords("After inhaling an opponent and swallowing them, Kirby will take their Copy Ability. This will replace Kirby's Neutral Special.");
initWords("All of Rivals' Base Cast and a large majority of Workshop characters already have pre-built in compatability. If you would like to add a Copy Ability to your character, check the Steam Description for instructions. (Its super simple!)");
initWords("If you would like to get rid of your Copy Ability after getting one, hold the Taunt button during Taunt. (Note: You'll also lose your Copy Ability after dying.)");
initImage_ext(sprite_get("taunt"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Exclusively in Training Mode, hold Up and Taunt to enter a menu where you can manually select what Copy Ability Kirby can have!");

/*
initTip("Copy Ability: Template");
initWords("Insert Text Here");
initImage_ext(spr_ability_fire, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
*/


initTip("Copy Ability: Fire");
initWords("With the Fire Copy Ability, Kirby can use fire to attack.
Here, Kirby will dash forward while lighting himself on fire, similar to the Burning ability.
This move has pratfall on whiff, but if you hit someone with the early frames of this move, you can avoid pratfall.
Kirby will also bounce off of any wall he touches.");
initImage_ext(spr_ability_fire, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Beam");
initWords("With the Beam Copy Ability, Kirby can use a magic wand to create beams of electricity.
This move has 2 different attacks: Beam Whip and Wave Beam.
Beam Whip can be used by TAPPING NSpecial. Here, Kirby will wave his wand in front of him creating an electric beam. This deals multihit damage and has great reach.
Wave Beam can be used by HOLDING NSpecial. Kirby will spin his wand above his head, then fire a projectile afterwards. The projectile will be charged once you hear the charge sfx play and see the vfx flash.
While charging, you can also change the direction Kirby is facing.");
initImage_ext(spr_ability_beam, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Ranger");
initWords("With the Ranger Copy Ability, Kirby uses a gun- er, I mean, a blunderbuss to fire projectiles at his opponents.
Here, Kirby will shoot star projectiles out of his firearm. You can hold the Special button down to freely aim at whatever angle you desire.
Also, the projectile that Kirby shoots can be made more powerful as you charge the move. There are 4 kinds of projeciles: each of which depending on how long the move is charged. Try each of them out!");
initImage_ext(spr_ability_ranger, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Fighter");
initWords("With the Fighter Copy Ability, Kirby can perform martial arts.
Here, Kirby will perform the Rising Break technique that Fighter has. This is a strong vertical finisher and combo tool. This also doubles as a recovery tool, since it gives you vertical height.");
initImage_ext(spr_ability_fighter, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Sword");
initWords("With the Sword Copy Ability, Kirby can wield a sword and use a Spin Attack, similar to a certain legendary hero.
You can hold the Special button to charge the move. This will not affect the moves stats, but you can use this to delay the Spin Attack to bait parries among other things.
When performing the Spin Attack, you can move left and right.
Hold Up during startup while grounded to jump upwards while spinning, performing Twister Slash!");
initImage_ext(spr_ability_sword, -3, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Water");
initWords("With the Water Copy Ability, Kirby can surf the waves of the ocean while moving forward.
The move is a multihitting attack that hits 5 times total, with the final hit being stronger than the others. Bounces back when hitting a wall.");
initImage_ext(spr_ability_water, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Leaf");
initWords("With the Leaf Copy Ability, Kirby can summon leaves to his will.
Here, Kirby will summon leaves to perform the Leaf Uppercut technique that Leaf has. Deals moderate damage and high knockback. Useful as a combo tool and killmove near the top of the screen.");
initImage_ext(spr_ability_leaf, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Tornado");
initWords("With the Tornado Copy Ability, Kirby can create whilrwinds that he can use.
This move functions like how it does in most Kirby games. Hold the Speical button to rise and let go of it to fall.");
initImage_ext(spr_ability_tornado, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Bomb");
initWords("With the Bomb Copy Ability, Kirby gains access to an explosive projectile.
Pressing Special has Kirby throw a bomb that deals moderate damage. Explodes if it hits literally anything.
Hold the Special button to increase the distance it can be thrown.");
initImage_ext(spr_ability_bomb, -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_ability_bomb_proj, -4, fa_right, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Abyss");
initWords("With the Abyss Copy Ability (A new Copy Ability for Rivals!), Kirby gains the powers of the Abyss.
Pressing Special has Kirby rise upward with wings growing on his back. Here, Kirby can charge up a powerful Abyss blast.
Charging the move wont give it additional knockback or damage, but you can move freely while charging! Youll slow down more the longer you charge, however.
Release the Special button (or hold the charge for too long, whichever comes first) to unleash a powerful Abyss blast!
Be aware that this move has high endlag and will always put you into pratfall.");
initImage_ext(spr_ability_abyss, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: ESP");
initWords("With the ESP Copy Ability, Kirby can produce shocking electric fields, just like a certain boy with PSI.
This largely functions like how it does in the Kirby games. You tap Special to produce a PK Shift projectile, and you can freely control it from there.
Idle the PK Shift projectile for a bit and it will turn into PK Electroshift: a much more powerful version of the move!
Releasing Special will detonate the projectile with a hitbox.
If the projectile hits an opponent a total of 3 times when moving, it will automatically detonate.");
initImage_ext(spr_ability_esp, -4, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_ability_esp_proj, -4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(spr_ability_esp_proj_elec, -4, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Copy Ability: Drill");
initWords("With the Drill Copy Ability, Kirby can burrow into the earth itself and dive out of it.
If this move is started in the air, Kirby will dive downwards while drilling. You can pass through platforms by holding down. After falling for about 40 frames, Kirby can cancel it with a jump or airdodge. Is also always wall-jump cancelable.
Once Kirby gets to the ground, he will burrow into it. There, he can move left and right to move. Press Special to unearth yourself and dive upwards with a hitbox! Note: Digging for too long will cause Kirby to unearth himself.
Hitting someone with the rising hitbox will allow you to negate this move's pratfall.");
initImage_ext(spr_ability_drill, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Copy Ability: Spark");
initWords("With the Spark Copy Ability, Kirby can surround himself with waves of electricity.
Kirby can create a forcefield of electricity all around him. Can be held for as long as you hold Special.
After releasing Special, Kirby will release the electricity with an active hitbox and end the move.
Has a small cooldown after use.");
initImage_ext(spr_ability_spark, -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

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

initPatch("1.4", "03 October, 2021");
initHeader("NAir - Adjustments, Aesthetics");
initSection("Sped up the move's multi-hits.
Moved the hitboxes downward.
Adjusted sprite.");
initHeader("Taunt - Additions");
initSection("Added a secret taunt.");
initHeader("MunoPhone Touch Firmware v4");
initSection("CSS alt display with >16 alts now uses thinner rectangles instead of two pages.
Adjusted the position of CSS alt names when playing online.
Fixed a bug where the Freeze Own Damage Utility was dependent on the character supporting Fast Graphics.
Fixed a bug where the frame data for parent hitboxes was formatted incorrectly.");

initPatch("1.3", "30 September, 2021");
initHeader("DStrong - Nerfs, Adjustments, Aesthetics");
initSection("Reduced hitbox size and adjusted position.
Hitbox lifetime 5 --> 3.
Adjusted sprite.");
initHeader("DAttack - Nerfs, Aesthetics");
initSection("Endlag 10 --> 12.
Adjusted sprite.");
initHeader("MunoPhone Touch Firmware v3");
initSection("Added the Spam Attack Utility.
The options for Cheats / Utilities will now split into up to four columns for long lists, so the maximum is 40 items.
The jump button now scrolls backwards through a Cheat / Utility's options.
Made the Endless Parry Utility only work if the CPU action is set to Parry.
Fixed the Ranno and Maypul functionality in the CPU Behavior Changes Utility.");

initPatch("1.2", "22 September, 2021");
initHeader("MunoPhone Touch Firmware v2");
initSection("Added the Endless Parry Utility.");

initPatch("1.1", "20 September, 2021");
initHeader("DStrong - Adjustments, Bugfixes");
initSection("Angle 290 --> 280.
Fixed hurtbox.");

initPatch("1.0", "19 September, 2021");
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
initSection("Trummel & Alto, Otto, Steve, Link, Goku");

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

CHEAT_STONE_AIR = initCheat("Linear Stone Transformations", [0, 1], ["Off", "On"], "Enable this to view all of Stone's transformations in a linear order rather than leave it up to chance.");



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
	AT_NAIR,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_FSPECIAL,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_DSPECIAL,
	AT_DSPECIAL_2,
	AT_NSPECIAL_2,
	AT_USPECIAL_2,
	AT_TAUNT_2,
	AT_FSPECIAL_AIR,
	AT_EXTRA_2,
	AT_DSTRONG_2,
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_FTHROW,
	AT_UTHROW,
	AT_DTHROW,
	AT_NTHROW,
	AT_EXTRA_1,
	AT_EXTRA_3,
	AT_TAUNT,
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
initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve couldn't handle the Pink Puff";

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
// Works kind of similarly to MunoPhone.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	3,	0,	"It's always easy to pick Kirby out of a crowd.");
initCodecPagePit(SPK_VIR,	6,	1,	"Aww! He's so squishy and adorable!");
initCodecPagePit(SPK_PALU,	4,	0,	"True, but he's still a formidable foe.");
initCodecPagePit(SPK_PIT,	4,	8,	"Hes got all kinds of moves, and hes top notch at recovering! Does this guy have ANY weaknesses?");
initCodecPagePit(SPK_VIR,	5,	6,	"Just what you'd expect: his weight. Or rather, his lack of weight.");
initCodecPagePit(SPK_PIT,	6,	6,	"So, it shouldn't be hard to send him flying, huh?");
initCodecPagePit(SPK_PALU,	0,	4,	"Right. The question is how to do that.");
initCodecPagePit(SPK_VIR,	4,	2,	"Good luck doing that, through! Kirby's loaded with different things the last time youve seen him.");
initCodecPagePit(SPK_VIR,	5,	4,	"Kirby won't copy your Bow when inhaling you, but he will pull from his own set of Copy Abilities. For example, you give him Tornado.");
initCodecPagePit(SPK_VIR,	5,	6,	"He even uses his Copy Abilities outside of his Specials! Watch out for his Hammer Flip!");
initCodecPagePit(SPK_PALU,	0,	0,	"Despite his wide range of Abilities, you almost match him with your own weapon pool.");
initCodecPagePit(SPK_PALU,	0,	1,	"Don't let his quantity of techniques get on your shoulder: take him on!");

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
