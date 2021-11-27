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
	num_alts = 31; // Number of alt costumes; controls how many appear on the CSS
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
	initTip("Passive: Graze");
	initTipWords("Attacks that are near misses are treated as a 'graze' and are used to fill Tenshi's Peach Meter. Dodging an attack with a roll or air dodge, or parrying an attack will reward more meter! Good defense means more opportunities to install.");
	
	initTip("Passive: Peach Install");
	initTipWords("Once Tenshi's Peach Meter is half full she can consume a peach by pressing Attack + Special to enter her Peach Install massively buffing her tools. Be careful though, when the time limit runs out and you Tenshi touches the ground she will be stunned and take damage!");
	initTipImage_ext(player_id.spr_extra, 2, fa_center, 2, c_white, 0, 40, 40, 70, 0);
	initTipWords_ext("Install Changes:", fa_left, c_red, 0, 0);
	initTipWords_ext("- Attacks have 5 soft armor and Walking has 10 soft armor. You can see when armor is active by when Tenshi leaves afterimages.
	
	- Dash speed increased to 8.75
	
	- Initial Dash speed increased to 8.75
	
	- Moonwalk acceleration increased to 10
	
	- Waveland Acceleration increased to 1.4
	
	- Wave friction decreased to 0.02
	
	- Fast fall speed increased to 26
	
	- Can now tripple jump
	
	- All moves are jump cancelable on hit
	
	- All strong attacks start at their level 2 version
	
	- Fspecial has increased speed on ground and you can charge it longer to go farther than before. It's funny.
	
	- The theme music played changes with the selected skin! Experiment to find your favorite.
	
	- Inputting 214214+B when install is ready is fun, try it.
	
	- Or you can input A+TAUNT, that's fun too.", fa_left, c_white, 1, 0);
	
	initTip("Fspecial does a lot!");
	initTipWords("Use Fspecial to graze on projectiles to build your meter.
	
	You can hold the button down to  increase the distance fspecial will travel.
	
	Fspecial can only be used once per air time.
	
	The dash is jump cancelable on the ground, but not in the air. Try dashing into platforms while airborne to jump cancel for fancy movement, this refreshes the use of fspecial in the air.
	
	Press Special to cancel fspecial into a grab while on the ground!
	
	Peach Install buffs the speed of the dash while grounded and allows it to be charged longer.
	
	If you are in install, you can press special while in the air during this move to do a unique finisher grab that spikes the oponent in the direction held on the joy stick!
	
	If you use Fspecial while standing on your Uspecial rock it will cause the rock to fall to the ground but give you extra height on the dash. Useful as an attack and recovery option!");
	initTipImage(player_id.spr_fspecial, -8, fa_center, 2, c_white, 3);
	
	initTip("USpecial's Rock");
	initTipWords("Uspecial has a shorter durration the closer you are to your rock. If your rock is far away recovering can be very difficult.
	
	Fspecial and Dspecial can turn the rock into an attack. This attack is a projectile that can hit you too, so be careful, but don't worry too much Tenshi's Fspecial has projectile invincibility and can be used to graze on the rock to get meter.
	
	Be careful when attacking with the rock as you can't summon another one for recovery until the attack is finished!");
	initTipImage(player_id.spr_uspecial, 3, fa_center, 2, c_white, 0);
	
	initTip("Dspecial Counter on Rock");
	initTipWords_ext("If you counter a falling rock while the opponent is in hitstun, your counter will teleport you to wherever your opponent is! This can be a bit tricky to pull of but can land you some very early kills if successful.", fa_left, c_red, 0, 0);
	initTipImage(other.spr_dspecial, -4, fa_center, 2, c_white, 0);
	
	initTip("Nspecial");
	initTipWords("You can flick the control stick to throw the rock with nspecial, or hold the button for more precise aim. You can use nspecial to throw the rock at any time, but you can only move it once per air time.");
	initTipImage(player_id.spr_nspecial, -6, fa_center, 2, c_white, 0);
	
	initTip("funny dair");
	initTipWords_ext("it bounces", fa_center, c_red, 0, 1);
	initTipImage(player_id.spr_dair, -5, fa_center, 2, c_white, 1);
	initTipWords_ext("please laugh", fa_right, c_white, 0, 0);
	
	initTip("Strong Chage");
	initTipWords("You can hold your charge on strong attacks to make them level up twice and become more powerful than normal!");
	initTipImage(player_id.spr_fstrong, -18, fa_center, 2, c_white, 3);
	/*
	initTip("woag");
	initTipWords("Does this tip exist just to showcase the ability to scroll the screen up and down?");
	initTipWords("maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe");
	initTipWords_ext("maybe", fa_center, c_white, 0, 2);
	initTipImage(player_id.spr_taunt, 3, fa_center, 1, c_white, 0);
	initTipWords_ext("ok yea", fa_right, c_white, 0, 0);
	
	initTip("Sandbert's Lore");
	initTipWords_ext("Chapter 1", fa_center, c_gray, 0, 0);
	initTipWords("Sandbert, a son of the ruling family of the Firelands, is an experienced and hardened warrior. He has fought many wars for the Fire Capital, a bellicose nation that constantly seeks to expand its influence over neighbouring lands. His courage in battle has made him a hero among his people.");
	initTipWords("However, his straightforward character and unquestioning allegiance to the Fire Nation blind him at times. He is a reliable general on the field, but naive to the larger politics of Aether. In battle, Sandbert is equally forthright; he uses no weapons except for his razor-sharp claws and ability to control flame.");
	initTipWords_ext("Chapter 2", fa_center, c_gray, 0, 0);
	initTipWords("When he first arrived in Water Town, the merchant capital of Aether, Sandbert was considered a dangerous nuisance and a criminal. Sandbert is a playful trickster, notorious for escaping even the most precarious of situations.");
	initTipWords("However, while the Water Merchants denounce Sandbert in public, they do not hesitate to call upon him when they need a situation dealt with quietly. Sandbert is sly and can infiltrate even the most secure strongholds. He can transform into water and confuse enemies with a spray of bubbles, making him the perfect candidate for stealth assignments.");
	initTipWords_ext("Chapter 3", fa_center, c_gray, 0, 0);
	initTipWords("The youngest trainee in the history of the Air Academy, Sandbert has never lived by anyone's rules but his own. After graduating at the top of his class, he joined the Air Armada, the military force of Air Nation.");
	initTipWords("Within a year, Sandbert became renowned not just in Air Nation but across Aether as a fierce and unpredictable figher. However, among his superiors, he is more infamous for his brashness and arrogance than for his daring deeds. Currently an Aerial Ace for the Air Armada, Sandbert is wrecking havoc among the Armada's enemies and generals alike.");
	initTipWords_ext("Chapter 4", fa_center, c_gray, 0, 0);
	initTipWords("Sandbert is a defender of the colossal Aetherian Forest. Deliberate and loyal, he is one of the infamous Wall Runners who patrol the Rock Wall. From their position atop the Wall, Sandbert and his fellow Runners defend both sides of the rock face and the forest below.");
	initTipWords("While normally slow because of their massive bodies, Wall Runners can curl up into balls and traverse the Wall at high speeds. Unlike other Wall Runners, Sandbert has the legendary ability to control the earth with his will. When in peril, Sandbert can summon the earth to aid him, and he repairs the Wall when it is under siege.");
	*/
	initTip("Phone Controls");
	initTipWords("On the Character Select Screen, hold the 0 (zero) key on your keyboard to view the expanded list of Compatibility Icons.");
	initTipWords("To perform the regular taunt instead of opening the phone, hold a direction on the control stick.");
	/*
	initTip("Improving Perfection");
	initTipWords("Aside from adding the phone itself, this version of Sandbert changes a few aspects about the code (mainly to serve those using this as a base for their own characters):");
	initTipWords("Impactful:
	- init.gml is replaced with better organisation and balanced base stats
	- aerials no longer affect physics
	- removed animation.gml (some idle animations may be timed differently)
	- respawn platform now appears even in Practice Mode");
	initTipWords("Behind-the-scenes:
	- removed useless parent hitboxes
	- standardised whifflag values to 0 or 1 (>1 acts like 1)");
	
	initTip("Did You Know?");
	initTipWords("Everything in these tips is only made with the easy-to-use MunoPhone tip templates and Sandbert's default sprites!");
	initTipWords("No hardcoding or custom-cropped images, just easy-to-use paragraph and image formatting (including all of the fancy gimmicks like shaking and scrolling).");
	initTipWords("Check out user_event15.gml");
	initTipWords("Code for the above:");
	initTipWords_ext("initTip(''Did You Know?'');
	
	initTipWords(''Everything in these tips is only made with the easy-to-use MunoPhone tip templates and Sandbert's default sprites!'');
	
	initTipWords(''No hardcoding or custom-cropped images, just easy-to-use paragraph and image formatting (including all of the fancy gimmicks like shaking and scrolling).'');
	
	initTipWords(''Check out user_event15.gml'');", fa_left, c_gray, 1, 0);
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
	 initPatch("1.X", "23, November 2021");
	 initPatchWords("Install: Max Time: 120s > 30s
Dspecial: Counter now works against projectiles. The actual hit of the counter has a shorter animation. No longer generates graze in install.
Fair: Reverted air dash behaviour.");
	 initPatch("1.1.9", "23, July 2021");
	 initPatchWords("Fixed a bug where attempting to platform jump cancel fspecial without double jumps available would repeatedly play the cancel audio.")
	 initPatch("1.1.8", "23, July 2021");
	 initPatchWords("Strongs buffed endlag, Uair landing lag slight nerf, throw hitpause adjustments. 

+ Dstrong: Endlag: 34(47) > 20(28)
+ Ustrong: Endlag: 26(34) < 20(26)
- Ustrong: Lifetime: 16-26 > 16-22
+ Fstrong: Endlag: 24(34) > 19(27)
(I'm just using basecast references here to be kind of like shovel knight but slightly worse overall?)

-Uair: Landing Lag: 5 > 6

| Fspecial Grab Throw: Base Hitpause: 5 > 8
| Fspecuak Grab Throw Air: Hitpause Scaling: .4 > .8")
	 
	 initPatch("1.1.7", "16, July 2021");
	 initPatchWords("v1.1.7 Patchnotes:

Dair no longer breaks uspecial rock when landing on it.

Made it so weight correction during stun is applied through multihits. (Characters with multihit strongs would not recieve proper weight correction due to it expiring after the first hit when punishing install stun.)
Hitting Tenshi while stunned extends the weight correction by 15 frames.

Fixed muno phone attack names. (Hitboxes on strongs other than dstrong are still wrong.)

Fixed a bug where if the player used Ustrong while the rock was on cooldown they could not use nspecial to summon the rock until using an aerial attack. (Don't ask why.)");
	 initPatch("1.1.6", "12, July 2021");
	 initPatchWords("1.1.6
	 Install Themes now Adjust with Local Volume.
	 Lightweight mode nolonger mutes the install theme.");
	 
	 initPatch("1.1.5", "9, July 2021");
	 initPatchWords("1.1.5
	 Taking back some power from install today.

Made various performance optimizations that shouldn't really have a noticeable impact at all.(Could cause new bugs though.)

Fixed a bug where Tenshi could summon rock twice in the same air time with usepcial if hit during the middle part of uspecial.

Fixed a bug where using the air fspecial throw in install would not put fspecial on cooldown.

Adjustments:

-Dstrong: Rock Hit Lockout: 2 > 8 (Rocks can no longer combo into themselves 50 times for 400% or do 50% if all 3 connect. Yes it was still happening ;~;)

+DAttack: Reverted multihit correction for first hit only of dash attack. (People were dropping out, especially with the increased speed in install.)
|DAttack: Multihit Base Hitpause: 4 > 3
|Dattack: Multihit Hitpause Scaling: .25 > .1 
|Dattack: Initial Hit Hitpause Scaling: .4 > .1
(Its not strong anymore. Shouldn't feel like a cutscene getting hit by this anymore.)

Fstrong Lv 3: Hit 1: Width: 114 > 144
Fstrong Lv 3: Hit 2: Y offset: -62 > -52
(Lv 3 fstrong now better matches the visual)

Nerfs:

-Install: Fspecial Air Throw: Angle: -45 > -25
-Install: Fspecial Air Throw: Base Knockback: 8 > 5

-Install: Strongs now start at level 2 instead of level 3.")
	 
	 initPatch("1.1.4", "6, July 2021");
	 initPatchWords("1.1.4

Bugfix:
Fixed a bug where Tenshi could uspecial twice if rock cooldown ended during the last window of uspecial.
Fixed a bug where Tenshi would stick to platforms if using uspecial from underneath them.");
	 initPatch("1.1.3", "5, July 2021");
	initPatchWords("1.1.3

Fixed CSS colors for base skin.

Re-removed Bad Apple Skin.")
	initPatch("1.1.2", "5, July 2021");
	initPatchWords("
	Bugfix:
	
	Fixed a bug where dtilt frame data did not reset after using install properly.
	
	
	Meter Loss on Death: 10s > 6s (Forgot to lower it with shorter install durration.)");
	initPatch("1.1.1", "4, July 2021");
	initPatchWords("Hotfix time.
	
	v1.1.1
Hotfix Micro Patch:

Removed Bad Apple alt due to a bug of unknown origin with the skin.

Removed Parry Stun from Rock

Fixed a bug where multiple Tenshis in the same game using install at the same time would not pass assets correctly.
Fixed a bug where install themes could play through lightweight's mute if multiple Tenshis were in the same game.

Install Time: 30-60 > 20-40

Dtilt: Startup: 9 > 6 
Dtilt: Recovery: 11 > 10
Install Dtilt: Changed Hitfx
(OK idk what im doing)

Dspecial Air: Active Frames: 7-21 > 7-23 (Made to match ground version)

Changed Install Theme for Kokoro Alt
Extended Install Theme for Patchouli Alt
Extended Install Theme for Reisen Alt
Extended Install Theme for Youmu Alt
Extended/Changed Install Theme for Sans Alt
(These themes were shorter than the new time)")
	initPatch("1.1.0", "4, July 2021");
	initPatchWords("Ok this time we're actually overhauling the install. This is how the character should have released.
	
	
Performance Optimizations: Install is now now significantly lighter, should see large performance increase, upwards of +30% fps. Grazing should no longer cause frame dips on low end PCs.

Install Changes:

Install had been said to be generally underwhelming to fight. This patch aims to make the install significantly scarier to face while adding more counterplay to the install aside from running away.

Install Stun: Self Damage Reduced: 20 > 10
Install Stun: Length: 120 > 90
Install Strongs: Base Level: Lv2 > Lv3
Install Soft Armor: Removed from strongs and specials.
Install Soft Armor: Attacks: Now only applies to attack startup.
Install Durration: 15-30s > 30-60s
Install Durration: Now Loses Time When Hit
Install Meter: Now loses 10s of time on death.
Install: All sword normals now multi hit. Except jabs.

Install Move Buffs:

Install Nair: Startup: 5 > 4
Install Nair: Now a 2 hit multihit dealing 3 + 6 damage. 9 total.

Install Bair: Startup: 13 > 9 (First Active: 14 > 10)
Install Bair: Now 2 hit multi hit dealing 4 + 8 damage. 12 total.

Install Dair: Startup: 15 > 9 (First Active: 16 > 10)

Install Fair: Startup: 11 > 7 (First Active: 12 > 8)
Install Fair: Now 3 hit multi hit dealing 3 + 3 + 4 damage. 10 total.

Install Uair: Startup: 6 > 4 (First Active: 7 > 5)

Install Utilt: Startup: 7 > 5 (First Active: 8 > 6)
Install Utilt: Now a 3 hit multihit dealing 2 + 2 + 6 damage. 10 total.

Install Ftilt: Startup: 10 > 7 (First Active: 11 > 8)

Install Dtilt: Startup: 7 > 4 (First Active: 8 > 5)
Install Dtilt: Now a 2 hit multihit dealing 3 + 6 damage. 9 total.
Install Dtilt: No longer has a sour spot.

Install Jab: Retains Armor through first hit, remaining hits have no armor.

Install Fspecial Air: Can now be canceled into a new grab finisher. Hold a direction to decide the angle.


QoL/Bugfix:

Idle: Reduced blink frequency.

Graze: Parrying a move will no longer force the next graze to be blue if the parry cannot trigger a graze (see below for why)
Graze: Parrying or countering a move will always trigger a graze even during graze lockout.
(This should increase meter gain somewhat in practice.)

Install Hotbar: Bugfix: Fixed a bug where the meter could extend past the end of the bar.

Dstrong: Bugfix: Hitlockout was missing on one set of rocks. Fixed.
Fspecial Air: Bugfix: Platform Jump canceling on rock now works as intended.

DAir: Bugfix: No longer applies momentum in hitstop.
DAir: Bugfix: Sprite Alignment corrected.
Dair: Hitpause Scaling: .9 > .8
(Dair wasn't actually applying hitpause properly due to the ducktales bounce triggering in hitpause. This is fixed.)

Fair: Bugfix: Startup buffs had cut off the dash sfx, it now plays properly again.

Landing Lag: Bugfix: Sprite Alignment corrected.

Dstrong: Rocks now properly adjust for Y position when player is on a moving platform.

Utilt: Resprited. Frame data remains the same.

QoL Fixing Fstrong:

FStrong: Removed Multihit Correction
FStrong: Hit 1: Now Untechable
Fstrong: Hit 1: Now has 2 Hitboxes.
Fstrong: Hit 1: New Hitbox: Higher priority to pull from behind.
Fstrong: Hit 2: Angle: 361 > 45
(This should make fstrong feel much more natural. It should consistently link except for the times where it very obviously shouldn't.)


Rebalancing Nair:

+Nair: Startup: 7 > 5 (First Active: 8 > 6)
-Nair: Lifetime: 6 > 4
-Nair: Recovery: 8(13) > 15(24) 
-Nair: Total Length: 21(26) > 24(33)
+Nair: Width: 56 > 70
|Nair: Hitbox X: 52 > 44
+Nair: Angle: 60 > 55
+Nair: Added new hitbox above the head. Same knockback and damage with half the lifetime. Should make the move feel like it hits where it looks like it hits.
(Making nair a slightly faster more useful tool with more recovery. Should feel akin to Shovel Knight nair)

Rebalancing Dash Attack:

DAttack: Reduced multihit correction.
DAttack: Final Hit: Base Knockback: 8 > 6
DAttack: Final Hit: Knockback Scaling: .93 > .4
(Before it had a lot of knockback and could kill at high % but its general use was fairly clunky. It can't kill anymore but now following up dash attack should be possible.)

Rebalancing Nspecial:

+Nspecial: Rock Projectle: Knockback Growth: .75 > .8
+Nspecial: Rock Explosion: Knockback Growth: .75 > 1
+Nspecial: Rock Explosion: Angle: 60 > 45
|Nspecial: Rock: Base Hitpause: 4 > 10 (Thought I did this earlier)
|Nspecial: Explosion: Base Hitpause: 9 > 12 (It is stronger now.)
|Nspecial: Now on cooldown when the move can't be used. (This fixes a bug where Tenshi could clone rock projectiles by mashing B while throwing a rock.)
-Nspecial: Rock: Now puts tenshi in parry stun when parried by someone other than herself.
(While the rock already carried a lot of risk and was easy to parry, it not having extended parry stun does feel very off to play against. Giving the rock some more power should help keep it a relevant tool despite now having parry stun.)

Uspecial Rock Platform: Now Destroyed on death, the nspecial projectile is not.

Buffs: 
Air Accel: .2 > .25
(A lot of people felt the character's movement especially in the air was too limiting, this should help alleviate that while still keeping it fairly poor.) 
Gravity Accel: .6 > .55
(Should be more reflective of the characters actual weight)
Jump Speed: 13 > 12
(Maintains original jump height but with a better double jump comparatively.)

This may seem like a really odd change but the character's base stat movement was a near equivalent to Kragg, actually worse in the air. While she has a lot of movement tools, her general base stat movement feel was not properly reflecting her wait class nor does she have the long range zoning abilities of characters that typically have movement of this type.

Ftilt: Damage: 9 > 11
Ftilt: Sweetspot Damage: 11 > 12
(Ftilt is a fairly low range high knockback tilt that is much slower than most base cast normals, with a lot of recovery too. It doing the same damage as orcane Ftilt did not sit right.)

(The rest are minor mostly for gamefeel reasons)

Dspecial: Counter Hitbox Size increased. (This is realatively unimpactful but it should help make counter more consistent)


Fair: Hitbox 1: Width: 40 > 60
Fair: Hitbox 1: Hitbox X: 54 > 34
(Should make the move feel more consistent, effective range is the same)
Fair: Hitbox 1: Height: 60 > 70
Fair: Hitbox 1: Hitbox Y: -34 > -32
Fair: Hitbox 2: Width: 70 > 90
Fair: Hitbox 2: X > 20 > 10
(Should help make the move feel better to use. The hitboxes did not match the animation properly before.)

Uair: Normal Hitbox: Lifetime: 2 > 3
Uair: Sourspot Hitbox: Lifetime: 2 > 3 

Dspecial: Active Frames: 7-21 > 7-23 (Made to match clarien)

Nerfs:

Fspecial can only be performed once in the air.
The Hud has been changed to reflect this.
Platform jump canceling fspecial restores the use.

Fspecial Air: Platform Jump Cancel: Vsp Capped at 8 (Uncapped in install)
Fspecial: Jump cancel velocity lowered.
(This is in part caused by the air mobility changes, but also the jump cancel on platforms was way too cracked.)

Fair: Reduced shorten and extension hsp modifiers when holding directions to compensate for increased air mobility.

Because of the increase in mobility and other buffs I'm taking power out of frame data.

Dtilt: Recovery: 9(13) > 11(16)
(The move was too fast for the range it has.)
Dtilt: Startup: 7 > 9 (First Active: 8 > 10)
(Dtilt became a bit too risk free after the range buff.)

-Utilt: Recovery: 10(15) >  12(18) (Reverting buff)
+Utilt: Back Hit: Lifetime: 2 > 4
-Utilt: Foot Hitbox Removed.
|Utilt: New animation.
(Opening up more options to punish this move if used poorly.)

Bair: Landing Lag: 9 > 11 
(Aiming to make bair less of your go to neutral button)

Uair: Recovery: 8(13) > 11(18)
(Bringing total length more in line with base cast.)

Ustrong: Recovery: 20(25) > 26(34)
(With lv 3 strongs at base this move needs more recovery, probably even more than this.)

Dstrong: Recovery: Now has whifflag (Should have had it before im a dumb)
Dstrong: Recovery (From first hit): 34 > 34(47) 
(Another change because of the level 3s in install. Do not whiff.)");
	
	initPatch("1.1", "29, June 2021");
	initPatchWords("Patch 1.1

Big Tenshi Overhaul Patch

This patch is a little experimental. I'm testing more extreme balance changes to try and see if I can make the character encourage more interaction.

Uspecial: Holding parry no longer saves the rock.
Uspecial: Holding parry while rock is available will perform the pratfall version instead. (This is similar to Kragg FSpecial Feint)
Uspecial: Bugfix: Rock no longer stops momentum when hit.

Install Stun: Bugfix: Now (hopefully) cannot be invincble during the stun
Install Stun: Bugfix: Kba now always properly adjusted (It was almost never applied before due to a bug, this should feel like a very heavy nerf)
Install Stun: Kba: 1.58 > 1.4

Taunt: Now stops meter drain while in install.
Rock: Parrying the rock while in install rewards extra meter. Can be used to extend the durration of the install.
 
Utilt: Startup: 8f > 7f (First active: 9 > 8)
Utilt: Endlag: 14(21) > 10(15)
Utilt: Angle: 70 > 80
(Utilt was basically worse Clarien Utilt where DI away had no follow ups. This should fix that.)

Ftilt: Startup:  11 > 10 (Active: 12f > 11f)
Ftilt: Recovery: 19(29) > 14(22)
(Ftilt's frame data was bad, too bad)

Nair: Recovery: 10(16) > 8(12)
 
Bair: Startup: 11f > 13f (First active: 12 > 14)
Bair: Knockback Scaling: .83 > .95 
(It kill more good)

Dair: Multihit correction improved Y only.

Fair: Can now be lengthened by holding into the direction of the attack.
Fair: Can now be shortened by holding away from the direction of the attack.

Uair: Tail Spike Active: 9-10 > 11-12
Uair: Tail Spike X: -32 > -22
Uair: Tail Spike Width: 40 > 60

Nspec: Move pretty much completely reworked. Should feel more consistent and easy to use while retaining its original use.
Nspec: Added new flick motion to throw rock faster.
Nspec: Wavebounce removed.
Nspec: Can now throw the rock at any time.

Fspec: Throw: Knockback Scaling: .6 > .8
Fspec: Re-added the jump cancel on platforms while in the air.
Fspec: Now retains more momentum when jump canceled.

Peach Install: Leave Ground Max adjusted to match double jump speed.
Peach Install: Parrying the rock now rewards massive bonus meter when in install. Used to deal with excessive camping.
Peach Install: Taunting now stops install drain.
(Experimenting with changes to encourage more interaction while in install.)

Dstrong: Hilt: Damage: 4 > 2
Dstrong: Hilt: Hitbox Width : 40 > 90
Dstrong Rock Lv 1: Now acts like other rocks, but does not spawn on the side of the stage.
Dstrong Rock Lv 1: Initial offset: 30 > 50 (Large range buff)
Dstrong Rock Lv 1: Base Knockback: 6 > 9
Dstrong Rock Lv 1: Damage: 4-6 > 8
Dstrong Rock Lv 2: Base Knockback: 6 > 9
Dstrong Rock Lv 2: Damage: 6 > 10
Dstrong Rock Lv 3: Base Knockback: 9 > 9
Dstrong Rock Lv 3: Damage: 6 > 12
Dstrong Rock ALl: Angle: 361 > 45

Dstrong Rock Lv 2: Offset 38 > 45 
Dstrong Rock Lv 3: Offset 38 > 55
(Dstrong was garbage. It should feel better now as a wide area coverage tool.)


Ustrong: Fixed a bug where the first hitbox would not reset its damage at level 1
Ustrong: Lv1: Knockback Scaling 1 > 1.1
Ustrong: Lv2: Knockback Scaling 1.1 > 1.2
Ustrong: Lv3: Knockback Scaling 1.2 > 1.3
(Did some digging through basecase. Ustrong was underperforming.)");
	initPatch("1.08", "25, June 2021");
	initPatchWords("Patch 1.08
	
	Bugfix:
	
	Fixed a bug where hit fx weren't colored properly.")
	initPatch("1.07", "25, June 2021");
	initPatchWords("Patch 1.07

Bugfix:

Fixed a bug where tenshi could graze while dead.

QoL:

Multihit correction no longer applies to characters with armor.

Buffs:

Fspecial Grab Throw: Base Hitpause 0 > 5
Fspecial Grab Throw: Hitpause Scaling: 0 > .4
Fspecial Grab: Damage: 6 > 10

Bair: Startup: 15 > 11 (Active frames: 16-19 > 12>15)
(Should make the sauce saucier)

Uspecial: Rock Summoning Behavior: Changed to now work more like Kragg pillars.
Uspecial: New minimum height added to rock summon.
Uspecial: Using uspecial while the rock cannot be moved will break the rock, sending players standing on it into pratfall.
Uspecial: If shield/parry is held during the pratfall version of uspecial the rock will not break.

Fstrong: Multihit Consistency improved.

Rock: All: Base Knockback: 7 > 8
Rock: All: Knockback Growth: .67 > .75
Rock: Falling: Angle: 55 > 45
(Should make rock a much scarrier threat)

Uair: Tail Spike: Lifetime: 1 > 2
Uair: Tail Spike: Active Frames: 11 > 9-10 
(Should make it much easier to hit while still being fairly difficult)");
	initPatch("1.06", "22, June 2021");
	initPatchWords("Strong charge buffs, bugfixes, and more fspecial air nerfs
	

Patch 1.06:

Bugfix:

Fixed a bug where Tenshi could graze in respawn state.
Fixed a bug where Tenshi's hurtbox wouldn't correctly change if install stun happened during a move.

Qol:

Base install theme: Now lasts entire install durration and loops!

Buffs:

Strong charge time Decreased: 58 > 30
Ustrong: Base Knockback: 7-6 > 8

Nerfs:
Fstrong: Lv1 KBG: 1.05 > 1
Fstrong: Lv2 KBG: 1.15 > 1.1
Fstrong: Lv3 KBG: 1.3 > 1.2

Fspecial Air: Now has 20f move lockout after use.");
	 
	initPatch("1.05: The Grab Update", "22, June 2021");
	initPatchWords("Introducing Fspecial Grabs
	Patch 1.05:

New!!!!:

+Fspecial Ground Grab: Pressing the special button during the grounded version of fspecial will perform a new grab move!


Bugfix:
Fspecial can no longer be jump canceled at unintended times. (This happened from a mistake last patch)
Fixed a bug where Tenshi would not go into pratfall during rock lockout time on Uspecial under certain conditions.
Fixed a bug where Install activation hurtboxes would not match properly on a buffered install.

QoL:
Added a new UI icon for rock lockout.
Changed graze audio to better reflect when you actually get meter.
Added line to meter background showing when install is available.
Changed meter hotbar color when not ready for install. Should be easier to see.

Changes:
| Rock: Now has visuals for it it can be broken or not.
+ Rock: Cannot be broken while flying.
+ Rock: Cannot be broken for a short period of time after being moved.
+ Rock: Cannot be broken when hitbox is active. Hitbox no longer breakable by other hitboxes.
- Rock: Can be broken during throw startup.
- Rock: Minimum rock travel time: 5 > 15f
- Rock: Maximum rock travel time: 30 > 45f
(The 30f travel time was a bug it was supposed to be 90)

Buffs:
+Jab 1: Now forces flinch
+Jab 1: Now untechable
+Jab 2: No longer puts Tenshi in parry stun.
+Jab 2: Now untechable
-Jab 2: Crouch now armors the hit
(Jab should now feel more consistent and rewarding.)

+Fstrong Hit 1: Now has 3 frames extra hitpause
+Fstrong Hit 1: Now forces flinch
|Ftrong Hit 1: Removed angle flipper
(Should improve consistency.)

Nerfs:
-Dair: Landing hit width: 90 > 82 
|Dair: Landing hit X: 5 > 3
(Should match animation better.)

");
	 
	initPatch("1.04", "20, June 2021");
	initPatchWords("Day 2 Patch:

Bugfix:
Can no longer jump out of parry stun in install.
Can no longer jump out of parry stun on late dair.
Rock lockout now properly resets on death.
Fixed a bug where Dstrong hitboxes could hit multiple times.
Fixed a bug where rolling as install ended would make you invincible for the stun.
Rock Explosion: Angle Flipper 6 > 3 (Had the wrong one)


QoL:

Dstrong: Small Rock Lv 1: Base Hitpause: 3 > 7
Dstrong: Medium Rock Lv 2: Base Hitpause: 3 > 8
Dstrong: Large Rock: Base Hitpause: 3 > 9
(Raised hitpause on the last hit of rocks. Intermediary hits still have low hitpause so they can link better.)

Rock: Added sfx when moving.
Uspec: Added sfx.

Increased Theme Volumes for Clownpiece, Chimata Tenkyuu, and Sans

Buffs:
Ustrong: Level 0 Back Hitbox  Height: 90 > 94
Ustrong: Level 0 Back Hitbox  Y: -50 > -52
(Ustrong should now hit through platforms more consistently)

+Dtilt: Sourspot X: 60 > 68
-Dtilt: Sourspot Y: -10 > -8
+Dtilt: Sourspot Width: 64 > 66
-Dtilt: Sourspot Height: 30 > 24
+Dtilt: Sweetspot Width: 34 > 50
-Dtilt: Sweetspot Height: 50 > 40
|Dtilt: Tweaked animation to reflect changes to range. 
(Dtilt should be slightly better as a poke now with increased horizontal range, but slightly worse against jumping.)

+Fspecial Ground: Maintains grounded momentum when moving off ground.

Nerfs:
-Hurtbox Height: 56 > 58 (Now same height as Ranno)

-Hitstun Hurtbox: Height matches new hurtbox height.
-Hitstun Hurtbox: Width: 36 > 50 (Now matches animation better)

-Rock: Now breakable by player hitboxes when they aren't standing on the rock.
-Rock: Players will enter pratfall if rock is broken while they are standing on it.

-Nspec Rock: Angle Flipper: 8 > 3 (No more rock spikes ;~;)
+Nspec rock: Base Knockback now increases over the durration, the cap is 400 but due to the way projectile interactions work it realistically caps at 10 without a parry.

(Rock should be less oppressive off stage)

-Fair: Rising fair height gain capped. (Install version is unchanged)");
	 
	initPatch("1.03", "19, June, 2021");
	initPatchWords("Day 1.1 Patchnotes:

QoL:

Added buffer to install activation. Should be a lot easier now.
Added lightweight mode. Taunt during round start to activate.

Buffs:

|Dair: Spike Base Hitpause: 4 > 5
|Dair: Spike Hitpause Scaling: .4 > .9
+Dair: Spike Base Knockback: 3 > 4
+Dair: Now jump cancelable starting frame 50
+Dair: Can fall through platforms during the first 5 frames of the move if down is held

Nerfs:

-Hitstun Grav: .52 > .5
-Fspecial Air: Removed Late Jump Cancel
-Fspecial Air: Base HSP: 12 > 10 (Install Fspecial Air reamains unchanged)
+Fspecial Air: HSP Deceleration: -6 > -5 (Because of lower speed old deceleration was too extreme, still much reduced range)

-Fair: Lifetime: 12 > 6

|Ftilt: Normal Hitpause: 7 > 9
|Ftilt: Normal Hitpause Scaling: .7 > .8
|Ftilt: Bonk Hitpause Scaling: .7 > .9
-Ftilt: Bonk Base Knockback: 9 > 5
-Ftilt: Bonk Knockback Growth: .95 > .9")
	initPatch("1.02", "19 June, 2021");
	initPatchWords("Day 1 Patchnotes:

Bugfix:

Rock no longer has collision when moving. No more scoops.
Peach Install: Hurtbox now properly matches animation.
Graze: Can no longer graze on active hitboxes with hit priority 0.

QoL:

Rock now has offstage indicator.
Rock now will change color to show if it can be moved or not.

Buffs:

Aerials:

+ Bair: Removed Base Knockback decay for late hit bair, now always has 8
| Bair: Base Hitpause: 7 > 8
| Bair: Hitpause Scaling: .4 > .9 (Serotonin buff)

+ Dair: Multihit consistency buff Y only, horizontal DI escapes unaffected by this
+ Dair: Multihit KBG: .1 > .18 (Now traps better at high %)
+ Dair: Landing Hitbox Y: -25 > -15
+ Dair: Landing Hitbox Width: 70 > 90
+ Dair: Landing Hitbox Height: 50 > 40 (Now better matches animation)
+ Dair: Landing Hitbox Lifetime: 2 > 4

+ Nair: Startup Reduced: 9 > 7 (Active Frame 10 > 8)
+ Nair: Lifetime: 3 > 6
| Nair: Base Hitpause: 4 > 5


- Fair: Damage Made Uniform: 9-8 > 7 (This is a nerf)
+ Fair: Lifetime: 5 > 12
+ Fair: Startup Reduced: 14 > 11 (Active Frame 15 > 12) (Now properly matches animation)
+ Fair: KBG: .67 > .7
+ Fair: Base Htpause: 4-5 > 7
+ Fair: Hitpause Scaling: .3 > .5
+ Fair: Base Knockback: 7-3 decaying > 7-4 decaying
+ Fair: Removed VSP Correction on Rising Fair
| Fair: Hit Sfx Changed
 

Uair: Endlag Reduced: 11(17) > 9(14)

Grounded:

+ Dash Attack: First Hit X offset: 30 > 7 (More consistent)
+ Dash Attack: First Hit Lifetime: 1 > 4
+ Dash Attack: Multihit Consistency Buff
+ Dash Attack: Last Hit BKB: 9 > 8
+ Dash Attack: Last Hit KBG: .62 > .93
+ Dash Attack: Last Hit Angle: 65 > 55
+ Dash Attack: Last Hit Damage: 1 > 3 (Total Damage 8 > 10)
| Dash Attack: Last Hit Base Hitpause: 4 > 6

Now galaxies zetter midscreen at 148%

- Jab 1: Crouch armors through hitbox.
+ Jab 1: Base KB: 3 > 4
| Jab 1: Hitpause: 2 > 3
+ Jab 1: Angle: 45 > Sakurai
| Jab 2: Hitpause: 2 > 3
+ Jab 2: Angle: 45 > Sakurai
| Jab 3: Hitpause: 4 > 6
+ Jab 3: Angle: 45 > Sakurai
| Jab 4: Hitpause: 8 > 7 
| Jab 4: Hitpause Sacaling: 0 > .4
+ Jab 4: KBG: .3 > .6

This should make Jab a slightly more consistent tool in general.

Nerfs:

- Install Armor: 10 > 5 (Forgot to push this last time)
| Install Walk Armor: 10 > 10 (Walk armor now calculated sperately from move armor)

- Wave Land Adjustment: 1.3 > 1.1
+ Wave Land Friction: .18 > .03
(Wavedash should function more like basecast, very slightly shorter than before, still cracked)

- Utilt No Longer Has Sweetspots, All hitboxes function the same (This is a nerf as it doesn't combo into itself as easily or at all at high %)
- Utilt BKB: 7 Standardized to former Neutral Hit
- Utilt KBG: 0.55 
- Utilt Angle: 70
| Utilt Base Hitpause: 7
| Utilt Hitpause Scaling: .55

- Nspecial Rock Startup: 35f > 45f (Overbuffed)
- Nspecial Rock Lockout After Explosion: 5f > 60f");
	
	
	initPatch("1.01", "18 June, 2021");
	initPatchWords(" Day 0 Patchnotes:

Bugfix:
Fixed install bug where the player can't activate install at the minimum threshold.
Fixed fspecial jump cancel window(I don't think anyone noticed this)

Change:
Nspecial Rock: Changed parry behavior. No longer neutral projectile on parry. Now fully passes ownership of both rock and explosion if parried.

Buffs:
Aerial Buffs:
Dair Landing Lag: 20(30) > 12(18)
Bair Landing Lag: 14(21) > 9(14)
Bair BKB: 7-5 > 8 > 6
Bair KBG: .77 > .83
Nair Landing Lag: 8(12) > 6(9)
Uair Landing Lag: 6(9) > 5(8)
Fair Landing Lag: 12(18) > 8(12)

Strong Buffs:
Ustrong Lv1 KBG: .91 > 1
Ustrong Lv2 KBG: .95 > 1.1
Ustrong Lv3 KBG: 1.1 > 1.2

Fstrong Hit 2 Lv1 KBG: .97 > 1.05
Fstrong Hit 2 Lv2 KBG: .97 > 1.15
Fstrong Hit 2 Lv3 KBG: 1 > 1.3

Dstrong Rock Lifetimes: 2 > 4
Dstrong lv1   Small Rock KBG: .93 > 1
Dstrong lv2-3 Small Rock KBG: .8 > 1.05
Dstrong lv2-3 Small Rock Angle: 40 > 30 (should help it connect better)
Dstrong lv2   Medium Rock KBG: .97 > 1.1
Dstrong lv3   Medium Rock KBG: .8 > 1.1
Dstrong lv3   Medium Rock Angle: 40 > 30 (should help it connect better)
Dstrong lv3   Large Rock KBG: 1.1 > 1.3

Fspecial Air: Added Late Jump cancel window 
Fspecial Ground: Deceleration applied at end: -3 > -2

Nspecial Rock Explosion Width: 150 > 200
Nspecial Rock Explosion Height: 150 > 200
Nspecial Rock Stall Time: 60f > 35f

Counter Base KB: Countered Attack > Max of Countered Attack * 1.2 and 6
Counter Damage: Countered Attack > Max of Countered Attack * 1.2 and 6

Nerfs:

Install Soft Armor: 10 > 5
Fspecial Air: Deceleration applied at end: -3 > -6");
	
	
	initPatch("1.0", "16 June, 2021");
	initPatchWords_ext("RELEASE!!!", fa_center, c_white, 0, 1);
	initPatchImage_ext(other.spr_taunt, -15, fa_left, 2, c_white, 1, 150, 20, 80, 0);
	initPatchWords_ext("
	
	
	RELEASE!!!", fa_center, c_red, 0, 1);
	
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
	/*
	// post_draw.gml
	initCheat("Say woag", "cheat_funny_snail", [0, 1], ["no", "yes"], "Say woag? Yes. No. AAAAAA");
	
	// update.gml
	initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Sandbert's maximum number of double jumps.");
	
	// attack_update.gml
	initCheat("USpecial Flight Speed", "cheat_flight_speed", [1, 1.25, 1.5, 2, 3, 5, 10], ["1", "1.25", "1.5", "2", "3", "5", "10"], "Change the speed of USpecial's flight.");
	
	// attack_update.gml
	initCheat("FSpecial Cancel", "cheat_fspecial_cancel", [0, 1], ["Off", "On"], "Cancel FSpecial into any action.");
	
	// update.gml
	initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how");
	
	// init_shader.gml
	initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "skittles");
	
	// update.gml
	initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf");
	*/
	// update.gml
	initCheat("Permanent Install", "cheat_install", [0, 1], ["Off", "On"], "install");
	
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
	
	initAbout("About Tenshi", "Tenshi Hinanawi is the main antagonist of Touhou 10.5 Scarlet Weather Rhapsody. She's the 'Eldest Daughter' of the Hinanawi clan that resides in heaven. Being in heaven, she has a carefree life which she considers boring.
	
	Due to her boring life of constant drinking and relaxation, Tenshi decided to cause a disaster by gathering the thought energy of everyone in Gensokyo in the form of scarlet clouds, threatening an earthquake. Her true intent behind this is to resolve her boredom by attracting others to resolve the incident. This disruption caused a preliminary tremor which destroyed Reimu Hakrei's shrine and triggered the events of the story. Tenshi is associated with the weather type Aurora refering to the Norhern Lights.
	
	But more importantly than all that, 
	
	'Tenshi Eating a Corndog' is a much discussed concept on the Touhou Project forums. The significance of it is disputed, so I will focus on one core concept: the symbolism behind it. But first we must identify and explore the key components of it. 
	
	Hinanawi Tenshi is a human child that has ascended to become a celestial being. In Hinduism, she would be called a Siddha or a Deva. In Chinese, it would be refered to as a Tian Xian, or heavenly immortal. In Japanese, it would be using the same kanji characters as in Chinese, being called a Tennin. She is also refered to as an angel, although the role of a heavenly messenger is better suited to her companion Nagae Iku. Regardless of which Oriental cosmology she claims the greatest influence from, Hinanawi Tenshi in Touhou: Scarlet Weather Rhapsody is presented as a roving celestial being that decides to cause mayhem out of childish boredom.
	
	A corndog on the other hand is simply a sausage coated in a thick layer of cornmeal batter on a stick. It is considered a quintessential part of the American diet, being a cheap combination between convenience and an arguably delicious meal of protein and carbohydrates. It is not a new concept by any means, but it is something that is also unmistakably modern and mundane. 
	
	Thus this is why 'Tenshi Eating a Corndog' is so intriguing. Why exactly is a celestial being consuming a corndog, despite having access to the Jade Wine Waterfalls and Immortal Peach Orchards of Heaven? The earthly and celestial is contrasted in an oustanding way.
	
	Take a look at the blue sky in the background and the color of her hair. In the Swami Vivekananda, the concept of infinity is considered blue. Take the air and water, for within the space of our hands, it is colorless, but in a vast quantity it is blue. Tenshi is shown to represent infinity, as she to is of the sky. As to the corndog to her, the Route 66 sign is to the sky. What of the tiny stretch of road to the vastness of the heavens? But without that land, the heavens would not be. So as it is, you see the Heavenly consume the Earthly. Not out of pleasure, as we can see from her expression, but of necessity to understand the realm she observes from up high. But we see it as something of joy, for we too know that the divine are as of us. 
	
	This is perhaps a commentary of the immaturity of Tenshi Hinanwi, who still has a physical body unlike truly enlightened beings. But it could also be a commentary of the unwilligness of humans to see gods (at least the important ones) as anything but in their image and why the gods so often take human form. This is represented even in the game afterwards, Hisoutensoku (Unpercieving of Natural Law). Unlike its predecessor, Gakutensoku (Learning of Natural Law), Hisoutensoku is considered blind to it, as it from a land without logic. In the utter contrast of 'Tenshi Eating a Corndog', we see through the eyes of Hisoutensoku. 
	
	This is the true symbolism behind 'Tenshi Eating a Corndog': That our perception is constrained by the laws that invisibly govern over us. Pierce the veil of illusion, and see why the mustard intertwines with the ketchup.
	
	
	
	
	Yes I just coped the wiki entry.");
	
	initAbout("Install Songs", "Tenshi's Peach Install plays theme music determined by skin or easter egg.
	The skinas and music are as follows:
	
	0. Tenshi Hinanawi - Catastrophy in Heaven | Crow'sClaw
	
	1. Reimu Hakurei - Mystic Oriental Love Consultation ~ End of Century | Touhou 12.3 OST
	
	2. Marisa Kirisame - Love-Colored Master Spark | Aquaelie
	
	3. Sakuya Izayoi - Night of Nights (Flowering Nights Remix) | COOL&CREAT and BeatMARIO
	
	4. Alice Margatroid - The Grimoire of Alice | Touhou 12.3 OST
	
	5. Patchouli Knowledge - Locked Girl ~ the Girls Secret Room | Touhou Mutsugeki ~ Concealed the Conclusion OST
	
	6. Youmu Konpaku - Hiroari Shoots a Strange Bird Till When | Touhou 10.5 OST
	
	7. Remilia Scarlet - Emblazened with an Eternally Young Scarlet | Fantasy Maiden Wars OST
	
	8. Yuyuko Saigyouji - Border of Life | Demetori
	
	9. Yukari Yakumo - Night Falls ~ Evening Star | Touhou 15.5 OST
	
	10. Suika Ibuki - Broken Moon | Touhou 10.5 OST
	
	11. Reisen Udongein Inaba - Lunatic Eyes Invisible Full Moon | Touhou 14.5 OST
	
	12. Aya Shameimaru - Wind God Girl | Touhou 10.5 OST
	
	13. Komachi Onozuka - Higan Retour ~ Riverside View | Touhou 9 OST
	
	14. Iku Nagae - Crimson in the Black Sea ~ Legendary Fish | Touhou 10.5 OST
	
	15. Flandre Scarlet - Last Brutal Sister (U.N. Owen Was Her Remix) | COOL&CREATE
	
	16. Shinmyoumaru Sukuna - Inchlings of the Shining Needle ~ Little Princess | Touhou 15.5 OST
	
	17. Utsuho Reiuji - The Solar Sect of Mystic Wisdom ~ Nuclear Fusion | Touhou 12.3 OST
	
	18. Tenkyuu Chimata - Where is that Bustling Marketplace ~ Immemorial Marketeers | Touhou 18 OST
	
	19. Eiki Shiki - Judgement in the Sixtieth Year ~ Fate of Sixty Years | Touhou 9 OST
	
	20. Clownpiece - The Pierrot of the Star-Spangled Banner ~ The Mad Piero Laughs | Demetori
	
	21. Junko - Pure Furies Vengeance is Mine | Demetori
	
	22. Sans - Megalovania | Toby Fox
	
	23. Nitori Kawashiro - Candid Friend | Touhou 10 OST
	
	24. Cirno - Stronger than that of Hundreds of Men | Neptendo
	
	25. Doremy Sweet - Eternal Spring Dream | Touhou 15.5 OST
	
	26. Mike Goutokuji - LUCKY CAT | Chi~yokofan
	
	27. Kasen Ibaraki - Battlefield of the Flower Threshold | Touhou 14.5 OST
	
	28. Mystia Lorelei - Quad City DJs vs. Zun Deaf to all but the Space Jam | RemindMeToCheck
	
	EX. Ride the Fire | Daisuke Ishiwatari
	
	EX. Last Word Unleashed | Touhou 13.5 OST
	
	
	Names have been romanized to given first, family last.");
	
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
	initCodecPage(SPK_TRUM, 0, 0, "wow is that sandbert with a phone");
	initCodecPage(SPK_ALTO, 4, 0, "UNBLOCK ME ON FACEBOOK, COWARD");
	initCodecPage(SPK_SAND, 0, GIM_COLOR, "no");
	
	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve didn't dodge.";
	
}



if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("feri_costume", 84, 114);
		feri_costume = sprite_get("feri_costume");
		
	}
	
	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "woaf";
		
	}
	
	
	
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
		
	}
	
	
	
	// Miiverse post
	
	if pho_has_miivs_post{
		
		sprite_change_offset("miiverse_post", 60, 30);
		miiverse_post = sprite_get("miiverse_post");
		
	}
	
	
	
	// Mt Dedede title
	
	if pho_has_dede_title{
		
		arena_title = "woag";
		arena_short_name = "woaf";
		
	}
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* woag";
		
	}
	
	
	
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