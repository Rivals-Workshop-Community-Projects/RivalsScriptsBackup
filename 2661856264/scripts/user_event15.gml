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
num_alts = 15;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = noone;

// The list of names for the alts, if enabled.
alt_names = [
	"Default",
	"Shellfish",
	"Shiny",
	"Continent",
	"Gleam Eyes",
	"Yep, that's yellow",
	"Abyssal Poison",
	"Genwunner",
	"Galvanizer",
	"Fluffy Sheep",
	"Earth's Bastion",
	"Kremling Kommander",
	"Cocomero",
	"Halo of Void"
	"Megaton",
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
muno_char_name = "Golem";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = true;

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

initTip("Trait: Sturdy Armor");
initWords("As you can see around your character, Golem's main trait is that, once a yellow outlines is out, it gains Sturdy Armor.");
initWords("This yellow outline will take away low enough knockback against Golem, provided the attack's damage isn't above 13%.");
initImage_ext(sprite_get("armor"), 1, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("DSpecial: Stealth Rock");
initWords("Golem will summon a ring of rocks around himself to attack, that will leave 1 behind on whiff, 2 on hit.");
initWords("You can stack up to 4, and you can consume them to enhance each of the moves described in this Phone.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Enhanced Normals: DTilt, UTilt and NAir");
initWords("Normally, only DTilt has access to Sturdy Armor among Golem's normals.");
initImage_ext(sprite_get("dtilt"), 4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("With Rocks, UTilt and NAir also get that.");
initImage_ext(sprite_get("utilt"), 5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("nair"), 4, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initWords("On top of that, if you have rocks, you can jump-cancel your Dash Attack.");
initImage_ext(sprite_get("dattack"), 8, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jump"), 0, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("Armored Strongs");
initWords("Normally, only FStrong has access to Sturdy Armor among Golem's strongs.");
initImage_ext(sprite_get("fstrong_complete"), 9, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("With Rocks, DStrong also gets that, while FStrong will get super armor during the initial window.");
initImage_ext(sprite_get("dstrong"), 4, fa_center, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("NSpecial: Rock Throw/SOS Battle");
initWords("If you tap the move, Golem will throw a rock that will slowly roll on the ground. It has low knockback when hitting, allowing for followups.");
initImage_ext(sprite_get("nspecial_proj"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("HOWEVER, if you hold the move, Golem will 'call for help' by throwing its Geodude companion to the opponent! Geodude likes to bounce rather than roll, and also has much higher knockback and damage than the stone.");
initImage_ext(sprite_get("nspec_proj_alt"), 0, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("Normally the move would have a 1.5 seconds cooldown, unless you use rocks, in which case it has only 1 second.");

initTip("FSpecial: Rollout");
initWords("Pretty straight forward: Golem will initially cover themselves in rocks, and then start rolling like a mad... Golem I guess.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The initial jump and the rolling part have different hit properties, and only these parts can be normally canceled into rolls and parries. By pressing the Special button during the rolling part you cancel the move, and finally, it is immune to projectiles.");
initWords("PLUS: if you have rocks, you can cancel it into jumps if it hits people. Yes I really wanted to make this move viable.");
initImage_ext(sprite_get("fspecial"), 5, fa_left, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("jump"), 0, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);

initTip("USpecial: Explosion");
initWords("It detonates its own body. The power from that explosion can propel it up steep mountain paths with amazing speed.");
initImage_ext(sprite_get("uspecial_complete"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("The explosion itself is a spike.");
initWords("At the cost of 2 rocks: this move gets Super Armored while ascending.");

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
initPatch("1.5", "22/01/09");
initHeader("Fifth Patch");
initSection("Reworks");
initWords("UTilt got reworked from a combo starter for low percents and kill option for high percents into a combo starter at all percents:");
initWords_ext("UTilt's knockback scaling got reduced (1.15 > 0.5);", fa_left, c_white, 1, false);
initWords_ext("The move will now have much less endlag on hit (13f > 8f).", fa_left, c_white, 1, false);
initWords("DAttack got a bit reworked to be less safe, but more rewarding with stones:");
initWords_ext("It has more endlag on whiff (9 > 15);", fa_left, c_white, 1, false);
initWords_ext("You can now jump-cancel the move on hit if you have rocks (this will consume rocks);", fa_left, c_white, 1, false);
initSection("Buffs");
initWords("None. Sorry.");
initSection("Nerfs");
initWords("DSpecial:");
initWords("The move's startup is now slower (5 > 7);");
initWords("Each hitbox of the multihit is now more SDIable (1 > 1.1).");
initSection("Other");
initWords("BAir got a couple minor changes:");
initWords_ext("BAir's latebox doesn't have an angle flipper anymore;", fa_left, c_white, 1, false);
initWords_ext("The semispike now has more base hitpause (7 > 10).", fa_left, c_white, 1, false);
initWords("FStrong's armor is now displayed correctly (during the first window, when it's actually present);");
initWords("Geodude now has less vertical speed (8 > 6);");
initWords("FSpecial now has more hitpause on the jumping hitbox (5 > 8, with a scaling of 0.65) and the rolling hitbox (5 > 6, with a scaling of 0.5);");
initWords("USpecial now has a different hitpause formula on the spike explosion hitbox (18 > 14, with a scaling of 1.1);");
initWords("Changed Golem's victory song from the Pokemon TCG's victory theme to the ending part of a song purposefully made by TailwindZ (which it's gonna be used in the future, dw ;)).");

initPatch("1.4", "22/01/03");
initHeader("Forth Patch");
initSection("Reworks");
initWords("The Armor mechanic got reworked as a whole:");
initWords_ext("The soft armor got increased from 6 to 13;", fa_left, c_white, 1, false);
initWords_ext("Each Sturdy Armor move protects you once during the move;", fa_left, c_white, 1, false);
initWords_ext("Said armor is completely ignored if an attack galaxies/could kill.", fa_left, c_white, 1, false);
initWords("DAir is now better suited for combos:");
initWords_ext("Reduced Landing Lag (8 > 5);", fa_left, c_white, 1, false);
initWords_ext("Reduced Startup frames (9 > 5);", fa_left, c_white, 1, false);
initWords_ext("Reduced damage on both hits (first: 5 > 4; second: 8 > 7).", fa_left, c_white, 1, false);
initWords("FSpecial works pretty differently, while still offering an anti-projectile dash:");
initWords_ext("You can't charge the move anymore;", fa_left, c_white, 1, false);
initWords_ext("You can now cancel the initial jump and dash into rolls and parries;", fa_left, c_white, 1, false);
initWords_ext("You can now stop the move while rolling by pressing the Special button;", fa_left, c_white, 1, false);
initWords_ext("Jump-Canceling the move will now cost 1 rock;", fa_left, c_white, 1, false);
initWords_ext("While turning, Golem will slowly take back his speed rather than going straight from turning to rolling speed;", fa_left, c_white, 1, false);
initWords_ext("Due to the move normally not being JCancelable, I also changed all properties on the jumping hitbox (damage: 6 > 8; base knockback: 6 > 8; knockback scaling: 0.3 > 0.65) and the rolling hitbox (angle: 60 > 80; damage: 3 > 4; base knockback: 6 > 7; knockback scaling: 0.3 > 0.5);", fa_left, c_white, 1, false);
initWords_ext("Added vfx to make the move look more polished and not just a moving strip.", fa_left, c_white, 1, false);
initSection("Buffs");
initWords("Reduced FAir's Landing Lag (14 > 7);");
initWords("Reduced UAir's Landing Lag (8 > 7);");
initWords("Redacted previous UStrong's knockback scaling nerf (1.1 > 1.15).");
initSection("Nerfs");
initWords("Changed angle to FTilt's outer sourspot (Sakurai > 50);");
initWords("Enhanced NSpec will have less less cooldown (1 second instead of 1.5) rather than none;");
initWords("Enhanced USpec will now cost 2 rocks rather than 1.");
initSection("Other");
initWords("Added a VFX for when 1 or 2 rocks are consumed.");

initPatch("1.3", "21/12/16");
initHeader("Third Patch");
initSection("Reworks");
initWords("DAir is now essentially a different move. Here's the changes:");
initWords_ext("Endlag: 14 > 12 (not counting whifflag);", fa_left, c_white, 1, false);
initWords_ext("Hitpause on the first hit (6 > 5);", fa_left, c_white, 1, false);
initWords_ext("Angle on the second (35 > 85);", fa_left, c_white, 1, false);
initWords_ext("Knockback on the second (base: 7 > 6);", fa_left, c_white, 1, false);
initWords_ext("Hitpause on the second (base: 10 > 9.5).", fa_left, c_white, 1, false);
initWords("FAir is now a COMPLETELY different move: Here's the changes:");
initWords_ext("Landing Lag: 5 > 12;", fa_left, c_white, 1, false);
initWords_ext("Startup: 5 > 8;", fa_left, c_white, 1, false);
initWords_ext("Active frames: 3 > 4;", fa_left, c_white, 1, false);
initWords_ext("Endlag: 12 > 16 (not counting whifflag);", fa_left, c_white, 1, false);
initWords_ext("Damage: 6 > 9;", fa_left, c_white, 1, false);
initWords_ext("Knockback (scaling: 0.3 > 0.9));", fa_left, c_white, 1, false);
initWords_ext("Hitpause (base: 6 > 7.5, scaling: 0.5 > 1);", fa_left, c_white, 1, false);
initWords_ext("Sound (light cut > heavy cut sound).", fa_left, c_white, 1, false);
initWords("NSpecial's brawl hitbox now has 9 frames of hit lockout, allowing it to be a viable kill option at high percents (but not directly comboing into the rock).");
initSection("Buffs");
initWords("Buffed Walljump (horizontal speed: 4.5 > 5, vertical speed: 7 > 8);");
initWords("Self-harm has been completely removed from the character;");
initWords("Jab1 is now Special-cancelable;");
initWords("UTilt can now be enhanced to get Sturdy Armor (soft armor 6, activates at frame 4 and deactivates during the endlag);");
initWords("Extended the duration of the window in which you can DACUS (1 > 6 frames, the entire startup);");
initWords("Reduced NAir's landing lag (10 > 9) and buffed the knockback scaling on the earlybox (0.9 > 10);");
initWords("FSpecial will now completely halt your momentum during the startup and endlag;");
initWords("USpecial will now completely halt your momentum during the startup;");
initWords("Changed angle to DSpec's final hit (60 > Sakurai) and buffed knockback (base: 6 > 75).");
initSection("Nerfs");
initWords("DTilt can't be enhanced anymore;");
initWords("UAir's hurtbox has been edited an it's now much less disjointed;");
initWords("DAir has smaller hitboxes;");
initWords("FStrong has weaker armor (soft armor 13 > 6);");
initWords("UStrong:");
initWords_ext("It can't be enhanced anymore;", fa_left, c_white, 1, false);
initWords_ext("Lower knockback scaling on the earlybox (1.15 > 1.1).", fa_left, c_white, 1, false);
initWords("Enhanced DStrong has weaker armor (soft armor 13 > 6);");
initWords("Parrying Geodude now should correctly cause extended parrystun on Golem;");
initWords("FSpecial has more startup (16 > 18) and is slower at turning (14 > 20);");
initWords("DSpecial:");
initWords_ext("The multi-hits are now less active (4 > 2 frames each);", fa_left, c_white, 1, false);
initWords_ext("Said multi-hits are also completely SDIable now;", fa_left, c_white, 1, false);
initWords_ext("Said multi-hits's hitboxes are now all smaller and consistent size-wise, save for the scoop (also smaller) and the finisher.", fa_left, c_white, 1, false);
initSection("Other");
initWords("DTilt can't go off ledges anymore;");
initWords("Reworked NAir's hitpause formula for the earlybox (base: 12 > 9.5, scaling: 1 > 0.9) and latebox (base: 10 > 8.5, scaling > 0.5 > 0.75);");
initWords("Fixed a bug that made the sex kick hitbox for NAir appear during the latebox's window;");
initWords("USpec:");
initWords_ext("Reworked the hitpause formula for the second hitbox (base: 8 > 9);", fa_left, c_white, 1, false);
initWords_ext("Changed the angle for the sourspot (361 > 70).", fa_left, c_white, 1, false);
initWords("Changed DSpec's final hit's hitpause formula (base: 6 > 9.5, scaling: 0.75 > 0.8);");

initPatch("1.2", "21/12/12");
initHeader("Second Patch");
initSection("Reworks");
initWords("DAir now uses a different angle -70 > 35- and new knockback to accomodate -base: 8 > 7; scaling: 0.9 > 0.8, on top of lower hitpause -base: 12 > 10; scaling: 1 > 0.9;");
initWords("UStrong's latebox got a different angle -40/45 > 70. To compensate it's got a different knockback formula -base: 5 > 7; scaling: 1 > 0.9, higher damage -5 > 9- and hitpause -base: 5 > 8; scaling: 1 > 0.9;");
initSection("Buffs");
initWords("Fixed a bug with NAir that recounted the recoil frame, basically giving Golem damage undeservingly so :(");
initWords("FSpecial has lower startup: 18 > 16;");
initWords("Enhanced NAir, UStrong and UStrong now give no recoil damage;");
initSection("Nerfs");
initWords("Parrying Geodude now forces Golem into parry stun;");
initWords("The normal rocks thrown from NSpecial now deal less hitstun: 1 > 0.8;");
initWords("Jab1 is now techable, has less active frames -4 > 3- and more endlag: 12 > 15, however it's not a real nerf since you can still tilt-cancel it from frame 3 onwards. Jab2 also lost 1 active frame: 4 > 3;");
initWords("Enhanced FStrong only has super armor during the initial window of the attack;");
initSection("Other");
initWords("Changed sfx for DTilt's sourspot;");
initWords("Removed  BAir's shell hitbox: it now only has 3;");
initWords("UStrong's earlybox got a different hitpause formula -base: 13 > 11.5; scaling: 1 > 1.15;");
initWords("Jab1 changed its angle (35 > 40/45);");
initWords("death.gml now works properly. This means that stealth rocks will be correctly removed on death and Golem will cry when dying;");

initPatch("1.1", "21/12/08");
initHeader("First Patch");
initSection("Buffs");
initWords("Higher Air Friction: 0.02 > 0.03;");
initWords("Higher Max Air Speed: 3 > 4;");
initWords("Higher Jump Speed: 10 > 11;");
initWords("Higher Short hop speed: 6 > 7;");
initWords("Higher Max Jump Horizontal Speed: 4 > 5;");
initWords("USpecial should go slightly higher.");
initSection("Nerfs");
initWords("Pratfall Acceleration nerfed: 1.5 > 0.85;");
initWords("NAir has lower base knockback: 8 > 7;");
initWords("BAir has longer startup: 12 > 14;");
initWords("It's actually possible to SDI away from DStrong's multihits: 0.1 > 0.5;");
initWords("UStrong has longer startup -6 > 10- and lower scaling knockback -1.25 > 1.15, and should also properly inflict self-damage: 4;");
initWords("Geodude lifetime nerfed: 240 > 140, for real this time;");
initWords("Geodude hitstun nerfed in accordance to basecast standard 1 > 0.5;");
initWords("FSpecial base startup increased: 12 > 18;");
initWords("FSpecial turning window time increased: 10 > 14;");
initWords("USpecial startup increased: 9 > 12;");
initSection("Other");
initWords("Corrected idle and crouch hurtboxes to normal shapes;");
initWords("Corrected offset for the hurtboxes for FTilt, DTilt and DAir;");
initWords("At the beginning of each attack that uses a rock, a sound will be played;");
initWords("Stealth Rocks now change colors properly depending on the alt;");
initWords("Geodude will now use the same colors as Golem's shell rather than its skin;");

initPatch("1.0", "21/12/05");
initHeader("Release");
initWords("Notice please that some stuff might still need to be polished. I'm grateful for your help, regardless");

initPatch("About Golem", "");
initWords("It took from here to March for Blaner to finish the sprites, it took like a couple days, maybe a week, to VVizard to do the advanced coding stuff, and around a couple months for me to put myself down to actually put an end to this character's full release.");
initWords("Golem is my absolute favorite Pokémon, and it was amazing to having the chance to transport it into a context outside of turn combats. At worst, this is the only time this character will be in a platform fighter, but I'm so happy it is.");
initSection("Art and animation by");
initWords("Blaner & Reiga (portrait only)");
initSection("Coding by");
initWords("Vertyx & VVizard");
initSection("Beta tested from");
initWords("Gnome, ArtistOfSeer, Anebriate, Prober");
initSection("Compatible with");
initWords("Trummel & Alto, Otto, Steve, Link");

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
SPK_GOLE = initSpeaker(1, "Golem", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
initCodecPage(SPK_TRUM, 0, 0, "who are you");
initCodecPage(SPK_GOLE, 0, 0, "Golem!");
initCodecPage(SPK_TRUM, 0, GIM_LAUGH_TRACK, "woag");
initCodecPage(SPK_ALTO, 0, 0, "That is Golem, the Megaton Pokémon. He's not very fast, but once he gets close he gets very dangerous.");
initCodecPage(SPK_ALTO, 0, GIM_HOWL, "Be warned: it can summon rocks that give it armor, making it unable to flinch to your attacks.");
initCodecPage(SPK_OTTO, 0, 0, "Yeah K. Rool's broken.");
initCodecPage(SPK_CODA, 0, 0, "K. Rool? Then why does it have Wolf's FAir?");
initCodecPage(SPK_ECHO, 0, 0, "Wolf? That's Ori's DTilt.");
initCodecPage(SPK_TRUM, 0, 0, "ori? that's coda's entire kit of normals");
initCodecPage(SPK_ECHO, 0, 0, "Bruh.");
initCodecPage(SPK_ALTO, 0, GIM_CHOMP, "It seems to be clapping at your joke.");

spr_custom_trummel_color = c_red;

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "The opposing Steve fainted!";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 4;

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
initCodecPagePit(SPK_PIT,	7,	6,	"Uhh is that Cragalance?");
initCodecPagePit(SPK_VIR,	5,	6,	"Silly Pit!");
initCodecPagePit(SPK_VIR,	1,	1,	"I'd NEVER let anyone from my army to battle on the field of Aether before me, not even Phosphora!");
initCodecPagePit(SPK_PALU,	0,	3,	"Do not let the similar appearance confuse you, Pit! This is Golem, the Megaton Pokemon, after his ability to cause and resist explosions.");
initCodecPagePit(SPK_PIT,	3,	0,	"I already dealt with bombs before. This should be no problem!");
initCodecPagePit(SPK_VIR,	0,	3,	"That's just one of their abilities. This one seems to be focusing on using rocks to protect himself.");
initCodecPagePit(SPK_PALU,	0,	4,	"Exactly: it uses Stealth Rocks to create layers of armor. This way its attacks will go through yours and it'll gain the upper hand.");
initCodecPagePit(SPK_PIT,	6,	7,	"Armor to go through my attacks you say? That sounds oddly familiar.");
initCodecPagePit(SPK_VIR,	2,	2,	"Wait IS IT THROWING A GEODUDE???");



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