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

initPatch("1.4", "25/10/2021");
initHeader("Gameplay Balance Changes");
initSection("= Skill select now works like the Mii Fighters - press a direction to select 1 of 3 skills per slot (thanks JPEG!)
= Fastfall speed increased for real this time
= Jab 1 hitstun multiplier removed
= U-tilt hitstun multiplier removed
= D-strong drag hitbox creation frame increased (0 -> 1)
= Hitting with N-air will now put Bar in [window 4, window_timer 18] instead of [window 5, window_timer 0] and destroy the hitbox
= N-air hitbox angle altered (50 -> 361)
= U-air hitbox angle altered (96 -> 85)
= D-air hitstun multiplier changed to hitpause scaling
= Light Dagger is now B-reversable (good luck doing that though)
= Burning Fury drag fixed (again)
= Force Leap hitstun multiplier changed to hitpause scaling
= Photon Blast hitstun multiplier removed
= Chasm Burster punch attack hitstun multiplier removed
= Power Smash will now only spawn the burning crater if Bar is not in hitpause
= Power Smash sweetspot angle altered (270 -> 55)
= Power Smash sourspot angle altered 90-> 80)
= Power Smash sourspot angle flipper added (6)
= Guard Aura is now unable to let Bar move, as he needs to hold down the button to continiously use it
= Lord's Punishment hitstun multiplier removed
= Theïkós F-strong hitstun multiplier removed
= Added restrictions* to the Bar's special turbo mode (thanks Kayeetle!)
= Added anti-cheapie mode**, to use, press attack + special like Lord's Punishment, and Bar will transform to a beefier Theïkós state (enables itself automatically with rune L)
= Bar can also gain mp from stage objects (if they allow it)
= Searing Descent added
= Flashbang added
");
initHeader("Buffs");
initSection("+ D-strong drag hitbox base hitpause decreased (10 -> 7)
+ D-strong drag hitbox hitpause scaling decreased (0.9 -> 0.7)
+ D-strong drag hitbox is now untechable and unbounceable (HG_TECHABLE 1 - > 3)
+ Burning Fury knockback scaling increased (ground: 0.6 -> 0.9 || air: 0.4 -> 0.7)
+ Photon Blast hitpause scaling added (0.2)
+ Power Smash sweetspot base knockback increased (8 -> 9)
+ Power Smash sweetspot knockback scaling increased (0.8 -> 1.2)
+ Power Smash sourspot base knockback increased (7 -> 8)
+ Power Smash sourspot knockback scaling increased (0.7 -> 0.8)
+ Theïkós F-strong hitpause scaling added (0.9)
+ Theïkós Bar now physically rejects pratlanding and pratfalling
");
initHeader("Nerfs");
initSection("- D-strong drag hitbox lifetime decreased (4 -> 3)
- Photon Blast soft armor and super armor removed on charging
- Photon Blast base hitpause decreased (15 -> 8)
- Guard Aura now wastes twice as much mp when held (5 mp per sec -> 10 mp per sec)
");
initHeader("Visual Changes");
initSection("= Added back skill select prompt for training mode
= D-strong drag hitbox sfx changed (sfx_blow_heavy1 -> sfx_blow_medium2)
= D-strong fire spread effect now plays earlier
= Force Leap whoosh sfx now plays earlier
= Slightly altered offset of Power Smash's shockwave effect
= Updated Burning Fury Buff tip on Munophone to include the 2 new skills and their interractions with Burning Fury
= Theïkós alt now has it's own animation of Ember Fist (it's just Bar with a yellow eye)
= Theïkós rune (Rune L) special intro now uses the new shockwave effect
= CSS portrait altered to have the fabled cyan line
= Default results portrait updated to match the rest of the portraits
= Small preview fix
= Super secret alt has it's own custom Theïkós state color pallete
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
initPatch("1.3", "13/10/2021");
initHeader("Gameplay Balance Changes");
initSection("= Bar can now select skills when playtesting by inputting up + taunt as you would in training mode (he actually could earlier but only on training and you couldn't see it)
= Holy Burning is now able to burn Lightstunned foes untill the stun duration is over
= Fixed bug where Burning Fury will drag foes if the first attack hit and it's instantly used
= Rune B now lets bar glide for 150 frames instead of disabling gliding
= Rune N will now keep Bar's Holy Burning activated too
= Added synergy between Holy Burning and Lightstunning - Lightstunned foes that also burn will now keep burning untill the stun duration is over
= Rune O will now only make Bar lose half of his OD instead of reset it
");
initHeader("Buffs");
initSection("+ Fastfall speed increased (12 -> 15)
+ U-tilt landing lag decreased (12 -> 4)
+ U-air landing lag decreased (8 -> 4)
+ F-air landing lag decreased (9 -> 5)
+ D-air landing lag decreased (12 -> 6)
+ D-air sweetspot hitpause scaling increased (0.7 -> 0.6)
+ B-air landing lag decreased (10 -> 5)
+ Force Leap buffed explosion knockback scaling increased (0.25 -> 0.7)
+ Light Hookshot normal version is now transcendent
");
initHeader("Nerfs");
initSection("- F-tilt sweetspot and sourspot are now techable (no tech/bounce -> tech)
- F-tilt sweetspot knockback scaling decreased (0.7 -> 0.6)
- F-air sweetspot knockback scaling decreased (0.7 -> 0.6)
- F-air sweetspot base hitpause decreased (15 -> 12)
- D-air sweetspot knockback scaling decreased (0.9 -> 0.7)
- D-air sweetspot base hitpause decreased (25 -> 12)
- B-air sweetspot base hitpause decreased (13 -> 11)
- Burning Fury's air final blow base knockback decreased (10 -> 6)
- Burning Fury's air final blow knockback scaling decreased (0.6 -> 0.4)
- Force Leap explosion base knockback decreased (5 -> 4)
- Force Leap explosion knockback scaling decreased (0.7 -> 0.8)
- Force Leap explosion base hitpause decreased (12 -> 8)
- Force Leap explosion hitstun multiplier decreased (1.2 -> 0.7)
- Force Leap buffed explosion base knockback decreased (8 -> 5)
- Force Leap buffed explosion hitstun multiplier decreased (1.5 -> 0.9)
- Photon Blast hitstun multiplier decreased (1.5 -> 0.8)
");
initHeader("Visual Changes");
initSection("= Gliding stamina is now green to not confuse it's color with rune O's OD gauge
= Fixed effect color on D-strong's charge when using the golden Theïkós effects
= Theïkós F-strong will now only spawn the dusts if Bar isn't in hitpause
= Victory themes updated to fit Bar's stage music
= Win portrait, CSS art and results art updated
= BG color changed
= Mod thumbnail updated
= Some of Bar's colors are slightly altered to fit the new art
");
initHeader("Workshop Compatibilities");
initSection("+ Munophone has been updated to Munophone Touch
+ Palutena's guidance
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.2", "3/10/2021");
initHeader("Gameplay Balance Changes");
initSection("= Attacks that give Bar under 1 mp (or odp for rune O) now give 1 unit
= Rune A (Airdash) no longer stops Bar's momentum in midair
= Theïkós Bar now works in the CSS playtest
= Theïkós Bar's turbo mode now allows Bar to fastfall (i wanted to use iasa_script() but it gave me some issues)
= Theïkós F-strong angle flipper removed
= Theïkós F-strong now doesn't end the burning fury buff prematurely, and will end right after the last hit
= Both types of F-strongs are now reverseable in midair just as they are on the ground
= Theïkós D-strong ground fire kb scaling removed
= Theïkós D-strong ground fire base knockback decreased (3 -> 2.5)
= Rune J functionality changed entirely (Gauntlet melee attack damage increase -> MP gain from anyone affected by Bar's mechanics)
= Fixed bug that made Bar glitch out when using runes L and K together
= Fixed potential problems with rune K's mana cap
= Fixed issue where Bar would get the lightstun timer after getting parried from F-strong, regardless if rune C is used or not
= Disabled interraction between runes L and O, now they work indpendently of each other instead of doing the transformation
= Added new phone cheat: Mechanic Alternator (Allows you to decide if you want Bar's Holy Burning, Lightstunning, both or none to be active)
");
initHeader("Buffs");
initSection("+ Photon Blast now has a SDI multiplier (0 -> 0.7)
+ Lord's Punishment final fire launch angle flipper 7 added
+ Theïkós Bar knockback adjust decreased (0.8 -> 0.5)
+ Theïkós U-strong multihit angle altered (70 -> 80)
+ Theïkós U-strong multihit has a SDI multiplier (0 -> 0.01)
+ Theïkós U-strong multihit angle flipper added (0 -> 7)
+ Theïkós F-strong while rapid punching has a SDI multiplier (0 -> 0.01)
+ Theïkós F-strong base knockback increased (6 -> 8)
+ Theïkós F-strong kb scaling increased (0.9 -> 1.1)
+ Theïkós F-strong final hit damage on the normal form increased (3 -> 5)
+ Theïkós D-strong ground fire has a SDI multiplier (0 -> 0.01)
");
initHeader("Nerfs");
initSection("- F-strong base knockback decreased (7.5 -> 7)
- D-strong base knockback decreased (8 -> 7)
- Burning Fury dash attack damage decreased (4 -> 2)
- Burning Fury final blast damage decreased (10 -> 8)
- Burning Fury stun attack damage decreased (7 -> 5)
- Light Hookshot extended parry stun added
- Rune A (Airdash) thrust decreased (11.25 -> 9)
- Rune A (Airdash) + Theïkós thrust decreased (24 -> 12.8)
- Theïkós F-strong's final hit is now techable
- Theïkós F-strong hitstun multiplier decreased (1.5 -> 1.2)
");
initHeader("Visual Changes");
initSection("= Ember Fist sprites altered, his eye didn't glow like with all his other fire based moves
= Removed annoying message when Theïkós Bar shakes the screen with his strong charging
= Munophone now displays the name of Lord's Punishment properly on the frame data tab (Instead of ???)
");
initHeader("Workshop Compatibilities");
initSection("+ N/A
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.1", "21/9/2021");
initHeader("Gameplay Balance Changes");
initSection("= N-air sourspot added
= Burning Fury's dash attack now depends on Bar's HSP and VSP values and applies them on enemies, making it hit consistently
= Power Smash now no longer deals damage when stood on, and only applies holy fire
= Power Smash's burning crater can no longer be parried
= Light Hookshot skill cost split reversed (charge: 15 -> 5 | release: 5 -> 15)
= The timestop hitbox of Lord's Punishment (overdrive/final smash) now appears 1 frame later (creation frame 0 -> 1)
= Fixed Theía Evlogía not reverting Bar back to normal properly
= Added new phone cheat: no MP draining (will prevent Burning Fury and Guard Aura from draining MP)
");
initHeader("Buffs");
initSection("+ F-strong base knockback increased (6.5 -> 7.5)
+ F-strong knockback scaling increased (0.9 -> 1.2)
+ U-strong axe knockback scaling increased (0.7 -> 1.1)
+ D-tilt ground friction decreased on windows 1 and 2 (window 1: 0.4 -> 0.2 | window 2: 0.4 -> 0.3)
+ Burning Fury dash attack hitpause decreased (14 -> 8)
+ Burning Fury dash attack hitpause scaling (0.8 -> 0.5)
");
initHeader("Nerfs");
initSection("- N-air lifetime decreased (24 -> 2) (The 22 frames that are removed are in the new sourspot)
- U-strong spear knockback scaling decreased (0.9 -> 0.7)
- D-strong base knockback decreased for the fire blast (9 -> 8)
- Power Smash sweetspot damage decreased (10 -> 8)
- Power Smash sourspot damage decreased (8 -> 5)
- Buffed Power Smash sweetspot damage decreased (13 -> 10)
- Buffed Power Smash sourspot damage decreased (10 -> 8)
- Ember Fist MP cost increased (10 -> 20)
- Ember Fist MP window 4 time increased (14 -> 20)
");
initHeader("Visual Changes");
initSection("= N-air sweetspot is now colored yellow so you can tell when the hitboxes swap
= Broken Prism alt now has dimmer fire
= Broken Prism alt now brings out the color trail in more scenarios
= Added V1 release date to phone
= Corrected attack names for Lord's Punishment and Theía Evlogía in the Stat Debug Mode on the phone
");
initHeader("Workshop Compatibilities");
initSection("+ Rivals of Fighter super move
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("1.0", "14/9/2021");
initHeader("Gameplay Balance Changes");
initSection("= Mana Debug Mode is now a munophone cheat, and has more options than on and off
= When selecting skills, Bar is now go-throughable, and hurtbox is removed too
= In practice mode, the skill select will no longer have a timer in the begining of the match
= Disabled being able to re-open the skill select menu in training mode while it's already open
= Added stamina when gliding - Bar loses stamina as long as he glides, and restores 50 stamina when walljumping or wall-teching
= Bar's AI is now slightly smarter, he will not waste mana if he doesn't have a bit over the mana cost of the skill
= Fixed bug that made bar stay in his U-tilt animation after landing a hit and fastfalling, he now goes into landing lag instead
= U-tilt is now no longer hitfallable
= Altered how Burning Fury's buff is disabled through F-strong and D-strong - Instead of disabling on hit, they only disable when Bar has hit someone already and is no longer in the attack state
= The method charging a strong consumes mana altered, every 6 strong_charge frames Bar will consume 1 MP (Attacks affected: D-strong, Theïkós D-strong, Theïkós U-strong)
= Fixed issue where you could see Bar's light axe under the burning version on U-strong
= Fixed problem that made burning U-strong's spear not aimable like the normal version
= Added hit lockout to D-strong's flat fire blast (0 -> 20) (To prevent the shockwave and rune I rocks to deal extra damage and overwrite the knockback)
= Fixed Light Dagger's (air version) lifetime
= Light Dagger (normal ver) knockback angle adjusted (50 -> 65)
= Force Leap is now able to be controlled using up and down aswell as left and right. pressing up/back will send Bar up, and pressing down/forward will send Bar forward.
= Fixed bug that made Bar's endpoint position not reset when getting hit while using Accel Blitz
= Fixed bug that turns Bar invisible after using Accel Blitz and dying from the pratfall
= Fixed bug that makes Bar's Accel Blitz not reset it's relative position on death
= Accel Blitz's behaviour when colliding with the stage is altered, it will now push Bar out of the ground for easier recoveries
= Fixed some jank when using Accel Blitz with either Theïkós or turbo mode
= Chasm Burster's mana cost is now split to two parts: when Bar activates the attack he loses only 5 MP, but when landing he loses 25 MP
= Chasm Burster's variants are now a single move instead of 2 seperate ones
= Chasm Burster now won't spawn the bursts in midair
= Added angle flipper 3 to Guard Aura
= Guard Aura angle adjusted (361 -> 50)
= Theïkós Bar's effects have been seperated from the Divine Punishment alt, and it is now purely cosmetic
= Theïkós D-strong will now allow only one burning ground at a time
= Power Smash added
= Light Hookshot added
");
initHeader("Buffs");
initSection("+ Jab 1 range increased (width 60 -> 68 | height 28 -> 32 | X 24 -> 28)
+ Jab 2 range increased (width 72 -> 80 | height 28 -> 36 | X 26 -> 30)
+ Jab 2 knockback increased (4.5 -> 6)
+ Jab 3 range increased (width 88 -> 96 | height 42 -> 50)
+ Bar now moves further out on Jab 3 (hspeed 5 -> 7)
+ Jab 3 startlag decreased (8 -> 6)
+ D-tilt ground friction decreased (0.5 -> 0.4)
+ D-tilt range increased (width 66 -> 80 | height 36 -> 40 | X 26 -> 30)
+ F-strong range increase (width 60 -> 80)
+ Reduced friction before and while charing F-strong (0.5 -> 0.2)
+ U-strong axe attack endlag decreased (21 -> 15)
+ U-strong light spear lifetime increased (20 -> 30)
+ U-strong light spear will now aim itself towards the target's position on hit
+ D-strong knockback increased (base 8 -> 9 | scaling 1.1 -> 1.2)
+ N-air will go to it's endlag instantly if you land a hit with it
+ N-air range increased (width 60 -> 76 | height 32 -> 38 | X 24 -> 18)
+ N-air startlag decreased (6 -> 4)
+ Light dagger endlag decreased (18 -> 15)
+ Force leap's aim trajectory altered
+ Photon Blast now won't send Bar into pratfall if he hits someone with it
+ Buffed up Chasm Burster will now shoot 6 fire bursts instead of 4
+ You can now jump out of Chasm Burster while falling
+ Heavily buffed Theïkós wavedash (wave_land_adj: 1.35 -> 2.25 | wave_friction: 0.4 -> 0.2)
");
initHeader("Nerfs");
initSection("- F-tilt hitboxes lifetime decreased (sweetspot: 6 -> 2 | sourspot: 8 -> 4)
- Removed all hitstun properties from Light Dagger
- Light Dagger startup windows time increased (windows 1/5/9: 4 -> 6 | windows 2/6/10: 8 -> 10) (also applies for the air version)
- pratland duration after using force leap increased (6 -> 10)
- Decreased travel distance per frame on Accel Blitz (10 -> 8)
- Buffed Chasm Burster damage nerfed (initial hit 9 -> 7 | fire bursts 8 -> 6)
- Guard Aura active time decreased (8 secs -> 3 secs) (this does not affect the mana depletion speed)
- Guard Aura base knockback increased (5 -> 12)
- Guard Aura knockback scaling removed
- Guard Aura hitstun multiplier decreased (2 -> 0.4)
- Guard Aura extra hitpause remove
");
initHeader("Visual Changes");
initSection("- Changed skill select invincibility to attack_invince
= Bar now flashes when you have 5 seconds left when you select skills
= The training mode messages now only disappear only after you do the respective inputs instead of a pre-set timer
= Updated color of his skill icons
= Burning Fury, Force Leap, Power Smash and Ember Fist icons altered
= Changed the input button prompts on the skill select hud
= Updated respawn platform graphic
= When falling Bar is now more animated
= Added particles when Bar charges any chargeable holy fire/light attack
= Added sound effects when Bar charges any chargeable holy fire/light attack
= Added the fire effect to charged D-strong
= Updated holy burning effect
= Fixed bug that kept the foe's outline color the burning outline color when parrying an attack that's ment to burn them
= Added a recolored rock effect to match Bar's pallete instead of using the default large rock hitspark
= Light Dagger's effect is now a part of the animation itself
= Changed sound when Bar uses Burning Light Dagger
= Added particles to when Bar uses Burning Fury, as some states overwrite the outline coloring
= Added a new motion effect when using Force Leap
= Made the dust rotate along where Bar is going with Force Leap
= Fixed issue that prevented Bar's pratfall animation from playing after using Accel Blitz
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
");
initHeader("Workshop Compatibilities");
initSection("+ Neptendo jingle
+ Otto's bike bobblehead
+ Munophone support
+ Abyss Runes support
+ Final Smash
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("DELTA", "5/6/2021");
initHeader("Gameplay Balance Changes");
initSection("= Fixed bug that messed with the hurtbox if you do an attack or dodge while using the skill menu.
= Whenever the skill menu is brought up on training mode, it will reset the cursor position to Light Dagger's position
= The skill menu can loop around itself
= At the start of a match, after Bar closes the skill menu he will have invincibility for 90 frames (1.5 secs)
= Fixed bug that kept Bar in place if he finishes selecting skills before the match allows characters to move
= Jabs hitpause fixed
= All jabs angle flippers removed
= F-air hitbox arrangement altered (has 2 sourspots above and below following the animation, sweetspot in the middle)
= B-air's sourspot now sends forward instead of backwards
= F-strong back hitbox disabled
= Photon Blast angle flipper altred (8 -> 3)
= Photon Blast now resets it's charge to prevent turbo mode/Theïkós Bar to store it up
= Fixed problem with Chasm Burster's bursts staying in place if used as up special
= Accel Blitz added
= Ember Fist added
= Theïkós F-strong added
= Theïkós U-strong added
= Theïkós D-strong added
");
initHeader("Buffs");
initSection("+ Dash speed increased
+ All jabs hitstuns reduced
+ Jab 3 overall speed increased (startup: 6 -> 4 | attack: 8 -> 6 | endlag: 10 -> 8)
+ Jab 3 knockback angle altered (10 -> 40)
+ Jab 4 knockback angle adjusted (10 -> 30)
+ Jab 4 overall speed increased (startup: 12 -> 8 | attack: 10 -> 8 | endlag: 12 -> 8)
+ F-strong hitbox size increased (30x50 -> 60x40)
+ U-tilt sourspot base hitpause increased (3 -> 6)
+ D-tilt hitpause scaling added (0.2)
+ N-air base hitpause increased (4 -> 5)
+ U-air base hitpause increased and hitpause scaling added (base hitpause: 4 -> 6 | hitpause scaling: 0.2)
+ D-air knockback scaling increased (0.7 -> 0.9)
+ D-air's startup is slightly faster so it can chain with accel blitz (15 -> 12)
+ U-strong's 2nd projectile (normal version) knockback and knockback scaling increase (base kb: 5 -> 7 | kb scaling: 0.7 -> 0.9)
+ U-strong's 2nd projectile (burning version) kb scaling increase (0.8 -> 1.1)
+ U-strong's 2nd projectile size increase (8x40 -> 16x60)
+ U-strong's 2nd projectile is now aimable
+ Light Dagger knockback increased (3 -> 5)
+ Light Dagger extra hitpause added (4)
+ Chasm Burster air friction decreased (0.3 -> 0.1)
+ Added a soft spike hitbox when Bar starts to fall with chasm burster active
+ Taunt hitbox size increased (x:16 y:16 -> x:24 y:32)
+ Taunt lifetime increased (1 -> 2)
+ Theïkós Bar's Force Leap doesn't go into pratfall 
");
initHeader("Nerfs");
initSection("- Jab now locks people inside it less
- F-air sourspot lifetime decreased (6 -> 4)
- F-air sweetspot base knockback decreased (7 -> 5)
- D-air sweetspot base knockback decreased (9 -> 6)
- F-strong is no longer turnable
- Uncharged Photon Blast startup increased (14 -> 25) (excluding Theïkós Bar)
- Chasm Burster projectile damage decreased (normal: 6 -> 4 | burning fury buffed: 11 -> 8)
- Added parry stun to Chasm Buster
- Guard Aura is active 8 seconds, and will not do the counter attack automatically (consumes 50 MP total)
- taunt damage decreased (12 -> 10)
- Theïkós Bar initial dash speed and dash speed nerfed to be more controllable
");
initHeader("Visual Changes");
initSection("= A frame in U-strong's animation was altered to portray the hitboxes better
= Added colored hitboxes (to moves that aren't projectiles)
= Fixed visual bug where Guard Aura on Theïkós Bar will not show the hitspark when releasing the move
= Added custom hit particles to moves that spawn hitboxes outside of the attack itself
= Bar's gauntlet glow take the color of his light, rather than his light blue clouthes on the portraits
= Renamed NES alt to Demake
= Early Acess and Demake alts now have a chiptune version of Bar's victory theme
= Fiery Racing Spirit alt colors altered
= Renamed Star Guardian alt to Stellar Traveller
= Added 16 new alts
= Holy Fire on the Divine Punishment alt portrait altered to match the in-game pallete
= Camera shake increased on Theïkós Bar dash start
= Camera shake while landing with Theïkós Bar only occurs on fastfalling
= Camera shake added when charging strongs with Theïkós Bar
= Added outline to Theïkós Bar's ancient text
");
initHeader("Workshop Compatibilities");
initSection("+ Soulbound conflict flavor text
+ Callie date dialogue
+ Green Flower Zone signpost
+ Assist Buddy compatibility
");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
initPatch("GAMMA", "23/4/2021");
initHeader("Gameplay Balance Changes");
initSection("= Double jumps now work like his first jump
= Gliding will now only make Bar change direction if he goes at max speed
= Mana Debug Mode's natural MP regen speed doubled
= F-tilt hitboxes are bigger and deal more identical values
= Fixed Burning Fury's rapid mana deplete if people are hit durring the initial activation
= Force Leap stalls in midair before the leap
= Photon Blast connects properly
= B-air added
= F-strong added
= U-strong added
= D-strong added
= Skill Select added
= Chasm Burster added
= Guard Aura added
");
initHeader("Buffs");
initSection("+ Re/spawning MP value buffed (0 -> 100)
+ A successful Parrying gives more mana (10 -> 25)
+ All moves damage increase (too many to point out here tbh)
+ Jab 1 hitpause increase
+ Jab 1 is faster
+ Jab 1 friction decreased
+ Jab 2 is faster
+ Jab 2 hitpause decreased
+ Jab 3 is faster
+ Jab 3 hitpause decreased
+ F-tilt has slightly less friction on the first window
+ D-tilt is faster
+ D-tilt friction decreased
+ N-air stays active for longer
+ N-air is faster
+ N-air deals more knockback
+ F-air hitboxes size increase
+ F-air has an extra sweetspot hitbox
+ F-air hitpause decreased
+ U-air is faster
+ D-air hitboxes size increase
+ D-air sourspot deals more knockback
+ Light Dagger knockback and hitstun increased (Burning Light Dagger too)
+ Burning Fury activation attack hitpause decreased
+ Burning Fury activation and dash attack startup speed increase
+ Burning Fury dash attack is untechable
+ Burning Fury stun attack hitbox size incrase
+ Burning Fury final blast on the grounded version launches slightly upwards
+ Photon Blast final hit knockback increase 
");
initHeader("Nerfs");
initSection("- MP gain while attacking decreased to match the new damage output
- Theïkós Bar is actually killable
- Theïkós Bar dash speed decreased
");
initHeader("Visual Changes");
initSection("= Bar's offsets now overlap with the stage as they should
= Bar's idle is now slightly slimmer to fit the rest of his sprites
= Light Dagger has hit sound effects now
= Burning Fury's activation blast is now in front of Bar
= Force Leap has a new leap sound
= Added mini mana gauge that shows up whenever Bar gains mana, de/activate Mana Debug Mode, and when MP is insufficient
= No MP now says Low MP and the arrow under his nametag flashes
= When Bar has insufficient mana a sound will play
= Added sound effect for when Bar runs out of mana with Burning Fury
= Holy Burned foes will now gt different colored outlines depending on Bar's alt
= Replaced the Mysterious Friend with the Fiery Racing Spirit alt
= Added unique alt names for seasonal alts
");
initHeader("Workshop Compatibilities");
initSection("+ Steve death messages
+ Moonchild song
+ Last Resort painting
+ TCO drawings
");
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

CHEAT_MPDRAIN = initCheat("No Mana Drain", [0, 1], ["Off", "On"], "Disables the MP drain from skills like Burning Fury and Guard Aura");

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