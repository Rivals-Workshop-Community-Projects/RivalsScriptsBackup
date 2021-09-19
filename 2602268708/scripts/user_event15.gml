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

if ("phone_inited" in self && phone_inited && !phone_lightweight){

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
		
		// Initial swallow
		
		if swallowed {
			
			swallowed = 0; // don't touch this line please im begging you
			
			var copy_spr = sprite_get("copy_sprite");
			var copy_hrt = sprite_get("copy_hurt");
			var copy_icn = sprite_get("copy_icon");
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				newicon = copy_icn;
				muno_last_swallowed = other.id;
				
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
				
				// edit the below (and, indeed, the above!) just like a regular attack script
				
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
				
				set_num_hitboxes(AT_EXTRA_3, 1);
				
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 50);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 66);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 75);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 14);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1.15);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DRIFT_MULTIPLIER, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
			
			// this system avoids conflicts between 2 swallowed chars IF they both use the munophone system for copy abilities.
		}
	}
	
	
	
	// Break the Targets data
	
	if pho_has_btt_layout{
		if get_btt_data { // Get data for Break The Targets
			course_name = "R-00 Course";
			// Set the spawn properties
			respawn_point = [[29,50],[0,0],1];
			// Set the collision of the solid sprites to precise
			sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
			room_add(1,[
			    [ // Each Cell
			        [0,0], // Cell Coordinates
			        [
			        	// Targets
				        [10, 4, 55, 0, -5, [0, 0, 32, [[0,0],[0,-3]], 0, 0, 0, 0], [0]],
				        [10, 40, 30.5, 0, -5, [1, 0, 60, [[-10,0],[5,0]], 0, 0, 0, 0], [0]],
				        [10, 87, 46, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 52, 44, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 55, 75, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 125, 55, 0, -5, [4, 0, 32, [[0,0],[0,-1]], 0, 0, 0, 0], [0]],
				        // Solid Ground
				    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
				    	// Plats
				    	[1, 46, 49, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
				    	[1, 64, 71, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
			            ]
			        ],
			    // Blastzones
			    [ // Each Cell
			        [0,1], // Cell Coordinates
			        [
			            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ],
			    [
			        [1,1],
			        [
			        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ],
			    [ // Each Cell
			        [-1,1], // Cell Coordinates
			        [
			        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ]
			    ]);
		}
	}
	
	
	
	// Amber
	
	if pho_has_amber_love{
		if amber_startHug{ // Amber will set this bool to true when this player accepts the hug
		    with amber_herObj{ // Access Amber's player object and set the values
		        // Set the window values for Amber's hugging. DO NOT change Amber's sprites
		        // in the attack_values
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		        // etc....
		
		        // Important. Puts Amber in startup hug state (2).
		        // Editing this variable not recommended
		        amberHugState = 2; 
		    }
		    // Important. Puts this character in startup hug state (2).
		    // Editing this variable not recommended
		    oPlayerHugAmberState = 2;
		    
		    // Set this bool back to false so that this doesn't loop
		    amber_startHug = false;
		}
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
pho_has_feri_taunt = 1;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 1;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
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
phone.taunt_hint_y = 0;									// Vertical offset
phone.shader = 0;										// Whether or not to apply the character's palette to the phone and non-TrainingTown sidebar (change color with alt costumes)

phone.dont_fast = 0;									// Set to 1, and Fast Graphics will NOT automatically be set when the FPS dips below 60.
phone_lightweight = 0;									// Set to 1 to disable certain features, possibly improving performance a little bit. See _readme.gml.
phone.frame_data_loaded = 0;							// Set to 1 to disable the frame data guide, which MIGHT improve performance on bad computers? (This is just a guess. It has no impact on code run during gameplay, but gets rid of a TON of data stored in memory in Practice Mode...)



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
	 * - 4: Cause this element to not push the subsequent elements downward
	 * - 5: Cause the character's palette to apply to this element
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	
	// NOTE: Using sprite_get() does not work here, so sprites must be saved as
	// variables. See init.gml for an example of this with spr_nspecial_proj.
	
//	initTip("NSpecial: Fast Repeat Shots");
//	initTipWords("After shooting a heart with NSpecial, you can fire another shot sooner than you can perform any other action. Rack up damage against a distracted opponent!");
//	if ("spr_nspecial_proj" in player_id) initTipImage_ext(player_id.spr_nspecial_proj, -5, fa_right, 1, c_white, 3, 40, 30, 60, 0);
//	initTipImage_ext(player_id.spr_nspecial, 2, fa_left, 1, c_white, 0, 24, 40, 64, 0);
	
	initTip("Wall Cling");
	initTipWords("Chuckya can wall cling. That is all.");
	initTipImage(player_id.spr_wallcling, -5, fa_center, 1, c_white, 0);
	
	initTip("Cargo Grab");
	initTipWords("With Nspecial, Chuckya can grab opponents. You can walk and do a short jump while grabbing opponents");
	initTipImage(player_id.spr_nspecial, -4, fa_center, 1, c_white, 0);

	initTip("Throws");
	initTipWords("While grabbing, Chuckya can throw an opponent in any direction.");
	initTipImage(player_id.spr_grab_dthrow, -5, fa_center, 1, c_white, 0);

	initTip("Bob-Ombs");
	initTipWords("For fspecial, Chuckya throws a Bob-Omb that bounces once before exploding on contact with the stage.");
	initTipImage(player_id.spr_fspecial_bombproj_blast, -5, fa_center, 1, c_white, 0);

	initTip("Heave-Ho");
	initTipWords("For Dspecial, Chuckya throws a Heave-Ho. It will move across the stage automatically, throwing opponents or Bob-Ombs it comes across then exploding.");
	initTipImage(player_id.spr_heaveho, -5, fa_center, 1, c_white, 0);

	initTip("Cannon");
	initTipWords("For USpecial, Chuckya launches itself out of a cannon. It can be aimed by pressing left or right. After launching yourself upwards, the cannon drops as a heavy projectile.");
	initTipImage(player_id.spr_uspecial, 1, fa_center, 1, c_white, 0);
	
	initTip("Whomps & Thwomps");
	initTipWords("Chuckya's Fstrong and DStrong are Whomp and Thwomp respectively, and both can be thrown offstage.
	
	Whomp can be tossed off by standing close to the ledge, and sends upward. Thwomp can be tossed off by sliding off the ledge during DStrong's startup, and does spike offstage.
	
	Whomps have a cooldown when being tossed off the ledge, but not when used onstage.");
	initTipImage(player_id.spr_whomp, 1, fa_center, 1, c_white, 0);

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
	
	initPatch("1.0", "18 September, 2021)");
	initPatchWords("Chuckya released :)")

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
	
	// post_draw.gml
	initCheat("Say woag", "cheat_funny_snail", [0, 1], ["no", "yes"], "Say woag? Yes. No. AAAAAA");
	
	// update.gml
	initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Sandbert's maximum number of double jumps.");
	
	// update.gml
	initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how");
	
	// init_shader.gml
	initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "skittles");
	
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
	
	initAbout("About Chuckya", "Chuckya by the Fighting Polygon Team
	Inspired by NickYellow0313's Chuckya (also I used its sprite for the taunt)
	
	CREDITS:
	Flophawk: Project Manager, Lead Artist, Lead Coder, Victory Theme
	Ability: Lead Coder
Gnome: Lead Coder
DeltaParallax: Lead Coder
DynamicLemons: Last Minute Very Epic Coder
	Mr. Start: Assistant Artist
	Succ: Assistant Artist
	Tai: Assistant Hitbox Coder
	Spam: Assistant Coder
	
	STUFF USED:
	Gaybow Road Taunt Music: Rainbow Road by RhymesWithStomach
	Numerous Bees Taunt Music: Honeycomb Highway by Siivagunner
	Trans Rights Taunt Music: idk the USSR or something
	Wall E Compatability Music: Slider from SM64DS
	Final Smash Buddy Music: Looping Steps from SM64 (reversed)
	
	SFX sourced from Super Mario 64, SMB2, Super Mario Maker, SML2, Rhythm Heaven Fever, Marvel vs Capcom 3,  Mario Party, Undertale, and Smash Ultimate.");
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
	 * GIM_TEXTBOX			text color             is set to the value of the   spr_custom_trummel_textbox   variable in the player object
	 * GIM_COLOR			textbox sprite index   is set to the value of the   spr_custom_trummel_color     variable in the player object
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_ALTO, 2, 0, "Chuckya, The Clockwork Catapult. It appears in SM64 and it's remake.");
	initCodecPage(SPK_ALTO, 3, 0, "Fun fact! Chuckya can blink, but chooses not to.");
	initCodecPage(SPK_TRUM, 2, 0, "thats not fun at all");
	initCodecPage(SPK_ALTO, 1, 0, "More fun facts! Chuckya feels nothing and will yeet you into the shadow realm with no remorse!");
	initCodecPage(SPK_TRUM, 1, 0, "why are you like this");
	initCodecPage(SPK_ALTO, 6, 0, "I had fun removal surgery in 2004.");
	initCodecPage(SPK_TRUM, 4, 0, "that explains a lot");
	initCodecPage(SPK_ALTO, 9, 0, "...");
	initCodecPage(SPK_ALTO, 4, 0, "how dare you");	
		
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve was thrown out of the course.";
	
}



if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("comp_feri_costume", 84, 114);
		feri_costume = sprite_get("comp_feri_costume_chuckya");
		
	}
	
	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "Chuckster";
		
	}
	
	
	
	// Rat all-out quote
	
	if pho_has_rat_allout{
		
		personaQuips[10] = "EE OING!";
		
	}
	
	
	
	// The Chosen One sketch
	
	if pho_has_tco_sketch{
		
		tcoart = sprite_get("comp_chuckya_tcoart");
		
	}
	
	
	
	// Abyss Hime death sprite
	
	if pho_has_ahime_dead{
		
		sprite_change_offset("comp_a_hime_death", 36, 76);
		abyssHime_deathspr = sprite_get("comp_a_hime_death");
		
	}
	
	
	
	// Fire's taunt
	
	if pho_has_fire_taunt{
		
		sprite_change_offset("fire_taunt", 0, 0);
		fire_taunt = sprite_get("fire_taunt");
		fire_taunt_duration = 420;
		fire_taunt_frames = 69;
		fire_taunt_sound = sound_get("woagf");
		fire_taunt_sound_frame = 3;
		
	}
	
	
	
	// Wall-E's radio
	
	if pho_has_wall_e_ost{
		
		walle_taunt_sound = sound_get("slider_ds");
		walle_taunt_type = 1;
		
	}
	
	
	
	// Amber's plushie and hug
	
	if pho_has_amber_love{
		
		plushForAmber = sprite_get("amber_plushie");
		
		// Amber interaction variables
		amber_herObj = noone; // The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
		amber_thisHugSprite = sprite_get("sandbert_hug");
		amber_herHugSprite = sprite_get("amber_hug");
		amber_startHug = false; // This variable is set true from Amber's scripts
		amber_thisSpriteInFront = true; // When true, this character's sprite is rendered over Amber's sprite
		amber_autoTurnToHer = true; // This character will automatically face towards Amber upon hug activatation when true
		
		amber_hugStartPos[0] = 42; // The x target offset point (from Amber's pos) where the player should hug Amber at. 
		amber_hugStartPos[1] = 0; // The y target offset point. Recommended to keep this at 0 for grounded interaction
		
		amber_hugExitPos[0] = 42; // The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
		amber_hugExitPos[1] = 0; // The y target offset point.
		
		// The x target offset positions will inherit the character's spr_dir when this is true.
		// Set this to true for character interactions that face toward each other such as hugging
		// Set this to false for centered interaction animations
		amber_useSprDirOffset = true; 
		
		amber_hugExitTimer = 30; // How many frames should pass before either player can exit the hug window loop
		amber_hugExitWindow = 3; // The window to jump to when either player presses a button to exit hug loop
		
		sprite_change_offset("sandbert_hug", 32, 62);
		sprite_change_offset("amber_hug", 32, 62);
		
	}
	
	
	
	// Moonchild music
	
	if pho_has_moon_music{
		
		childsupport = true; // this is so sad
		
	}
	
	
	
	// Agent N codec
	
	if pho_has_agentn_cdc{
		
		ncode1 = "It's gonna chuck ya!";
		ncode2 = "This automaton posses free will but no morality.";
		ncode3 = "Caution is advised. Stay out of it's reach.";
		
	}
	
	
	
	// Dracula dialogue
	
	if pho_has_drac_codec{
		
		dracula_portrait = sprite_get("comp_drachuchya_portrait");
		dracula_portrait2 = asset_get("empty_sprite");
		dracula_portrait3 = asset_get("empty_sprite");
		var page = 0;
		
		// Page 0
		dracula_speaker[page] = 0;
		dracula_text[page] = "Fantastic. I'm being graced by the presence of the world record holder for largest gumball. How very lucky of me.";
		page++;
		
		// Page 1
		dracula_speaker[page] = 1;
		dracula_text[page] = "EE OING[taunt]";
		page++;
		
		// Page 2
		dracula_speaker[page] = 0;
		dracula_text[page] = "...What?";
		page++;
		
		// Page 3
		dracula_speaker[page] = 1;
		dracula_text[page] = "EE OING[taunt]";
		page++;
	
		// Page 4
		dracula_speaker[page] = 0;
		dracula_text[page] = "[shake]Is that the only noise you can make, you wretched automaton?";
		page++;
		
		// Page 5
		dracula_speaker[page] = 1;
		dracula_text[page] = "EE OING[taunt]";
		page++;	
	
		// Page 6
		dracula_speaker[page] = 0;
		dracula_text[page] = "Enough with your incessant racket![glass] I shall deal with you myself!";
		page++;
		
		// Page 7
		dracula_speaker[page] = 1;
		dracula_text[page] = "";
		page++;	
		
		// Page 8
		dracula_speaker[page] = 1;
    	dracula_text[page] = "EE OING[taunt]";
		page++;	
	
	}
	
	
	
	// Miiverse post
	
	if pho_has_miivs_post{
		
		sprite_change_offset("comp_chuchya_miiverse", 60, 30);
		miiverse_post = sprite_get("comp_chuchya_miiverse");
		
	}
	
	
	
	// Mt Dedede title
	
	if pho_has_dede_title{
		
		arena_title = "The Clockwork Catapult";
		arena_short_name = "Chuckya";
		
	}
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* Smells like a good yeeting.";
		
	}
	
	
	
	// Trial Grounds
	
	if pho_has_been_found{
	
		sprite_change_offset("trial_grounds", 31, 0);
		guiltySprite = sprite_get("comp_chuchya_guilty");
		
	}
	
	
	
	// Last Resort painting
	
	if pho_has_resort_pic{
		
		sprite_change_offset("comp_im_deaaaad", 27, 39);
		resort_portrait = sprite_get("comp_im_deaaaad");
		
	}
	
	
	
	// PKMN Stadium battle portraits
	
	if pho_has_pkmn_image{
		
		pkmn_stadium_front_img = sprite_get("comp_pkmn_battlefort_front");
		pkmn_stadium_back_img = sprite_get("comp_pkmn_battlefort_back");
		pkmn_stadium_name_override = "CHUCKYA";
		
	}
	
	
	
	// Daroach dialogue
	
	if pho_has_daro_codec{
		
		daroach_portrait = sprite_get("daro_portrait");
		daroach_portrait2 = asset_get("empty_sprite");
		daroach_portrait3 = asset_get("empty_sprite");
		var page = 0;
		
		// Page 0
		daroach_speaker[page] = 0;
		daroach_text[page] = "holy frick";
		page++;
		
		// Page 1
		daroach_speaker[page] = 0;
		daroach_text[page] = "im dracula";
		page++;
		
		// repeat...
		
	}
	
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