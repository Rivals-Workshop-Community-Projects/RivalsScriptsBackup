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
pho_has_copy_power = 0;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 0;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
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
muno_char_name = "Big Yoshi";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 150;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_fspecial_proj = sprite_get("fspecialproj");
spr_flutter = sprite_get("flutter");
spr_taunt_sakk = sprite_get("taunt_sakk");
spr_cookie = sprite_get("cookiemeter");

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
	
	initTip("Flutter Kick");
	initTipWords("By holding JUMP or UP after jumping, Big Yoshi can perform a Flutter Kick for extra recovery, effectively acting as a second double jump.");
	initTipImage(player_id.spr_flutter, -2, fa_center, 1, c_white, 1);
	initTipWords("Using aerials out of a Flutter Kick grant you a slight aerial boost. Try using this to your advantage!");	
	initTipImage(player_id.spr_fair, -3, fa_right, 1, c_white, 3);	
	initTipImage(player_id.spr_bair, -3, fa_left, 1, c_white, 2);	
	
	initTip("FSpecial: Egg Throw");
	initTipWords("When using your FSpecial, you can hold down SPECIAL in order to angle the direction you'll throw your Yoshi Egg. Tapping the move will simply make it travel a generic distance.");
	initTipWords("When angling your egg, you can also hold DOWN in order to lock it to a set direction.");
	initTipImage(player_id.spr_fspecial, -3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_fspecial_proj, 0, fa_right, 1, c_white, 3);
	initTipWords("The Yoshi Egg changes colors when it bounces on the ground, progressively getting stronger. Eventually, it bursts into an explosion with a wide range.");	
	initTipImage(player_id.spr_fspecial_proj, -4, fa_center, 1, c_white, 1);
	
	initTip("DSpecial: Yoshi Cookie");
	initTipWords("For his DSpecial, Big Yoshi eats a Yoshi Cookie. This'll boosts his movement stats for a short period of time!");
	initTipImage(player_id.spr_dspecial, -3, fa_center, 1, c_white, 0);
	initTipWords("However, it also reduces his weight to that of a middleweight, and he takes slightly more damage. Three Cookies are given per stock.");
	initTipImage(player_id.spr_cookie, -10, fa_center, 1, c_white, 0);
	initTipWords("During his 'sugar rush' state, Egg Throw's properties get slightly altered. The Yoshi Egg becomes slightly faster and travels in a straight path unaffected by gravity, albeit with half its usual duration.");
	initTipImage(player_id.spr_fspecial, -3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_fspecial_proj, 1, fa_right, 1, c_white, 3);
	initTipWords("If Yoshi has no more Cookies, he can regain a 'mercy cookie' by parrying an attack. A full refill is only possible on your next stock, though!");
	initTipImage(player_id.spr_parry, -3, fa_center, 1, c_white, 0);
	
	initTip("USpecial: Turbo Egg");
	initTipWords("For his USpecial, Big Yoshi encases himself into a Yoshi Egg and bounces upwards. It can be slightly charged for extra power and vertical distance, and hits opponents on the way up, down, and upon landing!");
	initTipImage(player_id.spr_uspecial, -3, fa_center, 1, c_white, 0);
	
	initTip("NSpecial: Big Tongue");
	initTipWords("Big Yoshi extends his tongue for his NSpecial - typical Yoshi stuff. But check this out: If he latches it on an opponent, he pulls them in and kicks them. If you've used up your double jump, you can use this move to restore it!");
	initTipImage(player_id.spr_nspecial, -5, fa_center, 1, c_white, 0);
	
	initTip("DACDT: What is this?");
	initTipWords("DACDT stands for 'Dash Attack Cancelled Down Tilt'. This means DAttack can be cancelled into a DTilt upon hit. This is to create some more follow ups. Even if you miss a down tilt, the horizontal boost could probably do some good.");
	initTipImage(player_id.spr_dattack, -3, fa_left, 1, c_white, 3);
	initTipImage(player_id.spr_dtilt, -4, fa_right, 1, c_white, 3);
	
	initTip("DAir");
	initTipWords("DAir is the iconic Ground Pound move performed by plumbers and dinosaurs alike. On the air, hitting it clean can spike opponents. When striking the ground, the impact of Yoshi's rear end will generate two dust hitboxes on both sides that can lift opponents upwards.");
	initTipWords("Landing it on the air will make Yoshi bounce up, and on top of that it'll boost his Flutter Kick!");
	initTipImage(player_id.spr_dair, -3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_flutter, -2, fa_right, 1, c_white, 1);	
	
	initTip("FTilt");
	initTipWords("FTilt is a basic stomp that has a sweetspot that spikes at the bottom of his foot. You can use this to help edgeguard unsuspecting foes.");
	initTipImage(player_id.spr_ftilt, -4, fa_center, 1, c_white, 0);
	
	initTip("A Sax Solo?");
	initTipWords("try holding your side taunt to hear a beautiful jazzy sax solo from the big guy himself");
	initTipImage(player_id.spr_taunt_sakk, -3, fa_center, 1, c_white, 0);
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
	
	initPatch("BR.UH", "December 22, 2020");
	initPatchWords("General Animations");
	initPatchWords_ext("Dash turn has a new animation.", fa_left, c_gray, 1, 0);
	initPatchWords("Jab");
	initPatchWords_ext("Whifflag removed. Endlag increased(10F->16F), in compensation.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Jab2's endlag is jab1 or tilt cancellable after about 6 frames since its active frames.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Tilt");
	initPatchWords_ext("Startup decreased. (10F->8F)", fa_left, c_gray, 1, 0);
	initPatchWords("Down Tilt");
	initPatchWords_ext("Startup increased. (6F->7F)", fa_left, c_gray, 1, 0);
	initPatchWords("Up Tilt");
	initPatchWords_ext("Startup decreased. (7F->6F)", fa_left, c_gray, 1, 0);
	initPatchWords("Dash Attack");
	initPatchWords_ext("Startup decreased. (20F->17)", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Strong");
	initPatchWords_ext("Animation was slightly adjusted.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("The move has slightly less friction.", fa_left, c_gray, 1, 0);
	initPatchWords("Back Aerial");
	initPatchWords_ext("Fixed a mistimed swipe SFX before the second hit.", fa_left, c_gray, 1, 0);
	initPatchWords("Up Special");
	initPatchWords_ext("The clean hit has more knockback scaling(.2->.5). However, it also has a new final base knockback value of 5.", fa_left, c_gray, 1, 0);

	initPatch("I.DK", "November 26, 2020");
	initPatchWords("Flutter Kick");
	initPatchWords_ext("It is now possible to Flutter Kick in a tumbling state, allowing it to be bufferable out of hitstun.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Being hit does not fully restore Flutter Kick anymore.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Aerial");
	initPatchWords_ext("Updated animation a tiny bit.", fa_left, c_gray, 1, 0);
	initPatchImage(other.spr_fair, -3, fa_left, 1, c_white, 0);
	initPatchImage(other.spr_flutter, -2, fa_right, 1, c_white, 0);
	
	initPatch("1.77", "November 12, 2020");
	initPatchWords("General Animations");
	initPatchWords_ext("(finally) Added some more hurt sprites.", fa_left, c_gray, 1, 0);
	initPatchWords("Dash Attack");
	initPatchWords_ext("fixed hurtbox", fa_left, c_gray, 1, 0);
	initPatchWords("Supports added (Courtesy of Snolid Ice)");
	initPatchWords_ext("Munophone
	Steve
	Trummel 2
	Rat", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "May 8, 2020");
	initPatchWords_ext("BIG YOSHI!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_taunt_sakk, -1, fa_center, 1, c_white, 1);
	initPatchImage(other.spr_flutter, -2, fa_left, 1, c_white, 1);
	initPatchImage(other.spr_flutter, -2, fa_right, 1, c_white, 1);
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
	// they're referenced elsewhere in code. The comment above each code tells
	// you which files reference it.
	
	// post_draw.gml
	initCheat("BIGGER Big Yoshi", "cheat_chungus", [0], ["No"], "larger yoshi");
	
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
	stats_notes = "Why tf is this a template character"; // set to   "-"   if you don't need to put any notes
	
	
	
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
	 * if you want
	 */
	
	initAbout("About Big Yoshi", "Character mod made by SB-2749. @SB2749
	
	Special thanks to:
	- Baconator2558 for the victory background image
	- Snolid Ice for a handful of the abyss runes - as well as for doing most of the work on the Munophone support
	- Sai / Sydery for the Buster Sword Abyss rune
	
	Yoshi is a registered trademark of Nintendo Co., Ltd.. All rights reserved to their respective owners.");
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
	
	SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, GIM_LAUGH_TRACK, "yig boshi");
	initCodecPage(SPK_ALTO, 4, 0, "...Masher.");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	// no
}


// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got hit by The Chungus.";
	
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
	
	//no
	
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