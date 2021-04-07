// Muno template - [CORE] user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user.
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
pho_has_muno_phone = 0;	// MunoPhone support		(should always be 1, obviously...)
pho_has_trum_codec = 0;	// Trummel & Alto codec
pho_has_copy_power = 0;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 0;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;// Death message for Steve
pho_has_feri_taunt = 0;	// Costume for Feri's taunt
pho_has_hikaru_fak = 0;	// Title for Hikaru's fakie
pho_has_rat_allout = 0;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 0;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 0; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 0;	// Posts for the Miiverse stage
pho_has_dede_title = 0;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
pho_has_pkmn_image = 0; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 0; // Dialogue for the Daroach boss fight



if (object_index == asset_get("cs_playerbg_obj")){
	num_alts = 32; // Number of alt costumes; controls how many appear on the CSS
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

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = -8;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.shader = 0;



phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



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
	
	// NOTE: Using sprite_get() does not work here, so sprites must be saved as
	// variables. See init.gml for an example of this with spr_nspecial_proj.
	
		initTip("Quagsire's Gimmick");
	initTipWords("His moveset revolves around his neutral special: Mud Bomb. Mud Bomb is a projectile, but when it hits the ground, it creates a mud puddle! You can use your down special on a mud puddle to increase your Moisture Meter. His meter can only be filled by using down special on a puddle, and goes down over time.");
	initTipImage(player_id.spr_dspecial, -4, fa_center, 1, c_white, 0);
	
	initTip("Stage 2");
	initTipWords("Once the Meter is more than 1/3 filled, Quagsire reaches Stage 2, where his tilts and movement get buffed. Stage 2 buffs include:
-Lower friction
-Better Wavedash
-Faster Dash Speed
-Dtilt can be jump-cancelled on hit
-Utilt gains more hits and does more damage
-Ftilt kills earlier")
	initTipImage(player_id.spr_muddtilt, -3, fa_center, 1, c_white, 3);


	initTip("Stage 3");
	initTipWords("Once the Meter is more than 2/3 filled, Quagsire reaches Stage 3, where he has all the buffs of Stage 2 and his Strongs and Grounded Specials get buffed. Stage 3 buffs include:
-Down Strong hits twice, is faster, and much stronger.
-Up Strong becomes stronger
-Forward Strong has more range and kills earlier
-(Grounded) Forward special is muddy, much more disjointed and can now kill
-(Grounded) Up Special is muddy and kills much earlier")
	initTipImage(player_id.spr_fspecial2, -3.5, fa_center, 1, c_white, 0);

	initTip("Flair");
	initTipWords("During the startup of Forward Air, Quagsire has reduced gravity. This means if you press Jump and Forward Air at the same time, you will jump very high and use Forward Air at the same time. This technique is called Flair. It is a great way to gain vertical movement with a hitbox in front of you, can be useful for edgeguards, and can ward off getting edgeguarded.");
	initTipImage(player_id.spr_fair, -3.5, fa_center, 1, c_white, 0);


	initTip("NSpecial: Far/Close Shots");
	initTipWords("By holding the B button, Nuetral Special's projectile will travel much farther, with no additional lag. However, tapping the button will cause the projectile to travel a short distance. This is best for quickly setting up puddle and gaining moisture without having to move.");
	initTipImage(player_id.spr_nspecial, -3.5, fa_center, 1, c_white, 0);
	
	initTip("Continued Dspecial");
	initTipWords("Hold Special during Down Special to continue rolling. This is the fastest way to gain Meter.");
	initTipImage(player_id.spr_dspecialroll, -3.5, fa_center, 1, c_white, 0);
	
		initTip("Taunt");
	initTipWords("So Quagsire's taunt is actually a reference to the move Yawn, which is essential in lower tiers of Singles...
	
	...
	
	You didn't come here for the normal taunt did you...
	
	haha, it says no anime, get it?
	funny jojo's reference
	
	
	
	
	
	
	
	
	
	
	
	
	I'm really feeling it.
	");
	initTipImage(player_id.spr_downtaunt, 13, fa_center, 1, c_white, 1);
	
	
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

	initPatch("2.11","April 2nd, 2021")
	initPatchWords("Very Small Patch")
	initPatchWords("
	
Utilt displacement bug fixed
Utilt color bug fixed.
Other bugs I can't remember lol
")
	
	initPatch("2.1","March, 20, 2021")
	initPatchWords("Buffs, Fixes, Compatibility")
	initPatchWords("
	
Buffs:
Ustrong fixed to connect better.
Dash Attack - .6 kbs -> .7 kbs
UAir - 6 bkb, .65 kbs-> 7.5 bkb, .75 kbs on all hitboxes except the spiking hitbox
FAir - Angle 30, 6 bkb .5 kbs -> Angle 40, 7 bkb, .7 kbs on the sweetspot
BAir - Angle 35, Angle flipper 6 -> Angle 145, Angle flipper 0
Mud FSmash - Angle 35, .6 kbs -> Angle 40, .75 kbs

Nerfs:
Dtilt friction bug fixed

Quality of Life:
Added Kirby, Feri, Agent N. support
")
	

	initPatch("2.0", "March, 12, 2021");
	initPatchWords("Beegest patch.");
	
	initPatchWords("
	
	The biggest patch in Quagsire's history. We replaced several attacks, restructured his gimmick, made a lot of balance changes, and made lots of quality of life changes.
	
	New Attacks:
	
	Dash Attack: Belly Flop, decently fast. Covers more ground than most of Quagsire's attacks, and kills well.
	Up Strong: Whirlpool, a long lasting multihit move with a two-hit Shoryuken finish. Does good damage, fairly fast, but kills late. You can move around during the multihits by holding left or right, but be careful, the opponent might fall out if you move too far.

	Heavily Modified Attacks:
	
	Up Tilt: Water Spout, Quagsire now summons a water spout in front of him for his Up Tilt. This gives better coverage in front of him, and the water multihits do more damage.
	Mud Up Tilt: Mud Spout, Up Tilt now has a Meter Buff, with the water spout becoming muddy and going above and behind Quagsire. This move is similar to Shovel Knight's Uptilt but smaller and faster. Great for combos and racking up damage.
	Mud Forward Strong: Mud Forward Strong will now cause rocks to sprout from the ground. The buff gives Fstrong much more disjoint and makes it last much longer. This move has much less horizontal movement than Stage 1 and Stage 2 Fstrong, but has more horizontal range and lasts longer to compensate, as well as killing earlier.
	
	
	Gimmick Changes:
	
	I realized before that the gimmick was unfocused and not clear to new players. I tried to fix this and centralize things.
	Meter now acts as follows:
	
	At Stage 2, Quagsire's Tilts and Movement are buffed.
	All his Tilts, his Wavedash, and Dash have new mud animations and behave differently.
	
	At Stage 3, Quagsire's Strongs and Grounded Specials are buffed.
	All his Strongs, Grounded Fspecial, and Grounded Uspecial have new mud animations and behave differently.


	Balance Changes and Quality of Life Changes:
	
	To be honest, this patch has been in the works so long that I can't remember all the small balance and quality of life changes... I guess try to find them yourselves! Sorry :)
	
	Hope everyone has fun with the new patch!")
	
	initPatchImage(other.spr_crouch, 3, fa_center, 1, c_white, 1);
	

		initPatch("1.3", "November 7, 2020");
	initPatchWords("Beeg patch.");
	
	initPatchWords("Nerfs:
	
	- Fspecial can no longer be hitfalled
	
	Buffs:
	
	- Dspecial gains more meter per use 25 -> 35
	- Reduced Mud Uspecial Startup 18 -> 14
	- Increased Mud Uspecial Knockback 9 -> 10
	- Bair Knockback Scaling Increased 0.6 -> 0.7
	- Nair Links better now
	
	Quality of Life:
	
	- Dspecial no longer goes off ledges
	- Dtilt no longer goes off ledges
	- CSP changed
	- Added Steve Death Message Support
	- Added Munophone support
	- Removed Bonk from Dair :(
	");
	

		initPatch("1.23", "November 18, 2020");
	initPatchWords("Changes to make Workshop Weeklies.");
	
	initPatchWords("Nerfs:
	
	- Uair Landing Lag Increased 4 -> 8
	- Uair Spike Hitbox Base Knockback Decreased
	- Dair Landing Lag Increased 4 -> 8
	
	Quality of Life:

	- Uair Hitbox Angles changed to be in multiples of five.
	");
	
	
	
		initPatch("1.21", "November 12, 2020");
	initPatchWords("Some smaller QOL stuff, some small nerfs.");
	
	initPatchWords("Nerfs:
	
	- Increased Ustrong Hitpause Scaling 0.5 -> 1.05
	- Increased Friction During Fstrong 0.25 -> 0.4
	
	Quality of Life:

	- Fixed Dspecial Animation Looping Issues
	- Added BONK to dair :)
	- Fixed Issues with Burn Effect From Ustrong
	- Quagsire can now use enemy Quagsire's puddles.
	");
	
	
	
		initPatch("1.2", "October 25, 2020");
	initPatchWords("The first major patch for Quagsire, with a decent amount of balance changes and bug fixes.");
	
	initPatchWords("Nerfs:
	
	- Increased Nair Landing Lag 4 -> 8
	- Decreased Jab 1 Extra Hitpause 4 -> 1
	- Increased Dstrong 1 Startup 7 -> 10
	- Decreased Airdodge Speed 7.5 -> 7
	- Decreased Waveland Adj across all mud levels.
	- As Mud level increases, Quagsire becomes lighter to better encourage a rushdown playstyle with mud and to discourage camping.
	
	Buffs:
	
	-Slightly changed Nspecial Stats for less startup and endlag.
	-Increased Nspecial Hitpause 3.5 -> 4.25
	-Increased Nspecial Hitpause Scaling 0.5 -> 0.55
	-Fspecial Kill Hitbox Increased Knockback 6 -> 7.5
	-Fspecial Kill Hitbox Increased Knockback Scaling 0.6 -> 0.65
	-Fspecial 2 Knockback Increased 7 -> 7.5
	-Fspecial 2 Knockback Scaling 0.6 -> 0.65
	-Increased Initial Dash Speed when using Mud Run 7 -> 10
	-You can hold down Special during Dspecial to continue rolling. This will make charging mud far easier and less annoying.
	
	Quality of Life:

	-Uspecial and Mud Uspecial will connect far more consistently now.
	-Fixed issue where Mud puddle would disappear after landing a KO and immediately dying, then pressing Nspecial.
	");
	
	
	
	initPatch("1.11", "October 21, 2020");
	initPatchWords("Mostly small stat changes to help make him feel better to play, a couple minor bug fixes.
	
	- Config.ini changed to mark Quagsire as a finished character on Steam Workshop
	- Stage 2 Ftilt animation fix
	- Lowered Pratfall air accel 0.45 -> 0.4
	- Lowered Fall speed 9 -> 8.25
	- Lowered Fast Fall speed 16 -> 15
	- Decreased Knockback Multiplier (Increased weight) 1.0 - > 0.94
	- Decreased Dehydration (Speed at which Moisture Meter decreases) -0.07 -> -0.05");
	
	initPatch("1.0", "18 October, 2020");
	initPatchWords_ext("Quagsire Was Released :)", fa_center, c_white, 1, 0);
	initPatchImage(other.spr_crouch, 3, fa_center, 1, c_white, 1);
	
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
	
	// NOTE: If you remove these cheat codes, you will need to remove where
	// they're referenced elsewhere in code. The comment above each cheat tells
	// you which files reference it.
	
	// update.gml
	initCheat("Moisture Meter Toggle", "cheat_moist_meter", [0, 1, 2], ["Normal", "Level 2", "Level 3"], "You can toggle the level of Quagsire's Mud Meter without it running out.");
	
	// update.gml
	initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Quagsire's maximum number of double jumps.");

	// attack_update.gml
	initCheat("bonk", "cheat_bonk", [0, 1], ["Normal", "b o n k"], "bonk bonk bonk bonk bonk");
	
	// update.gml
	initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Frame Data Guide		                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

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
	stats_notes = "-"; // "-" means no notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = false;
	
	// If so, what's its name?
	custom_name = "Monado Art Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Monado Jump");
	initCFDBody("Cooldown: 100000 seconds
	Duration: 5
	Effects: you jump higher???? by like 2x");
	
	initCFDHeader("Monando Shield");
	initCFDBody("Cooldown: 4
	Duration: 2
	Effects: Wait why is this listed second");
	initCFDBody("woag this is a enw apragraph");
	
	initCFDHeader("Some crazy third thing");
	initCFDBody("Damage: 7
	sw: i
	m");
	
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
	 * if you want. AND you can have multiple of these
	 */
	
	initAbout("About Quagsire", "Character made by Sire Acquirees
	Join our Discord Server if you want to give feedback, play friendlies, or just hang out :)
	https://discord.gg/4NwnFJe");
	
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
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	

	
}



// Otto bobblehead

if pho_has_otto_bhead{

	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve Fainted";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	

	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	

}



// Rat all-out quote

if pho_has_rat_allout{
	

	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	

}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	

}



// Fire's taunt

if pho_has_fire_taunt{

}



// Wall-E's radio

if pho_has_wall_e_ost{
	

	
}



// Amber's plushie and hug

if pho_has_amber_love{

	
}



// Moonchild music

if pho_has_moon_music{
	

	
}



// Agent N codec

if pho_has_agentn_cdc{
	

}



// Dracula dialogue

if pho_has_drac_codec{

	
}



// Miiverse post

if pho_has_miivs_post{
	

}



// Mt Dedede title

if pho_has_dede_title{

}



// Soulbound Conflict

if pho_has_soul_title{
	

}



// Trial Grounds

if pho_has_been_found{


	
}



// Last Resort painting

if pho_has_resort_pic{
	

	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	

}



// Daroach dialogue

if pho_has_daro_codec{
	


	
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