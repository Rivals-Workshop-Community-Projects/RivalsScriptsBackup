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
pho_has_btt_layout = 1;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 1;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 1;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 1; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 1; // Amber's plush and/or hug
pho_has_moon_music = 1; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 1; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 1; // Portrait for the Last Resort stage
pho_has_pkmn_image = 1; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 1; // Dialogue for the Daroach boss fight



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
muno_char_name = "Owen";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_nspecial_proj = sprite_get("nspecial_proj");
spr_dspecial_proj = sprite_get("oldboot");
spr_fspecial_air = sprite_get("fspecial_air");
spr_fspecial_air = sprite_get("fspecial_air");
spr_nspecial_up = sprite_get("nspecial_up");
spr_nspecial_reload = sprite_get("taunt2");
spr_dspecial_arrow = sprite_get("owen_kb_arrow");
// spr_secretalts = sprite_get("secretalts");
spr_dspecial_speen = sprite_get("oldboot_spin");
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
	
	/*
	initTip("BAir: Turn Around");
	initTipWords("Using BAir will turn you around mid-air.");
	initTipWords("Could be good in situations where you want to use FAir but can't land.");
	initTipImage(player_id.spr_bair, 3, fa_center, 1, c_white, 0);
	*/
	
	initTip("DSpecial: What does it do????");
	initTipWords("Boot copies the hitbox grid indexes of the hitbox you hit with.");
	initTipWords("In other words, if you hit the boot with a FStrong, it will act like an FStrong when someone gets hit by it.");
	initTipWords("Doesn't change boot properties: Specials, Jab, Parry, Dstrong");
	initTipWords("Specials preserve the boot's current stats and push it in different ways.");
	initTipImage(player_id.spr_dspecial_proj, 0, fa_center, 1, c_white, 0);
	
	/*
	initTip("DSpecial: Other Specials");
	initTipWords("Specials preserve the boot's current stats and push it in different ways.");
	initTipWords("USpecial sends the boot upwards quickly.");
	initTipWords("NSpecial bounces the boot.");
	initTipWords("FSpecial sends the boot forwards quickly.");
	initTipImage(player_id.spr_dspecial_proj, 0, fa_center, 1, c_white, 0);
	*/
	
	initTip("DSpecial: Enemy Hits");
	initTipWords("Boot mimicks opponent hits too.");
	initTipWords("Unlike Owen, ememy specials still change it's properties.");
	initTipWords("For them, only Jab and parry don't change properties.");
	initTipImage(player_id.spr_dspecial_proj, 0, fa_center, 1, c_white, 0);
	
	initTip("DSpecial: The arrow above the boot");
	initTipWords("Moves with effects (I.E. zetterburn fire) change how the arrow looks.
	Knockback scaling is shown through how long the arrow is.
	Boot color determines base knockback. 
	0 = white, 2 = yellow, 4 = orange,
	6 = red,   8 = purple, 10 = black.
	");
	initTipImage(player_id.spr_dspecial_arrow, 0, fa_center, 1, c_white, 0);
	
	initTip("DSpecial: Misc");
	initTipWords("The boot does not copy over angle flippers or hit priority.");
	initTipWords("As of v0.152, the boot is only active while it's moving or when it makes contact with someone in hitstun.");
	initTipWords("The player colored ring while the boot's on the floor is a recent additon. Try knocking players into it!");
	initTipImage(player_id.spr_dspecial_speen, -4, fa_center, 1, c_white, 0);
	
	initTip("FSpecial: On hit");
	initTipWords("The outer ring only hits the boot.");
	initTipWords("If you hit with FSpecial mid-air, you get both your jumps back and can also use the move in the air again.");
	initTipWords("The move can also be jump or attack canceled.");
	initTipWords("Hitting the boot counts for this too.");
	initTipWords("Also, you can walljump during FSpecial.");
	initTipImage(player_id.spr_fspecial, 5, fa_center, 1, c_white, 0);

	initTip("NSpecial: Not obvious things");
	initTipWords("You can aim up and down.
	If used midair, you get pushed back exponentially.
	The move can be jump cancelled.
	Reload by pressing attack during the move.");
	initTipWords("You'll stop midair during reloading, and you can jump cancel the frame you finished reloading.")
	initTipImage(player_id.spr_nspecial, 2, fa_center, 1, c_white, 0);
	
	initTip("Dattack: Hit 2");
	initTipWords("If dash attack is so good why isn't there dash attack tw-");
	initTipWords("You can activate it by holding up and attack during the first part of the move.")
	initTipImage(player_id.spr_dattack, 13, fa_center, 1, c_white, 0);
	
	initTip("Uspecial: Interrupt");
	initTipWords("Press shield/dodge during this move to end it early.
	However, you wont go very high and enter pratfall.
	You'll keep your horizontal momentum if you cancel it fast enough.");
	initTipImage(player_id.spr_uspecial, 0, fa_center, 1, c_white, 0);
	
	initTip("Taunt: ???");
	initTipWords("You can taunt in the air.
	Assume dominance.");
	initTipWords("It can be held down to do it for longer.");
	initTipWords("There's a down taunt too.");
	initTipImage(player_id.spr_taunt, 0, fa_center, 1, c_white, 0);
	
	/*
	initTip("Misc: Secret alts");
	initTipWords("Acessed by using alt #4 (the orange one) and pressing the respective button during the countdown.");
	initTipImage(player_id.spr_secretalts, 0, fa_center, 1, c_white, 0);
	*/
	
	/*
	initTip("funny fair");
	initTipWords_ext("funny fair", fa_center, c_red, 0, 1);
	initTipImage(player_id.spr_fair, -1, fa_center, 1, c_white, 1);
	initTipWords_ext("please laugh", fa_right, c_white, 0, 0);
	*/
	
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

	initPatch("0.info", "8 November, 2020");
	initPatchWords_ext("you can find info in the change notes section in the steam workshop page", fa_center, c_white, 0, 0);
	initPatchWords_ext("i know nobody uses them but i do", fa_center, c_white, 0, 0);
	
	initPatch("0.1", "27 June, 2020");
	initPatchWords_ext("changed some stuff maybe", fa_center, c_white, 0, 0);
	initPatchImage(other.spr_doublejump, 1, fa_center, 1, c_white, 3);
	
	initPatch("0.0", "27 June, 2020");
	initPatchWords_ext("releas", fa_center, c_white, 0, 0);
	initPatchImage(other.spr_pratfall, 0, fa_center, 1, c_white, 1);
	
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
	
	initCheat("Floaty", "cheat_floaty", [0, 1], ["Off", "On"], "Become the 'jigglypuff with a sword' you were destined to be.");
	initCheat("Jumps on hit", "cheat_hit_jumps", [0, 1], ["Off", "On"], "Get double jumps backs upon landing a hit.");
	initCheat("No move cooldowns", "cheat_no_cooldowns", [0, 1], ["Off", "On"], "funny description (Note: The game lags if you spawn enough boots.)");
	initCheat("Advanced boot data", "cheat_boot_data", [0, 1], ["Off", "On"], "What's REALLY going on here?");
	initCheat("Vibrate profusely", "cheat_vibrate", [0, 1, 2, 5, 50], ["Off", "Slight", "More", "Even More", "AAAAAA"], "jsadiajviaovmewaifjs");
	initCheat("Boot self damage", "cheat_boot_selfdamage", [0, 1], ["Off", "On"], "No one is safe from the boot.");
	initCheat("Always Active boot", "cheat_boot_active", [0, 1], ["Off", "On"], "Makes the boot not lame.");
	initCheat("Air Strongs", "cheat_air_strongs", [0, 1], ["Off", "On"], "becom rastor");
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
		AT_UTHROW,
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
		AT_DTHROW,
		AT_EXTRA_1,
		AT_EXTRA_2,
		AT_EXTRA_3,
		AT_TAUNT,
		AT_TAUNT_2,
		AT_PHONE,
		AT_FSTRONG_2,
		AT_USTRONG_2,
		AT_DSTRONG_2,
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
	stats_notes = "-"; // set to   "-"   if you don't need to put any notes
	
	
	
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
	
	initAbout("About Owen", "funny cat");
	initAbout("owen resprite", "owen resprite");

	
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
	
	SPK_OWEN = initSpeaker(1, "Owen", sprite_get("_pho_example_speaker"));
	//SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	// straight port for now because i hate writing dialogue!!!!!!
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "when did fancy pants become a furry");
	initCodecPage(SPK_ALTO, 0, 0, "Dunno. I guess he wanted to be a part of that 'Bird Guy' craze.");
	initCodecPage(SPK_OWEN, 0, 0, "bruh");
	initCodecPage(SPK_OWEN, 0, 0, "i liked the old codec better");
	initCodecPage(SPK_OWEN, 0, 0, "... wait, where'd muno go? wasn't he supposed to say something here?");
	initCodecPage(SPK_TRUM, 0, 0, "who's muno");
	initCodecPage(SPK_OWEN, 0, GIM_SKIP, "bu-");
	initCodecPage(SPK_OWEN, 0, GIM_SKIP, "wh-");
	initCodecPage(SPK_OWEN, 1, 0, "ok");
	initCodecPage(SPK_ALTO, 4, 0, "Owen has this annoying gimmick where the boot copies what it gets hit by. ");
	initCodecPage(SPK_ALTO, 1, 0, "It's not all bad, though. If we hit it, it switches owners!");
	initCodecPage(SPK_ALTO, 0, 0, "Owen is really fast in the air and has great aerials to boot.");
	initCodecPage(SPK_ALTO, 4, 0, "Whatever you do, don't get hit offstage by FAIR.");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	// no
}



// Steve death message

if pho_has_steve_dmsg{
	
	// ok i'll leave this one here too
	
	

	
	// maybe try using if hitstun == true if attacking after
	// a killing blow changes the message?
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