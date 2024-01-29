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
	"Default",
	"Pink",
	"Yellow",
	"Green",
	"Cyan",
	"Blue",
	"Purple",
	"Lime",
	"Tom Nook",
	"Isabelle",
	"K.K. Slider",
	"Blathers",
	"Kapp'n",
	"Tortimer",
	"Rover",
	"Gip",
	"Eve",
	"Pubblo",
	"Bel",
	"Sol",
	"Tinky",
	"Matt",
	"O'rly",
	"Octopus58",
	"Zzz",
	"Froge",
	"Catto",
	"Dumb",
	"Dan Backslide",
	"Very Skillful",
	"Match My Shot",
	"Emeralds",
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
muno_char_name = "Villager";

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

initTip("NSpecial: Pocket");
initWords("Pockets projectiles just like in Smash Bros, and can throw them out again at any time. Unlike in Smash Bros though, Villager can pocket his own projectiles as well!");
initImage_ext(sprite_get("nspecial"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("What projectile he currently has pocketed is shown on his UI, with the icon depending on the character it comes from and what projectile it is.");

initTip("FSpecial: Lloid Rocket");
initWords("Button can be tapped to throw out the rocket, or held to ride it. The rocket can also be hit by Villager (or anyone else) to knock it off-course!");
initImage_ext(sprite_get("fspecial"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("While riding it, Villager also gets some control over the rocket, allowing him to slow it down or speed it up, and move up and down!");

initTip("USpecial: Balloon Trip");
initWords("Flies up using his balloons! A great recovery move that can go incredibly far, but is limited to a fuel meter. Fuel is used in increasingly larger amounts the longer Villager stays off the ground, and won't replenish until he lands. The balloons can also be popped, which leaves Villager vulnerable for a while as he falls!");
initImage_ext(sprite_get("uspecial"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Unlike the Smash Bros version, Villager can cancel this move and attack afterwards, but this becomes slower the less fuel he has, and very long if he runs out.");

initTip("DSpecial: Timber");
initWords("Plants a sapling, which can then be grown into a tree! Once a tree has been grown, it can also be chopped down with the axe!");
initImage_ext(sprite_get("dspecial"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Unlike in Smash bros, the watering can will always be used in the air if a tree hasn't been planted. Villager can also use the axe at all times, even without a tree planted, if he holds Parry during DSpecial's startup!
In addition to the above, the axe can also be charged, making it more powerful, and at full charge it can cut a tree in 1 swing!");

initTip("Grab");
initWords("Press Attack+Parry to use Villager's net and grab opponents (and projectiles)!");
initImage_ext(sprite_get("grab"), -5, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Unlike in Smash, the grab can be used both on the ground and in the air, and each throw functions a little differently while aerial. Use it for combos and setups you wouldn't be able to do otherwise!");

initTip("Extra Pocket Functions");
initWords("If Villager has a slingshot projectile pocketed while using FAir/BAir, he will fire two projectiles!");
initWords("Also, if Villager has a balloon pocketed and uses USpecial, he will replenish some fuel and get a bigger vertical boost!");

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
initPatch("1.43", "28th January, 2024");
initHeader("Fixes / Other Changes");
initSection("+ Fixed Toad compatibility
+ Made Villager's AI use watering can in a few more cases (ex: no djumps, no airdodge, etc)
+ Small fix to bury status effect to not clash with unique bury sprites (ex: Christmas Morshu)");

initPatch("1.42", "20th November, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Added silly angle 0 galaxy stuff to some moves (DSpecial axe, FAir, BAir, FTilt, FThrow/BThrow)");

initPatch("1.41", "17th November, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed a bug with UAir/DAir where the damage and knockback randomization wouldn't work properly
+ Made other characters able to bounce off Villager's tree, lloid rocket, and balloons with certain moves");

initPatch("1.40", "8th November, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Villager pocket no longer messes with the 'state' variable of objects unless it's a KoB character
(this was planned for a while, but since checking for author doesn't work, this required updating most of the roster)
+ Fixed some other misc Pocket things
+ Fixed a minor issue with taunting on the respawn platform");

initPatch("1.39", "5th October, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed some error SFX when a non-Villager character chops down the tree, and made the tree flip properly if cut by a BAir
+ Added so that the extra big taunt will use Villager's new portrait (the old one is still there too, just slightly lower chance)");

initPatch("1.38", "24th September, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Added 7 more Miiverse posts");

initPatch("1.35", "15th August, 2023");
initHeader("Fixes / Other Changes");
initSection("+ If Villager is riding Lloid and it is reflected, it can't hit him while he's still on it (however, Villager can't jump off Lloid for 60 frames if this happens, so that it's not too much of a buff).
This is mainly to replicate the behavior from smash where Villager can be reflected back and explodes if he doesn't jump off soon enough");

initPatch("1.34", "13th August, 2023");
initHeader("Buffs");
initSection("+ Increased FAir sweetspot kbs (0.85->0.9) and BAir sweetspot bkb (6->7)
+ Grab hitbox is now a bit bigger, and grab has less startup (f13->f11)
+ Increased aerial DThrow bkb (4->5) and kbs (0.45->0.55), and grounded UThrow bkb (7->8)");
initHeader("Nerfs");
initSection("- Villager is now stuck a bit longer when cancelling USpecial (15f longer when out of fuel, and up to 30f longer when cancelling w fuel left)");
initHeader("Fixes / Other Changes");
initSection("+ Changed pratfall / aerial parry stun animation to be the flailing from USpecial
+ Pocket now resets the PocketableByOwner variable, fixing some unintended interactions when there's multiple Villagers (mainly with tree)");

initPatch("1.33", "29th July, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Added a new portrait! The old one is still available of course, so Villager now has 2 portraits like some other characters");

initPatch("1.32", "16th June, 2023");
initHeader("Buffs");
initSection("+ Increased DSpecial axe damage a bit (10->12) and kbs (1.0->1.05). Charged stats are also somewhat increased
+ Increased damage of some moves (Jab finisher 5->8, NAir sweetspot 6->7, FStrong sweetspot 10->12, etc)
+ Increased some dmg and kbs on Villager's throws slightly as they didn't feel particularly strong (+1 dmg on most throws, FThrow kbs 0.7->0.8/0.9)");

initPatch("1.31", "6th June, 2023");
initHeader("Mega Buffs");
initSection("+ Villager can now observe you");

initPatch("1.30", "11th May, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed UStrong just not having parry stun (not sure how this was never reported before)
+ Added an alt sprite for Mjau Mjau lloid so that she recolors better
+ Fixed some stuff with the new custom AI");

initPatch("1.29", "11th May, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Improved Villager's AI (credit to DonGT for doing a bunch of it)
+ Added more SFX to the Craig alt, including parry sounds and a victory theme. Also added more SFX and a victory theme to the minecraft villager alt
+ Added special Lloid sprites for Kewtian alts and Craig alt");

initPatch("1.28", "2nd May, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Another small fix with projectile grab stuff (oops)");

initPatch("1.27", "2nd May, 2023");
initHeader("Buffs");
initSection("+ Rune C now also makes grounded DThrow bury opponents");
initHeader("Nerfs");
initSection("- Bury now has a cooldown of 60 frames where the opponent can't be buried again (shouldn't come up very often though, and was mainly added due to the new Rune C thing)");
initHeader("Fixes / Other Changes");
initSection("+ Added KoB_grabbed and compatibility with that on most projectiles, for improved behavior when grabbed by KoB characters
+ Made thrown projectiles able to re-hit opponents
+ Fixed some small things with the grab when grabbing certain projectiles (ex: bowling ball, tree)
+ Fixed a buggy interaction when throwing Kewtian stars with the grab");

initPatch("1.26", "30th April, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed some bugs with the new grab");

initPatch("1.25", "30th April, 2023");
initHeader("Buffs");
initSection("+ Added Villager's grab! You can now use his net to grab opponents by pressing Attack + Parry on the ground or in the air, and throw them in 4 directions. Basically a brand new move that opens up a lot of new options and combos
+ Increased Jab finisher knockback a bit to be more kewtlike (8->9 bkb, angle 45->40)");
initHeader("Nerfs");
initSection("- UAir and DAir hitboxes are a little less wide, and UAir with 3 turnips has slightly less bkb (7->6)");
initHeader("Fixes / Other Changes");
initSection("+ Added aerial sprites for NSpecial, FSpecial, USpecial, and DSpecial
+ Added some screenshake when the bowling ball lands, to make it feel heavier and stronger
+ Added alt Pocket icon sprites for all alt projectile sprites");

initPatch("1.24", "25th April, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Added Miiverse compatibility");

initPatch("1.23", "22nd March, 2023");
initHeader("Buffs");
initSection("+ DSpecial water can now push Villager's projectiles (works if it's his own, from another Villager, or if he currently owns it). Particularly useful with Lloid or bowling ball, and could have some use with pocketed projectiles potentially");
initSection("+ If Villager has bowling ball pocketed, he can fire it out with FAir/BAir (if the button is held)");
initHeader("Fixes / Other Changes");
initSection("+ Fixed an exploit where if you buffered an attack out of DSpecial immediately, the next attack would be able to cut the tree");
initSection("+ Added Pocket_Player on pocketed projectiles, so that projectiles can easily refer to this variable if they want to interact with the Villager that pocketed it in some way");
initSection("+ FStrong bowling ball now persists longer as long as it's still moving");
initSection("+ Made some adjustments to canon and boss mode stuff");

initPatch("1.22", "19th March, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Fixed an issue with the newest patch");

initPatch("1.21", "19th March, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Villager's default color now has slightly darker and more saturated hair");
initSection("+ Improved AI a little");
initSection("+ Added some new hit effects for some moves (mainly DSpecial axe, strongs, etc)");
initSection("+ Added Wily Castle compatibility");
initSection("+ Kewtian mode now changes some compatibility things, changes the victory background, and has more effects");
initSection("+ Moved old rune K to B (because infinite pocket range isnt actually that good lol), and added a new rune K");
initSection("+ Added canon mode, boss mode, and anti-cheapie");
initSection("+ DSpecial watering can now extinguishes fire on burned opponents (supports the base burn status effect and Sol's custom one). Technically counts as a buff lol");

initPatch("1.20", "15th March, 2023");
initHeader("Buffs");
initSection("+ FStrong bowling ball has a bigger hitbox for a few frames when initially dropped, to help its range a little bit (similar to slingshot). Also increased its stats (7->8 bkb, 0.95->1.05 kbs)");
initSection("+ FTilt kbs increased slightly (0.8->0.85)");
initSection("+ Wavedash is slightly better");
initHeader("Nerfs");
initSection("- FAir/BAir now apply a small amount of hitpause to Villager if the sweetspot lands, just to make chains once again very slightly harder to do");
initSection("- Rune N bowling balls during FAir/BAir are now a little bit weaker (less range and damage mostly)");
initHeader("Fixes / Other Changes");
initSection("+ Made jumpstart, land, landinglag, tech, and waveland animations a bit smoother as they were previously just 1 frame. Tech and waveland now also have a new, unique animation that uses the boxing gloves");
initSection("+ CSS and hud now show a Gip icon when Kewtian mode is active (similar to how Toon Link shows a Sol icon)");
initSection("+ NSpecial, FSpecial, and DSpecial now reset some stuff manually rather than using reset_attack_value due to an uncommon bug with Rivals itself. Ideally this gets fixed officially, but it should prevent the worst of it for now");

initPatch("1.19", "12th March, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Pocket now makes projectiles transcendent to avoid them being destroyed while pocketed, before resetting it when thrown back out (similar to how pocket adjusts other variables). This'll prevent projectiles from being destroyed by another player before the projectile reaches Villager / while Villager has it pocketed");

initPatch("1.18", "10th March, 2023");
initHeader("Buffs");
initSection("+ Added a windbox to FTilt (very silly)");
initSection("+ Added a special frightening up taunt when Kewtian mode is on (very disturbing)");
initHeader("Fixes / Other Changes");
initSection("+ Kewtian mode can now be turned on by pressing Attack + Jump during taunt or at the start of the match");

initPatch("1.17", "3rd March, 2023");
initHeader("Fixes / Other Changes");
initSection("+ Added pocket_release variable. Can be used by other characters to force Villager's projectile out of his pocket (1 = release projectile and reset it, 2 = destroy it), for example by using a timer. Probably not going to be commonly used, but is used by Matty for his new Mjau Mjau pocket compatibility");

initPatch("1.16", "24th February, 2023");
initHeader("Buffs");
initSection("+ Buffed watering can scaling a little bit as compensation,,, (0.5->0.6)");
initHeader("Fixes / Other Changes");
initSection("- Fixed an error where the changes from v1.14 were accidentally reverted in v1.15. Now everything should be as intended lol");

initPatch("1.15", "24th February, 2023");
initHeader("Nerfs");
initSection("- Reduced damage of FAir and BAir slingshot a bit (7->5 FAir, 9->8 BAir), and made the move only remove whifflag if it hits within the first 5 frames");
initSection("- Made FAir/BAir sweetspots last slightly shorter (-1), and gave the sourspots slightly less hitstun (0.75->0.6, 0.35->0.25)");

initPatch("1.14", "30th January, 2023");
initHeader("Nerfs");
initSection("- Toned down the DSpecial watering can windbox a little bit, and also made it no longer send grounded opponents into the air (which also means it should no longer cancel grounded attacks, either)");
initHeader("Fixes / Other Changes");
initSection("- Fixed full charge Axe not cutting the tree in 1 hit as it was supposed to when rune E was on");

initPatch("1.13", "15th January, 2023");
initHeader("Buffs");
initSection("- Fixed tree growing hitboxes not being transcendent");
initHeader("Fixes / Other Changes");
initSection("- Fixed an issue where Axe could go through the tree if the tree was hit right before (this works the same for all other hits, but axe is now an exception so this wont happen)");
initSection("- Overhauled some tree code to allow other characters & hitboxes (including projectiles) to also cut the tree (sick KoB interactions moment)");
initSection("- Added runes: D, E, and G");

initPatch("1.12", "7th January, 2023");
initHeader("Nerfs");
initSection("- UStrong fireworks can no longer be re-pocketed as fast (the initial pocket is still the same, but re-pocketing it again after this will be slower)");
initHeader("Fixes / Other Changes");
initSection("- Improved how Pocket sets the owner of pocketed items; now it sets it again when the item is thrown out, so that it should work better (previously it only set owner when initially pocketed, so some interactions such as reflectors could set the owner to someone else if timed correctly)");
initSection("- Fixed UStrong fireworks explosions not being pocketable (they were supposed to be lol)");
initSection("- Pocketable variable now overrides if the projectile has an empty sprite or not (this is why UStrong fireworks explosions weren't pocketable)");
initSection("- Fixed UStrong fireworks box destroying non-transcendent projectiles");
initSection("- Fixed rune I not applying to articles");

initPatch("1.11", "5th January, 2023");
initHeader("Fixes / Other Changes");
initSection("- Adjusted b-reverse window for DSpecial watering can, so it's a bit less likely to happen on accident");
initSection("- Added more runes: C, H, I, J. Also adjusted rune F (due to overlap with the new rune J)");
initSection("- Added Toon Link compatibility");

initPatch("1.1", "2nd January, 2023");
initHeader("Fixes / Other Changes");
initSection("- Added Mt. Dedede and Boxing ring compatibility (this was supposed to be there but was forgotten about)");
initSection("- Cleaned up unused compatibility with Toon Link and Miiverse, just to avoid error sprites (I still want to add this properly later)");

initPatch("About Villager", "");
initSection("");
initHeader("Character by");
initSection("FelixBlobDev");
initHeader("Compatible with");
initSection("Himself, Toon Link, Mt. Dedede, Boxing Ring, Steve, Link");

/*initPatch("1.2", "22 September, 2021");
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
initSection("Trummel & Alto, Otto, Steve, Link, Goku");*/

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

CHEAT_BeegKewtian	= initCheat("Beeg Kewtian", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 99], ["no", "beeg", "beeg,,,", "very beeg", "extra beeg", "yuge", "massiv", "enormus", "wow!", "what a good boy", "yes"], "Very very beeg boy");

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
initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
initCodecPage(SPK_SAND, 0, GIM_COLOR * GIM_LAUGH_TRACK, "no"); // this page uses the custom speaker

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve got cut down";

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