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
		
		// Initial swallow
		
		if swallowed {
			
			swallowed = 0; // don't touch this line please im begging you
			var copy_spr = sprite_get("poyo");
			var copy_hrt = sprite_get("poyo_hurt");
			var proj_spr = sprite_get("fspecial_proj");
			var rudebuster_sfx = sound_get("sfx_rudebuster");
			var copy_icn = sprite_get("kirbyicon")
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				newicon = copy_icn;
				muno_last_swallowed = other.id;
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
				set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 12);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 6);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, rudebuster_sfx);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
				
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
				
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
				
				set_num_hitboxes(AT_EXTRA_3, 1);
				
		
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 55);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .9);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_spr);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, proj_spr);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 6);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, rudebuster);
				set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_zap"));
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
			if (window == 3) {
				move_cooldown[AT_EXTRA_3] = 220;
			}
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
pho_has_copy_power = 1;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 0;	// Costume for Feri's taunt
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 1;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 0; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 1; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
pho_has_pkmn_image = 0; // Battle sprite for Pokémon Stadium
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
muno_char_name = "Kris";								// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_fspecial_proj = sprite_get("fspecial2_proj");



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
	
	initTip("Dash Attack: Jump Cancels");
	initTipWords("After hitting an opponent, Kris can jump cancel their Dash Attack!");
	initTipImage_ext(player_id.spr_dattack, -6, fa_left, 1, c_white, 3, 60, 60, 64, 0);
	
	initTip("FSpecial: Red Buster");
	initTipWords("Just like in Deltarune, FSpecial is empowered to Red Buster when Kris gets to 65%.");
	initTipImage(player_id.spr_fspecial, -5, fa_left, 1, c_white, 0);
	initTipImage_ext(player_id.spr_fspecial_proj, -6, fa_right, 1, c_white, 3, 75, 75, 75, 100);
	
	initTip("USpecial's Height");
	initTipWords("Holding down special, when using USpecial, will make you go up higher. However, it does cost TP to use.");
	initTipImage(player_id.spr_uspecial, 3, fa_center, 1, c_white, 0);
	
	initTip("Life's Biggest Question");
	initTipWords_ext("What does Down Special do?", fa_center, c_red, 0, 1);
	initTipImage(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0);
	initTipWords_ext("Down Special activates Courage. When courage is active, all of your attacks do more damage and you are heavier. Getting hit in this state will reduce your TP by 4%. Your TP will slowly drain while in this mode.", fa_center, c_white, 0, 0);
	initTipWords_ext("this joke is still good, right?", fa_right, c_white, 0, 0);
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

	initPatch("4.91", "27 April, 2021");
	initPatchWords_ext("Hey, what if Kris was stronger?", fa_center, c_white, 0, 0);
	initPatchWords_ext("Changes:", fa_center, c_gray, 0, 0);
	initPatchWords_ext("- Kris will no longer disappear immediately after using any partner attacks (ustrong, dstrong, fspecial, nspecial)", fa_left, c_white, 0, 0);

	initPatch("4.9", "18 March, 2021");
	initPatchWords_ext("Nothing special going on, just fixing a new patch bug. Sorry for the inconvenience!", fa_center, c_white, 0, 0);
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 0, 0);
	initPatchWords_ext("- Kris will no longer disappear immediately after using any partner attacks (ustrong, dstrong, fspecial, nspecial)", fa_left, c_white, 0, 0);

	initPatch("4.8", "7 January, 2021");
	initPatchWords_ext("First patch of 2021!!!!!", fa_center, c_white, 0, 1);
	initPatchWords_ext("...and it's hardly anything.", fa_center, c_white, 0, 3);
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 0, 0);
	initPatchWords_ext("- Kris will no longer randomly delete other character's article3 objects (N/A laser, etc...)", fa_left, c_white, 0, 0);
	initPatchWords_ext("- Kris will no longer attempt to maul you in training mode when not set to attack", fa_left, c_white, 0, 0);
	initPatchWords_ext("- You may have noticed that the patch note number is way higher! Steam doesn't allow doing mini-patches and other unlisted stuff without incrementing the version number by .1, so I've added a few numbers to the patch notes to make sure it all lines up again. Sorry!", fa_left, c_white, 0, 0);

	initPatch("4.42", "29 December, 2020");
	initPatchWords_ext("Fixed some jank that happened with the custom colors for Susie, Ralsei, Jevil, and Lancer.", fa_left, c_white, 0, 0);
	initPatchWords_ext("Removed Legacy Abyss Rune Buddy Support, now should have normal Abyss Runes.", fa_left, c_white, 0, 0);

	initPatch("4.41", "14 December, 2020");
	initPatchWords_ext("Added Custom Color Buddy support, thanks to VMan_2002 for doing all of the work on that for us.", fa_left, c_white, 0, 0);
	initPatchWords_ext("Removed the skin alt sprites, as it's now all handled via code.", fa_left, c_white, 0, 0);
	initPatchWords_ext("- You may notice that loading time has increased significantly.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Free Special Cheat was fixed.", fa_left, c_white, 0, 0);

	initPatch("4.4", "30 November, 2020");
	initPatchWords("After weighing user feedback, Dtilt and Dash Attack are returning to their original inputs. Kris did it first!");
	initPatchWords_ext("Sorry Sai. But Sliding Dash Attack just felt better.", fa_left, c_gray, 1, 0);
	initPatchWords_ext(" ", fa_center, c_green, 0, 0);
	initPatchWords_ext("Nerfs:", fa_center, c_red, 0, 0);
	initPatchWords_ext("- Air friction: .07 -> .04", fa_left, c_white, 0, 0);
	initPatchWords_ext("- FAir tipper angle 315 -> 275", fa_left, c_white, 0, 0);
	initPatchWords_ext("- NAir knockback scaling .0 hit1 .1 hit2 -> .15 hit1 .5 hit2", fa_left, c_white, 0, 0);
	initPatchWords_ext("- NAir1 BKB decreased to 3", fa_left, c_white, 0, 0);
	initPatchWords_ext("- DStrong can be wallteched between hit1 and hit2", fa_left, c_white, 0, 0);
	initPatchWords_ext("- DStrong hit1 size less forgiving", fa_left, c_white, 0, 0);
	initPatchWords_ext("- DStrong hit1 hitpause scaling 0 -> .15", fa_left, c_white, 0, 0);
	initPatchWords_ext("- BAir sweetspot hitpause slightly adjusted to make sweetspot more reactable and sourspot noticably different", fa_left, c_white, 0, 0);
	initPatchWords_ext("- BAir sourspot damage 9 -> 7", fa_left, c_white, 0, 0);
	initPatchWords_ext("- Charge startup sfx on strongs disabled", fa_left, c_white, 0, 0);
	initPatchWords_ext("- FAir End Lag increased from 16 -> 18", fa_center, c_green, 0, 0);
	initPatchWords_ext(" ", fa_center, c_green, 0, 0);
	initPatchWords_ext("Buffs:", fa_center, c_green, 0, 0);
	initPatchWords_ext("- You can now walljump cancel uspecial halfway through its rise", fa_left, c_white, 0, 0);
	initPatchWords_ext("- FAir start-up frames reducded from 18 -> 16", fa_left, c_white, 0, 0);
	initPatchWords_ext("- BAir sweetspot active frames 1 -> 2", fa_left, c_white, 0, 0);
	initPatchWords_ext(" ", fa_center, c_green, 0, 0);
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 0, 0);
	initPatchWords_ext("- Kirby functionality restored", fa_left, c_white, 0, 0);
	initPatchWords_ext("- Moved several TP gain values around to match new move properties", fa_left, c_white, 0, 0);
	initPatchWords_ext("- BAir and UAir sfx timing fixed (thanks tdude)", fa_left, c_white, 0, 0);
	initPatchWords_ext("- FSpecial projectiles now behave appropriately on parry, parry stun on red buster removed consequently", fa_left, c_white, 0, 0);
	initPatchWords_ext("- NSpecial will now kill active hitboxes on players hit", fa_left, c_white, 0, 0);
	initPatchWords_ext("- Fixed Jab to prevent accidental Jab 2 inputs", fa_left, c_white, 0, 0);
	initPatchWords_ext("- Fixed Obama and Pride colors not changing the right aspects of Kris.", fa_left, c_white, 0, 0);

	initPatch("4.3", "27 November, 2020");
	initPatchWords_ext("DTilt and Dash Attack have been swapped around to keep Kris similar to the other Undertale protags.", fa_left, c_white, 0, 0);
	initPatchWords_ext("NAir has been made into a two hit move.", fa_left, c_white, 0, 0);
	initPatchWords_ext("- Hit 1 angles at 60, with 7 BKB.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("- Hit 2 angles at 45, 5 BKB and .1 Knockback Scaling", fa_left, c_white, 1, 0);
	initPatchWords_ext("FStrong has been made about 20px bigger.", fa_left, c_white, 0, 0);
	
	initPatch("4.2", "10 November, 2020");
	initPatchWords_ext("Wait, a Kris update in 2020?", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_getfucked, -2, fa_center, 1, c_white, 1);
	
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
	
	// update.gml
	initCheat("Free Specials", "cheat_freespecials", [0, 1], ["False", "True"], "When enabled, your specials don't cost anything.");
	// update.gml
	initCheat("Keep TP On Death", "cheat_keeptp", [0, 1], ["False", "True"], "When enabled, you keep your TP when you die.");
	// update.gml
	initCheat("Courage Drain Toggle", "cheat_courage", [0, 1, 2], ["True", "False", "Courage Always On"], "When enabled, courage will no longer drain your TP.");
	// update.gml
	initCheat("Diamond Kris", "cheat_diamond", [0, 1], ["Off", "On"], "When enabled, you BECOME GOD.");
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
	
	initAbout("About Kris", "Kris was one of the first characters released for Rivals of Aether Workshop.
	
	Created By: EqunioxDoodles (@EquinoxDoodles on Twitter)
	NSpecial and DSpecial code done by Ethan (madman)
	Color Work done by VMan_2002
	Ralsei, Susie, Lancer, and Jevil color choices done by Omni");
	
	initAbout("Disclaimer", "Kris is not officially supported by Toby Fox.");
	
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
	initCodecPage(SPK_TRUM, 0, 0, "he's not going to put effort into this");
	initCodecPage(SPK_ALTO, 4, 0, "I guess that's on us. We had a cool little codec...");
	initCodecPage(SPK_TRUM, 0, 0, "are these even codecs or are we just chatting");
	initCodecPage(SPK_ALTO, 3, 0, "I mean, we call them codecs...");
	initCodecPage(SPK_TRUM, 0, 0, "isn't there another character who has one");
	initCodecPage(SPK_TRUM, 0, 0, "isn't she an annoying dog");
	initCodecPage(SPK_ALTO, 0, 0, "No, she's just a normal dog with an eyepatch.");
	initCodecPage(SPK_ALTO, 1, 0, "We should probably talk about Kris, huh?");
	initCodecPage(SPK_TRUM, 0, 0, "trummel 1.0 quip was better");
}

// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve was defeated! 0 EXP Gained!";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "Honorary Lightener";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "bro why you sellin merch for a demo";
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	tcoart = sprite_get("tcoart1");
	
}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	
	sprite_change_offset("ahime_dead", 0, 0);
	abyssHime_deathspr = sprite_get("fuckindead");
	
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
	
	walle_taunt_sound = sound_get("wall_e_sound");
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
	
	ncode1 = "Legendary Lightener, reportedly.";
	ncode2 = "Travels with many companions.";
	ncode3 = "Copyright Infringement.";
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
	// YOU DON'T BELONG IN THIS WORLD!
	dracula_portrait = sprite_get("dracula_portrait2");
	dracula_portrait2 = asset_get("empty_sprite");
	var page = 0;
	
	//Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "Ah... new visitors...";
	page++;
	
	//Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "If you wish for a merciful death, I suggest you law down your weapons.";
	page++;
	
	//Page 2
	dracula_speaker[page] = 1;
	dracula_text[page] = "...";
	page++;
	
	//Page 3
	dracula_speaker[page] = 0;
	dracula_text[page] = "So be it.";
	page++;
	
	//Page 4
	dracula_speaker[page] = 0;
	dracula_text[page] = "[glass] Have at you!";
	page++;

	
}



// Miiverse post

if pho_has_miivs_post{
	
	sprite_change_offset("miiverse_post", 60, 30);
	miiverse_post = sprite_get("miiverse2");
	miiverse_post2 = sprite_get("miiverse1");
	miiverse_post3 = sprite_get("miiverse3");
	
}



// Mt Dedede title

if pho_has_dede_title{
	//dabs
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	battle_text = "* You can feel reality begin to";
	battle_text2 = "  warp around you";
	battle_text3 = " ";
	
}



// Trial Grounds

if pho_has_been_found{

	sprite_change_offset("guiltySprite", 31, 0);
	guiltySprite = sprite_get("guiltySprite");
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	sprite_change_offset("last_resort", 27, 39);
	resort_portrait = sprite_get("last_resort");
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
	pkmn_stadium_front_img = sprite_get("pkmn_front");
	pkmn_stadium_back_img = sprite_get("pkmn_back");
	pkmn_stadium_name_override = "sdkhjfskhgfkslhfglkha";
	
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