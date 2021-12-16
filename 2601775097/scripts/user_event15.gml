// phone - frontend

if (!get_match_setting(SET_PRACTICE)) exit;

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
num_alts = 27;

// Whether or not to display a name for each alt.
use_alt_names = false;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = noone;

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
muno_char_name = "";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = true;

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

initTip("Mana Cost Cheat Sheet");
initWords("Bar has a bunch of skills to choose from, but remembering how much mana each of them costs can be a pain
Here's a special cheat sheet to know how much MP you need for every skill")
initImage_ext(sprite_get("_exp6"), 0, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);

initTip("Fast N-air");
initWords("Bar's N-air is a regular Sex-Kick type move at a glance, but whenever Bar lands a hit with
his N-air, he instantly goes to his endlag! Use this to your advantage doing crazy shorthop combos!")
initImage_ext(sprite_get("_exp0"), -3, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("Burning Fury Buff - Damage Boost");
initWords("When activating Burning Fury, Bar gains a buff that increases the damage of some of his
moves. The moves will also gain a cyan hitbox to convey this (in Practice Mode)
Normals: Jab 2, U-tilt, F-air, D-air.
Strongs: All of them.
Skills: Light Dagger, Force leap, Chasm Burster, Ember Fist, Searing Descent and Flashbang.

- On normals, every time Bar hits a foe with one of the affected normals, Bar's mana will burn.
- On strongs, if Bar misses a hit the buff will stay, otherwise it will be lost.
- On skills, Bar will lose the Burning Fury buff regardless if it was whiffed or not.");

initTip("Burning Fury Buff - Extra Perks");
initWords("When using Burning Fury's buff with certain skills, they will have effects that not only increase the damage, but also
empower the skill's efficiency or alter it's purpose

- Light Dagger: Deal more damage, knockback and has increased range, becoming a projectile that can kill more easily
- Force Leap: Spikes harder
- Chasm Burster: Adds 2 more fire bursts
- Ember Fist: damage increase
- Searing Descent: Makes Bar go higher, but at the cost of being able to jump/dodge cancel later
- Flashbang: Spikes harder and sends enemies away from Bar");
initImage_ext(sprite_get("_exp1"), -5, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("Extendable Attacks");
initWords("Bar's U-strong, Burning Fury and Force Leap all have an extra input to extend the attack in one way or another.

- Pressing the SPECIAL key after Bar swings the light axe will allow Bar to shift the axe into a spear and throw it up

- Pressing the ATTACK key while Bar is moving with Force Leap will allow Bar to do a blast attack that spikes opponents

- Holding the ATTACK key while Bar is dashing forward with Burning Fury will make him do a stun attack instead of the big fire blast at the end");
initImage_ext(sprite_get("_exp5"), -120, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("Angleable Moves");
initWords("Force Leap, Ember Fist and whiffed U-strong are all attacks that are angleable depending on the direction you press.

- With Force Leap, pressing up/opposite of Bar's direction will cover more vertical distance, and pressing down/towards
Bar's direction will cover more horizontal distance.

- Ember Fist's case, Bar can aim it either up or down before the attack goes out, allowing for a wide range of wake up calls and surprise attacks.
- If Bar didn't hit with U-strong he can slightly angle the direction the spear is thrown by pressing left or right");
initImage_ext(sprite_get("_exp2"), 0, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("Post-Blitz State");
initWords("After getting to the desired destination with Accel Blitz, Bar has 20 frames where he can do
any action before going into pratfall. If Bar manages to land a hit in that time window
(including Accel Blitz's end blast) he will not be sent into pratfall, and be able to move in midair normally!");
initImage_ext(sprite_get("_exp3"), -5, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);

initTip("Superjump Chasm Burster");
initWords("When Bar both jumps and uses Chasm Burster at the same time he can go higher than if he were
to just use the skill alone. Also works with Power Smash");
initImage_ext(sprite_get("_exp4"), -3, fa_center, 1, 1, false, c_white, 1, true, noone, noone, noone, noone);
	
initTip("Who is Bar Reygard?");
initWords_ext("Backstory", fa_center, c_gray, 0, false);
initWords("Bar is an angel that feels like he lost too much. Seeing his dad murdered in front of his young eyes by demons, he swore to protect anything that
he holds dear and has left. Bar is pretty reckless when he fights, but he would always rather to talk things out and persuade his foes to talk it out,
even if it means going against this ideal to do so.");
initWords_ext("His Role", fa_center, c_gray, 0, false);
initWords("Bar is a part of an organization in Shamaeem called The Guardians. The Guardians are 7 angels following the Vanguard, tasked with protecting
their respective gauntlets, which hold a fraction of God's power, being a sort of 'leftovers' from the creation of the universe.
Bar's gauntlet holds the power of the Elements.");
initWords_ext("Powers", fa_center, c_gray, 0, false);
initWords("Even though he is the Guardian of the Elements, knowing how to use every element is an impossibility, so he just resorts to trying to master
a few elements. Bar uses his light very flexibly, from creating weapons out of light to releasing waves of light for knockback to moving in the speed of
light. His other element, Fire, is his affinty element - The easiest element that he could learn, but he uses fire to mostly beef up his other attacks or
shoot it out in short-ranged bursts. Being an angel also grants him wings, allowing him to move in the air with ease.");



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
initPatch("1.?", "??/??/2021");
initHeader("General");
initSection("nothing to see here.
");
*/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.7																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.7", "13/12/2021");
initHeader("Alts");
initSection("= Early Access and Demake now recolor Bar's eyes too
");
initHeader("Dash Attack");
initSection("- Both hitboxes are now no longer untechable, again (HG_TECHABLE 1 -> 0)
");
initHeader("Force Leap");
initSection("- Pratland time increased (10 -> 12)
");
initHeader("Accel Blitz");
initSection("= The movement for the attack is now different, the indicator collides with walls and cannot pass through them
- Bar now doesn't instantly teleport, and instead travels the distance for a few frames (teleport buffer window 1 -> 5)
- Pratland time increased (6 -> 12)
- Landing while Bar is flashing after the time is up will put him in pratland instead of a normal landing
- When Bar is hit while blitzing he will be stunned for 50 frames (Theïkós Bar is completely invincible in that time)
");
initHeader("Power Smash");
initSection("= Added a new collision box to it, which can be viewed in hitbox view
= Removed unused hitbox
- Delayed the jump cancel time (state timer 14 -> 38)
");
initHeader("Polaris");
initSection("= Angle altered (75 -> 60)
= Base knockback of the projectile increased (7 -> 8)
= Angle flipper altered (2 -> 6)
= Altered hitpause conditions, the attack will not alter the values depending on the animation Bar is in currently, and will keep it's values from the initial spawn
+ Jab 4 now brings out the projectile with the knockback
");
initHeader("Theía Evlogía");
initSection("= Fixed issue with the anti-cheapie mode where Bar will launch himself after teleporting with Light Hookshot
= Fixed the effect color on his attacks that are not set in a special way
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.6																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.6", "03/12/2021");
initHeader("General");
initSection("= Fixed memory leak from constantly creating hit effects and not actually spawning them
");
initHeader("Dash Attack");
initSection("= First half angle altered (45 -> 40)
+ First half is now untechable (HG_UNTECHABLE: 1)
- First half base knockback decreased (8.5 -> 7)
");
initHeader("Photon Blast");
initSection("= Removed pratfall from the skill but Bar can't use Photon Blast again untill he lands
");
initHeader("Chasm Burster");
initSection("= Golden graphics fixed
+ Chasms burst independently of Bar
- Added hit lockout to both versions (normal ver: 8 | buffed ver: 4)
- Increased time Bar wastes on the ground after punching for the normal version (16 frames -> 20 frames)
- Chasms burst rate decreased (normal ver: 3 -> 5 | buffed ver: 2 -> 5) (the amount of bursts stay the same)
");
initHeader("Accel Blitz");
initSection("= Indicator graphics for Broken Prism and Ultraviolet were misplaced for the normal Bar, this is fixed now
");
initHeader("Polaris");
initSection("= Instead of working once per multihitting move, the move now has an internal cooldown, only shooting once per 20 frames, regardless of the attack he used
= Polaris can now be disabled while attacking, but cannot be disabled while in hitstun
+ Base knockback increased* (0 -> 7)
+ Base hitpause increased* (0 -> 5)
+ Hitpause scaling increased* (0 -> 0.4)
+ Damage increased (1 -> 3)
+ Added angle flipper (2)

* On Jab, Dash Attack (1st half), Burning Fury and Searing descent the projectiles don't hitstun and knockback so the sequence will be landed properly
* If Bar isn't currently in the exception moves stated, the projectile will deal hitstun and knockback
");
initHeader("Light Hookshot");
initSection("= Charging the skill for longer will make the projectile faster* but shorten the lifetime** (like the unused buffed version)
+ Flinging distance increased (min: 10 -> 13 | max: 15 -> 17)
+ Flinging height increased (min: 4 -> 5 | max: 6 -> 8.33)

* Projectile speed (min: 14 | max: 24)
** Projectile liftime (min: 55 | max: 45)
");
initHeader("Searing Descent");
initSection("+ Apex hitbox base knockback increased (5 -> 7) (this prevents people from being able to airdodge for enough frames)
+ Meteor sweetspot and constant hitbox are now both untechable and unbounceable (HG_TECHABLE: 3)
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.5																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.5", "19/11/2021");
initHeader("General");
initSection("= Disabled Munophone on anywhere that isn't practice mode because it lags Bar hard
= Added new fighter tip - Mana Cost Cheat Sheet
= Added notes on the attack frame data on Munophone to tell which moves get affected by Burning Fury's buff, mana costs for skills, aswell as moves that have other special properties
= No MP drain cheat now makes all MP costs 0
= Using the Mechanic Alternator cheat or rune N in Bar dittos should now not cancel the mechanics out
= Updated character icon
= Strongs, Searing Descent and Flashbang are now affected by the infinite MP from the rune K + L combination
= Patch notes format now goes per move, rather than per section which hopfully should be an easier read for both users and the Munophone
= Equipping rune O while using the anti-cheapie mode will give Bar infinite OD, allowing him to spam Lord's Punishment
= Holy Burning outline should now work properly in Bar dittos
- Holy burn DoT rate decreased (1% per 20 frames -> 1% per 30 frames | total: 6% -> 4%)
");
initHeader("Skills");
initSection("= Added back the skill select invincibility, but it's now only 4 seconds
= Added prompts to when the skill select is cancelled and complete
= When restarting a match, Bar has the option to select his skills again
= Other visual adjustments to Bar's skill select
= Bar's AI now chooses skills when he is set to fight
= Chasm Burster's position is swapped with Flashbang
+ Polaris added
- Guard Aura removed
");
initHeader("Alts");
initSection("= Fixed issue where the glowing color of Theïkós Bar's (including the alt) platform wasn't golden
= Fixed some colors from not recoloring on alts (i most likely missed it, he has a lot of sprites)
= Eye color is now no longer a part of bar's changeable pallete
= Changed color order on alts (the dust color is now based off the hoodie's color)
= Altered alts: Spark of Lightning, Scientific Prodigy, Chief Demon Hunter, REANIMATION, Lofty, Son of the Omega
= Rearranged alt placements
+ Added alts: The Previous Guardian, Ultimate Lifeform, Ranked Gold
- Removed alts: Emerald Guardian, Underdog, Half Cold - Half Hot, Banishing Shifter, Lazy Destroyer, Mesmerizing Phantom, Thunderous Howl, Amethyst Fist
= Theïkós variants of Bar's fire based skills now make both his eyes glow yellow
= 8-bit Theïkós Bar no longer has blend effects to the aura
= 8-bit alt fire and light colors shading altered so they are more visible
= Theía Evlogía alt now changes colors in the CSS too
= Added the cyan line to Bar's CSS instead of the secoundary light from the fire
= Altered the portraits for Early Access and Demake alts to suppot the new color change
");
initHeader("Jab");
initSection("+ Jab is now dash cancelable if Bar hit anything with any of the attacks
");
initHeader("Dash Attack");
initSection("+ Added attack
* Bar can still D-tilt and U-tilt out of a dash, but he can't F-tilt or Jab
");
initHeader("D-tilt");
initSection("= Hitbox angle adjusted (85 -> 75)
+ Ground friction on window 1 decreased (0.2 -> 0.1)
+ Ground friction on window 2 decreased (0.3 -> 0.2)
");
initHeader("U-strong");
initSection("- Axe swing endlag increased (15 -> 21)
- Spear projctile shooting is now delayed to match the animation (window 5, timer 5 -> window 5, timer 10) (on whiff)
");
initHeader("F-strong");
initSection("- Knockback scaling decreased (1.2 -> 1.15)
");
initHeader("D-strong");
initSection("= Fire spread effect plays at the right timing now
= Fire spread sound effect now doesn't play in delay
= Charge hitbox angle altered (270 -> 75)
= Charge hitbox angle flipper altered (9 -> 7)
- Knockback scaling decreased (1.2 -> 1.05)
");
initHeader("D-air");
initSection("= Fixed coloring issue on the shirt
");
initHeader("Light Dagger");
initSection("+ Added custom gravity to windows 3, 4, 7, 8, 11 and 12 (0.75)
");
initHeader("Burning Fury");
initSection("- When Bar uses Burning Fury's dash in midair, gets parried and lands while the attack is still going will now put him in pratland
- Bar now cannot pull enemies along if they aren't in hitstun already
");
initHeader("Photon Blast");
initSection("= Charge times altered but the overal charge time stays the same (min: 30 -> 40 frames | mid: 30 frames | max: 30 -> 20)
= Added hitsparks on Bar when he's charging to show him going up another tier of charge
+ Added soft armor to all charge levels (min: 4 | mid: 8 | max: 12)
+ Max charge damage increments altered (5+5+10 -> 7+7+10)
+ Base knockback now gets higher with longer charges (min: 7 | mid: 7 -> 8 | max 7 -> 9)
+ Knockback scaling now gets higher with longer charges (min: 0.9 -> 0.8 | mid: 0.9 -> 0.95 | max 0.9 -> 1.1)
");
initHeader("Accel Blitz");
initSection("= Indicator updated for the 8-bit alts and the REANIMATION alt
");
initHeader("Chasm Burster");
initSection("= Added screenshake to the buffed version
= While airborne, holding down will allow Bar to pass through platforms
- Projectile lifetime decreased for both buffed and non-buffed versions (18 -> 14)
");
initHeader("Power Smash");
initSection("= While falling, holding down will allow Bar to pass through platforms
= The burning ground no longer affects teammates
");
initHeader("Light Hookshot");
initSection("= Added sound effect when the projectile gets destroyed by enemies
+ The spear projectile now ignores projectiles
");
initHeader("Searing Descent");
initSection("= Fixed coloring issue on the shirt in one of the frames
= Searing Descent is now a 2 parter move, similarly to Force Leap. Hold down the special button while rising to do the 2nd part of the move at a cost of 10 mp
= Custom gravity and vspeed around the rise tweaked to fit the new change, hopefully not very noticeable (v-speed: -10 -> -9.75 | gravity: 2 -> 1.75)
= While shooting down, holding down will allow Bar to pass through platforms
= Sound effects are now all a part of a single effect
= The skill now works like a mini command grab, similarly to Burning Fury
+ Drift multiplier added (0.01)
- Bar now cannot pull enemies along if they aren't in hitstun already
- Pratland time increased (6 -> 10)
");
initHeader("Flashbang");
initSection("= Attack MP cost now depletes before the light blast (window 7's end -> window 6's end)
+ Mana cost for the grab removed, the skill's total cost is now 10 MP
+ While grabbed, opponents are trapped in hitpause
- Extra hitpause on grab decreased (50 -> 10)
- Bar now cannot grab enemies if they aren't in hitstun already
");
initHeader("Theïkós D-strong");
initSection("+ The fireball projectile now passes through the platform Bar stands on
+ When the fireball's duration ends it will explode, but will not set up the burning ground
- Fireball projectile is no longer transcendent (this feature was originally ment for Theïkós Bar only, which now it is)
- Fireball projectile duration decreased (99999 -> 30) (was also ment for Theïkós Bar only and is kept that way)
= Fixed hit particles to display the correct particles
");
initHeader("Theïkós U-strong");
initSection("= Fixed attack effect graphic
");
initHeader("Lord's Punishment");
initSection("= Fixed issue where turbo mode would mess with the skill, bypassing the timestop and not giving him the Divine Blessing (on the rune version)
= Removed the extra hitspark that appeared on the freezing
= The post-attack buff now also allows bar to burn double the time like his Theïkós state
");
initHeader("Theïkós State");
initSection("= Theïkós Bar now has double the burn time (it was ment to be a thing long ago)
= Fixed bug where Theïkós Bar's music will overlap
= Theïkós variants of Bar's fire based skills now make both his eyes glow yellow
= Bar's user events for Theïkós and it's effects now only activate when they are needed, hopefully will drop frames less
= Theïkós Bar's particles won't appear if there's more than one Bar, regardless if he uses Theïkós or not
= 8-bit Theïkós Bar no longer has blend effects to the aura
= 8-bit alt fire and light colors shading altered so they are more visible
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.4																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.4", "25/10/2021");
initHeader("General");
initSection("= Fastfall speed increased for real this time
= Added restrictions* to the Bar's special turbo mode (thanks Kayeetle!)
= Added anti-cheapie mode**, to use, press attack + special like Lord's Punishment, and Bar will transform to a beefier Theïkós state (enables itself automatically with rune L)
= Bar can also gain MP from adventure mode enemies
= Updated Burning Fury Buff tip on Munophone to include the 2 new skills and their interractions with Burning Fury
= Theïkós alt now has it's own animation of Ember Fist (it's just Bar with a yellow eye)
= Theïkós rune (Rune L) special intro now uses the new shockwave effect
= CSS portrait altered to have the fabled cyan line
= Default results portrait updated to match the rest of the portraits
= Small preview fix
= Super secret alt has it's own custom Theïkós state color pallete
+ Theïkós Bar now physically rejects pratlanding and pratfalling
");
initHeader("Skills");
initSection("= Skill select now works like the Mii Fighters - press a direction to select 1 of 3 skills per slot (thanks JPEG!)
+ Searing Descent added
+ Flashbang added
");
initHeader("Jab");
initSection("= Jab 1 hitstun multiplier removed
");
initHeader("U-tilt");
initSection("= U-tilt hitstun multiplier removed
");
initHeader("D-strong");
initSection("= D-strong drag hitbox sfx changed (sfx_blow_heavy1 -> sfx_blow_medium2)
= D-strong fire spread effect now plays earlier
+ Drag hitbox base hitpause decreased (10 -> 7)
+ Drag hitbox hitpause scaling decreased (0.9 -> 0.7)
+ Drag hitbox is now untechable and unbounceable (HG_TECHABLE 1 - > 3)
- D-strong drag hitbox creation frame delayed (0 -> 1)
- D-strong drag hitbox lifetime decreased (4 -> 3)
");
initHeader("N-air");
initSection("= Hitting with N-air will now put Bar in [window 4, window_timer 18] instead of [window 5, window_timer 0] and destroy the hitbox
= Hitbox angle altered (50 -> 361)
");
initHeader("U-air");
initSection("= Hitbox angle altered (96 -> 85)
");
initHeader("D-air");
initSection("= Hitstun multiplier changed to hitpause scaling
");
initHeader("Light Dagger");
initSection("= Light Dagger is now B-reversable (good luck doing that though)
");
initHeader("Burning Fury");
initSection("= Command grab drag fixed (again)
+ Burning Fury knockback scaling increased (ground: 0.6 -> 0.9 || air: 0.4 -> 0.7)
");
initHeader("Force Leap");
initSection("= Hitstun multiplier changed to hitpause scaling
= Force Leap whoosh sfx now plays earlier
");
initHeader("Photon Blast");
initSection("= Hitstun multiplier removed
+ Photon Blast hitpause scaling added (0.2)
- Photon Blast soft armor and super armor removed on charging
- Photon Blast base hitpause decreased (15 -> 8)
");
initHeader("Chasm Burster");
initSection("= Punch attack hitstun multiplier removed
");
initHeader("Power Smash");
initSection("= Power Smash will now only spawn the burning crater if Bar is not in hitpause
= Slightly altered offset of Power Smash's shockwave effect
= Sweetspot angle altered (270 -> 55)
= Sourspot angle altered (90-> 80)
= Sourspot angle flipper added (6)
+ Sweetspot base knockback increased (8 -> 9)
+ Sweetspot knockback scaling increased (0.8 -> 1.2)
+ Sourspot base knockback increased (7 -> 8)
+ Sourspot knockback scaling increased (0.7 -> 0.8)
");
initHeader("Guard Aura");
initSection("= Guard Aura is now unable to let Bar move, as he needs to hold down the button to continiously use it
- Guard Aura now wastes twice as much mp when held (5 mp per sec -> 10 mp per sec)
");
initHeader("Searing Descent");
initSection("+ Skill added
");
initHeader("Flashbang");
initSection("+ Skill added
");
initHeader("Lord's Punishment");
initSection("= Hitstun multiplier removed
");
initHeader("Theïkós F-strong");
initSection("= Hitstun multiplier removed
+ Final hit hitpause scaling added (0.9)
");
initHeader("Workshop Compatibilities");
initSection("+ RC car for the RC mode
");
initHeader("Extra Notes");
initSection("* Special restrictions for Bar's built-in Turbo include:
- Cannot cancel an attack into itself (unless it's N-air)
- Normal U-strong can't be canceled untill window 8
- Force Leap can't be canceled untill window 8
- Searing Descent can't be canceled untill window 3
- Flashbang can't be canceled untill window 7

** Anti-Cheapie mode tweak list:
- bar gets 999 stocks, and everyone else get 10 stocks
- 999,999,999 mp (but has a passive mana gain rate of 1 per sec)
- 999,999,999 constant soft armor
- theikos (and all it brings to the table)
- lord's blessing buff (longer light attack stunning, longer burning time)
- rune A (airdashing)
- rune D (earthquake landing with D-air)
- rune G (warping to spear projectiles)
- rune J (mana gain from burning/pre-lightstunning) (twice as effective)
- rune N (adding the lightstunning mechanic)
- gets everyone else to take double damage
- doubles everyone else's knockback adjustment
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.3																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.3", "13/10/2021");
initHeader("General");
initSection("= Holy Burning is now able to burn Lightstunned foes untill the stun duration is over
= Fixed bug where Burning Fury will drag foes if the first attack hit and it's instantly used
= Rune B now lets bar glide for 150 frames instead of disabling gliding
= Rune N will now keep Bar's Holy Burning activated too
= Added synergy between Holy Burning and Lightstunning - Lightstunned foes that also burn will now keep burning untill the stun duration is over
= Rune O will now only make Bar lose half of his OD instead of reset it
= Gliding stamina is now green to not confuse it's color with rune O's OD gauge
= Victory themes updated to fit Bar's stage music
= Win portrait, CSS art and results art updated
= BG color changed
= Mod thumbnail updated
= Some of Bar's colors are slightly altered to fit the new art
+ Fastfall speed increased (12 -> 15)
");
initHeader("Skills");
initSection("= Bar can now select skills when playtesting by inputting up + taunt as you would in training mode (he actually could earlier but only on training and you couldn't see it)
");
initHeader("F-tilt");
initSection("- Sweetspot and sourspot are now techable (no tech/bounce -> tech)
- F-tilt sweetspot knockback scaling decreased (0.7 -> 0.6)
");
initHeader("U-tilt");
initSection("+ Landing lag decreased (12 -> 4)
");
initHeader("D-strong");
initSection("= Fixed effect color on D-strong's charge when using the golden Theïkós effects
");
initHeader("U-air");
initSection("+ Landing lag decreased (8 -> 4)
");
initHeader("F-air");
initSection("+ Landing lag decreased (9 -> 5)
- Sweetspot knockback scaling decreased (0.7 -> 0.6)
- Sweetspot base hitpause decreased (15 -> 12)
");
initHeader("D-air");
initSection("+ Landing lag decreased (12 -> 6)
+ Sweetspot hitpause scaling increased (0.7 -> 0.6)
- Sweetspot knockback scaling decreased (0.9 -> 0.7)
- Sweetspot base hitpause decreased (25 -> 12)
");
initHeader("B-air");
initSection("+ B-air landing lag decreased (10 -> 5)
- Sweetspot base hitpause decreased (13 -> 11)
");
initHeader("Burning Fury");
initSection("- Air final blow base knockback decreased (10 -> 6)
- Air final blow knockback scaling decreased (0.6 -> 0.4)
");
initHeader("Force Leap");
initSection("+ Buffed explosion knockback scaling increased (0.25 -> 0.7)
- Explosion base knockback decreased (5 -> 4)
- Explosion knockback scaling decreased (0.7 -> 0.8)
- Explosion base hitpause decreased (12 -> 8)
- Explosion hitstun multiplier decreased (1.2 -> 0.7)
- Buffed explosion base knockback decreased (8 -> 5)
- Buffed explosion hitstun multiplier decreased (1.5 -> 0.9)
");
initHeader("Photon Blast");
initSection("- Hitstun multiplier decreased (1.5 -> 0.8)
");
initHeader("Light Hookshot");
initSection("+ Normal projectile version is now transcendent
");
initHeader("Theïkós F-strong");
initSection("= Theïkós F-strong will now only spawn the dusts if Bar isn't in hitpause
");
initHeader("Workshop Compatibilities");
initSection("+ Munophone has been updated to Munophone Touch
+ Palutena's guidance
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.2																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.2", "3/10/2021");
initHeader("General");
initSection("= Attacks that give Bar under 1 mp (or odp for rune O) now give 1 unit
= Rune A (Airdash) no longer stops Bar's momentum in midair
= Theïkós Bar now works in the CSS playtest
= Theïkós Bar's turbo mode now allows Bar to fastfall (i wanted to use iasa_script() but it gave me some issues)
= Rune J functionality changed entirely (Gauntlet melee attack damage increase -> MP gain from anyone affected by Bar's mechanics)
= Fixed bug that made Bar glitch out when using runes L and K together
= Fixed potential problems with rune K's mana cap
= Fixed issue where Bar would get the lightstun timer after getting parried from F-strong, regardless if rune C is used or not
= Disabled interraction between runes L and O, now they work indpendently of each other instead of doing the transformation
= Removed annoying message when Theïkós Bar shakes the screen with his strong charging
= Added new phone cheat: Mechanic Alternator (Allows you to decide if you want Bar's Holy Burning, Lightstunning, both or none to be active)
= Munophone now displays the name of Lord's Punishment properly on the frame data tab (Instead of ???)
+ Theïkós Bar knockback adjust decreased (0.8 -> 0.5)
- Rune A (Airdash) thrust decreased (11.25 -> 9)
- Rune A (Airdash) + Theïkós thrust decreased (24 -> 12.8)
");
initHeader("F-strong");
initSection("= The move is now reverseable in midair just as it is on the ground
- Base knockback decreased (7.5 -> 7)
");
initHeader("D-strong");
initSection("- Base knockback decreased (8 -> 7)
");
initHeader("Burning Fury");
initSection("- Dash attack damage decreased (4 -> 2)
- Final blast damage decreased (10 -> 8)
- Stun attack damage decreased (7 -> 5)
");
initHeader("Photon Blast");
initSection("+ SDI multiplier added (0 -> 0.7)
");
initHeader("Ember Fist");
initSection("= Sprites altered, his eye didn't glow like with all his other fire based moves
");
initHeader("Light Hookshot");
initSection("- extended parry stun added
");
initHeader("Lord's Punishment");
initSection("+ Final fire launch angle flipper added (7)
");
initHeader("Theïkós U-strong");
initSection("+ Theïkós U-strong multihit angle altered (70 -> 80)
+ Theïkós U-strong multihit has a SDI multiplier (0 -> 0.01)
+ Theïkós U-strong multihit angle flipper added (0 -> 7)
");
initHeader("Theïkós F-strong");
initSection("= Angle flipper removed
= Theïkós F-strong now doesn't end the burning fury buff prematurely, and will end right after the last hit
= The move is now reverseable in midair just as it is on the ground
+ Rapid punching has a SDI multiplier (0 -> 0.01)
+ Base knockback increased (6 -> 8)
+ Knockback scaling increased (0.9 -> 1.1)
+ Final hit damage on the normal form increased (3 -> 5)
- Final hit is now techable
- Hitstun multiplier decreased (1.5 -> 1.2)
");
initHeader("Theïkós U-strong");
initSection("= Theïkós D-strong ground fire kb scaling removed
= Theïkós D-strong ground fire base knockback decreased (3 -> 2.5)
+ Theïkós D-strong ground fire has a SDI multiplier (0 -> 0.01)
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.1																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.1", "21/9/2021");
initHeader("General");
initSection("= Added new phone cheat: no MP draining (will prevent Burning Fury and Guard Aura from draining MP)
= Broken Prism alt now has dimmer fire
= Broken Prism alt now brings out the color trail in more scenarios
= Added V1 release date to phone
= Corrected attack names for Lord's Punishment and Theía Evlogía in the Stat Debug Mode on the phone
");
initHeader("D-tilt");
initSection("+ Ground friction decreased on windows 1 and 2 (window 1: 0.4 -> 0.2 | window 2: 0.4 -> 0.3)
");
initHeader("U-strong");
initSection("+ Axe knockback scaling increased (0.7 -> 1.1)
+ Knockback scaling increased (0.9 -> 1.2)
- Spear knockback scaling decreased (0.9 -> 0.7)
");
initHeader("F-strong");
initSection("+ Base knockback increased (6.5 -> 7.5)
+ Knockback scaling increased (0.9 -> 1.2)
");
initHeader("D-strong");
initSection("- Fire blast base knockback decreased(9 -> 8)
");
initHeader("N-air");
initSection("= Sourspot added
= Sweetspot is now colored yellow so you can tell when the hitboxes swap
- Sweetspot lifetime decreased (24 -> 2) (The 22 frames that are removed are in the new sourspot)
");
initHeader("Burning Fury");
initSection("= Dash attack now depends on Bar's HSP and VSP values and applies them on enemies, making it hit consistently
+ Burning Fury dash attack hitpause decreased (14 -> 8)
+ Burning Fury dash attack hitpause scaling (0.8 -> 0.5)
");
initHeader("Power Smash");
initSection("= Power Smash now no longer deals damage when stood on, and only applies holy fire
= Power Smash's burning crater can no longer be parried
- Sweetspot damage decreased (10 -> 8)
- Sourspot damage decreased (8 -> 5)
- Buffed Sweetspot damage decreased (13 -> 10)
- Buffed Sourspot damage decreased (10 -> 8)
");
initHeader("Ember Fist");
initSection("- MP cost increased (10 -> 20)
- Window 4 time increased (14 -> 20)
");
initHeader("Light Hookshot");
initSection("= Skill cost split reversed (charge: 15 -> 5 | release: 5 -> 15)
");
initHeader("Lord's Punishment");
initSection("= Timestop hitbox delayed (creation frame 0 -> 1)
");
initHeader("Theía Evlogía");
initSection("= Fixed Theía Evlogía not reverting Bar back to normal properly
");
initHeader("Workshop Compatibilities");
initSection("+ Rivals of Fighter super move
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														1.0																//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.0", "14/9/2021");
initHeader("General");
initSection("= Mana Debug Mode is now a Munophone cheat, and has more options than on and off
= Added stamina when gliding - Bar loses stamina as long as he glides, and restores 50 stamina when walljumping or wall-teching
= Bar's AI is now slightly smarter, he will not waste mana if he doesn't have a bit over the mana cost of the skill
= The method charging a strong consumes mana altered, every 6 strong_charge frames Bar will consume 1 MP (Attacks affected: D-strong, Theïkós D-strong, Theïkós U-strong)
= Theïkós Bar's effects have been seperated from the Divine Punishment alt, and it is now purely cosmetic
= Updated respawn platform graphic
= When falling Bar is now more animated
= Added particles when Bar charges any chargeable holy fire/light attack
= Added sound effects when Bar charges any chargeable holy fire/light attack
= Updated holy burning effect
= Fixed bug that kept the foe's outline color the burning outline color when parrying an attack that's ment to burn them
= Renamed Guardian of the Elements alt (the default) to Elemental Guardian
= Fixed colors on some victory portraits
= Broken Prism alt's color changing speed is now slower
= Added an icon to the Broken Prism alt
= Renamed Divine Punishment alt to Theía Evlogía
= The Theïkós music now scales with the actual in-game music volume
= Added intro animation
= Added phone animation
= Added 8-bit Theïkós portraits
= Added 8-bit Theïkós music theme
+ Heavily buffed Theïkós wavedash (wave_land_adj: 1.35 -> 2.25 | wave_friction: 0.4 -> 0.2)
");
initHeader("Skills");
initSection("= When selecting skills, Bar is now go-throughable, and hurtbox is removed too
= In practice mode, the skill select will no longer have a timer in the begining of the match
= Disabled being able to re-open the skill select menu in training mode while it's already open
= Changed skill select invincibility to attack_invince
= Bar now flashes when you have 5 seconds left when you select skills
= The training mode messages now only disappear only after you do the respective inputs instead of a pre-set timer
= Updated color of his skill icons
= Burning Fury, Force Leap, Power Smash and Ember Fist icons altered
= Changed the input button prompts on the skill select hud
");
initHeader("Jab");
initSection("+ Jab 1 range increased (width 60 -> 68 | height 28 -> 32 | X 24 -> 28)
+ Jab 2 range increased (width 72 -> 80 | height 28 -> 36 | X 26 -> 30)
+ Jab 2 knockback increased (4.5 -> 6)
+ Jab 3 range increased (width 88 -> 96 | height 42 -> 50)
+ Bar now moves further out on Jab 3 (hspeed 5 -> 7)
+ Jab 3 startlag decreased (8 -> 6)
");
initHeader("U-tilt");
initSection("= Fixed bug that made bar stay in his U-tilt animation after landing a hit and fastfalling, he now goes into landing lag instead
- U-tilt is now no longer hitfallable
");
initHeader("F-tilt");
initSection("- Hitboxes lifetime decreased (sweetspot: 6 -> 2 | sourspot: 8 -> 4)
");
initHeader("D-tilt");
initSection("+ Ground friction decreased (0.5 -> 0.4)
+ Range increased (width 66 -> 80 | height 36 -> 40 | X 26 -> 30)
");
initHeader("U-strong");
initSection("= Fixed issue where you could see Bar's light axe under the burning version of the axe
= Fixed problem that made the burning spear not aimable like the normal version
+ Axe attack endlag decreased (21 -> 15)
+ Light spear lifetime increased (20 -> 30)
+ Light spear will now aim itself towards the first opponent that was hit by the axe attack
");
initHeader("F-strong");
initSection("= Burning Fury's buff now gets disabled only after hitting with the move and Bar is no longer in an attack state
+ Range increase (width 60 -> 80)
+ Reduced friction before and while charging (0.5 -> 0.2)
");
initHeader("D-strong");
initSection("= Burning Fury's buff now gets disabled only after hitting with the move and Bar is no longer in an attack state
= Fire blast Hit lockout added(0 -> 20) (To prevent the shockwave and rune I rocks to deal extra damage and overwrite the knockback)
= Added the fire effect when charging
= Added a recolored rock effect to match Bar's pallete instead of using the default large rock hitspark
+ D-strong knockback increased (base 8 -> 9 | scaling 1.1 -> 1.2)
");
initHeader("N-air");
initSection("+ N-air will go to it's endlag instantly if you land a hit with it
+ Range increased (width 60 -> 76 | height 32 -> 38 | X 24 -> 18)
+ Startlag decreased (6 -> 4)
");
initHeader("Light Dagger");
initSection("= Fixed air version lifetime
= Normal projectile knockback angle adjusted (50 -> 65)
= The effect is now a part of the animation itself
= Changed sound when Bar uses Burning Light Dagger
+ Endlag decreased (18 -> 15)
- Removed all hitstun properties from Light Dagger
- Startlag windows time increased (windows 1/5/9: 4 -> 6 | windows 2/6/10: 8 -> 10) (also applies for the air version)
");
initHeader("Burning Fury");
initSection("= Added particles to when the buff is active, as some states overwrite the outline coloring
");
initHeader("Force Leap");
initSection("= Added a new motion effect
= Made the dust rotate along where Bar is going
= Force Leap can now be aimed using up and down aswell as left and right. pressing up/back will send Bar up, and pressing down/forward will send Bar forward.
+ Aim trajectory altered
- pratland duration increased (6 -> 10)
");
initHeader("Photon Blast");
initSection("+ Photon Blast now won't send Bar into pratfall if he hits someone with it
");
initHeader("Accel Blitz");
initSection("= Fixed bug that made Bar's endpoint position not reset when getting hit while using the move
= Fixed bug that turns Bar invisible after using dying from the skill's pratfall
= Fixed bug that makes Bar's Accel Blitz not reset it's relative position on death
= Accel Blitz's behaviour when colliding with the stage is altered, it will now push Bar out of the ground for easier recoveries
= Fixed some jank when using Accel Blitz with either Theïkós or turbo mode
= Fixed issue that prevented Bar's pratfall animation from playing
- Decreased travel distance per frame (10 -> 8)
");
initHeader("Chasm Burster");
initSection("= MP cost is now split to two parts: when Bar activates the attack he loses only 5 MP, but when landing he loses 25 MP
= Chasm Burster's ground and air variants are now a single move
= Chasm Burster now won't spawn the bursts in midair
+ Buffed up Chasm Burster will now shoot 6 fire bursts instead of 4
+ You can now jump out of Chasm Burster while falling
- Buffed damage nerfed (initial hit 9 -> 7 | fire bursts 8 -> 6)
");
initHeader("Power Smash");
initSection("+ Skill added
");
initHeader("Guard Aura");
initSection("= Added angle flipper (3)
= Angle adjusted (361 -> 50)
- Active time decreased (8 secs -> 3 secs) (this does not affect the mana depletion speed)
- Base knockback increased (5 -> 12)
- Knockback scaling removed
- Hitstun multiplier decreased (2 -> 0.4)
- Extra hitpause removed
");
initHeader("Light Hookshot");
initSection("+ Skill added
");
initHeader("Theïkós D-strong");
initSection("
= Theïkós D-strong will now allow only one burning ground at a time
");
initHeader("Workshop Compatibilities");
initSection("+ Neptendo jingle
+ Otto's bike bobblehead
+ Munophone support
+ Abyss Runes support
+ Final Smash
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//													DELTA (beta 3)														//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("DELTA", "5/6/2021");
initHeader("General");
initSection("= Added colored hitboxes (to moves that aren't projectiles)
= Added custom hit particles to moves that spawn hitboxes outside of the attack itself
= Bar's gauntlet glow take the color of his light, rather than his light blue clouthes on the portraits
= Renamed NES alt to Demake
= Early Acess and Demake alts now have a chiptune version of Bar's victory theme
= Fiery Racing Spirit alt colors altered
= Renamed Star Guardian alt to Stellar Traveller
= Added 16 new alts (he has 32 now)
= Holy Fire on the Divine Punishment alt portrait altered to match the in-game pallete
= Camera shake increased on Theïkós Bar dash start
= Camera shake while landing with Theïkós Bar only occurs on fastfalling
= Camera shake added when charging strongs with Theïkós Bar
= Added outline to Theïkós Bar's ancient text
+ Dash speed increased
- Theïkós Bar initial dash speed and dash speed nerfed to be more controllable
");
initHeader("Skills/New Moves");
initSection("= Fixed bug that messed with the hurtbox if you do an attack or dodge while using the skill menu.
= Whenever the skill menu is brought up on training mode, it will reset the cursor position to Light Dagger's position
= The skill menu can loop around itself
= At the start of a match, after Bar closes the skill menu he will have invincibility for 90 frames (1.5 secs)
= Fixed bug that kept Bar in place if he finishes selecting skills before the match allows characters to move
");
initHeader("Jab");
initSection("= Hitpause fixed for all jabs
= All jabs angle flippers removed
+ All jabs hitstuns reduced
+ Jab 3 overall speed increased (startup: 6 -> 4 | attack: 8 -> 6 | endlag: 10 -> 8)
+ Jab 3 knockback angle altered (10 -> 40)
+ Jab 4 knockback angle adjusted (10 -> 30)
+ Jab 4 overall speed increased (startup: 12 -> 8 | attack: 10 -> 8 | endlag: 12 -> 8)
- Jab now locks people inside it less
");
initHeader("U-tilt");
initSection("+ Sourspot base hitpause increased (3 -> 6)
");
initHeader("D-tilt");
initSection("+ D-tilt hitpause scaling added (0.2)
");
initHeader("U-strong");
initSection("= A frame in the animation was altered to portray the hitboxes better
");
initHeader("F-strong");
initSection("+ Normal projectile knockback increased (5 -> 7)
+ Normal projectile knockback scaling increased (0.7 -> 0.9)
+ Buffed projectileknockback scaling increased (0.8 -> 1.1)
+ Projectile size increase (8x40 -> 16x60)
+ Projectile is now aimable
");
initHeader("F-strong");
initSection("= Back hitbox removed
+ Hitbox size increased (30x50 -> 60x40)
- F-strong is no longer turnable
");
initHeader("N-air");
initSection("+ base hitpause increased (4 -> 5)
");
initHeader("U-air");
initSection("+ base hitpause increased (4 -> 6)
+ hitpause scaling added (0.2)
");
initHeader("F-air");
initSection("= Hitbox arrangement altered (has 2 sourspots above and below following the animation, sweetspot in the middle)
- Sourspot lifetime decreased (6 -> 4)
- Sweetspot base knockback decreased (7 -> 5)
");
initHeader("D-air");
initSection("+ Knockback scaling increased (0.7 -> 0.9)
+ Startup is slightly faster so it can chain with Accel Blitz (15 -> 12)
- Sweetspot base knockback decreased (9 -> 6)
");
initHeader("Taunt");
initSection("+ Hitbox size increased (x:16 y:16 -> x:24 y:32)
+ Lifetime increased (1 -> 2)
- taunt damage decreased (12 -> 10)
");
initHeader("Light Dagger");
initSection("+ Normal projectile knockback increased (3 -> 5)
+ Normal projectile extra hitpause added (4)
");
initHeader("Force Leap");
initSection("+ Theïkós Bar doesn't go into pratfall
");
initHeader("Photon Blast");
initSection("= Angle flipper altered (8 -> 3)
= Photon Blast now resets it's charge to prevent turbo mode/Theïkós Bar to store it up
- Uncharged Photon Blast startup increased (14 -> 25) (excluding Theïkós Bar)
");
initHeader("Accel Blitz");
initSection("+ Skill added
");
initHeader("Chasm Burster");
initSection("= Fixed problem with Chasm Burster's bursts staying in place if used as up special
+ Air friction decreased (0.3 -> 0.1)
+ Added a soft spike hitbox when Bar starts to fall with Chasm Burster active
- Bursts damage decreased (normal: 6 -> 4 | burning fury buffed: 11 -> 8)
- Added parry stun to bursts
");
initHeader("Guard Aura");
initSection("= Fixed visual bug where Guard Aura on Theïkós Bar will not show the hitspark when releasing the move
- Guard Aura is active 8 seconds, and will not do the counter attack automatically (consumes 50 MP total)
");
initHeader("Ember Fist");
initSection("+ Skill added
");
initHeader("Theïkós U-strong");
initSection("+ Attack added
");
initHeader("Theïkós F-strong");
initSection("+ Attack added
");
initHeader("Theïkós D-strong");
initSection("+ Attack added
");
initHeader("Workshop Compatibilities");
initSection("+ Soulbound conflict flavor text
+ Callie date dialogue
+ Green Flower Zone signpost
+ Assist Buddy compatibility
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//													GAMMA (beta 2)														//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("GAMMA", "23/4/2021");
initHeader("General");
initSection("= Double jumps now work like his first jump
= Gliding will now only make Bar change direction if he goes at max speed
= Mana Debug Mode's natural MP regen speed doubled
= Bar's offsets now overlap with the stage as they should
= Bar's idle is now slightly slimmer to fit the rest of his sprites
= Added mini mana gauge that shows up whenever Bar gains mana, de/activate Mana Debug Mode, and when MP is insufficient
= No MP now says Low MP and the arrow under his nametag flashes
= When Bar has insufficient mana a sound will play
= Holy Burned foes will now gt different colored outlines depending on Bar's alt
= Replaced the Mysterious Friend with the Fiery Racing Spirit alt
= Added unique alt names for seasonal alts
+ Skill Select added
+ Re/spawning MP value buffed (0 -> 100)
+ A successful Parry gives more mana (10 -> 25)
+ All moves damage increase (too many to point out here tbh)
- MP gain while attacking decreased to match the new damage output
- Theïkós Bar is actually killable
- Theïkós Bar dash speed decreased
");
initHeader("Jab");
initSection("+ Jab 1 hitpause increase
+ Jab 1 is faster
+ Jab 1 friction decreased
+ Jab 2 is faster
+ Jab 2 hitpause decreased
+ Jab 3 is faster
+ Jab 3 hitpause decreased
");
initHeader("F-tilt");
initSection("= Hitboxes are bigger and deal more identical values
+ Ground friction decreased on window 1
");
initHeader("D-tilt");
initSection("+ D-tilt is faster
+ Ground friction decreased
");
initHeader("U-strong");
initSection("+ Attack added
");
initHeader("F-strong");
initSection("+ Attack added
");
initHeader("D-strong");
initSection("+ Attack added
");
initHeader("N-air");
initSection("+ N-air stays active for longer
+ N-air is faster
+ N-air deals more knockback
");
initHeader("U-air");
initSection("+ U-air is faster
");
initHeader("F-air");
initSection("+ Hitboxes size increase
+ Another sweetspot hitbox added
+ Hitpause decreased
");
initHeader("D-air");
initSection("+ Hitboxes size increase
+ Sourspot deals more knockback
");
initHeader("B-air");
initSection("+ Attack added
");
initHeader("Light Dagger");
initSection("= Hit sound effects added
+ Knockback and hitstun increased (Burning Light Dagger too)
");
initHeader("Burning Fury");
initSection("= Fixed Burning Fury's rapid mana deplete if people are hit durring the initial activation
= Burning Fury's activation blast is now in front of Bar
= Added sound effect for when Bar runs out of MP with Burning Fury
+ Activation attack hitpause decreased
+ Activation and dash attack startup speed increase
+ Dash attack is untechable
+ Stun attack hitbox size incrase
+ Final blast on the grounded version launches slightly upwards
");
initHeader("Force Leap");
initSection("= Force Leap stalls in midair before the leap
= New leaping sound
");
initHeader("Photon Blast");
initSection("= The hits now connect properly
+ Final hit knockback increase
");
initHeader("Chasm Burster");
initSection("+ Skill added
");
initHeader("Guard Aura");
initSection("+ Skill added
");
initHeader("Workshop Compatibilities");
initSection("+ Steve death messages
+ Moonchild song
+ Last Resort painting
+ TCO drawings
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																														//
//														BETA															//
//																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("BETA", "19/3/2021");
initHeader("General");
initSection("The first open beta release of Bar Reygard!");

initPatch("About Bar Reygard", "");
initHeader("Character by");
initSection("Bar-Kun");
initHeader("SFX from");
initSection("= Sonic 3 & Knuckles
= Elsword
= Super Smash Bros. Ultimate
= Undertale
");

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

CHEAT_MANADEBUG	= initCheat("Mana Debug Mode", [1, 2, 3, 4, 5, 6, 0], ["2 mps", "5 mps", "10 mps", "20 mps", "50 mps", "100 mps", "No Regen"], "Change the speed of Bar's natural mana regneration.
(Will not work with Runes K and L.)

Note: mps = Mana Per Sec.");

CHEAT_STATS	= initCheat("Stat Debug", [0, 1], ["Off", "On"], "Allows you to see various background stats.");

CHEAT_MPDRAIN = initCheat("No Mana Drain", [0, 1], ["Off", "On"], "All mana costs now don't cost anything, aswell as disabling any sort of active mana burning.");

CHEAT_TECHTOGGLE = initCheat("Mechanic Alternator", [1, 2, 3, 0], ["Burning only", "Lightstun only", "Burning + Lightstun", "None"], "Allows you to freely toggle Bar's mechanics without using the runes cuz I hate going to the character select menu.
(Will not work with Rune N.)");


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
	AT_SKILL0,
	AT_SKILL0_AIR,
	AT_SKILL1,
	AT_SKILL1_AIR,
	AT_SKILL2,
	AT_SKILL3,
	AT_SKILL4,
	AT_SKILL5,
	AT_SKILL6,
	AT_SKILL7,
	AT_SKILL8,
	AT_SKILL9,
	AT_SKILL10,
	AT_SKILL11, //this appears as munophone for some reason
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_DSTRONG_2,
	49,
	AT_TAUNT,
	AT_PHONE,
	AT_NSPECIAL,
	AT_FSPECIAL,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_TAUNT_2,
	2,
	3,
	42,
	43,
	44,
	45,
	46,
	47,
	48,
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
otto_bobblehead_sprite = sprite_get("_pho_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_bobble_body");

// Steve death message.
//steve_death_message = "";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 8;

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
initCodecPagePit(SPK_PIT,	3,	0,	"Another angel? I didn't think I'd see another angel around here!");
initCodecPagePit(SPK_VIR,	1,	1,	"But unlike you HE can fly on his own.");
initCodecPagePit(SPK_PIT,	4,	1,	"What?!");
initCodecPagePit(SPK_PALU,	0,	3,	"That's correct, Pit. Bar has the ability to jump 3 times in the air and glide");
initCodecPagePit(SPK_PALU,	0,	1,	"Allows him to have pretty good air mobility.");
initCodecPagePit(SPK_VIR,	5,	6,	"Not to mention he could probably send you flying in 3 hits!");
initCodecPagePit(SPK_PIT,	9,	1,	"Is there anything else I need to worry about?");
initCodecPagePit(SPK_PALU,	1,	0,	"Don't be so easily startled Pit, while Bar sure packs a mean punch, his special moves are limited by mana.");
initCodecPagePit(SPK_PALU,	5,	1,	"If you pressure Bar into using up his mana, he could leave himself vulnerable");
initCodecPagePit(SPK_PALU,	6,	5,	"His range without his specials is also not something to write home about.");
initCodecPagePit(SPK_PIT,	3,	0,	"So the plan is simple, dodge his moves and space him out!");



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