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
				
				// edit the below just like a regular attack script
				
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
				
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
pho_has_muno_phone = 0;	// MunoPhone support		(should always be 1, obviously...)
pho_has_trum_codec = 0;	// Trummel & Alto codec
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
	
	
	initTip("Driving 101");
	initTipWords("Crouch to enter vehicle mode, then press left or right while holding down to drive around!
				  You reach a comfortable cruising speed quickly, but if the stage allows for it, you can continue to accelerate at a slow rate.");
	initTipImage(player_id.spr_crouchmoving, -5, fa_center, 1, c_white, 5);
	//initTipImage(player_id.spr_crouchmoving, -5, fa_center, 1, c_white, 3);
	
	initTip("Energy Meter");
	initTipWords("fspecial costs half the max energy meter.
				  uspecial slowly consumes energy while in use.
				  Energy begins to recharge when you touch the ground, wall, or get hit.
				  Energy will continue to recharge until you use a move that spends it - don't feel stuck to the ground!");
	initTipImage(player_id.spr_fspecial, 3, fa_left, 1, c_white, 5);
	initTipImage(player_id.spr_uspecial, 9, fa_right, 1, c_white, 5);
	//initTipImage(player_id.spr_fspecial, 3, fa_left, 1, c_white, 0);
	//initTipImage(player_id.spr_uspecial, 9, fa_right, 1, c_white, 0);
	
	initTip("nspecial: Grab and Throw");
	initTipWords("You can grab opponents at close range, then throw them in one of 4 directions.
				  Down throw does the most damage, but doesn't have much KO potential.");
	initTipImage(player_id.spr_nspecial, 5, fa_center, 1, c_white, 5);
	//initTipImage(player_id.spr_nspecial, 5, fa_center, 1, c_white, 1);
	
	initTip("dspecial: Ramming Speed");
	initTipWords("Can be charged to give super armor for one hit.
				  Using the move earlier/later doesn't give any bonus damage.");
	initTipImage(player_id.spr_dspecial, 7, fa_center, 1, c_white, 5);
	//initTipImage(player_id.spr_dspecial, 7, fa_center, 1, c_white, 0);
	
	/*
	initTip("NSpecial: Fast Repeat Shots");
	initTipWords("After shooting a heart with NSpecial, you can fire another shot sooner than you can perform any other action. Rack up damage against a distracted opponent!");
	if ("spr_nspecial_proj" in player_id) initTipImage_ext(player_id.spr_nspecial_proj, -5, fa_right, 1, c_white, 3, 40, 30, 60, 0);
	initTipImage_ext(player_id.spr_nspecial, 2, fa_left, 1, c_white, 0, 24, 40, 64, 0);
	
	initTip("Shortening the FSpecial");
	initTipWords("Press the special button again after performing FSpecial to stop the dash prematurely. You'll travel a shorter distance as a mixup.");
	initTipImage(player_id.spr_fspecial, -5, fa_center, 1, c_white, 3);
	
	initTip("USpecial's Two Finishers");
	initTipWords("Press B again during USpecial's free flight to deliver a powerful finisher whose knockback always sends away from Sandbert. Alternatively, press shield and you'll cancel the move into pratfall - monstrously effective combined with Sandbert's notoriously short pratfall landing lag.");
	initTipImage(player_id.spr_uspecial, 3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_uspecial, 9, fa_right, 1, c_white, 0);
	
	initTip("woag");
	initTipWords_ext("woag", fa_left, c_red, 0, 0);
	initTipImage(other.spr_jab, -4, fa_center, 1, c_white, 0);
	
	initTip("Jump Cancel with DSpecial");
	initTipWords("True to its origins in Super Smash Brothers Melee for the Nintendo GameCube, you can cancel Sandbert's DSpecial with a jump at any point after the hitbox has begun. Try wavedashing out of it - what an original tactic!");
	initTipImage(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0);
	
	initTip("funny dair");
	initTipWords_ext("funny dair", fa_center, c_red, 0, 1);
	initTipImage(player_id.spr_dair, -5, fa_center, 1, c_white, 1);
	initTipWords_ext("please laugh", fa_right, c_white, 0, 0);
	
	initTip("Frictionless FStrong");
	initTipWords("During the charge of FStrong, Sandbert slides as if on ice. Get a running start to ambush a foe!");
	initTipImage(player_id.spr_fstrong, -5, fa_center, 1, c_white, 3);
	
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
	
	initTip("Phone Controls");
	initTipWords("On the Character Select Screen, hold the 0 (zero) key on your keyboard to view the expanded list of Compatibility Icons.");
	initTipWords("To perform the regular taunt instead of opening the phone, hold a direction on the control stick.");
	
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
	
	initPatch("1.6", "10 Jan, 2022");
	initPatchWords_ext("Another balance/cleanup pass, largely nerfs.", fa_left, c_gray, 1, 0);
	initPatchWords("Fixes
					- Fixed hurtbox on the first frame after dspecial/dstrong being idle instead of crouch
					- Fixed issue of dspecial/dstrong sometimes having idle hurtbox throughout the whole move
					- Cleaned up some grab/throw animation code so held opponents should move more reliably
					- Opponents should no longer be able to dodge while held, this should fix 'dropped opponent' issues
					Balance
					- Dspecial now travels faster at full charge, covering more distance
					- Removed 'pity' energy refill amount on hit (1/8th max -> 0)
					- Energy continues to begin recharging on hit and pity amount is still awarded on walljump (unchanged)
					- Driving speed 'limit' changed (20->17)
					- Will continue to accelerate slowly after reaching that speed (unchanged)
					- Reduced the time nair's lingering hitbox is active (18->14)
					- Slightly reduced the size of nair's lingering hitbox
					- Reduced dash attack hitboxes active lifetime (6->3)
					- Increased fair's endlag (11->14, 17->20 on whiff)
					- Fair visual and hurtbox adjusted to have the arm sticking out during the active hitbox frames
					- Slightly reduced size of fair's hitbox and adjusted the position to more closely fit the smear frame
					- Increased ustrong startup almost back to what it was a few patches ago (17->22)
					- First hit of jab now forces fliching on ground
					- Increased endlag after first hit of jab if second hit not initiated to reduce possibility of an infinite (9->11)
					- Adjusted scaling kb (1.2->0.85) of fthrow
					- Adjusted kb (6.8->6.1) and scaling kb (1.15->1.05) of bthrow
					- Adjusted kb (6.6->6.5) and scaling kb (1.1->0.9) of uthrow
					- Made hitboxes for fthrow/bthrow larger for more reliable connection with smaller opponents
					- Reduced overall size of utilt hitbox at the top, stretched it down at the back edge
					- Increased dstrong's travelable distance
					- Increased crouch hurtbox size
					Presentation
					- Adjusted (hopefully improved?) visual effects for throws
					- Added and adjusted timing of sounds for throws
					- Added a visual cue when dspecial is fully charged
					Thanks to snappystunner/Succ for suggestions");
	
	initPatch("1.5", "6 Jan, 2022");
	initPatchWords_ext("Fixed a visual bug on most alts.", fa_left, c_gray, 1, 0);
	initPatchWords("Presentation
				   - Fixed a bug causing visor/chest to be incorrectly colored on most alts");
	
	initPatch("1.4", "1 Jan, 2022");
	initPatchWords_ext("Filled in most character-specific Munophone functionality.", fa_left, c_gray, 1, 0);
	initPatchWords("Munophone now fully featured:
					- Added 'Infinite Energy' cheat
					- Slightly modified the 'Disco' cheat to be more noticeable on Retroblast
					- All other old cheats should continue to work
					- Brought patch notes in from Steam
					- Replaced Sandbert's tips section
					- Added Frame Data notes/adjustments for nspecial/dspecial/fstrong");
	
	initPatch("1.3", "26 Dec, 2021");
	initPatchWords_ext("Rebalance, giving most moves whifflag and a damage increase.", fa_left, c_gray, 1, 0);
	initPatchWords("Fixes:
					- Kragg rock interaction allowing Retroblast to summon Kragg on next grab - found by Trail Mix
					Balance - suggestions courtesy of AWasteOfAName/gnome/Nackles42/Trail Mix
					- Increased delay after dattack (10->13)
					- Removed hitpause from the grab itself (2->0)
					- Can now walljump out of dspecial
					- Reduced forward throw time before throw (20->13)
					- Reduced up throw time after throw (14->10)
					- Adjusted forward throw angle (60->50)
					- Reduced back throw time before throw (15->12)
					- Adjusted back throw angle (45->40)
					- Increased back throw knockback/hitpause scaling (1.1->1.15)
					- Reduced up throw time before throw (29->24)
					- Changed up throw angle (75->87)
					- Reduced endlag of dstrong (32->30 on whiff)
					- Adjusted endlag of ustrong (13->11 on hit, 17 on whiff)
					- Adjusted endlag of utilt (12->10 on hit, 15 on whiff)
					- Damage increases across the board:
					- bair sweekspot (5->11) and sourspot (5->7)
					- bthrow (4->10)
					- dair sweekspot (5->11) and sourspot (5->7)
					- dattack sweekspot (5->6) and sourspot (3->4)
					- dspecial (6->7)
					- dstrong (11->15) (+1 per hit)
					- dtilt (4->8)
					- dthrow (5->12)
					- fair (4->6)
					- fthrow (6->8)
					- ftilt (7->9)
					- uair sweekspot (7->9)
					- utilt (6->8)
					- Whifflag added across the board - found by ArtistOfSeer
					- bair (0->4)
					- dair (0->4), taken out of endlag
					- dattack (0->4)
					- dspecial (0->4), taken out of endlag
					- dstrong (0->10), taken ouf of endlag
					- dtilt (0->6), taken out of endlag
					- fair (0->6), landing lag (4->6)
					- fstrong (0->2)
					- ftilt (0->6), taken out of endlag
					- nair whifflag (0->2), landing lag (4->6)
					- uair (0->3)
					- ustrong (0->6), partially taken from endlag
					- utilt (0->5), partially taken from endlag
					Presentation:
					- Mentioned ability to drive during crouch in description (and here) since it's not immediately obvious, but intuitive enough to discover
					- Removed unsupported stickers (Munophone, T&A convo.) from Character Select Screen
					- Changed uthrow sound to match its speed
					- Adjusted 'blast' sound timing (bair/dair/fstrong)");

	initPatch("1.2", "23 Dec, 2021");
	initPatchWords_ext("Mostly presentation cleanup.", fa_left, c_gray, 1, 0);
	initPatchWords("Fixes
					- Lightweight rune now properly INCREASES knockback_adj (0.8->1.2)
					Balance
					- Reduced ustrong startup (25->17)
					- Increased ustrong knockback/hitpause scaling (0.55->0.8)
					- Increased dspecial knockback/hitpause scaling (0.6->0.8)
					Presentation
					- Removed shading from Early Access alt - found by Charcola
					- Bigger visual effect on last hit of dstrong/first hitbox of uair
					- Changed sound on last hit of dstrong/first hitbox of uair
					- Changed sounds of swipe/hit on fair
					- Changed landing sounds to be heavier
					- Added grab-confirm sound (subject to change)
					Thanks to Delta Parallax/Gnome/Wattmelon for balance/presentation suggestions");

	initPatch("1.1", "21 Dec, 2021");
	initPatchWords_ext("Addressed bug fixes.", fa_left, c_gray, 1, 0);
	initPatchWords("Fixes
					- Rune enabling aerial strong attacks no longer drains energy for normal aerials - found by Bruh Mentos
					- uspecial sound no longer persists if user is hit or KO'd found by - found by Delta Parallax
					- Replaced default Munophone sprites, but haven't updates phone contents yet - found by multiple
					- Will add proper Munophone functionality under the hood when possible
					- Fix for incorrectly recolored win/loss images - found by WasabiPea
					- 'Hologram' alt now has more appropriate css/win/loss images
					Balance
					- Reduced endlag on jab 1 & 2 (16->9)
					- Reduced maximum delay between first and second hit of nair (8->5)
					- Reduced nair base kb (3->2.5)
					- Increased nair base hitpause (3->5)
					- Reduced fair startup (10->8)
					- Increased base landing lag of uair (4->8)
					- Adjusted bair angle (155->140)
					- Adjusted ftilt angle (95->90)
					Big thanks to Delta Parallax/Gnome/WattMelon for balance suggestions");

	initPatch("1.0", "20 Dec, 2021");
	initPatchWords_ext("Retroblast's debut.", fa_left, c_gray, 1, 0);
	
	/*
	initPatch("1.1", "32 Mebruary, 20XX");
	initPatchWords("Buffs
	- a");
	initPatchWords_ext("This buff will help Sandbert a.", fa_left, c_gray, 1, 0);
	initPatchWords("Nerfs
	- a
	- b
	- a
	- uhhhh");
	initPatchWords_ext("Wait why did i nerf thsio ahgain", fa_left, c_gray, 1, 0);
	initPatchWords("Fnuuy joke
	- waog");
	initPatchWords_ext("Wow that is very funny", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "30 Mebruary, 20XX");
	initPatchWords_ext("HOLY CRAP THE CHARACTER IS OUT!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_doublejump, 0, fa_center, 1, c_white, 1);
	*/
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
	initCheat("Unlimited Energy", "cheat_unlimited_power", [0, 1], ["Off", "On"], "Take to the skies without worrying about that pesky energy bar!");
	
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
	
	initAbout("About Retroblast", "Character made by Robot, based on the Sandbert with a Phone template provided by Muno");
	
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
	
	steve_death_message = "Steve transformed into Steve, but with fewer stocks";
	
}



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