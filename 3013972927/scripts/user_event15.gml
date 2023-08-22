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
num_alts = 30;

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
muno_char_name = "Chai";

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

initTip("Who is Chai? Overview");
initWords_ext("Biography", fa_center, c_gray, 0, false);
initWords("Chai, a self-proclaimed future rock star, is a slacker with larger-than-life ambitions, Chai's life is turned upside down when a botched corporate experiment accidentally gives him musical robot powers.");
initWords("Labeled a defect, Chai will have to rely on his pals, including his mechanical cat assistant 808, to fight back against the megacorp looking to 'recall' him.");
initWords_ext("Gameplay", fa_center, c_gray, 0, false);
initWords("Chai is a rushdown combo heavy character that has access to a unique beat map mechanic which enhances his abilities when you play to the rhythm! Similar to his original game Hi-Fi Rush, playing to the beat is key to bringing out his true potential!");
initImage_ext(sprite_get("intro"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
//initWords("However, while the Water Merchants denounce Sandbert in public, they do not hesitate to call upon him when they need a situation dealt with quietly. Sandbert is sly and can infiltrate even the most secure strongholds. He can transform into water and confuse enemies with a spray of bubbles, making him the perfect candidate for stealth assignments.");

initTip("GIMMICK: Beat Hit");
initWords_ext("Description", fa_center, c_gray, 0, false);
initWords("Equipped with musical robot powers, Chai can harness the rhythm of the world to enhance his abilities in battle! By timing attacks or even a dash to the beat, Chai will perform the action with enhanced properties ranging from more damage, hitstun, combo potential, range, or more hits! Try to keep the beat up!");
initWords("For his RoA incarnation Chai plays to the beat of the stages. Depending on the stage he’s fighting on, the BPM changes according to the stage’s theme BPM! ONLY works on base stages however. Take note of the icon located on the HUD and even on the 808 Orb trailing Chai for cues on when to land the hit!");
initWords_ext("Special Notes", fa_center, c_gray, 0, false);
initWords("Enabling the Music Note toggle on the CSS sets the BPM to a fixed 130 BPM, keeping things more consistent. Make sure to disable if you want Chai’s BPM to change according to the stage.");
initImage_ext(sprite_get("c808"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords_ext("Stage BPMs:", fa_center, c_gray, 0, false);
initWords("
'Treetop Lodge' = 'BPM: 150' 
'Fire Capital' = 'BPM: 140' 
'Air Armada' = 'BPM: 170'
'The Rock Wall' = 'BPM: 135' 
'Merchant Port' = 'BPM: 140' 
'Blazing Hideout' = 'BPM: 145'
'Tower of Heaven' = 'BPM: 140' 
'Tempest Peak' = 'BPM: 160' 
'Frozen Fortress' = 'BPM: 140'
'Aetheral Gates' = 'BPM: 150' 
'Endless Abyss' = 'BPM: 150' 
'The Spirit Tree' = 'BPM: 120'
'Neo Fire Capital' = 'BPM: 160' 
'Swampy Estuary' = 'BPM: 166' 
'The Forest Floor' = 'BPM: 165'
'Junesville' = 'BPM: 140' 
'Trouple Pond' = 'BPM: 186' 
'Practice Room' = 'BPM: 130'
'Aether High' = 'BPM: 129' 
'Pridemoon Keep' = 'BPM: 139' 
'Frozen Gates' = 'BPM: 144'
'The Tutorial Grid' = 'BPM: 130' 
'ROA Ring' = 'BPM: 125' 
'Neo Blazing Rail' = 'BPM: 150'
'Neo Julesville' = 'BPM: 150' 
'Crystal Oasis' = 'BPM: 150' 
'Diamond Groove' = 'BPM: 150'
'CEO Ring' = BPM 125 'Badger Co Mines' = BPM 140 'Tutorial Grid X' = BPM 130 
");

initTip("NSpecial: Magnet Hand");
initWords("Chai shoots out his Magnet Hand from his robot arm to latch onto opponents he aimed onto. Freezes him in the air when performed and the player can aim in any direction before firing.");
initWords("Pressing the SPECIAL button again or SHIELD button during aiming will immediately fire the Magnet Hand.");
initWords("Use this ability to catch your foes off guard, they won't know what hit them! (Also what comes after!)");
initImage_ext(sprite_get("nspecial"), -4, fa_center, -1, 1, true, c_white, 1, true, noone, noone, noone, noone);
//initImage_ext(sprite_get("nspecial"), -4, fa_left, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Staccato Launch");
initWords("Chai charges up his energy to perform a horizontal moving strike. The longer the charge, the further the launch distance. Timing the launch to the beat will send Chai even further and do more damage and hit pause. ");
initWords(" Holding either up or down and pressing attack will lead into a Up-tilt or Forward-Tilt follow up.");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: Harmonic Beam");
initWords("Chai strums his guitar and shoots an harmonic beam downward which launches him in the opposite direction. Pressing SPECIAL or SHIELD during the move will instantly perform the launch.");
initWords("There's 3 different versions to the attack depending on the timing from the SPECIAL or SHIELD press.");
initWords("No timing leads to the normal version, missed timing launches Chai at a smaller rate, Beat Hit timing launches Chai further and with increased damage.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: Assist Call");
initWords("Chai calls upon his crew to help him in the middle of battle. Each party member comes with their own unique attacks for different situations and each summon cycles the list to the next member in order!");
initWords_ext("Peppermint", fa_center, c_gray, 0, false);
initWords("Shoots a volley of bullets at the opponent in a straight line. Useful for getting closer to an opponent or halting their movement. Beat Hit version shoots an additional 4 bullets at a faster rate.");
initImage_ext(sprite_get("assist_pmnt_attack"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords_ext("Macaron", fa_center, c_gray, 0, false);
initWords("Macaron slams down a massive strike that stuns the opponent on contact. Useful as a combo starter. Beat Hit version speeds up the start up and increases damage slightly.");
initImage_ext(sprite_get("assist_mac_attack"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords_ext("Korsica", fa_center, c_gray, 0, false);
initWords("Summons 2 gusts of wind that sends the opponent flying. Beat Hit version increases the damage, speed, and knockback values");
initImage_ext(sprite_get("assist_kor_attack"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Jab: 3-Hit Combo (Progressive)");
initWords("3-hit light attack combo. Chai does an overhead strike, side slash, and another side slash. Timing each press to the beat increases the damage and hit stun.");
initWords("Can be canceled into Ftilt, Dtilt, or Utilt at any stage");
initWords("Normal Damage Total: 3% + 3% + 3% = 9%
	Beat Hit Damage Total: 4% + 3% + 3% = 10%
");
initImage_ext(sprite_get("jab"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Ftilt: 3-Hit Combo (Alternative)");
initWords("3-hit heavy attack combo. Similar to the original game, Chai does a slow swipe, lunging stab, into a launching swing. Timing each button press to the beat increases the damage, hit stun, and decreases the end lag of each attack.");
initWords("Great for confirming into kills and closing out a stock but be wary of its slow start up");
initWords("Normal Damage Total: 5% + 4% + 5% = 14%
	Beat Hit Damage Total: 6% + 5% + 6% = 17%
");
initImage_ext(sprite_get("ftilt"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Utilt: Air Launcher");
initWords("Launcher swing that has Chai jumping to follow the opponent. Hits 2 times. Can be used as a combo starter into aerial attacks or be used as a combo extender from grounded attacks such as Jab or F-Tilt.");
initWords("Landing the move on beat will increase the move’s hit pause and lessen start up, allowing follow-up combos to connect much easier.");
initWords("Normal Damage Total: 4% + 1% = 5%
	Beat Hit Damage Total: 4% + 1% = 5%
");
initImage_ext(sprite_get("utilt"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Dtilt: Sweeeeep!");
initWords("Chai performs a quick sweep on the ground that slightly launches opponents and slightly moves Chai forward. Good for a quick low hitting move for continuing combos as it launches opponents slightly into the air for follow-ups.");
initWords("Beat hit version increases damage slightly and launches them slightly further up");
initWords("Normal Damage Total: 5%
	Beat Hit Damage Total: 5%
");
initImage_ext(sprite_get("dtilt"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Nair: 3-Hit Combo (Grunge)");
initWords("Chai performs a 3-hit combo in the air. Landing each hit leads into the other so make sure you’re near the opponent for the combo to finish.");
initWords("Beat hit version increases the damage and hit pause of the move, allowing for much easier combo follow-ups.");
initWords_ext("Unique Property", fa_center, c_gray, 0, false);
initWords("The attack can be canceled into a jump once you land a hit with any stage of the move. Very useful for continuing the combo or getting out of the way of a tight situation ");
initWords("Normal Damage Total: 2% + 3% + 5% = 10%
	Beat Hit Damage Total: 3% + 4% + 6% = 13%
");
initImage_ext(sprite_get("nair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Fair: Tremolo");
initWords("Chai performs a 3-hit lunging combo in the air. Unlike the other 3-hit attacks, this one is automatically performed and sucks in the opponent with the first hits then finishes with a larger knockback one at the end.");
initWords(" Beat hit version increases the damage and hit pause of the move.");
initWords("Normal Damage Total: 2% + 2% + 4% = 8%
	Beat Hit Damage Total: 3% + 3% + 5% = 11%

");
initImage_ext(sprite_get("fair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Uair: Air Guitar");
initWords("Chai swipes upward in an arc, launching enemies skyward. Useful for finishing combos or needing to fight anyone coming from above.");
initWords("Beat hit version increases damage, knockback, and hit pause of the move.");
initWords("Normal Damage Total: 7%
	Beat Hit Damage Total: 8%
");
initImage_ext(sprite_get("uair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Bair: Guitar in the Cloud");
initWords("Chai slashes behind him to knock them away. Great for doing fast, launching pokes on enemies coming in.");
initWords("Beat hit version increases damage, knockback, and hitpause");
initWords("Normal Damage Total: 7%
	Beat Hit Damage Total: 8%
");
initImage_ext(sprite_get("bair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Dair: Breakdown");
initWords("Chai halts his momentum and performs a falling slash that drags down opponents. Able to spike on the first few frames of activation and at a close range, otherwise the spike turns into a soft spike.");
initWords("Beat hit version decreases startup of the move.");
initWords_ext("Unique Property", fa_center, c_gray, 0, false);
initWords("The attack can be canceled into a jump at any point while falling or even hitting the opponent. However, this can only be performed once until the player lands back on the ground.");
initWords("Extremely useful for escaping dangerous situations or to perform various mix ups");
initWords("First Hit Damage Total: 6%
	Rest of the move Damage Total = 5%
");
initImage_ext(sprite_get("dair"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Dattack: Dash Attack");
initWords("Chai performs his light dash finisher from the original game, hitting the enemy a total of 2 times. Beat hit version increases damage");
initWords_ext("Unique Property", fa_center, c_gray, 0, false);
initWords("Can be canceled on the first hit into either UP TILT or FORWARD TILT by pressing Up + Attack or Down + Attack respectively.");
initWords("Normal Damage Total: 4% + 5% = 9%
	Beat Hit Damage Total: 5% + 5% = 10%
");
initImage_ext(sprite_get("dattack"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FStrong: Humbucker");
initWords("Chai charges up his guitar then proceeds to jump into the air in order to slam back down at the opponent, conjuring a pillar of musical energy that launches them afterward.");
initWords("Letting go of the strong charge on beat allows Chai to activate its Beat Hit version. Beat Hit version increases damage, knockback, and hit pause.");
initWords("This data refers to a NO CHARGE attack
Normal Damage Total: 4% + 11% = 15%
	Beat Hit Damage Total: 4% + 8% = 12%
");
initImage_ext(sprite_get("fstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("UStrong: Hi-Pitch Punch!");
initWords("Chai charges up energy within his robot arm and jumps upward in a very familiar looking martial arts uppercut move. Makes Chai jump into the air when active.");
initWords("Letting go of the strong charge on beat allows Chai to activate its Beat Hit version. Beat Hit version increases damage, knockback, and hit pause.");
initWords("This data refers to a NO CHARGE attack
Normal Damage Total: 10%
	Beat Hit Damage Total: 12%
");
initImage_ext(sprite_get("ustrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DStrong: HIBIKI");
initWords("Chai performs his HIBIKI spin move that hits 3 times total all around him.");
initWords("Letting go of the strong charge on beat allows Chai to activate its Beat Hit version. Beat Hit version increases the amount of hits by 1 ");
initWords("This data refers to a NO CHARGE attack
Normal Damage Total: 2% + 2% + 12% = 16%
	Beat Hit Damage Total: 2% + 2% + 2% + 12% = 18%
");
initImage_ext(sprite_get("dstrong"), -4, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
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

initPatch("1.9", "8/20/2023");
initHeader("Another UPDATE (Small but Big)");
initSection("*** = Major change

*** Added Muno Phone compatability! This'll help with accessing information such as Chai's move set, what they are used for, frame data, and much more!
*** Changed how the CSS BPM Toggle icon is portrayed. The new look now shows ON when you have Stage BGM BPM set and OFF when you want a stable 130 BPM!
");

initPatch("1.8", "8/8/2023");
initHeader("HOT FIX UPDATE! ");
initSection("Sorry for the frequent update but seemed like the BPM feature wasn't working properly. This patch will fix it slightly and make the speed change more apparent.
*** = Major change

***BPM adjustment to Base game Stages have be tuned to better match their song speeds
***Added a CSS button that allows you to toggle the Base Stage BPM change or to stay at a constant 130 BPM!
	Click the Music note icon on the CSS to enable or disable. Disable will set BPM to 130 when match starts
");
initHeader("Notes: ");
initSection("Added base stages that were missing in the initial patch:
	- CEO Ring = BPM 125
	- Badger Co Mines = BPM 140
	- Tutorial Grid X = BPM 130
Bug fixes:
- Fixed Assist Call HUD showing the wrong order of assists when on Korsica (Mac was placed on the 2nd slot)
- Fixed issue with restarting a match with Chai causes the game to crash

Attacks:

FStrong:
	- Increased Knockback scaling on Beat Hit
		- From .8 to 1.1
UStrong:
	- Adjusted Knockback scaling on Beat Hit
		- From .8 to 1.1");

initPatch("1.5", "8 / 7 / 2023");
initHeader("A huge change but small patch");
initSection("
*** = Major update stuff

Overall:

*** Added the ability to change the BPM function to be adjusted to a base stage's music!
	- On by default, if you want to revert to a more stable BPM then hold Right + press Taunt in the match!
	- When on a custom stage, BPM defaults to an approximate 130 BPM");
initHeader("Notes: ")
initSection("Aesthetics:
	-Adjusted the y-position of Magnet Hand coolbar by 5 pixels

Attacks:

FStrong:
	- Increased the knockback of attack
		+ From 7 to 9
		+ Beat Hit: From 9 to 11
UStrong:
	- Increased the knockback of attack
		+ From 8 to 10
		+ Beat Hit: From 9 to 11");
initHeader("BPM changes: ")
initSection("Compatible with all BASE STAGES.
'Treetop Lodge' + 'BPM: 150'
'Fire Capital' + 'BPM: 140'
'Air Armada' + 'BPM: 170'
'The Rock Wall' + 'BPM: 135'
'Merchant Port' + 'BPM: 140'
'Blazing Hideout' + 'BPM: 145'
'Tower of Heaven' + 'BPM: 140'
'Tempest Peak' + 'BPM: 160'
'Frozen Fortress' + 'BPM: 140'
'Aetheral Gates' + 'BPM: 150'
'Endless Abyss' + 'BPM: 150'
'The Spirit Tree' + 'BPM: 120'
'Neo Fire Capital' + 'BPM: 160'
'Swampy Estuary' + 'BPM: 166'
'The Forest Floor' + 'BPM: 165'
'Junesville' + 'BPM: 140'
'Trouple Pond' + 'BPM: 186'
'Practice Room' + 'BPM: 130'
'Aether High' + 'BPM: 129'
'Pridemoon Keep' + 'BPM: 139'
'Frozen Gates' + 'BPM: 144'
'The Tutorial Grid' + 'BPM: 130'
'ROA Ring' + 'BPM: 125'
'Neo Blazing Rail' + 'BPM: 150'
'Neo Julesville' + 'BPM: 150'
'Crystal Oasis' + 'BPM: 150'
'Diamond Groove' + 'BPM: 150'");

initPatch("1.4", "8/5/2023");
initHeader("1st big balance");
initSection("A rather big patch fix this time.
*** = Major change

***Added in change log compatability!***
- Don't want to always check the steam workshop for updates? Then just go into playtest and check it there!


Discovered some issues with some moves and got some feedback in terms of balancing!

Jab:
	- Adjusted animation to make the move much smoother looking
	- Adjusted the start up frames for each part of the move
		- Jab 1: Frame 11 to Frame 6 (Current)
		- Jab 2: Frame 28 to Frame 26
		- Jab 3: Frame 50 to Frame 46
	- Changed base knockback of move
		- Jab 1: Knockback from 3 to 4
		- Jab 2: Knockback from 3 to 4
	- Adjusted end lag of move to better help with timing Beat Hits
		- End lag increased from 8 to 10 for each jab

FTilt:
	- Fixed hitbox of FTilt 1 from appearing before the animation entails
	- Adjusted the start up frames for each part of the move
		- FTilt 1: Frame 13 to Frame 10
		- FTilt 2: Frame 39 to Frame 37
		- FTilt 3: Frame 65 to Frame 63
	- Changed hitbox height on FTilt 2 from 38 to 40
	- Increased hitbox Y-Pos on FTilt 3 by 5 pixels higher

DTilt:
	- Can now cancel move on hit
	- Adjusted the start up of move
		- From Frame 10 to Frame 7
	- Adjusted end lag (whiff) of move
		- From 10 (14) to 11 (15)

UTilt:
	- *** Overhauled UTilt by changing the move from doing 1 hit to 2 hits ***
	- Knockback values for UTilt 1 adjusted to accomedate Utilt 2 being added
	- Adjusted the start up frames for each part of the move
		- UTilt 1: Frame 12 to 10 
		- Utilt 2: Frame 19
	- Adjusted end lag (whiff) of move
		- From 5 (9) to 4 (8)
	- Adjusted angle from 90 to 100 respectively, allowing much easier air follow ups
Nair:
	- Adjusted start up frames
		- Nair 1: Frame 11 to Frame 10
	- Adjusted angle from 80 to 90
	- Knockback scaling adjusted:
		- Nair 1: .2 to .3
		- Nair 2: .2 to .3

Bair:
	- Changed Beat Hit SFX so that it differs from the normal hit

Uair:
	- Changed Beat Hit SFX so that it differs from the normal hit

Dair:
	- Changed Beat Hit SFX so that it differs from the normal hit

UStrong:
	- Fixed the animation being mistimed when Chai starts the jump part of the move
		- Adjusted the window and animation timing to accomedate this change.
	- Chai's Voice now only says 'HIGH PITCH PUNCH!' when he does the Beat Hit version of UStrong

NSpecial (Magnet Hand):
	- Increased hit pause on tether slam from 8 to 10

FSpecial (Staccato Launch):
	- Decreased the width of hitbox on slash from 90 to 60

USpecial (Harmonic Beam):
	- Fixed bug where timing the Beat Hit has a chance to overlap sound effects, leading to a loud volume burst of SFX

DSpecial (Assist Call):
	- Peppermint:
		- Adjusted bullet spawn height to be higher by 10 pixels");
		
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
// Works kind of similarly to Trummel codecs.
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