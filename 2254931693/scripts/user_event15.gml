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
muno_char_name = "Bonby";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 24;

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

spr_nspecialproj = sprite_get("nspecialspikeball");
spr_frog = sprite_get("_pho_frog");
spr_frogthrow = sprite_get("_pho_frogthrow");
spr_frogoutline = sprite_get("_pho_frogoutline");
spr_frogmoving = sprite_get("_pho_frogmoving");
spr_frogparry = sprite_get("_pho_frogparry");
spr_frognspecial = sprite_get("_pho_nspecial_example");
spr_frogspit = sprite_get("_pho_frogspit");
spr_phoneopen = sprite_get("phone_open");
spr_walk2 = sprite_get("walk_alt15");
spr_walk3 = sprite_get("walk_alt16");
spr_frogge = sprite_get("frogge");
spr_waveland = sprite_get("waveland");


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

	initTip("Explaining Frog");
	initImage(sprite_get("_pho_frog"), -5);	
	initWords("The most important tool in Bonby's moveset is the frog. There are many different ways to go about using the frog.");
	initHeader("Using Frog Normally");
	initImage(sprite_get("_pho_nspecial_example"), -5);	
	initWords("Using NSpecial normally will allow you to use your frog for a long-range grab. You can immediately act into another move when the grabbed opponent gets close enough.");
	initWords("");
	initWords("");	
	initHeader("Using Frog on Stage");
	initImage(sprite_get("_pho_frogspit"), -5);	
	initWords("If you use DSpecial, you'll place your frog down onto the stage. Using NSpecial while your frog is out will make it try to grab opponents in a diagonal direction. Whichever direction you're facing when you use the move is the direction your frog will try to grab in. Opponents that get caught will be launched towards you, allowing you to follow up with another attack.");
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");		
	initHeader("Moving Frog");
	initImage(sprite_get("_pho_frogmoving"), -5);	
	initWords("If you want to move your frog around, use DSpecial while it's out to bring it closer to you, or use FSpecial to knock it away.");
	initWords("");	
	initWords("");	
	initWords("");		
	initWords("");	
	initWords("");	
	initWords("");
	initWords("");	
	initWords("");	
	initWords("");		
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initHeader("Getting Frog Back");	
	initImage(sprite_get("_pho_frogoutline"), -5);		
	initWords("If you're close enough to your frog, there'll be a white outline around it, indicating you can pick it back up by using DSpecial.");
	initWords("");	
	initWords("");	
	initWords("");		
	initWords("");	
	initWords("");	
	initWords("");
	initWords("");	
	initWords("");	
	initWords("");		
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");	
	initWords("");		
	initWords("");	
	initWords("");	
	initWords("");
	initWords("");	
	initWords("");	
	initHeader("Frog's Vulnerability");	
	initImage(sprite_get("_pho_frogparry"), -5);		
	initWords("Lastly, remember that your frog can be attacked by opponents. If it gets parried or knocked offstage, you'll be unable to use NSpecial or Dspecial for a short time.");
	
	initTip("F-Special Charge");
	initImage(sprite_get("fspecial"), 8);		
	initWords("F-Special can be charged by holding the Special button down. In addition to increased damage, you'll fly back further, allowing you to use the move for horizontal recovery.");

	initTip("D-Air");
	initImage(sprite_get("dair"), -4);		
	initWords("There's two opportunities to cancel out of DAir. You can jump cancel out of the startup window, and upon hitting an opponent, you can immediately cancel into either a jump or an airdodge.");
	
	initTip("N-Air");
	initImage(sprite_get("nair2"), -3);		
	initWords("N-Air can be charged by holding the Attack button down. When fully charged, it becomes a strong spiking attack.");
	
	initTip("D-Strong");
	initImage(sprite_get("dstrong"), 11);	
	initWords("DStrong is a command grab, where you lift the opponent and slam them down to the ground in an explosive manner. You can move during this attack when you grab onto someone, and can even jump offstage. Keep in mind that you'll die before the opponent does if you pull this off.");
	
	
	
	initTip("Frogge");
	initImage(sprite_get("frogge"), -1);	
	initWords("A frogge biþ a smal beaste wiþ foure leggys, whyche liueþ booþ in watyre and on londe. It is broune or grene or yelowe, or be it tropyckal, he may haue dyuers coloures. It haþ longys and guilles booþe. It haccheþ from an ey and it þan ys a tadpolle. It groweþ to ben a frogge, if it þan ne be noght eten.");
	


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

	initPatch("2.18", "September 19th, 2021");
	initWords("-Upgraded MunoPhone to MunoPhone Touch");	 	 


	initPatch("2.17", "September 12th, 2021");
	initWords("-Fixed charged Neutral-Air using the wrong hurtbox");	 	 
	 
	 
	initPatch("2.16", "September 8th, 2021");
	initWords("-Jab now has whifflag
	-Up-Special last hit damage increased (6 -> 8)
	-Forward-Special base damage increased (8 -> 11)
	-Forward-Strong startup time decreased (21 -> 17)
	-Forward-Strong endlag decreased (23 -> 22)
	-Up-Strong hitbox now comes out one frame earlier
	-Uncharged Neutral-Air damage increased (7 -> 10)
	-Forward-Air damage increased (7 -> 11)
	-Back-Air clean hit damage increased (11 -> 13)
	-Back-Air startup time decreased (16 -> 12)");	 	 

	initPatch("2.15", "August 24th, 2021");
	initWords("-Reworked Back-Air
	-Adjusted SFX timing for a bunch of moves
	-Frog's sprite offsets now line up properly with stage ground and platforms
	-Added a Neutral-Special hitbox with 90 angle fixed knockback that comes out when a grabbed opponent gets close to you
	-Forward-Special can now only be used once in the air before landing
	-Increased Forward-Special endlag (19 -> 23)
	-Decreased Forward-Special horizontal speed
	-Dash Attack hitbox comes out one frame later
	-Up-Tilt, Forward-Tilt and Neutral-Air hitboxes come out one frame earlier
	-Adjusted size of Up-Tilt hitbox
	-Decreased size of Forward-Strong hitbox
	-Increased Up-Strong base knockback (7.5 -> 9)");	 


	initPatch("2.14", "August 22nd, 2021");
	initWords("-Added 2 additional alternate colors
	-Added new swipe SFX for jab, tilts, aerials, and strongs
	-Movement speed during Down-Strong throw is now dependent on the grabbed opponent's damage
	-Decreased detached N-Special grab box size
	-Fixed Jab putting you into parry stun when parried");	 	 	 
	 
	initPatch("2.1.3", "July 26th, 2021");
	initWords("-Added compatibility with Dialogue Buddy with 5 unique dialogue portraits");	 	 
	 
	 
	initPatch("2.1.2", "July 8th, 2021");
	initWords("-Final Smash/Super now deals increased damage on Rivals of Fighter stage (30 -> 75)
	-Fixed a bug that caused Final Smash hitbox to hit twice when facing left");	 
	 
	initPatch("2.1.1", "June 25th, 2021");
	initWords("-Forward-Special can no longer be jump-canceled during the charge window
	-Increased Forward-Special base hitpause (8.5 -> 10)
	-Increased Forward-Special hitpause scaling (0.8 -> 1.1)
	-Decreased Foward-Special base damage (9 -> 8)
	-Decreased Up-Special final hit base knockback (7 -> 6)
	-Decreased Up-Special final hit knockback scaling (0.75 -> 0.7)	
	-Decreased Up-Special vertical speed (-7.75 -> -7, -10 -> -9)
	-Increased Down-Strong throw window speed
	-Decreased movement speed during Down-Strong throw window
	-Decreased vertical speed of Down-Air (18 -> 13, 14 -> 11)");

	initPatch("2.1", "June 13th, 2021");
	initWords("-Frog can now be attacked by opponents");

	initPatch("2.0.3", "June 8th, 2021");
	initWords("-Decreased max air speed (6.25 -> 5.75)
	-Decreased max jump horizontal speed (7.25 -> 6.5)
	-Decreased Forward-Air damage (8 -> 7)
	-Decreased Forward-Air base knockback (7 -> 6)
	-Fixed a bug that prevented DSpecial from being usable even after cooldown was over");


	initPatch("2.0.2", "May 19th, 2021");
	initWords("-Increased attached Neutral-Special endlag (11 -> 15)
	-Added 5 frames of lag to on-grab window of attached Neutral-Special
	-Added cooldown to attached and detached Neutral-Special
	-Decreased Down-Strong grab box lifetime (12 -> 6)
	-Down-Strong grab box now comes out 1 frame later
	-Decreased Up-Air first hitbox damage (9 -> 8)");

	initPatch("2.0.1", "May 8th, 2021");
	initWords("-Fixed compatibility with Final Smash Buddy");

	initPatch("2.0", "May 5th, 2021");
	initWords("-All special moves have been completely reworked
	-Jab, Neutral-Air, Forward-Air, Up-Air, and Down-Air have been reworked
	-Neutral-Air can now be charged
	-Added new alternate Neutral-Air attack when the move is fully charged	
	-Down-Air can now be canceled during start-up window and on hit
	-Redrew idle, dashing, dash turning, jumping, double jumping, wall-jumping, wavelanding, rolling, and parrying sprites
	-Increased max air speed (5.5 -> 6.25)
	-Increased max jump horizontal speed (5.5 -> 7.25)
	-Increased jump height (10 -> 11)
	-Increased double jump height (10 -> 11.5)
	-Decreased max fall speed (11 -> 10)
	-Decreased pratfall horizontal acceleration (.85 -> .55)
	-Increased prat land time (5 -> 20)
	-Added 8 new alt colors");
	 
	initPatch("1.6.5", "March 16th, 2021");
	initWords("-Up-Special vertical speed decreased
	-Up-Special knockback decreased
	-Increased Neutral-Special startup time
	-Forward-Special can only be used once in air before landing, walljumping or getting hit
	-Forward-Special recoil speed decreased");
	 
	 
	initPatch("1.6.4", "March 13th, 2021");
	initWords("-Decreased Back-Air hitbox size
	-Decreased Forward-Air hitbox size
	-Adjusted Down-Air hitbox to match sprite better
	-Adjusted Up-Air hitbox to match sprite better
	-Adjusted Up-Tilt hitbox to match sprite better
	-Recoded Down-Tilt and adjusted hitbox
	-Slightly increased Forward-Tilt hitbox size
	-Removed stray pixels on Down-Air hurtbox
	-Fixed an oversight where Forward-Special effects were part of the move's hurtbox");
	 

	 
	initPatch("1.6.3", "March 7th, 2021");
	initWords("-Increased Neutral-Special base hitpause (4.25 -> 6.5)
	-Increased Neutral-Special hitpause scaling (0.75 -> 0.85)
	-Increased Forward-Special base hitpause (8 -> 10)
	-Increased Forward-Special hitpause scaling (0.8 -> 1.1)
	-Removed stray pixels on Back-Air hurtbox
	-Fixed a bug where Neutral-Special's spawn point changed on death
	-Updated stats of Kirby copy ability to match current stats of Down-Special");


	initPatch("1.6.2", "February 28th, 2021");
	initWords("-Redrew landing, landing lag, and pratfall sprites
	-Added uphurt sprite
	-Reworked visuals and sounds for Neutral-Special
	-Adjusted positioning and speed of Neutral-Special projectile
	-Neutral-Special startup and endlag significantly reduced
	-Neutral-Special can now be acted out of during the last 2 windows
	-Added compatibility with Final Smash Buddy");
	
	initPatch("1.6.1", "February 22nd, 2021");
	initWords("-Added proper landing lag to Forward-Special when used in air
	-Forward-Special now transitions into idle state properly when used on ground
	-Fixed a bug where Forward-Special had no parry stun
	-Fixed sprite offsets being 1px off vertically");
	

	initPatch("1.6", "February 4th, 2021");
	initWords("-Redrew portrait
	-Forward-Special reworked
	-Forward-Tilt reworked
	-Wavedash sound effect volume slightly lowered
	-Fastfall speed lowered (17 -> 14)
	-Down-Special sped up significantly
	-Down-Special knockback angle changed (60 -> 90)
	-Down-Special knockback increased (8 -> 10)
	-Down-Special knockback scaling decreased (1.05 -> 0.65)
	-Lowered trigger radius for Down-Special interacting with Frog
	-Adjusted Neutral-Air animation to have a clearer startup and end
	-Neutral-Air now has 3 windows instead of 2
	-Forward-Air knockback scaling decreased (1.15 -> 1)
	-Forward-Air sourspot knockback scaling decreased (0.9 -> 0.7)
	-Decreased size of Forward-Strong hitbox
	-Changed abyss runes H and M");

	
	initPatch("1.5", "January 26th, 2021");
	initWords("-Updated css_draw script with new template (credit to Hyuponia)
	-Up-Strong reworked
	-Neutral-Special knockback angle changed (48 -> 50)
	-Forward-Special base hitpause decreased on all charge tiers
	-Forward-Special base knockback and knockback scaling adjusted on all charge tiers
	-Can now wall jump out of rising windows of Down-Special
	-Down-Special knockback angle changed (58 -> 60)
	-Down-Special base knockback decreased (9 -> 8)
	-Down-Special knockback scaling increased (0.9 -> 1.05)
	-Forward-Air animation adjusted
	-Forward-Air base knockback increased (6 -> 6.5)
	-Forward-Air knockback scaling decreased (1.4 -> 1.15)
	-Foward-Air sourspot damage decreased (9 -> 4)
	-Jab knockback angles changed (87 -> 85, 91 -> 90)
	-Dash-Attack base hitpause decreased (12 -> 8)
	-Dash-Attack grounded hitbox base knockback decreased (10.5 -> 7)
	-Dash-Attack grounded hitbox knockback angle changed (72 -> 75)
	-Up-Tilt knockback angle changed (101 -> 100)
	-Down-Tilt base knockback decreased (11.5 -> 9)
	-Down-Tilt knockback scaling increased (0.15 -> 0.25)
	-Down-Tilt knockback angle changed (77 -> 75)
	-Forward-Strong knockback angle changed (50 -> 361)
	-Down-Strong base knockback decreased (12 -> 6.5)
	-Down-Strong knockback scaling increased (0.675 -> 1.2)
	-Down-Strong knockback angle changed (49 -> 50)
	-Down-Strong base hitpause decreased (16 -> 8)
	-Kirby copy ability reworked");

	
	initPatch("1.4.2", "January 13th, 2021");
	initWords("-FStrong startup anim frames decreased
	-UStrong startup anim frames decreased
	-FStrong knockback scaling decreased (1.4 -> 1.2)
	-FStrong knockback angle changed (39 -> 50)
	-UStrong knockback scaling decreased (1.2 -> 1.1)");

	initPatch("1.4.1", "January 11th, 2021");
	initWords("-Fixed a bug that broke hurtboxes after hitting with Down-Special
	-Adjusted Down-Special hitbox size and position
	-Lowered hitpause and hitpause scaling of Down-Special");
	 
	 
	initPatch("1.4", "January 10th, 2021");
	initHeader("-New Down Special:")
	initSection("When you use DSpecial, you'll briefly bounce upward before plummeting down. When going downward, you can hit an opponent and bounce back up. You won't be able to use the move again until you land, but you can follow it up into another attack. If you land on your frog when using DSpecial, you can gain more height.");	
	initWords("
	-Abyss Rune I changed (DSPECIAL can chain into itself up to 3 times.)
	-Increased range of Back-Air and adjusted animation
	-Reworked Forward-Air with new animation
	-Back-Air damage increased (8 -> 9, 4 -> 6)
	-Back-Air 2nd window length decreased (18 -> 15)
	-Back-Air sourspot hitbox lifetime decreased (11 -> 7)
	-Back-Air sweetspot hitbox base hitpause increased (8 -> 9)
	-Back-Air sweetspot hitbox hitpause scaling increased (.75 -> .85)
	-Added new hit sound for Neutral-Special spike balls
	-Neutral-Special spike ball size decreased
	-Neutral-Special damage decreased (8 -> 6)
	-Neutral-Special spike balls disappear much faster if horizontal speed is 0
	-Forward-Special knockback decreased (8 -> 7, 9 -> 8, 11 -> 10, 15 -> 14)
	-Up-Special Frog now disappears when parried
	-Up-Special Frog lifetime decreased (720 frames -> 400)
	-Up-Special Frog no longer bounces spike balls when they have been parried");
	 

	initPatch("1.3", "January 1st, 2021");
	initWords("-Added new walk animation
	-Added new Forward-Special charging animation
	-Foward-Special knockback and scaling increased
	-Slightly decreased Forward-Special hitstun
	-Boosting window of Forward-Special can now be jump cancelled
	-Forward-Special effects now properly disappear after getting hit
	-Reworked Up-Special aerial cooldown and indicator
	-Lowered fallspeed and airspeed during aerial Neutral-Special
	-Neutral-Air vertical speed now only applies during last window
	-Forward-Strong knockback angle changed (39 -> 361)");
	 
	 
	initPatch("1.2", "December 19th, 2020");
	initWords("-Added bighurt and hurtground sprites
	-Adjusted Forward-Air hitbox size and position
	-Decreased Up-Tilt hitbox size");
	initHeader("Neutral-Special Changes");
	initSection("-Cannon can now be aimed upward, up-right or behind
	-Changed trajectory for shooting straight forward
	-Spike ball can now be hit by players to launch it around
	-Spike balls now bounce off of opponents after hitting them
	-Unique spike ball colors for each alt have been added
	-Only one spike ball per player can be out at once
	-Lowered spike ball damage (10 -> 8)
	-Lowered spike ball base knockback (13 -> 7.5)
	-Lowered spike ball base hitpause (9 - > 4.25)
	-Increased spike ball hitpause scaling (0.6 -> 0.75)
	-Abyss rune N changed (NSPECIAL spike balls explode on enemy contact.)");
	 
	initPatch("1.1.1", "November 27th, 2020");
	initWords("-Lowered waveland distance
	-Added new waveland sound
	-Lowered dash stop time (12 -> 6)
	-Lowered walljump vertical speed (11 -> 9)");
	 
	initPatch("1.1", "November 18th, 2020");
	initWords("-Neutral-Air vertical boost now only applies when the attack button is held
	-Neutral-Air windows adjusted
	-Added animation for when something bounces on Up-Special frog
	-Added 4 new Down-Special projectile variants for diagonal inputs
	-Increased prat land frames (3 -> 5)
	-Neutral-Special damage increased (9 -> 10)
	-Added MunoPhone support
-Additional character/stage compatibility added (Kirby, Otto, Agent N, Feri)");
	 
	initPatch("1.0.5", "October 19th, 2020");
	initWords("-HUD elements now change color depending on alternate color chosen
-Adjusted hurtboxes for Up-Strong, Down-Strong, Jab and Forward Special
-Overhauled Jab windows
-Increased size of Up-Air hitbox
-Decreased Forward-Air startup frames (20 -> 16)
-Changed angle of Dash Attack grounded hitbox (58 -> 72)
-Decreased lifetime frames of Dash Attack aerial hitbox to match grounded hitbox (7 -> 5)
-Decreased Dash Attack endlag frames (26 -> 20)
-Neutral Special cooldown frames reduced (130 -> 100)
-Down Special notes now deal 2 damage instead of 1
-Fixed a bug where getting hit by a flinchless hitbox during Forward Special charge window would reset charge");
	 

	initPatch("1.0.4", "October 16th, 2020");
	initWords("-Added 2 additional color palettes
-Up-Special frog lifetime increased (480 frames -> 720 frames)
-Angle flipper 9 removed from Jab first hitbox, now sends at 87 angle
-Dash Attack startup frames decreased (18 -> 15)
-Dash Attack hitbox size increased
-Dash Attack hitbox lifetime decreased (7 -> 5)
-Up-Air base knockback increased (7 -> 8)
-Up-Air knockback scaling decreased (0.75 - 0.6)
-Down-Air startup frames decreased (16 -> 12)
-Down-Air angles changed (295 -> 280, 77 -> 361)
-Down-Air base knockback changed (4 -> 7, 9.75 -> 6.5)
-Down-Air knockback scaling changed (0.9 -> 0.6, 0.3 -> 0.5)
-Down-Air hitstun multiplier increased (0.75 -> 0.85)
-Up-Tilt hitbox size increased
-Up-Tilt base knockback increased (7.75 -> 9)
-Up-Tilt knockback scaling decreased(0.7 -> 0.55)
-Down-Tilt length decreased (22 -> 17)
-Down-Tilt hitbox comes out 2 frames earlier
-Down-Tilt now has whiff lag
-Down-Tilt angle changed (83 -> 77)
-Down-Tilt base knockback increased (10 - > 11.5)
-Down-Tilt knockback scaling decreased (0.3 - > 0.15)
-Forward-Strong base knockback decreased (8.5 -> 7)
-Forward-Strong knockback scaling increased (1 -> 1.4)
-Forward-Strong angle changed (361 -> 39)
-Up-Strong base knockback increased (8.5 -> 9)
-Up-Strong knockback scaling increased (1 -> 1.2)");
	 
	 
	initPatch("1.0.3", "October 12th, 2020");
	initWords("-You now stay in Down Strong after bouncing off of your own frog
-Added proper landing lag to all aerials
-Added proper hitpause scaling to moves
-Added new sound effects to Forward Strong, Down Strong, and Down Special
-Added effects for when frog despawns");
	 
	initPatch("1.0.2", "October 11th, 2020");
	initWords("-Base knockback and scaling for Up Air changed (3 base, 1.25 scaling -> 7 base, 0.75 scaling)
-Forward Strong startup frames reduced (30 frames --> 22 frames)
-Forward Strong endlag frames reduced (32 frames - 28 frames)
-Forward Strong hitbox size increased
-Up Strong startup frames reduced (23 frames --> 16 frames)
-Up Strong endlag frames reduced (23 frames --> 21 frames)
-Up Strong hitbox size increased
-Down Strong grab box size increased
-Forward Special no longer puts you into pratfall.
-Increased the gravity of Forward Special's charging window
-Changed Rune D to increase Up Tilt speed.
-Down Special left and right notes now alternate depending on player direction.
-Fixed a bug where the boost window of FSPECIAL would end prematurely if an opponent was hit by one of your projectiles.
-Fixed a bug where FSPECIAL charge effects disappeared when bouncing on your own frog.");
	 
	
	initPatch("1.0.1", "October 11th, 2020");
	initWords("-Down-tilt hitbox comes out one frame earlier and lasts 4 frames shorter
-You can now spawn another frog with Up Special after wall-jumping");
	
	initPatch("1.0", "October 11th, 2020");
	initWords_ext("hmm today i will release character", fa_center, c_white, 0, 0);

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
steve_death_message = "Steve got canceled on Twitter";

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