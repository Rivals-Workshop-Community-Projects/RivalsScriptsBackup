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
pho_has_trum_codec = 0;	// Trummel & Alto codec
pho_has_copy_power = 0;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 0;	// Costume for Feri's taunt
pho_has_hikaru_fak = 0;	// Title for Hikaru's fakie
pho_has_rat_allout = 0;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 1; // Moonchild's taunt music
pho_has_agentn_cdc = 0; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 0;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 1; // Portrait for the Last Resort stage
pho_has_pkmn_image = 1; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 0; // Dialogue for the Daroach boss fight


//it's uh... a lil late for that, muno
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
	
	initTip("Fast N-air");
	initTipWords("Bar's N-air is a regular Sex-Kick type move at a glance, but whenever Bar lands a hit with his N-air, he instantly goes to his endlag! Use this to your advantage doing crazy shorthop combos!")
	initTipImage(player_id.spr_exp0, -3, fa_center, 1, c_white, 0);

	initTip("Burning Fury Buff"); //yeah there's a lot here
	initTipWords("When activating Burning Fury, Bar gains a buff that increases the damage of some of his moves. The moves will also gain a cyan hitbox to convey this
	Normals: Jab 2, U-tilt, F-air, D-air.
	Strongs: All of them.
	Skills: Light Dagger, Force leap, Chasm Burster, Power Smash, Ember Fist and Light Hookshot.

	- On normals, every time Bar hits a foe with one of the affected normals, Bar's mana will burn.
	- On strongs, if Bar misses a hit the buff will stay, otherwise it will be lost.
	- On skills, Bar will lose the Burning Fury buff regardless if it was whiffed or not.

	Bar's U-strong, Light Dagger and Light Hookshot are converted to a special Burning version of themselves, inflicting Holy Burn on hit.");
	initTipImage(player_id.spr_exp1, -5, fa_center, 1, c_white, 0);

	initTip("Extendable Attacks");
	initTipWords("Bar's U-strong, Burning Fury and Force Leap all have an extra input to extend the attack in one way or another.
	- Pressing the SPECIAL key after Bar swings the light axe will allow Bar to shift the axe into a spear and throw it up
	- Pressing the ATTACK key while Bar is moving with Force Leap will allow Bar to do a blast attack that spikes opponents
	- Holding the ATTACK key while Bar is dashing forward with Burning Fury will make him do a stun attack instead of the big fire blast at the end");
	initTipImage(player_id.spr_exp5, -120, fa_center, 1, c_white, 0);

	initTip("Angleable Moves");
	initTipWords("Force Leap, Ember Fist and whiffed U-strong are all attacks that are angleable depending on the direction you press.
	- With Force Leap, pressing up/opposite of Bar's direction will cover more vertical distance, and pressing down/towards Bar's direction will cover more horizontal distance.
	- Ember Fist's case, Bar can aim it either up or down before the attack goes out, allowing for a wide range of wake up calls and surprise attacks.
	- If Bar didn't hit with U-strong he can slightly angle the direction the spear is thrown by pressing left or right");
	initTipImage(player_id.spr_exp2, 1, fa_center, 1, c_white, 0);

	initTip("Post-Blitz State");
	initTipWords("After getting to the desired destination with Accel Blitz, Bar has 20 frames where he can do any action before going into pratfall. If Bar manages to land a hit in that time window (including Accel Blitz's end blast) he will not be sent into pratfall, and be able to move in midair normally!");
	initTipImage(player_id.spr_exp3, -5, fa_center, 1, c_white, 0);

	initTip("Superjump Chasm Burster");
	initTipWords("When Bar both jumps and uses Chasm Burster at the same time he can go higher than if he were to just use the skill alone. Also works with Power Smash");
	initTipImage(player_id.spr_exp4, -3, fa_center, 1, c_white, 0);
	
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
	
	initPatch("1.1", "21/9/2021");
	initPatchWords_ext("The first post-V1 patch.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Gameplay Balance Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("= N-air sourspot added
	= Burning Fury's dash attack now depends on Bar's HSP and VSP values and applies them on enemies, making it hit consistently
	= Power Smash now no longer deals damage when stood on, and only applies holy fire
	= Power Smash's burning crater can no longer be parried
	= Light Hookshot skill cost split reversed (charge: 15 -> 5 | release: 5 -> 15)
	= The timestop hitbox of Lord's Punishment (overdrive/final smash) now appears 1 frame later (creation frame 0 -> 1)
	= Fixed Theía Evlogía not reverting Bar back to normal properly
	= Added new phone cheat: no MP draining (will prevent Burning Fury and Guard Aura from draining MP)
	");
	initPatchWords_ext("Buffs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ F-strong base knockback increased (6.5 -> 7.5)
	+ F-strong knockback scaling increased (0.9 -> 1.2)
	+ U-strong axe knockback scaling increased (0.7 -> 1.1)
	+ D-tilt ground friction decreased on windows 1 and 2 (window 1: 0.4 -> 0.2 | window 2: 0.4 -> 0.3)
	+ Burning Fury dash attack hitpause decreased (14 -> 8)
	+ Burning Fury dash attack hitpause scaling (0.8 -> 0.5)
	");
	initPatchWords_ext("Nerfs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("- N-air lifetime decreased (24 -> 2) (The 22 frames that are removed are in the new sourspot)
	- U-strong spear knockback scaling decreased (0.9 -> 0.7)
	- D-strong base knockback decreased for the fire blast (9 -> 8)
	- Power Smash sweetspot damage decreased (10 -> 8)
	- Power Smash sourspot damage decreased (8 -> 5)
	- Buffed Power Smash sweetspot damage decreased (13 -> 10)
	- Buffed Power Smash sourspot damage decreased (10 -> 8)
	- Ember Fist MP cost increased (10 -> 20)
	- Ember Fist MP window 4 time increased (14 -> 20)
	");
	initPatchWords_ext("Visual Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("= N-air sweetspot is now colored yellow so you can tell when the hitboxes swap
	= Broken Prism alt now has dimmer fire
	= Broken Prism alt now brings out the color trail in more scenarios
	= Added V1 release date to phone
	= Corrected attack names for Lord's Punishment and Theía Evlogía in the Stat Debug Mode on the phone
	");
	initPatchWords_ext("Workshop Compatibilities:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Rivals of Fighter super move added
	");

	initPatch("1.0", "14/9/2021");
	initPatchWords_ext("The complete guardian angel expirience!", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Gameplay Balance Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("= Mana Debug Mode is now a munophone cheat, and has more options than on and off
	= When selecting skills, Bar is now go-throughable, and hurtbox is removed too
	= In practice mode, the skill select will no longer have a timer in the begining of the match
	= Disabled being able to re-open the skill select menu in training mode while it's already open
	= Added stamina when gliding - Bar loses stamina as long as he glides, and restores 50 stamina when walljumping or wall-teching
	= Bar's AI is now slightly smarter, he will not waste mana if he doesn't have a bit over the mana cost of the skill
	= Fixed bug that made bar stay in his U-tilt animation after landing a hit and fastfalling, he now goes into landing lag instead
	= U-tilt is now no longer hitfallable
	= Altered how Burning Fury's buff is disabled through F-strong and D-strong - Instead of disabling on hit, they only disable when Bar has hit someone already and is no longer in the attack state
	= The method charging a strong consumes mana altered, every 6 strong_charge frames Bar will consume 1 MP (Attacks affected: D-strong, Theïkós D-strong, Theïkós U-strong)
	= Fixed issue where you could see Bar's light axe under the burning version on U-strong
	= Fixed problem that made burning U-strong's spear not aimable like the normal version
	= Added hit lockout to D-strong's flat fire blast (0 -> 20) (To prevent the shockwave and rune I rocks to deal extra damage and overwrite the knockback)
	= Fixed Light Dagger's (air version) lifetime
	= Light Dagger (normal ver) knockback angle adjusted (50 -> 65)
	= Force Leap is now able to be controlled using up and down aswell as left and right. pressing up/back will send Bar up, and pressing down/forward will send Bar forward.
	= Fixed bug that made Bar's endpoint position not reset when getting hit while using Accel Blitz
	= Fixed bug that turns Bar invisible after using Accel Blitz and dying from the pratfall
	= Fixed bug that makes Bar's Accel Blitz not reset it's relative position on death
	= Accel Blitz's behaviour when colliding with the stage is altered, it will now push Bar out of the ground for easier recoveries
	= Fixed some jank when using Accel Blitz with either theikos or turbo mode
	= Chasm Burster's mana cost is now split to two parts: when Bar activates the attack he loses only 5 MP, but when landing he loses 25 MP
	= Chasm Burster's variants are now a single move instead of 2 seperate ones
	= Chasm Burster now won't spawn the bursts in midair
	= Added angle flipper 3 to Guard Aura
	= Guard Aura angle adjusted (361 -> 50)
	= Theïkós Bar's effects have been seperated from the Divine Punishment alt, and it is now purely cosmetic
	= Theïkós D-strong will now allow only one burning ground at a time
	= Power Smash added
	= Light Hookshot added
	");
	initPatchWords_ext("Buffs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Jab 1 range increased (width 60 -> 68 | height 28 -> 32 | X 24 -> 28)
	+ Jab 2 range increased (width 72 -> 80 | height 28 -> 36 | X 26 -> 30)
	+ Jab 2 knockback increased (4.5 -> 6)
	+ Jab 3 range increased (width 88 -> 96 | height 42 -> 50)
	+ Bar now moves further out on Jab 3 (hspeed 5 -> 7)
	+ Jab 3 startlag decreased (8 -> 6)
	+ D-tilt ground friction decreased (0.5 -> 0.4)
	+ D-tilt range increased (width 66 -> 80 | height 36 -> 40 | X 26 -> 30)
	+ F-strong range increase (width 60 -> 80)
	+ Reduced friction before and while charing F-strong (0.5 -> 0.2)
	+ U-strong axe attack endlag decreased (21 -> 15)
	+ U-strong light spear lifetime increased (20 -> 30)
	+ U-strong light spear will now aim itself towards the target's position on hit
	+ D-strong knockback increased (base 8 -> 9 | scaling 1.1 -> 1.2)
	+ N-air will go to it's endlag instantly if you land a hit with it
	+ N-air range increased (width 60 -> 76 | height 32 -> 38 | X 24 -> 18)
	+ N-air startlag decreased (6 -> 4)
	+ Light dagger endlag decreased (18 -> 15)
	+ Force leap's aim trajectory altered
	+ Photon Blast now won't send Bar into pratfall if he hits someone with it
	+ Buffed up Chasm Burster will now shoot 6 fire bursts instead of 4
	+ You can now jump out of Chasm Burster while falling
	+ Heavily buffed theikos wavedash (wave_land_adj: 1.35 -> 2.25 | wave_friction: 0.4 -> 0.2)
	");
	initPatchWords_ext("Nerfs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("- F-tilt hitboxes lifetime decreased (sweetspot: 6 -> 2 | sourspot: 8 -> 4)
	- Removed all hitstun properties from Light Dagger
	- Light Dagger startup windows time increased (windows 1/5/9: 4 -> 6 | windows 2/6/10: 8 -> 10) (also applies for the air version)
	- pratland duration after using force leap increased (6 -> 10)
	- Decreased travel distance per frame on Accel Blitz (10 -> 8)
	- Buffed Chasm Burster damage nerfed (initial hit 9 -> 7 | fire bursts 8 -> 6)
	- Guard Aura active time decreased (8 secs -> 3 secs) (this does not affect the mana depletion speed)
	- Guard Aura base knockback increased (5 -> 12)
	- Guard Aura knockback scaling removed
	- Guard Aura hitstun multiplier decreased (2 -> 0.4)
	- Guard Aura extra hitpause remove
	");
	initPatchWords_ext("Visual Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("- Changed skill select invincibility to attack_invince
	= Bar now flashes when you have 5 seconds left when you select skills
	= The training mode messages now only disappear only after you do the respective inputs instead of a pre-set timer
	= Updated color of his skill icons
	= Burning Fury, Force Leap, Power Smash and Ember Fist icons altered
	= Changed the input button prompts on the skill select hud
	= Updated respawn platform graphic
	= When falling Bar is now more animated
	= Added particles when Bar charges any chargeable holy fire/light attack
	= Added sound effects when Bar charges any chargeable holy fire/light attack
	= Added the fire effect to charged D-strong
	= Updated holy burning effect
	= Fixed bug that kept the foe's outline color the burning outline color when parrying an attack that's ment to burn them
	= Added a recolored rock effect to match Bar's pallete instead of using the default large rock hitspark
	= Light Dagger's effect is now a part of the animation itself
	= Changed sound when Bar uses Burning Light Dagger
	= Added particles to when Bar uses Burning Fury, as some states overwrite the outline coloring
	= Added a new motion effect when using Force Leap
	= Made the dust rotate along where Bar is going with Force Leap
	= Fixed issue that prevented Bar's pratfall animation from playing after using Accel Blitz
	= Renamed Guardian of the Elements alt (the default) to Elemental Guardian
	= Fixed colors on some victory portraits
	= Broken Prism alt's color changing speed is now slower
	= Added an icon to the Broken Prism alt
	= Renamed Divine Punishment alt to Theía Evlogía
	= The Theïkós music now scales with the actual in-game music volume
	= Added intro animation
	= Added phone animation
	= Added 8-bit Theïkós portraits
	= Added 8-bit Theïkós music theme
	");
	initPatchWords_ext("Workshop Compatibilities:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Neptendo jingle
	+ Otto's bike bobblehead
	+ Munophone support
	+ Abyss Runes support
	+ Final Smash
	");

	initPatch("DELTA", "5/6/2021");
	initPatchWords_ext("The final beta before the full release! still has more buffs than nerfs but it's cuz buffs are fun!", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Gameplay Balance Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("= Fixed bug that messed with the hurtbox if you do an attack or dodge while using the skill menu.
	= Whenever the skill menu is brought up on training mode, it will reset the cursor position to Light Dagger's position
	= The skill menu can loop around itself
	= At the start of a match, after Bar closes the skill menu he will have invincibility for 90 frames (1.5 secs)
	= Fixed bug that kept Bar in place if he finishes selecting skills before the match allows characters to move
	= Jabs hitpause fixed
	= All jabs angle flippers removed
	= F-air hitbox arrangement altered (has 2 sourspots above and below following the animation, sweetspot in the middle)
	= B-air's sourspot now sends forward instead of backwards
	= F-strong back hitbox disabled
	= Photon Blast angle flipper altred (8 -> 3)
	= Photon Blast now resets it's charge to prevent turbo mode/Theïkós Bar to store it up
	= Fixed problem with Chasm Burster's bursts staying in place if used as up special
	= Accel Blitz added
	= Ember Fist added
	= Theïkós F-strong added
	= Theïkós U-strong added
	= Theïkós D-strong added
	");
	initPatchWords_ext("Buffs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Dash speed increased
	+ All jabs hitstuns reduced
	+ Jab 3 overall speed increased (startup: 6 -> 4 | attack: 8 -> 6 | endlag: 10 -> 8)
	+ Jab 3 knockback angle altered (10 -> 40)
	+ Jab 4 knockback angle adjusted (10 -> 30)
	+ Jab 4 overall speed increased (startup: 12 -> 8 | attack: 10 -> 8 | endlag: 12 -> 8)
	+ F-strong hitbox size increased (30x50 -> 60x40)
	+ U-tilt sourspot base hitpause increased (3 -> 6)
	+ D-tilt hitpause scaling added (0.2)
	+ N-air base hitpause increased (4 -> 5)
	+ U-air base hitpause increased and hitpause scaling added (base hitpause: 4 -> 6 | hitpause scaling: 0.2)
	+ D-air knockback scaling increased (0.7 -> 0.9)
	+ D-air's startup is slightly faster so it can chain with accel blitz (15 -> 12)
	+ U-strong's 2nd projectile (normal version) knockback and knockback scaling increase (base kb: 5 -> 7 | kb scaling: 0.7 -> 0.9)
	+ U-strong's 2nd projectile (burning version) kb scaling increase (0.8 -> 1.1)
	+ U-strong's 2nd projectile size increase (8x40 -> 16x60)
	+ U-strong's 2nd projectile is now aimable
	+ Light Dagger knockback increased (3 -> 5)
	+ Light Dagger extra hitpause added (4)
	+ Chasm Burster air friction decreased (0.3 -> 0.1)
	+ Added a soft spike hitbox when Bar starts to fall with chasm burster active
	+ Taunt hitbox size increased (x:16 y:16 -> x:24 y:32)
	+ Taunt lifetime increased (1 -> 2)
	+ Theïkós Bar's Force Leap doesn't go into pratfall
	");
	initPatchWords_ext("Nerfs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("- Jab now locks people inside it less
	- F-air sourspot lifetime decreased (6 -> 4)
	- F-air sweetspot base knockback decreased (7 -> 5)
	- D-air sweetspot base knockback decreased (9 -> 6)
	- F-strong is no longer turnable
	- Uncharged Photon Blast startup increased (14 -> 25) (excluding Theïkós Bar)
	- Chasm Burster projectile damage decreased (normal: 6 -> 4 | burning fury buffed: 11 -> 8)
	- Added parry stun to Chasm Buster
	- Guard Aura is active 8 seconds, and will not do the counter attack automatically (consumes 50 MP total)
	- taunt damage decreased (12 -> 10)
	- Theïkós Bar initial dash speed and dash speed nerfed to be more controllable
	");
	initPatchWords_ext("Visual Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("- A frame in U-strong's animation was altered to portray the hitboxes better
	= Added colored hitboxes (to moves that aren't projectiles)
	= Fixed visual bug where Guard Aura on Theïkós Bar will not show the hitspark when releasing the move
	= Added custom hit particles to moves that spawn hitboxes outside of the attack itself
	= Bar's gauntlet glow take the color of his light, rather than his light blue clouthes on the portraits
	= Renamed NES alt to Demake
	= Early Acess and Demake alts now have a chiptune version of Bar's victory theme
	= Fiery Racing Spirit alt colors altered
	= Renamed Star Guardian alt to Stellar Traveller
	= Added 16 new alts
	= Holy Fire on the Divine Punishment alt portrait altered to match the in-game pallete
	= Camera shake increased on Theïkós Bar dash start
	= Camera shake while landing with Theïkós Bar only occurs on fastfalling
	= Camera shake added when charging strongs with Theïkós Bar
	= Added outline to Theïkós Bar's ancient text
	");
	initPatchWords_ext("Workshop Compatibilities:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Soulbound conflict flavor text
	+ Callie date dialogue
	+ Green Flower Zone signpost
	+ Assist Buddy compatibility
	");

	initPatch("GAMMA", "23/4/2021");
	initPatchWords_ext("Aka the cooler Beta, plays basically worlds apart from the previous version!", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Gameplay Balance Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("= Double jumps now work like his first jump
	= Gliding will now only make Bar change direction if he goes at max speed
	= Mana Debug Mode's natural MP regen speed doubled
	= F-tilt hitboxes are bigger and deal more identical values
	= Fixed Burning Fury's rapid mana deplete if people are hit durring the initial activation
	= Force Leap stalls in midair before the leap
	= Photon Blast connects properly
	= B-air added
	= F-strong added
	= U-strong added
	= D-strong added
	= Skill Select added
	= Chasm Burster added
	= Guard Aura added
	");
	initPatchWords_ext("Buffs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Re/spawning MP value buffed (0 -> 100)
	+ A successful Parrying gives more mana (10 -> 25)
	+ All moves damage increase (too many to point out here tbh)
	+ Jab 1 hitpause increase
	+ Jab 1 is faster
	+ Jab 1 friction decreased
	+ Jab 2 is faster
	+ Jab 2 hitpause decreased
	+ Jab 3 is faster
	+ Jab 3 hitpause decreased
	+ F-tilt has slightly less friction on the first window
	+ D-tilt is faster
	+ D-tilt friction decreased
	+ N-air stays active for longer
	+ N-air is faster
	+ N-air deals more knockback
	+ F-air hitboxes size increase
	+ F-air has an extra sweetspot hitbox
	+ F-air hitpause decreased
	+ U-air is faster
	+ D-air hitboxes size increase
	+ D-air sourspot deals more knockback
	+ Light Dagger knockback and hitstun increased (Burning Light Dagger too)
	+ Burning Fury activation attack hitpause decreased
	+ Burning Fury activation and dash attack startup speed increase
	+ Burning Fury dash attack is untechable
	+ Burning Fury stun attack hitbox size incrase
	+ Burning Fury final blast on the grounded version launches slightly upwards
	+ Photon Blast final hit knockback increase
	");
	initPatchWords_ext("Nerfs:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("- MP gain while attacking decreased to match the new damage output
	- Theïkós Bar is actually killable
	- Theïkós Bar dash speed decreased
	");
	initPatchWords_ext("Visual Changes:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("= Bar's offsets now overlap with the stage as they should
	= Bar's idle is now slightly slimmer to fit the rest of his sprites
	= Light Dagger has hit sound effects now
	= Burning Fury's activation blast is now in front of Bar
	= Force Leap has a new leap sound
	= Added mini mana gauge that shows up whenever Bar gains mana, de/activate Mana Debug Mode, and when MP is insufficient
	= No MP now says Low MP and the arrow under his nametag flashes
	= When Bar has insufficient mana a sound will play
	= Added sound effect for when Bar runs out of mana with Burning Fury
	= Holy Burned foes will now gt different colored outlines depending on Bar's alt
	= Replaced the Mysterious Friend with the Fiery Racing Spirit alt
	= Added unique alt names for seasonal alts
	");
	initPatchWords_ext("Workshop Compatibilities:", fa_left, $5a7b1d, 1, 0);
	initPatchWords("+ Steve death messages
	+ Moonchild song
	+ Last Resort painting
	+ TCO drawings
	");

	initPatch("BETA", "19/3/2021");
	initPatchWords_ext("The first open beta release of Bar Reygard!", fa_left, c_gray, 1, 0);
	initPatchWords("

	");
	initPatchWords_ext("GUARDIAN DRIP", fa_center, $fffc00, 1, 1);
	initPatchImage(player_id.spr_drip, 0, fa_center, 1, c_white, 0);
	initPatchWords_ext("bottom text", fa_center, c_white, 1, 0);
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
	
	//mana debug - update.gml
	initCheat("Mana Debug Mode", "mana_debug", [1, 2, 3, 4, 5, 6, 0], ["2 mps", "5 mps", "10 mps", "20 mps", "50 mps", "100 mps", "No Regen"], "Change the speed of Bar's natural mana regneration.
	(Will not work with Theïkós and Rune K.)
	
	Note: mps = Mana Per Sec.");

	//stat debug - debug_draw.gml
	initCheat("Stat Debug", "stats", [0, 1], ["Off", "On"], "Allows you to see various background stats.");

	//stat debug - debug_draw.gml
	initCheat("No Mana Drain", "mp_drain", [0, 1], ["Off", "On"], "Disables the MP drain from skills like Burning Fury and Guard Aura");

	/*
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
		AT_FSTRONG,
		AT_USTRONG,
		AT_DSTRONG,
		AT_NAIR,
		AT_FAIR,
		AT_BAIR,
		AT_UAIR,
		AT_DAIR,
		AT_NTHROW, //AT_SKILL0
		AT_NSPECIAL_AIR, //AT_SKILL0_AIR
		AT_FTHROW, //AT_SKILL1
		AT_FSPECIAL_AIR, //AT_SKILL1_AIR
		AT_UTHROW, //AT_SKILL2
		AT_DTHROW, //AT_SKILL3
		AT_NSPECIAL_2, //AT_SKILL4
		AT_EXTRA_1, //AT_SKILL5
		AT_FSPECIAL_2, //AT_SKILL6
		AT_USPECIAL_2, //AT_SKILL7
		AT_DSPECIAL_2, //AT_SKILL8
		AT_EXTRA_2, //AT_SKILL9
		AT_TAUNT,
		AT_FSTRONG_2,
		AT_USTRONG_2,
		AT_DSTRONG_2,
		//these don't exist
		AT_DATTACK,
		AT_NSPECIAL,
		AT_FSPECIAL,
		AT_USPECIAL,
		AT_USPECIAL_GROUND,
		AT_DSPECIAL,
		AT_DSPECIAL_AIR,
		AT_EXTRA_3,
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
	include_custom = true;
	
	// If so, what's its name?
	custom_name = "Mana Information"

	i = 0;

	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)

	initCFDHeader("Mana Gains");
	initCFDBody("Natural Regen: 2 mps
	Theïkós Natural Regen: 100 mps
	On Attack: Attack Damage x 0.6
	When Hurt: Foe's Attack Damage x 0.25
	On Parry: +25 mana
	");

	initCFDHeader("Mana Costs");
	initCFDBody("Strongs: 5 mana
	Light Dagger: 5 mana (per shot)
	Burning Fury: 50 mana
	- 10 mana (activation)
	- 5 mps (active)
	- 10 mana (dash attack)
	Force Leap: 10 mana
	- 10 mana (spike explosion)
	Photon Blast: 40 mana
	Accel Blitz: 10 mana
	Chasm Burster: 30 mana
	Power Smash: 30 mana
	- 5 mana (activation)
	- 25 mana (landing)
	Guard Aura: 50 mana
	- 10 mana (activation/counter)
	- 5 mps (active)
	Ember Fist: 10 mana
	Light Hookshot: 20
	- 15 mana (activation)
	- 5 mana (throw)
	");

	/*
	// If so, what's its name?
	custom_name = "Burning Fury Buff"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)

	initCFDHeader("General Overview");
	initCFDBody("Mana Burn Rate: 5 mps
	Min. Mana Required: 50 mana");
	
	initCFDHeader("Buffed Normals");
	initCFDBody("Affected Moves: Jab2, Utilt, Fair, Dair
	Effects:
	- Inflicts Holy Burning on hit
	- Increases attack damage by x1.5
	- Burns mana, half the attack's damage value");
	
	initCFDHeader("Buffed Strongs");
	initCFDBody("Affected Moves: Ustrong, Fstrong, Dstrong, Fstrong 2 (Theïkós), Dstrong 2 (Theïkós)
	Effects:
	- Inflicts Holy Burning on hit
	- Increases attack damage by x1.5 (generally speaking)
	- Buff is gone on hit");
	
	initCFDHeader("Buffed Skills");
	initCFDBody("Affected Moves: Light Dagger, Force Leap, Chasm Burster, Power Smash, Ember Fist, Light Hookshot
	Effects:
	- Increases damage not by a set amount
	- Chasm Burster Shoots 6 bursts instead of 4
	- Light Dagger and Light Hookshot are converted to Holy Fire attacks
	- Buff is gone on use");
	*/
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
	
	initAbout("About Bar", "Bar Reygard is the Guardian of the Elements, an angel tasked with guarding the gauntlet he wears. He doesn't really like to fight but certainly isn't afraid to throw hands if he needs to.
	
	He can seem like a pretty hard shell to crack at first but he's actually very easily flustered, it's pretty cute so everyone like to tease him for that.
	
	But you didn't hear it from me~");
	
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
	
	otto_bobblehead_sprite = sprite_get("_pho_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
}



// Steve death message
if (pho_has_steve_dmsg)
{
	steve_death0 = "Steve was denied from Shamaeem by Bar_Rey using [Mage's Gauntlet]"; //message to appear when there's no other message
	steve_death1 = "Steve was slain by Bar_Rey"; //normal death message
	steve_death2 = "Steve was slain by Bar_Rey using [Mage's Gauntlet]"; //death from an attack that uses bar's gauntlet
	steve_death3 = "Steve was flashed to death Bar_Rey"; //death from light based attacks
	steve_death4 = "Steve was burnt to a crisp whilst fighting Bar_Rey using [Mage's Gauntlet]"; //dying while holyburning = true;
	steve_death5 = "Death.attack.AT_TAUNT"; //dying if bar killed steve with his taunt
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
	if (pho_has_tco_sketch)
	{
		if (theikos) tcoart = sprite_get("tcoart2");
		else tcoart = sprite_get("tcoart1");
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
	if (pho_has_moon_music)
	{
		childsupport = true;
	}
	
	
	
	// Agent N codec
	
	if pho_has_agentn_cdc{
		
		ncode1 = "line1";
		ncode2 = "line2";
		ncode3 = "line3";
		
	}
	
	
	
	// Dracula dialogue
	if (pho_has_drac_codec)
	{
		dracula_portrait = sprite_get("dracula_portrait1");
		dracula_portrait2 = sprite_get("dracula_portrait2");
		dracula_portrait3 = asset_get("empty_sprite");
		var page = 0;

		//Page 0
		dracula_speaker[page] = 1;
		dracula_text[page] = "...So you must be Count Dracula.";
		page++;

		//Page 1
		dracula_speaker[page] = 0;
		dracula_text[page] = "And you must be the infamous 'Guardian Angel of the Elements'.";
		page++;

		//Page 2
		dracula_speaker[page] = 0;
		dracula_text[page] = "You are but a puny child, and you think it's a good idea to simply waltz into my castle?"
		page++;

		//Page 3
		dracula_speaker[page] = 1;
		dracula_text[page] = "It's my job to put a stop to your reign of terror. Please give up, and we can end this peacefully. I've defeat all your minions already!";
		page++;

		//Page 4
		dracula_speaker[page] = 0;
		dracula_text[page] = "I see... I must admit I am far from impressed by you angels, sending a mere child to defeat me.";
		page++;

		//Page 5
		dracula_speaker[page] = 0;
		dracula_text[page] = "You must have a death wish.[glass] Very well then, I will give you...";
		page++;

		//Page 6
		dracula_speaker[page] = 0;
		dracula_text[page] = "[shake]Despair and death!";
		page++;

		//Page 7
		dracula_speaker[page] = 0;
		dracula_text[page] = "Have at you, guardian!";
		page++;

		//Page 8
		dracula_speaker[page] = 2;
		dracula_text[page] = "I guess there's no other choice, then..";

		if (theikos)
		{
    		dracula_portrait = sprite_get("dracula_theikos_portrait1");
    		dracula_portrait2 = sprite_get("dracula_theikos_portrait2");
    		dracula_portrait3 = asset_get("empty_sprite");
    		var page = 0;

    		//Page 0
    		dracula_speaker[page] = 1;
    		dracula_text[page] = "You must be Count Dracula.";
    		page++;

    		//Page 1
    		dracula_speaker[page] = 0;
    		dracula_text[page] = "And you must be the infamous 'Guardian Angel of the Elements'.";
    		page++;

    		//Page 2
    		dracula_speaker[page] = 0;
    		dracula_text[page] = "You are but a puny child, and yet your aura tells another story, how curious."
    		page++;

    		//Page 3
    		dracula_speaker[page] = 1;
    		dracula_text[page] = "It's my job to put a stop to your reign of terror. Give up, and we can end this peacefully. I've destroyed your entire army, there's no escape.";
    		page++;

    		//Page 4
    		dracula_speaker[page] = 0;
    		dracula_text[page] = "I see... So this the Theïkós state, as they call it.";
    		page++;

    		//Page 5
    		dracula_speaker[page] = 0; 
    		dracula_text[page] = "Your aura is strong, child,[glass] However I will not fall to your little handycap.";
    		page++;

    		//Page 6
    		dracula_speaker[page] = 0;
    		dracula_text[page] = "It will not be enough to save you from Count Dracula Tepes!";
    		page++;

    		//Page 7
    		dracula_speaker[page] = 0;
    		dracula_text[page] = "[shake] Have at you, guardian!";
    		page++;

    		//Page 8
    		dracula_speaker[page] = 2;
    		dracula_text[page] = "You'll regret this, Dracula.";
		}
	}
	
	
	
	// Miiverse post
	if (pho_has_miivs_post)
	{	
		miiverse_post = sprite_get("miiverse");
	}
	
	
	
	// Mt Dedede title
	
	if pho_has_dede_title{
		
		arena_title = "woag";
		arena_short_name = "woaf";
		
	}
	
	
	
	// Soulbound Conflict
	if (pho_has_soul_title)
	{
		if (theikos) battle_text = "* The guardian's true face revealed.";
		else battle_text = "* Bar braces himself!";
	}
	
	
	
	// Trial Grounds
	
	if pho_has_been_found{
	
		sprite_change_offset("trial_grounds", 31, 0);
		guiltySprite = sprite_get("trial_grounds");
		
	}
	
	
	
	// Last Resort painting
	if (pho_has_resort_pic)
	{
		sprite_change_offset("last_resort", 27, 39);
		resort_portrait = sprite_get("last_resort");
	}
	
	
	
	// PKMN Stadium battle portraits
	if (pho_has_pkmn_image)
	{	
		pkmn_stadium_front_img = sprite_get("pokemon_front");
		pkmn_stadium_back_img = sprite_get("pokemon_back");
		pkmn_stadium_name_override = "bar";
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