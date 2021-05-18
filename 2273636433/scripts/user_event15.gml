// Muno template - [CORE] user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user unless you want to specially
 * modify the template. (It's open source, but I'll be sad if you remove my
 * attempts at standardization)
 */



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Update Code			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

if ("phone_inited" in self && phone_inited){

	/*
	 * update.gml Code - this runs every frame, edit the below sections as you
	 * see fit.
	 */
	
	
	
	/*
	 * Below are 3 custom entries for the Print Debug setting in the Settings
	 * app. You can replace the "url"s with any constant, variable, or function
	 * to monitor it when that setting is enabled.
	 */
	
	phone_custom_debug = [
		"woag",
		"woag",
		"woag"
		];
	
	
	
	/*
	 * Char compatibility code below; find EVEN MORE lower down in the file
	 */
	 
	 
	
	// Copy Ability
	
	if pho_has_copy_power{
		// no
	}
	
	
	
	// Break the Targets data
	
	if pho_has_btt_layout{
		// no
	}
	
	
	
	// Amber
	
	if pho_has_amber_love{
		// no
	}
	
	exit;
}


/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility Setup	                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

/*
 * This code runs from the CSS, as well as from the character itself.
 * 
 * The pho_has_something variables are for compatibility badges, which display
 * if your character has certain compatibilities.
 * 
 * By default, only the "gameplay-relevant" badges appear. The rest appear
 * only when the 0 key is held on the keyboard. So, don't worry about
 * cluttering the screen; include ALL compatibilites your character has,
 * for user convenience!
 * 
 * Enabling these flags ALSO enables the template code for each compatibility
 * (found within this very file).
 */

// Gameplay-relevant, and codecs because im biased :>
pho_has_muno_phone = 1;	// MunoPhone support		(should always be 1, obviously...)
pho_has_trum_codec = 1;	// Trummel & Alto codec
pho_has_copy_power = 1;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 1;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 1; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 1; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 1; // Portrait for the Last Resort stage
pho_has_pkmn_image = 1; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 0; // Dialogue for the Daroach boss fight



if (object_index == asset_get("cs_playerbg_obj")){
	num_alts = 16; // Number of alt costumes; controls how many appear on the CSS
	exit;
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ General Character Info                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

muno_char_name = get_char_info(player, INFO_STR_NAME);	// Name of the character, used for the MunoPhone - and also free to be used by other mods
muno_char_name = "Dr. Melee Mario";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = 0;
phone.shader = 0;

phone.dont_fast = 1;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.
phone_lightweight = 1;									// Set to 1 to disable certain features, possibly improving performance a little bit. See _readme.gml.
phone.frame_data_loaded = 0;							// Set to 1 to disable the frame data guide, which MIGHT improve performance on bad computers? (This is just a guess. It has no impact on code run during gameplay, but gets rid of a TON of data stored in memory in Practice Mode...)



// Sprites (you could also include things like these in init.gml if you like)

spr_nspecial_proj = sprite_get("nspecial_proj_colorcombo");
spr_nspecial_proj2 = sprite_get("nspecial_proj_colorcombo2");
spr_nspecial_proj3 = sprite_get("nspecial_proj_colorcombo3");
spr_nspecialk = sprite_get("kirbyability");
/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Tips					                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	j = 0;
	
	/*
	 * Tips are hints or instructions on how to play the character. They range
	 * from one-sentence descriptions to pages-long tutorials. You can also
	 * embed images and formatted text.
	 * 
	 * initTip(name)
	 * initTipWords(text)
	 * initTipImage(sprite, frame, align, xscale, color, gimmick)
	 * initTipWords_ext(text, align, color, indent, gimmick)
	 * initTipImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * NOTE: indent = a number of "tabs", not a number of pixels
	 * 
	 * To place two consecutive elements side-by-side, they must meet the
	 * following conditions:
	 * - The second element must not be text
	 * - The width of the two elements must not exceed the page width
	 * - One element must be left-aligned, and the other right-aligned
	 * 
	 * NOTE: For images, set frame to a negative number and it will animate the
	 * sprite at that rate. E.g. set to -3, each anim frame will last 3 frames.
	 * 
	 * Another image-related note: the placement for images is calculated based
	 * on the BORDERS of the sprite. Two consequences:
	 * - The offset of the sprite (load.gml) has NO effect.
	 * - If your sprites are made with a lot of transparent empty space around
	 *   the actual content (like mine are), it'll have that much extra space
	 *   around it in the tip.
	 * 
	 * To fix the second bullet point, use initTipImage_ext(), with the four
	 * extra "border_" arguments representing the distance FROM THE SPRITE'S
	 * OFFSET (as defined in load.gml) to "cut off" the sprite in each of the
	 * four directions. E.g. if your sprite's actual content is all contained
	 * within these distances from the sprite offset:
	 * - 100 to the left
	 * - 20 to the right
	 * - 50 up
	 * - 0 down
	 * 
	 * ...then the last 4 arguments should be 100, 20, 50, 0. It basically crops
	 * the sprite
	 * 
	 * Lastly, the "gimmick" is a special effect that you can apply to an
	 * element. Here's the list of implemented gimmicks:
	 * - 0: Nothing
	 * - 1: Shaking
	 * - 2: Scrolling left
	 * - 3: Scrolling right
	 * - 4: Ignore vertical scroll (always placed at top of screen)
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	
	initTip("NSpecial: Megavitamins");
	initTipWords("Each one sends a different angle and does a slightly different amount of damage.");
	initTipWords("They are thrown with a special kind of RNG that prevents you from repeating specific Megavitmins.
	Every 6 thrown Megavitamins, a new batch of random megavitamins are selected.");
	initTipWords("Taunt alows you to skip to the next megavitamin skipping its usual cooldown. Hold shield to have a regular taunt instead.");
	initTipWords("You can also interact with your own Megavitamins with your Specials and Strong attacks.");
	
	initTip("Megavitamin: Patterns");
	initTipWords("There is also a little pattern with the Megavitamin colors:
	Red send in
	Blue send out
	Yellow sends up
	
	Different colors Megavitamin do more damage
	Same color Megavitamin do more knockback");
	initTipImage(player_id.spr_nspecial_proj, 1, fa_center, 1, c_white, 0)
	initTipImage(player_id.spr_nspecial_proj2, 1, fa_right, 1, c_white, 0)
	initTipImage(player_id.spr_nspecial_proj3, 1, fa_left, 1, c_white, 0)
	initTipImage(player_id.spr_nspecial, -10, fa_center, 1, c_white, 0);
	
	initTip("Megavitamin: Kirby");
	initTipWords("Kirby's version of Megavitamins works a bit differently. 
	Kirby only copies the next Megavitamin in the queue and keeps it forever.
	For Kirby to change the Megavitamin he has to lose his ability and re-inhale Dr. Mele Mario
	
	Everything else Dr. Melee Mario's Megavitmin, Kirby copies.");
	initTipImage(player_id.spr_nspecialk, -5, fa_center, 1, c_white, 0);
	
	initTip("Fspecial: Super Sheet");
	initTipWords("Just like this move's smash origin, you can reflect projectiles and turn your opponent arround. 
	Hitting this move on Megavitamin makes the Megavitamin do slighty more knockback and move faster.");
	initTipImage(player_id.spr_fspecial, -5, fa_center, 1, c_white, 0);
	
	initTip("Uspecial: Super Jump Punch");
	initTipWords("This move is a little bit different. This move has 3 hitboxes, the early, middle, and late. The late one is the strongest and in order to get it you need to land the early hitbox. 
	This is a bit more like Mario's Super Jump Punch in the sense you need to connect it but unlike Mario's Super Jump Punch, Dr. Melee Mario's is more of a command grab from 1st hit to the 2nd. The third/late hit is the weakest hit out of all.");
	initTipImage(player_id.spr_uspecial, -5, fa_center, 1, c_white, 0);
	
	
	initTip("Dspec: Dr. Tornado");
	initTipWords("This move is relatively the same as its Smash origin. 
	Two main things to note is that you can hold or mash to gain more hight and landing this move on your megavitamin slightly increases both damage and knockback. 
	Also hitting megavitamin with this move makes the megavitamin bounce and linger for a little while.
	
	Something else to note is that you only get one hight boost per down special unless you wall jump, get hit, or double jump
	
	You can also hold down during active frames to psudo fast fall this move but this gets over writen by holding/mashing.");
	initTipImage(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0);
	
	initTip("Strong Attacks: Megavitamins");
	initTipWords("The strongs are the familiar smash versions, but the main difference is that you they interact with Megavitamin:

	Fstrong: Stuns the Megavitamin in place and brings it closer to the center of the spark. Charging the strong attack increases stun time.
	
	Dstrong: Makes the Megavitamin roll on the ground. Charging the strong attack increases rolling speed.
	
	UStrong: Sends the Megavitmin soaring upwards! Charging the strong attack increases the launch distance.
	
	The Strongs also change the power of pills");
	initTipImage(player_id.spr_fstrong, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_dstrong, -5, fa_right, 1, c_white, 0);
	initTipImage(player_id.spr_ustrong, -5, fa_center, 1, c_white, 0);
	
	initTip("Nair");
	initTipWords("Nair is a sex kick like Mario's Nair but unlike that move the sweetspot is the late hit and the weak hit is the early hit.
	damage goes from 6 to 8
	and base knockback goes from 6 to 9");
	initTipImage(player_id.spr_nair, 2, fa_center, 1, c_white, 0);
	
	
	initTip("Dair");
	initTipWords("Dair is a multi hit like from melee but it also takes properties from Dr. Mario's Dair in Super Smash Bros Ultimate. Because of this the last hit sends down and slightly out.");
	initTipImage(player_id.spr_dair, -5, fa_center, 1, c_white, 3);
	
	initTip("Uair");
	initTipWords("Uair is a move that is ment to be used as a juggle tool to help you get damage off and combo into uspecial. 
	The late hit also sends in so keep that in mind when using this move.");
	initTipImage(player_id.spr_uair, -5, fa_center, 1, c_white, 0);
	
	initTip("Fair");
	initTipWords("Fair is a lot like Mario's Fair but unlike that move this move trades the spike hitbox for a more powerful move. 
	Because of this you can use this move to finish stocks off.
	The late hits are sourspots and the early hit is the sweetspot.");
	initTipImage(player_id.spr_fair, -5, fa_center, 1, c_white, 0);
	
	initTip("Bair");
	initTipWords("Since in every Smash Bros game Dr. Mario is in Bair does everything we decided to make Bair more of a poke move you can use in neutral.
	Because of this, Bair is a fast option that is also weak.
	Bair has a sweetspot on the early hit and the late hit is a sourspot.");
	initTipImage(player_id.spr_bair, -5, fa_center, 1, c_white, 0);
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Patch Notes			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	
	/*
	 * Patch notes are patch notes. Inform players on what's changed since they
	 * last played the character. If you want, you can just paste the changelogs
	 * from your Steam page or etc.
	 * 
	 * initPatch(name)
	 * initPatchWords(text)
	 * initPatchImage(sprite, frame, align, xscale, color, gimmick)
	 * initPatchWords_ext(text, align, color, indent, gimmick)
	 * initPatchImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * The formatting is exactly the same as with tips. Just replace "Tip" with
	 * "Patch" in the function calls, and instead of a name for the patch,
	 * put the version number and full date.
	 */
	
	initPatch("1.44", "17 May, 2021");
	initPatchWords("Bair")
	initPatchWords_ext("Start Up Decreased (9 > 8)", fa_left, c_gray, 1, 0);
	initPatchWords("Dair")
	initPatchWords_ext("Start Up Decreased (13 > 12)", fa_left, c_gray, 1, 0);
	initPatchWords("SFX timing fixed")
	
	initPatch("1.43", "7 May, 2021");
	initPatchWords("Uair")
	initPatchWords_ext("Increased scaling for all hits - .35 > 4", fa_left, c_gray, 1, 0);
	initPatchWords("Final smash")
	initPatchWords_ext("Fixed a bug", fa_left, c_gray, 1, 0);
	initPatchWords("Miiverse")
	initPatchWords_ext("added one more lol", fa_left, c_gray, 1, 0);
	initPatchWords("Runes")
	initPatchWords_ext("fixed some stuff", fa_left, c_gray, 1, 0);
	
	initPatch("1.42", "5 May, 2021");
	initPatchWords("Strongs")
	initPatchWords_ext("Hitboxes are larger
	Pills now gain buffs from getting hit by strongs", fa_left, c_gray, 1, 0);
	initPatchWords("Dair")
	initPatchWords_ext("There are no gaps between hitboxes
	Landing lag reduced 9 > 6", fa_left, c_gray, 1, 0);
	initPatchWords("Fair")
	initPatchWords_ext("Landing lag reduced 9 > 8", fa_left, c_gray, 1, 0);
	initPatchWords("Rune D")
	initPatchWords_ext("It is awesome", fa_left, c_gray, 1, 0);
	
	initPatch("1.41", "29 March, 2021");
	initPatchWords("DStrong")
	initPatchWords_ext("Hot Fix: Front Hit changed Base knockback from 9 to 8, still an overall buff
	Front hit uses sfx heavy blow 1 again", fa_left, c_gray, 1, 0);
	initPatchWords("Munophone")
	initPatchWords_ext("Fixed typo's in last patch note
	Added new Dspecial stuff from last patch to fighter's tips", fa_left, c_gray, 1, 0);
	
	
	initPatch("1.4", "29 March, 2021");
	initPatchWords("DAir")
	initPatchWords_ext("Reduced the amount of frames in between hits: ( 2 -> 1)
Tweaked knockback values of flipper 9 hitboxes to improve consistency", fa_left, c_gray, 1, 0);
	initPatchWords("Dspecial")
	initPatchWords_ext("You can now hold down during its active time to make the move fall a little faster. (This gets overwritted by mashing  / holding the special button)
KBS final hit: ( .75 -> .85)", fa_left, c_gray, 1, 0);
	initPatchWords("USpecial")
	initPatchWords_ext("KBS final hit (.75 -> .9)", fa_left, c_gray, 1, 0);
	initPatchWords("BAir")
	initPatchWords_ext("KBS Early hit ( .7 -> .75)", fa_left, c_gray, 1, 0);
	initPatchWords("Ustrong")
	initPatchWords_ext("All hitboxes now have 1.05 KBG ( Up from 1.0 on the sourspots)", fa_left, c_gray, 1, 0);
	initPatchWords("Fstrong")
	initPatchWords_ext("Sourspot KBS ( .8 -> .9)", fa_left, c_gray, 1, 0);
	initPatchWords("DStrong")
	initPatchWords_ext("BKB remains unchaged for both hitboxes
Both hitboxes now have 1.05 KBG 
Both hitboxes now have Angle 361
Both hitboxes now use sfx_blow_heavy2", fa_left, c_gray, 1, 0);
	initPatchWords("New Alt")
	initPatchWords_ext("TSMSB alt for Bookworm for DTT
	Has Pringles for Pills (Shoutouts to sakk and relira)
	Pringles Mode also has a special victory theme", fa_left, c_gray, 1, 0);
	initPatchWords("Misc")
	initPatchWords_ext("New Crouch anim and hurtbox
	Press Taunt durring countdown on any alt for pringles instead of pills
	New results screen picture
	Removed a stray pixel on Yellow Red Pill", fa_left, c_gray, 1, 0);
	
	initPatch("1.39", "25 March, 2021");
	initPatchWords("DStrong")
	initPatchWords_ext("Pills now roll faster when hit with Dstrong", fa_left, c_gray, 1, 0);
	initPatchWords("FTilt")
	initPatchWords_ext("Base Knockback 5 --> 6
	Knockback Scailing .65 --> .8 
	Hitpause Scailing .65 --> .8", fa_left, c_gray, 1, 0);
	initPatchWords("Misc")
	initPatchWords_ext("Removed false info from Munophone Fighter Tips: Fair", fa_left, c_gray, 1, 0);
	
	initPatch("1.38", "22 March, 2021");
	initPatchWords("Runes")
	initPatchWords_ext("In overflow runes Dr Melee Mario gets Cursade down b and fspecial.", fa_left, c_gray, 1, 0);
	initPatchWords("Misc")
	initPatchWords_ext("Added a new alt
	When you galxey someone on last stock it plays the smash final hit sound", fa_left, c_gray, 1, 0);
	
	initPatch("1.37", "17 March, 2021");
	initPatchWords("Alts")
	initPatchWords_ext("Now with workshop having more alts Dr melee mario now has 22 total alts instead of 16!
	Try playing the luigi alt agasint a Mario for a surpise
	Red Medic Alt colors modified", fa_left, c_gray, 1, 0);
	initPatchWords("Kirby Ability")
	initPatchWords_ext("Vsiaul updated: Now has a head mirror
	Kirby Ability works like Dr Melee Mario's:
	
	-Uses custom bounce code now
-Lifetime increased from 75 to 90
-Cooldown extended to be the same as Dmm
-Rotation logic is now consistent
-Damage, Knockback, KBS and hitpause scaling are now the same as  Dmm
	
	Updated the kirby section in fighter tips in this munophone", fa_left, c_gray, 1, 0);
	initPatchWords("Reflector")
	initPatchWords_ext("Logic updated:
- simplified some things
- it nows prioritizes speed over direction
- it gives 12 frames of inv insteas of 10", fa_left, c_gray, 1, 0);	
	initPatchWords("Dash Sprite")
	initPatchWords_ext("Fixed a miscolored pixel", fa_left, c_gray, 1, 0);	
	
	initPatch("1.36", "13 March, 2021");
	initPatchWords("Fspecial")
	initPatchWords_ext("-Reflect code tweaks to increase reliability
-Reflect active time (6 -> 9)", fa_left, c_gray, 1, 0);
	initPatchWords("Bair")
	initPatchWords_ext("Bair sweetspot active time (2 -> 3)
Bair sourpspot active time ( 4 -> 3)", fa_left, c_gray, 1, 0);
	initPatchWords("Jab")
	initPatchWords_ext("Jab whifflag removed", fa_left, c_gray, 1, 0);	
	
	initPatch("1.35", "10 March, 2021");
    initPatchWords("Bug Fix")
    initPatchWords_ext("Fixed a Bug where interrupting Dspecial while there were pills inside withouth touching said pills resulted in a anormally long pill duration.
   Fixed a  Bug where, pills boosted with Fspecial right after being boosted by Dspecial  did not gain the full speed buff.", fa_left, c_gray, 1, 0);
	initPatchWords("FStrong: Slight Pill Rework")
    initPatchWords_ext("Dr Melee Mario Fstrong now moves pills to the center of the spark when hit", fa_left, c_gray, 1, 0);
    initPatchWords("Fspecial")
    initPatchWords_ext("Refelect code logic for ditto updated
   Cape Player knockback: 7 -> 8
   Fspecial can now go off ledges", fa_left, c_gray, 1, 0);
    initPatchWords("Munophone")
    initPatchWords_ext("Dr Melee Mario is now a cheater and has more munophone cheats", fa_left, c_gray, 1, 0); 
	 
	initPatch("1.31", "25 Febuary, 2021");
	initPatchWords("Fspecial")
	initPatchWords_ext("Now refelects Articles Properly. Main example being Morshu Bombs
	In the ditto the cape refelcting pill is like if you hit your own pill with cape", fa_left, c_gray, 1, 0);
	initPatchWords("Rune desc")
	initPatchWords_ext("Fixed a bug", fa_left, c_gray, 1, 0);
	 
	initPatch("1.3", "22 Febuary, 2021");
	initPatchWords("Balance Changes")
	initPatchWords_ext("-Ftilt Endlag 14 -> 12
-Dtilt Endlag 12 -> 11
-Utilt Endlag 12 -> 10
-Uspecial: Active frames increased by 2
KBS: 0.7 -> 0.75
This Move can now be hit-falled (Only for finisher hitbox)
This also applies to hitting your own pills 
-Fspecial: Startup: 9 -> 8
Removed second hitbox that appeared behind DMM
-Dspecial: Now has slightly faster  horizontal traveling speed when grounded 
-Fstrong: Endlag: 20 -> 18
-Dstrong: KBS Front hit: .85 -> .9
Damage Front hit: 10-> 11
KBS Back hit: .95 -> 1
-Fair Rework:
Weak initial hitbox removed, the move now starts with the strong hitbox
Active frames 6 -> 4
BKB Weak hits: 7 -> 8
-Jab: First Hit Endlag reduced by 2 frames 
Second and Third hits Endlag reduced by 1 frame
-Nair: Active frames 15 -> 16
-rune L desc=Dspecial can be held down and has improved movement stats.
-Adjusted Fair spiking rune to work with the Fair rework and fair spike rune now sends at 320", fa_left, c_gray, 1, 0);
	initPatchWords("Support")
	initPatchWords_ext("-Morshu and Matt can grab pills
-Final Smash buddy compatibility added (In progress)", fa_left, c_gray, 1, 0); 
	initPatchWords("AI updates:")
	initPatchWords_ext("-Removed Utilt from neutral options
-Will overall  use a more of its moveset
-AI will now recover with Dspecial more frequenly
-AI can hitfall and walkturns when it gets a kill woooooo", fa_left, c_gray, 1, 0); 
	
	initPatch("1.27", "1 Febuary, 2021");
	initPatchWords("Dair code imrpoved
	
	Kirby Pill code improved
	
	Reworked runes")
	
	initPatch("1.26", "30 December, 2020");
	initPatchWords("Megavitamin Mechanic Change")
	initPatchWords_ext("Hitting Megavitamin counts as a hit so on moves with whifflag it removes whifflag.
	
	This only effects Fstrong, Dstrong, Ustrong, Dspecial", fa_left, c_gray, 1, 0);

	initPatch("1.25", "10 December, 2020");
	initPatchWords("Dair")
	initPatchWords_ext("Angle Changed 275 to 280", fa_left, c_gray, 1, 0);
	initPatchWords("Bair")
	initPatchWords_ext("Fixed SFX", fa_left, c_gray, 1, 0);
	
	initPatch("1.24", "5 December, 2020");
	initPatchWords("Dspecial")
	initPatchWords_ext("Angle Changed 70 to 90", fa_left, c_gray, 1, 0);
	initPatchWords("Dstrong")
	initPatchWords_ext("BKB increased from 7 to 7.5", fa_left, c_gray, 1, 0);
	initPatchWords("Changed sfx on some moves")

	
	initPatch("1.23", "4 December, 2020");
	initPatchWords("Dair")
	initPatchWords_ext("Angle Changed 280 to 275", fa_left, c_gray, 1, 0);
	initPatchWords("Support")
	initPatchWords_ext("Updated Munophone", fa_left, c_gray, 1, 0); 
	
	initPatch("1.22", "26 November, 2020");
	initPatchWords("Megavitamin")
	initPatchWords_ext("Megavitmin is crouch cancelable untill it does 8% or MORE like any projectile in base game", fa_left, c_gray, 1, 0);
	initPatchWords("Support")
	initPatchWords_ext("Updated Munophone", fa_left, c_gray, 1, 0); 
	 
	initPatch("1.21", "21 November, 2020");
	initPatchWords("DTilt")
	initPatchWords_ext("Scaling on both hits decreased (.4 > .35)", fa_left, c_gray, 1, 0);
	initPatchWords("Support")
	initPatchWords_ext("Assistant Buddy Support", fa_left, c_gray, 1, 0);
	
	initPatch("1.2", "18 November, 2020");
	initPatchWords("Fixed some minor warning error messages")
	initPatchWords("Uspecial")
	initPatchWords_ext("New visual indicator for its sweetspot hitbox", fa_left, c_gray, 1, 0);
	initPatchWords("Dair")
	initPatchWords_ext("hitpause for multhits has been slightly decreased (2 > 1)
	Can now be hitfalled", fa_left, c_gray, 1, 0);
	initPatchWords("Megavitamin mechanic")
	initPatchWords_ext("Pill Stun time by uncharged Fstrong has been increased
	Pill Rolling speed by uncharged Dstrong has been increased
	Pill gravity after getting hit by Uspecial is now higher
	Pill bounce height after getting hit by Uspecial is now higher", fa_left, c_gray, 1, 0); 
	
	initPatch("1.1", "15 November, 2020");
	initPatchWords("Nspecial")
	initPatchWords_ext("Is now crouch cancelable, goes for both Dr. Melee Mario AND Kirby", fa_left, c_gray, 1, 0);
	initPatchWords("Runes")
	initPatchWords_ext("Lag Reduced", fa_left, c_gray, 1, 0);
	initPatchWords("Support")
	initPatchWords_ext("Munophone firmware", fa_left, c_gray, 1, 0);
	
	initPatch("1.09", "12 November, 2020");
	initPatchWords("Dspecial")
	initPatchWords_ext("The size of the flipper 10 hitbox has been reduced: 45 -> 30
	Dspecial now accelerates until reaching top horizontal speed instead of starting from max, this makes horizontal carrying more consistent", fa_left, c_gray, 1, 0);
	initPatchWords("Runes")
	initPatchWords_ext("Triple rune + no cooldown or pill tornado makes pill lifetime decreased to stop lag
	Fixed Typos in rune descriptions", fa_left, c_gray, 1, 0);
 	initPatchWords("Support")
	initPatchWords_ext("Otto
	Munophone v5
	Feri", fa_left, c_gray, 1, 0);
	
	initPatch("1.08", "10 November, 2020");
	initPatchWords("Dspecial")
	initPatchWords_ext("Pretty much version 2.0
	All hitboxes are now untechable
	Hig Priority Flipper 10 hitbox is smaller ( 58-> 45)
	Low Priority Flipper 9 hitbox is bigger ( 60 -> 75)
	Finisher hitbox is bigger ( 60 -> 75)
	Amount of frames between hitboxes is now consistent : 3 frames
	Flipper 9 hitboxes have a different hit effect from  Flipper 10 ones.
	Reflecting things now plays the sound effect
	Fixed a bug where the last hit of dspeicial dropped once", fa_left, c_gray, 1, 0);
	initPatchWords("Bair")
	initPatchWords_ext("Endlag: 13 -> 12", fa_left, c_gray, 1, 0);
	initPatchWords("Dair")
	initPatchWords_ext("Hitbox Window  duration: 18 -> 14
	Hitboxes shifted slightly horizontally", fa_left, c_gray, 1, 0);
	initPatchWords("Dattack")
	initPatchWords_ext("Active time: 15 -> 12
	This also reduces the overall max range", fa_left, c_gray, 1, 0);
	initPatchWords("Megavitamin Mechanic update")
	initPatchWords_ext("Two color Megavitamins now  deal more damage than single color Megavitamins. For both Dr. and Kirby versions.", fa_left, c_gray, 1, 0);
 	initPatchWords("A bunch of  support added")
	initPatchWords_ext("Trial Grounds
	Last Resort
	Miiverse
	Pokemon Stadium
	Munophone
	Trummel 2 codec
	Steve", fa_left, c_gray, 1, 0); 
	

	
	initPatch("1.07", "6 November, 2020");
	initPatchWords("Nspec")
	initPatchWords_ext("Startup 12
	Endlagr 10
	Cooldown 42
	lifetime increase: 145 - 150", fa_left, c_gray, 1, 0); 
	initPatchWords("Uspec - Weak hit")
	initPatchWords_ext("9 bkb
	.25 kbg", fa_left, c_gray, 1, 0); 
	initPatchWords("Jab")
	initPatchWords_ext("Fixed aniamtion on third hit", fa_left, c_gray, 1, 0); 
	initPatchWords("Taunt")
	initPatchWords_ext("Fixed animation", fa_left, c_gray, 1, 0); 
	
	initPatch("1.06", "4 November, 2020");
	initPatchWords("Balance Changes")
	initPatchWords_ext("All strong attacks do +2 dmg on each hitbox
	Pratland time 15 -> 12
	Special overflow rune added", fa_left, c_gray, 1, 0); 
	initPatchWords("Fstrong")
	initPatchWords_ext("Sweetspot angle  changed to 361
	Base Knockback is now 8", fa_left, c_gray, 1, 0); 
	initPatchWords("Dstrong")
	initPatchWords_ext("Angle  changed to 361 
	Back Hit now has angle flipper 5 so it sends behind with the new angle", fa_left, c_gray, 1, 0); 
	initPatchWords("Ustrong")
	initPatchWords_ext("All hitboxes now send 90
	A couple of Megavitamin bugs have been fixed", fa_left, c_gray, 1, 0);
	initPatchWords("Fair")
	initPatchWords_ext("Angle changed to 361
	Sweetspot Base knockback changed to 8, Knockback grow (9 -> 8)
	Damage changes:
	Early/Late hits do 9
	Souspot does 10
	Sweetspot does 11", fa_left, c_gray, 1, 0); 
	initPatchWords("Bair")
	initPatchWords_ext("Start up now 8
	Angle is now 135 on sweetspot  and 120  on sourspot.", fa_left, c_gray, 1, 0); 
	initPatchWords("Utilt")
	initPatchWords_ext("New improved animation once again courtesy of Sakk 
	Hitboxes adjusted with new animation", fa_left, c_gray, 1, 0); 
	initPatchWords("Jab 3")
	initPatchWords_ext("Lifetime reduced by 2 frames", fa_left, c_gray, 1, 0); 
	initPatchWords("Dspecial")
	initPatchWords_ext("Spin Hitboxes can't destory projectiles
	You can't drift or move  during the endlag
	New sound effect for the last hit", fa_left, c_gray, 1, 0); 

	
	initPatch("1.052", "2 November, 2020");
	initPatchWords("Bair")
	initPatchWords_ext("Active time : 4 ->6

	startup 
	13 -> 10

	endlag
	15 -> 13

	New values for sweetspot:
	Damage  = 7
	bkb = 6.5
	kbg = .7
	New values for sourspot
	Damage = 6
	kbk = 6.5
	kbg = .6", fa_left, c_gray, 1, 0); 

	initPatchWords("Fair")
	initPatchWords_ext("sweetspot:

	bkb = 9
	kbg = .8
	hitpause = 10", fa_left, c_gray, 1, 0); 

	initPatchWords("Fstrong and u strong has a bit more hitpause scaling")
	initPatchWords_ext("All strong attacks have hitlock out to prevent megavitamins from interrupting a powerfull strike", fa_left, c_gray, 1, 0); 

	initPatch("1.051", "2 November, 2020");
	initPatchWords("Fstrong")
	initPatchWords_ext("Start up increased to 17
	Sweetspot scaling (.8 > 1.1)
	Sweetspot bkb (7 > 9)
	endlag  (ON HIT) increased (18 > 20)", fa_left, c_gray, 1, 0); 

	initPatchWords("U strong")
	initPatchWords_ext("Sour spots kill power increase (.8 > 1.0)
	sweetspot kill power increase (.85 > 1.05)", fa_left, c_gray, 1, 0);

	initPatchWords("Dstrong")
	initPatchWords_ext("Angle changes to 40 on both hits", fa_left, c_gray, 1, 0);

	initPatchWords("Fair:")
	initPatchWords_ext("Sweetspot bkb: 10
	scaling on sweetspot is .7", fa_left, c_gray, 1, 0);

	initPatchWords("Bair")
	initPatchWords_ext("startup from 13 to 14
	bkb now 8
	scaling is now .8", fa_left, c_gray, 1, 0);

	initPatchWords("f spec")
	initPatchWords_ext("now frame 9 instead of 10", fa_left, c_gray, 1, 0);

	initPatchWords("grounded hitbox slightly larger");
	
	initPatch("1.05", "2 November, 2020");
	initPatchWords("Strong attacks")
	initPatchWords_ext("Friction reduced for UStrong ( 0.5 -> 0.25) and Dstrong (0.5 -> 0.4)", fa_left, c_gray, 1, 0);
	
	initPatchWords("Megavitamin mechanic changes")
	initPatchWords_ext("Full color Megavitmins now start at +1 knockback
	Yellow Megavitmins now start at +1 damage
	Max cap for Megavitmin values raised: (15 -> 18)", fa_left, c_gray, 1, 0);
	
	initPatchWords("Fair and Bair have improved animations courtesy of our newest collaborator Sakk. Hitboxes have been adjusted to accomodate new smears")
	
	initPatchWords("Fixed dattack animation clipping on the feet")
	
	initPatchWords("Fair angles: (50 -> 45)
	
	Ftilt now has sakurai angle

	Bair sweetspot angle: (45 -> 40)")
	
	

	initPatch("1.04", "1 November, 2020");
	initPatchWords("Fixed a Coloring bug with Rolling and Teching animations

	Fixed a Bug where USpecial Grab did not drop the oponent even after they where dead

	First hitbox of Uspecial and multhit hitboxes of Dspecial can no longer galaxy

	Uair late hitbox angle change: 80 -> 110

	Replaced hit sound effects for Jab and Utilt");

	initPatch("1.03", "1 November, 2020");
	initPatchWords("Updated Fstrong and Dstrong angles to make them slightly more reliable kill moves")

	initPatchWords_ext("Fstrong 
	sweetspot 45 > 40
	Sourspot 50 > 45

	Dstrong
	Angle 50 > 40", fa_left, c_gray, 1, 0);

	initPatchWords("Fixed Dstrong offset moving Dr Mario sligthly forward
	
	Fixed a bug where the using Fspecial on a rolling Megavitmin resulted in incorrect behaviour
	
	Fixed a bug where using Fspecial on a bouncing Megavitmin from Dspecial resulted in the previous Megavitmin speed value
	
	Made hitstun gravity lower");
	 
	initPatch("1.02", "1 November, 2020");
	initPatchWords("Fixed a Coloring bug with Rolling and Teching animations

	Fixed a Bug where USpecial Grab did not drop the oponent even after they where dead

	First hitbox of Uspecial and multhit hitboxes of Dspecial can no longer galaxy

	Uair late hitbox angle change: 80 -> 110

	Replaced hit sound effects for Jab and Utilt"); 
	
	initPatch("1.01", "31 October, 2020");
	initPatchWords("D tilt")
	initPatchWords_ext("Hurtbox fixed", fa_left, c_gray, 1, 0);

	initPatchWords("Nair")
	initPatchWords_ext("1 frame faster (7 > 6)
	4 frames less lag (16 > 12)", fa_left, c_gray, 1, 0);

	initPatchWords("Dair")
	initPatchWords_ext("endlag decreased (15 > 12)", fa_left, c_gray, 1, 0);

	initPatchWords("Up special")
	initPatchWords_ext("Now has vsp type 2 during the duration of the jump", fa_left, c_gray, 1, 0);

	initPatchWords("Dspecial")
	initPatchWords_ext("The amount of vertical speed lost on repeated used has been increased", fa_left, c_gray, 1, 0);

	initPatchWords("Runes:
	Fixed typo"); 

	initPatch("1.0", "31 October, 2020");
	initPatchWords_ext("Dr. Melee Mario is out and he is saving lives.", fa_center, c_white, 0, 1);
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Cheat Codes			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with self{
	
	i = 0;
	
	/*
	 * Cheat codes enable bonus features or overpowered modes. This is a great
	 * place to put utilities that help when practicing the character, such as
	 * an option to instantly fill a resource meter or skip a cooldown.
	 * 
	 * initCheat(display name, backstage name, options, option names, description)
	 * 
	 * Use phone_cheats[] to reference these cheats in code, putting the
	 * backstage name (without quotes) as the array index. The backstage name
	 * becomes the name of a variable storing the cheat's index. E.g.
	 * 
	 * if (phone_cheats[cheat_funny_snail] == 1) {
	 *	   print_debug("woag");
	 * }
	 * 
	 * This is pretty similar to abyss runes - but instead of checking for if
	 * has_rune("X") is true or false, you check for the entry in the
	 * phone_cheats array.
	 * 
	 * Each cheat defaults to the first option in its option list (e.g.
	 * cheat_funny_snail defaults to 0). This happens even when the MunoPhone
	 * itself is not available.
	 * 
	 * Cheat descriptions should be short and sweet, as they can't be scrolled.
	 */
		
	initCheat("Pill RNG", "cheat_rng", [0, 1], ["On", "Off"], "Next pill is decided randomly in batches of six.");
	initCheat("Pill Cooldown", "cheat_cooldown", [0, 1], ["On", "Off"], "There's a brief cooldown after throwing a pill.");
	initCheat("Floaty", "cheat_floaty", [0, 1], ["Off", "On"], "Certified Tempo moment.");
	initCheat("N° of Double Jumps", "cheat_jump", [1, 2, 3, 999 ], ["1", "2", "3", "Unlimited"], "Dr. JUMPMAN Melee Mario.");
	initCheat("Melee Link Nair", "cheat_funny", [0, 1], ["Off", "On"], "Certified Sakurai moment.");
	initCheat("Luigi Ciclone", "cheat_luigi", [0, 1], ["Off", "On"], "Certified Ultimate moment.");
	initCheat("The Dr. Toxic Tornado", "cheat_space", [0, 1], ["Off", "On"], "You spin me right 'round, baby right 'round like a record, baby right 'round, 'round, 'round");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Frame Data Guide		                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{

	// Move ordering. Reorder this as you see fit for your character
	
	// note: do NOT remove indexes from this list. empty indexes will be ignored by the frame data guide.
	// to hide an in-use attack index from the guide, use AG_MUNO_ATTACK_EXCLUDE instead!
	
	move_ordering = [
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
	
	
	
	// Include a "Stats" page in the frame data guide?
	include_stats = true;
	
	// If so, put any specific notes here:
	stats_notes = "He is ment to be Mario but with slightly more surviblity but slower."; // set to   "-"   if you don't need to put any notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = true;
	
	// If so, what's its name?
	custom_name = "Megavitmins"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Blue Blue");
	initCFDBody("Angle: 45 
	DMG: 4 
	Base Knockback: 5");
	
	initCFDHeader("Red Red");
	initCFDBody("Angle: 120 
	DMG: 4
	Base Knockback: 5");
	
	initCFDHeader("Yellow Yellow");
	initCFDBody("Angle: 90 
	DMG: 4 
	Base Knockback: 5");
	
	initCFDHeader("Red Blue");
	initCFDBody("Angle: 60
	DMG: 5
	Base Knockback: 4");
	
	initCFDHeader("Red Yellow");
	initCFDBody("Angle: 105 
	DMG: 5 
	Base Knockback: 4");
	
	initCFDHeader("Yellow Blue");
	initCFDBody("Angle: 75 
	DMG: 5 
	Base Knockback: 4");
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ About					                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	/*
	 * Info found in the "About" app.
	 * 
	 * initAbout(entry name, entry text)
	 * 
	 * Useful for credits or etc. The page can also scroll, so they can be long
	 * if you want
	 */
	
	initAbout("About Dr. Melee Mario", "Character collaberated by a lot of people. 
	Main people that are important for this are: Snolid Ice, Renlira19, Snoc, Sakk
	He was made due to Snoc wanting a good Dr. Mario on workshop.
	Main things to note is that he is our take of Dr. Mario and to make him less like Mario and bring some life into him. 
	We called him Dr. Melee Mario due to using GregarLink10's sprites of Dr. Mario. The orginal Melee Mario also used GregarLink10's sprites for Mario.");
	
	initAbout("About Melee Mario", "Melee Mario came out on Sep 23, 2019 by xArtix32. He was a very early workshop mod also using GregarLink10's sprites and Dr. Melee Mario is ment to be a homage to Melee Mario.");
	
}







/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// Trummel & Alto codec

if pho_has_trum_codec{
	
	/*
	 * initCodec(gimmick)
	 * initCodecPage(speaker, expression, gimmick, text)
	 * 
	 * The variable trummel_id is initially set to noone (-4). When Trummel
	 * opens this char's codec, trummel_id is set to Trummel's object ID.
	 */
	
	/*
	 * Codec speaker handles:
	 * SPK_TRUM: Trum
	 * SPK_ALTO: Alto
	 * SPK_OTTO: Otto
	 * SPK_CODA: Coda
	 * SPK_ECHO: Tempo
	 * SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
	 * SPK_SEGA: Sonic (see above)
	 */
	
	/* 
	 * Page gimmick handles:
	 * GIM_CHOMP			make the enemy ftilt
	 * GIM_CLONE 			display 2 speakers
	 * GIM_LAUGH_TRACK		play the funny haha sound
	 * GIM_SKIP   			advance the page immediately when the text finishes
	 * GIM_DIE    			die
	 * GIM_SHUT_UP			no chatter sfx
	 * GIM_HOWL				make the enemy dspecial
	 * GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
	 * GIM_TEXTBOX			use a sprite stored in your char under the var spr_custom_trummel_textbox instead of the default textbox
	 * GIM_COLOR			use a color stored in your char under the var spr_custom_trummel_color instead of white (for the codec text)
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_SAND = initSpeaker(1, "Dr.Melee Mario", sprite_get("_pho_example_speaker"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "is that mario in a doctor's outfit");
	initCodecPage(SPK_SEGA, 0, GIM_CLONE, "Mario... but doctor?????");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "It's-a-me, the Mario, the one that's gonna beat 'cha.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "It's gonna be, a party, yo, cause I brought my red suit, uh.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "You got speed, but you're really slow, cause it is not gonna save you, 'ya.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "You wanna be another Mario but you are gonna lose, uh.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "Look at you with your, ugly red shoes, eh uh.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "You look like you lost all your clothes, ooohh.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "It's -a me, a-Mario, the one that's gonna beat you.");
	initCodecPage(SPK_SAND, 0, GIM_SKIP, "So you better back up now before you get bruised.");
	initCodecPage(SPK_TRUM, 0, GIM_LAUGH_TRACK, "woag
	
	Lol!");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	// no
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve was diagnosed with the dead";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	// no
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	// no
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	// no
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	// no
	
}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	
	// no
	
}



// Fire's taunt

if pho_has_fire_taunt{
	
	// no
	
}



// Wall-E's radio

if pho_has_wall_e_ost{
	
	// no
	
}



// Amber's plushie and hug

if pho_has_amber_love{
	
	// no
	
}



// Moonchild music

if pho_has_moon_music{
	
	// no
	
}



// Agent N codec

if pho_has_agentn_cdc{
	
	// no
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
	// no
	
}



// Miiverse post

if pho_has_miivs_post{
	
	// no
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	// no
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	// no
	
}



// Trial Grounds

if pho_has_been_found{

	// no
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	// no
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
	// no
	
}



// Daroach dialogue

if pho_has_daro_codec{
	
	// no
	
}





/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ The End				                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// THIS MARKS THE END OF THE SECTION YOU HAVE TO EDIT!
// BELOW THIS IS JUST BEHIND-THE-SCENES CODE





#define initAbout(obj_name, obj_text)

var para = {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

var tip = {
	name: obj_name,
	objs: [para]
};

array_push(abouts, tip);



#define initCFDHeader(text)

custom_fd_content[i] = {
	type: 0, // header
	content: text
};

i++;



#define initCFDBody(text)

custom_fd_content[i] = {
	type: 1, // body
	content: text
};

i++;



#define initCodec(cd_gimmick)

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

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;



#define initTip(tip_name)

tips[i] = {
	name: tip_name,
	objs: [0]
};

i++;

j = 0;



#define initTipWords(obj_text)

i--;

tips[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initTipWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

tips[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initTipImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

tips[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initTipImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

tips[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initPatch(pat_ver, pat_date)

patches[i] = {
	name: "v" + pat_ver,
	date: pat_date,
	objs: [0]
};

i++;

j = 0;



#define initPatchWords(obj_text)

i--;

patches[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initPatchWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

patches[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initPatchImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

patches[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initPatchImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

patches[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initWords(obj_text)

return {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

tipObjEnd();



#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

return {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	gimmick: obj_gimmick,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: "unset",
	margin_r: "unset",
	margin_u: "unset",
	margin_d: "unset",
	needs_auto_margins: true,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: false,
	side_by_side_exempt: false
};

tipObjEnd();



#define tipObjEnd

i++;

j++;



#define initCheat(ch_name, ch_cmd, ch_opt, ch_opt_name, ch_desc)

phone.cheats[i] = {
	name: ch_name,
	command: ch_cmd,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
};

variable_instance_set(self, ch_cmd, i);
phone_cheats[i] = ch_opt[0];

i++;



#define room_add(_room_id,room_data) // Adds a new room to the scene. for BTT
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}