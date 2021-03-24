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
	num_alts = 6; // Number of alt costumes; controls how many appear on the CSS
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

spr_airdash = sprite_get("airdash");
spr_airdash_back = sprite_get("airdash_back");
spr_fsmash = sprite_get("fsmash");

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

	initTip("Main Gimmick: Magic Series");
	initTipWords("Peacock can cancel most of her normal moves into other moves! It mostly starts with a jab, tilt, another jab then a heavy attack.");
	initTipImage(player_id.spr_jab, -2, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_fstrong, -2, fa_right, 1, c_white, 0);
	
	initTip("Secondary Gimmick: Airdash");
	initTipWords("By double tapping the joypad in the air, Peacock can preform an airdash to gain aerial momentum. This can cancel aerial moves and can be cancelled itself.");
	initTipImage(player_id.spr_airdash, -3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_airdash_back, -3, fa_right, 1, c_white, 0);
	
	initTip("FSpecial Shots");
	initTipWords("You can press B thrice during her FSpecial to fire 3 projectiles at once! Each one more powerful than the last.");
	initTipImage(player_id.spr_fspecial, -3, fa_center, 1, c_white, 0);
	
	initTip("Grounded USpecial");
	initTipWords("Peacock can pull out a portible hole to teleport across the stage. She's invurnerble while invisible, But can only teleport forwards.");
	initTipImage(player_id.spr_uspecial, -3, fa_center, 1, c_white, 0);
	
	initTip("Jump Cancel with DTilt");
	initTipWords("DTilt launches opponents upwards, and on a successful hit, you can jump out of it and follow of with more attacks.");
	initTipImage(player_id.spr_dtilt, -3, fa_center, 1, c_white, 0);
	
	initTip("Shadow of Impending Doom");
	initTipWords("Peacock blows a whistle to summon a projectile from the sky! A shadow will spawn from the stage and will grow overtime to drop more deadlier items or until you press DSpecial again, as long as you don;t get hit")
	initTipImage(player_id.spr_dspecial, -4, fa_center, 1, c_white, 0);
	
	initTip("NAir: Self Cancelling");
	initTipWords("NAir has two attacks stuffed in one, Once NAir hits you can either cancell it to another attack, airdash or itself.");
	initTipImage(player_id.spr_nair, -3, fa_center, 1, c_white, 0);
	
	initTip("Did You Know?");
	initTipWords("If you press Taunt during the countdown you will activate Voiced Mode? Try it out! Did you also know that she has character specific voice lines too?");
	
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
	 
	initPatch("1.6", "16 March, 2021");
	
	initPatchWords("Adjustments");
	initPatchWords_ext("Redesigned MunoPhone", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Adjusted Voiced Mode", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Fixed DSpecial Hurtbox", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Added Cirno Skin", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Everything updated before this patch is now stuffed in v1.6", fa_left, c_gray, 1, 0);

	initPatchWords("Buffs");
	initPatchWords_ext("Adjusted FStrong Angles: Sour: 30 > 44 - Sweet: 27 > 36", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Chipped off 4 Frames From DStrong", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Final Smash Finisher now fires 4 transcendent Projectiles to kill more than 1 player", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Changed the angles of Final Smash Projectiles - Top sends downwards while bottom sends upwards.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Ground USpecial can now send you slightly further", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Increased Double Jump Height", fa_left, c_gray, 1, 0);

	initPatchWords("Nerfs");
	initPatchWords_ext("UTilt now has set knockback", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Decreased UTilt Hitbox Base Knockback 5 > 4", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Decreased DStrong Knockback growth: Sweet: 1.0 > .90 - Sour: .84 > .80", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Decreased Dash Speed: 6.5 > 6", fa_left, c_gray, 1, 0);
	initPatchWords_ext("You can no longer use strong attacks during the road roller drop", fa_left, c_gray, 1, 0);
	
	initPatch("1.5", "3 March, 2021");
	initPatchWords("Additions");
	initPatchWords_ext("Added Final Smash", fa_left, c_gray, 1, 0);
	initPatchImage(other.spr_fsmash, -4, fa_center, 1, c_white, 0);
	initPatchWords_ext("Added MunoPhone(TM)", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Added Trummel Codec", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Added more character compatibilities", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Added Trans Rights skin", fa_left, c_gray, 1, 0);

	initPatchWords("Buffs");
	initPatchWords_ext("Made FSpecial Projectiles transcendent", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Adjusted FStrong angle 28 > 45", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Swapped DStrong angle flipper 6 > 0", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Increased FAir knockback growth", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Fixed a bug that lets Peacock use FSpecial as soon as she lands on her USpecial spring", fa_left, c_gray, 1, 0);

	initPatchWords("Nerfs");
	initPatchWords_ext("Increased total amount of frames for FSpecial", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Increased NSpecial cooldown 30 > 60", fa_left, c_gray, 1, 0);

	initPatch("1.2", "16 February, 2021");
	initPatchWords("Additions");
	initPatchWords_ext("Gave DAir a weak hitbox on her feet", fa_left, c_gray, 1, 0);
	initPatchImage(other.spr_dair, -4, fa_center, 1, c_white, 0);
		
	initPatchWords("Buffs");
	initPatchWords_ext("Adjusted FStrong angle and knockback", fa_left, c_gray, 1, 0);;
	initPatchWords_ext("Tweaked DSpecial", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Tweaked DSpecial", fa_left, c_gray, 1, 0);

	initPatchWords("Nerfs");
	initPatchWords_ext("Increased FSpecial Cooldown", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Removed the ability to teleport backwards", fa_left, c_gray, 1, 0);

	initPatch("1.1", "15 February, 2021");
	initPatchWords("Additions");
	initPatchWords_ext("There ain't anything added, ya mook!", fa_left, c_gray, 1, 0);
	initPatchImage(other.spr_hurt, -1, fa_center, 1, c_white, 1);
		
	initPatchWords("Buffs");
	initPatchWords_ext("Made Uspecial impossible to miss the spring", fa_left, c_gray, 1, 0);;
	initPatchWords_ext("Buffed Jab's third hitbox", fa_left, c_gray, 1, 0);

	initPatchWords("Nerfs");
	initPatchWords_ext("Nerfed Nair 2's last hitbox", fa_left, c_gray, 1, 0);

	initPatch("1.0", "25 February, 2021");
	initPatchWords_ext("Peacock 2 is out!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_dash, -2, fa_center, 1, c_white, 1);
	
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
	
	initAbout("About Peacock", "Peacock, her real name being Patrica Watson, is a Anti Skullgirl Soldier reborn in Lab 8. 	She has the ability to manupulate reality within her imagination to her advantage. When it comes to fighting her, she does not play fair, as she sides with her not so imaginary friends George, Andy Anvil, Tommy Ten-Tons, Lonesome Lenny and Avery.

	Peacock was a war orphan, whose home was demolished by a past Skullgirl. She was sent to an orphanage, which used to be a nobleman's house in Rommelgard. She lived with her best and one of her only friends at the time, Marie Korbel. Until the orphanage was raided by Medichi slave traders and both Patrica and Marie were snatched, along side the rest of the orphans. Patrica was defiant against the traders, and as a result, she was mutilated as an example to the bystanders, and was left to die. Marie ran away and was never seen again. 
	Meanwhile, Big Band, and his cohorts have found her body lying on the ground, Valentine said that they might not recover her, but Big Band suggested that she can be a Anti Skullgirl Unit, just like him. And so, Lab 8 and Lab 0 teamed up to treat Patrica back to health, and turn her into a high class weapon. Her Argus System was installed successfully and she is able to see again. And the Avery Unit should give her two way connections to her and Lab 8's underground arsenal.
	
	Big Band approached Patrica to begin testing again as opposed to watching cartoons, but suddenly Tommy Ten-Tons interupted the scene and proceeded to attack Big Band. Suddenly in the middle of the fight, Andy Anvil showed up as well and fought with Tommy, and lastly, Avery came last. The Avery Unit was successfully tested and is considered ready.
	After her operation was finished, Patrica identified herself as Peacock from now on. Days later, she disappeared without a trace, and Big Band was sent to look for her. He look at a torn down ice cream vender, with nothing but rocky road, then stumbled at a theater to find the same car Peacock went off with, assuming the Medichis found her, Big Band rushed in the theater, only to find Peacock unharmed, watching cartoons as usual.

	One year later, Peacock went out to hunt the Skullgirl after another is awoken, shoving back anyone who dares to get in her way. But as soon as she was in the middle of her Skullgirl hunt, Lab 8 was under attack, Peacock rushed back to the scene, then found Dr. Avian's mutulated body. As said by Avian, Valentine betrayed him, demolished the lab and let the Skullgirl in. They fled to New Meradian at the Grand Cathedral, and Peacock went on without hesitation, taking the survivors of the attack with her.
	At the city with the refuges, she was about to continue on her revenge fueled Skullgirl hunt, Big Band appeared. he attempted to make sure she doesn't go along and pick up the rest of the remains of Lab 8. Which ended up in a fight. Peacock lost the duel, but escaped after dropping Tommy on Big Band, she went on to New Meradian to continue her quest, while Big Band goes and looks for her before she gets killed.
	
	Peacock found the Skullgirl in New Meradian, as Avian said. But then she noticed a familiar figure traveling with Valentine, it was Marie. A doppelganger showed up to stand in Peacock's way, only for her to flee to the Grand Cathidral to face Valentine, then fled again. At the bottom of the Grand Cathidral was Marie plotting to demolish the Medichi family once and for all. Peacock tried to convince that Marie has gone out of control, and proceeded to fight. Peacock lost the battle, but Marie didn't finsh her off. Big Band later arrived at the scene to find Marie, and found out that Peacock is still alive. The teamed up and fought Marie in a rematch. Then won the battle.
	
	After Marie ws defeated, she stated that when she found the Skull Heart, she thought she can wish that she can avenge Peacock for what the Medichi's did. And then Peacock swore to carry on her wish, with a friend's promise. Peacock and Big Band then destroyed the Skull Heart with full force, but when the Skull Heart was destroyed, its 8 year cycle resets and will come back after that. Peacock and Big Band escaped before the area collapsed. Big Band proceeded to go on his normal life, strolling the streets of the Canopy Kingdom. While Peacock kept her promise, and went on to attack the Medichi family.");
	
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
	
	SPK_PEACOCK = initSpeaker(2, "Peacock", sprite_get("_pho_example_speaker"));
	SPK_AVERY = initSpeaker(3, "Avery", sprite_get("_pho_avery_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "peacock 2");
	initCodecPage(SPK_ALTO, 4, 0, "Not again! I thought we went through you MONTHS ago!");
	initCodecPage(SPK_PEACOCK, 0, 0, "Did ya miss me ya mooks?");
	initCodecPage(SPK_OTTO, 0, 0, "Not really, but I dig your new look.");
	initCodecPage(SPK_CODA, 0, 0, "Wait, who's that?");
	initCodecPage(SPK_ECHO, 0, 0, "Yeah, what's the context?");
	initCodecPage(SPK_TRUM, 0, 0, "pee cock");
	initCodecPage(SPK_ALTO, 4, 0, "Trummel!");
	initCodecPage(SPK_ALTO, 6, 0, "(Sigh)");
	initCodecPage(SPK_ALTO, 0, 0, "That, is Peacock. She's a cartoon elemental ASG soldier with the ability to bend the laws of reality.");
	initCodecPage(SPK_ALTO, 0, 0, "She utilizes a wide arsenal of projectiles, cartoons and tricks to aid her in battle. When it comes with fighting, she doen't play fair.");
	initCodecPage(SPK_ALTO, 0, 0, "As such she brings her gang of living cartoons into the ring. Followed by running away, firing endless bullets and being obnoxius.");
	initCodecPage(SPK_ALTO, 2, 0, "Last time we encountered, she used to have command inputs and auto turn...");
	initCodecPage(SPK_ALTO, 4, 0, "and broke Trummel's shell, smashed Otto's bike and call us ''morons''! ");
	initCodecPage(SPK_TRUM, 0, 0, "owie");
	initCodecPage(SPK_PEACOCK, 0, 0, "Maybe next time try opening your eyes, slowpokes!");
	initCodecPage(SPK_ALTO, 2, 0, "I gotta hand it to her, her new look does look nice.");
	initCodecPage(SPK_ALTO, 4, 0, "But now she's more annoying now.");
	initCodecPage(SPK_ALTO, 0, 0, "She has a magic cancel system, that allows her to cancel her normal moves into stronger ones.");
	initCodecPage(SPK_ALTO, 0, 0, "She also has an air dash, which activates when she double taps left or right in the air.");
	initCodecPage(SPK_ALTO, 0, 0, "This one cancels aerials, and aerials cancel her air dash.");
	initCodecPage(SPK_AVERY, 0, 0, "The boss thought she could do better, so we were told to up our standards! And now we're gonna test them on all of you!");
	initCodecPage(SPK_TRUM, 0, 0, "op not a kin pls nerf poop cock");
	initCodecPage(SPK_CODA, 0, 0, "That's super interesting. Hey Otto, I got a question.");
	initCodecPage(SPK_OTTO, 0, 0, "Ask away buddy.");
	initCodecPage(SPK_CODA, 0, 0, "What did you do after Peacock smashed your bike? And what did you do with the remains?");
	initCodecPage(SPK_OTTO, 0, 0, "I sold the parts at a demolision derby for them to reporpose them and bought a new bike.");
	initCodecPage(SPK_CODA, 0, 0, "Ah.");

	
	spr_custom_trummel_color = c_white;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("bob");
	otto_bobblebody_sprite = sprite_get("bob_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}


/*
// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got canceled on Twitter";
	
}
*/


if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("feri_costume", 84, 114);
		feri_costume = sprite_get("feri_costume");
		
	}
	
/*	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "woaf";
		
	}
	
*/	
	
	// Rat all-out quote
	
	if pho_has_rat_allout{
		
		personaQuips[10] = "woaf";
		
	}
	
	
	
	// The Chosen One sketch
	
	if pho_has_tco_sketch{
		
		tcoart = sprite_get("tco_sketch");
		
	}
	
	
	
	// Abyss Hime death sprite
	
	if pho_has_ahime_dead{
		
		sprite_change_offset("ahime_dead", 0, 0);
		abyssHime_deathspr = sprite_get("ahime_dead");
		
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
	
	/*
	
	// Agent N codec
	
	if pho_has_agentn_cdc{
		
		ncode1 = "line1";
		ncode2 = "line2";
		ncode3 = "line3";
		
	}
	
	
	
	// Dracula dialogue
	
	if pho_has_drac_codec{
		
		dracula_portrait = sprite_get("drac_portrait");
		dracula_portrait2 = asset_get("empty_sprite");
		dracula_portrait3 = asset_get("empty_sprite");
		var page = 0;
		
		// Page 0
		dracula_speaker[page] = 0;
		dracula_text[page] = "holy frick";
		page++;
		
		// Page 1
		dracula_speaker[page] = 0;
		dracula_text[page] = "im dracula";
		page++;
		
		// repeat...
		
	} */
	
	
	
	// Miiverse post
	
	if pho_has_miivs_post{
		
		sprite_change_offset("miiverse_post_peacock", 60, 30);
		miiverse_post = sprite_get("miiverse_post_peacock");
		
	}
	
	
/*	
	// Mt Dedede title
	
	if pho_has_dede_title{
		
		arena_title = "woag";
		arena_short_name = "woaf";
		
	} 
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* woag";
		
	} */
	
	
	
	// Trial Grounds
	
	if pho_has_been_found{
	
		sprite_change_offset("trial_grounds", 31, 0);
		guiltySprite = sprite_get("trial_grounds");
		
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
	
	
/*
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
		
	} */
	
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