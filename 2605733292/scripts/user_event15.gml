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
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 0;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 0;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 0;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
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
	
	initTip("Passive: Sweet Dreams");
	initTipWords("Standing idle for too long has Sleep Kirby fall fast asleep. While in this state, Sleep Kirby can slowly recover percent. You can also cancel out of the sleep animation with anything!");
	initTipImage(player_id.spr_sleep, -6, fa_center, 1, c_white, 0);
	
	initTip("Sleep Status ( + Fspecial)");
	initTipWords("Sleep Kirby can inflict a special stats called Sleep. Two moves in Sleep Kirby's kit can inflict this: Fspecial (which will be covered in this page) and Dspecial (which will be covered later).
	When an opponent is put to sleep, they will become motionless and unable to do anything. The time the opponent is put to sleep is equivalent to their percentage, and caps out at 65 %.
	If an opponent is put to sleep while airborne, they will instantly fall asleep and fall to the ground. If they hit the bottom blastzone, instead of instantly getting K.O.'d (which is no fun), they will instead bounce back up with their airdodge and jumps restored.");
	initTipImage(player_id.spr_fspecial, -5, fa_center, 1, c_white, 0);
	initTipWords("Now for Fspecial: Nightly Nightcap.
	Fspecial has high startup and endlag with mediocre range, but landing the move forces the opponent to sleep.
	The move's hitbox is right in front of Kirby.
	Also, landing the move on airborne opponents will not put the status on them: they will be dunked instead.");

	initTip("Nspecial: Burst Bubble");
	initTipWords("A chargeable projectile. The projectile will only work when it is fully charged. You can even move while charging!
	The projectile itself is fairly slow, but deals big damage. Could be useful for stage control.
	Press parry when the bubble is fully charged to store the charge. Press NSpecial again to release it!
	Hold the opposite direction you're facing when firing the bubble to move back much further! Use this as a recovery mix up option, or as a way to get around.");
	initTipImage(player_id.spr_nspecial, -5, fa_left, 1, c_white, 0);
	initTipWords("Now for some synergy!
	If you use Fspecial on it, you'll change the direction the bubble goes. The bubble will go at a downward angle in addition to going forward.
	If you use Uspecial into it, or run into it during pratfall, you'll bounce off the bubble.
	If the bubble touches either one of your Sleep Copy Essences or the Ability Star that gets knocked out of it, the bubble will pick it up! If it hits someone, then they will be put to sleep!");
	initTipImage(player_id.spr_bubble, -6, fa_left, 1, c_white, 3);
	
	initTip("Dspecial: Sleep Copy Essence");
	initTipWords("Dspecial places a Sleep Copy Essence on the stage. After the star materializes, you can hit it around with any of your normals!
	Having the star hit someone puts the sleep status on them, so this is a fairly versatile option. The star only lasts for 4 seconds after being hit by something (and refreshes after being hit by anything), so keep this in mind.
	Be careful: the opponent can also hit it, which could lead to you falling victim to your own status! Note: Opponents can't hit it back with a projectile.
	If you knock an opponent into the Essence while the Ability Star is still in the Essence, it will automatically put the Sleep Ability onto them.");
	initTipImage(other.spr_essence, -4, fa_left, 1, c_white, 0);
	initTipImage(other.spr_ability_star, 0, fa_right, 1, c_white, 0);
	
	initTip("Jab");
	initTipWords("This is fairly a basic 3 hit jab at a first glance: but after Jab 3 is used, Sleep Kirby lies down. After 10 frames, you cancel it into anything.
	Lying down for a while lets Kirby activate Sweet Dreams.");
	initTipImage(player_id.spr_jab, -5, fa_center, 1, c_white, 0);
	
	initTip("Nair");
	initTipWords("A full 360 degree swing around Sleep Kirby. Landing during the move's active frames autocancels into Jab 3.
	If you land and cancel into Jab 3, it becomes a deadly kill option. Use this to catch your opponent off guard!");
	initTipImage(player_id.spr_nair, -5, fa_center, 1, c_white, 0);
	
	initTip("Dtilt");
	initTipWords("A slide. Hitting an opponent bounces both of you upward. You can slide off ledges with this as well.");
	initTipImage(player_id.spr_dtilt, -5, fa_center, 1, c_white, 3);
	
	initTip("Fstrong");
	initTipWords("Kirby's Fsmash from Smash Bros. You'll go a little bit farther if you charge it.");
	initTipImage(player_id.spr_fstrong, -5, fa_center, 1, c_white, 3);
	
	initTip("Alternate Colors");
	initTipWords("Alt 1: Default
	Sleep Kirby's design from Kirby's Return to Dreamland onwards.");
	initTipImage(player_id.spr_alts, 0, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 2: Blue
	Resembles Blue Kirby.");
	initTipImage(player_id.spr_alts, 1, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 3: Red
	Resembles Red Kirby.");
	initTipImage(player_id.spr_alts, 2, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 4: Green
	Resembles Green Kirby's coloration in games like Kirby Air Ride or Kirby's Return to Dreamland.");
	initTipImage(player_id.spr_alts, 3, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 5: Monochrome
	Resembles Kirby's gray alt in Smash Bros.");
	initTipImage(player_id.spr_alts, 4, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 6: Purple
	Resembles Purple Kirby.");
	initTipImage(player_id.spr_alts, 5, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 7: Abyss
	Resembles Shadow Kirby's design from Kirby Fighters 2.");
	initTipImage(player_id.spr_alts, 6, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 8: Early Access
	Resembles the Early Access color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 7, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 9: Yellow
	Resembles Yellow Kirby. The hat color references it's looks in Kirby Super Star on SNES and a prerelase screenshot of Kirby Air Ride.");
	initTipImage(player_id.spr_alts, 8, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 10: Gray
	Resembles the Carbon Spray Paint from Kirby and the Amazing Mirror and Kirby: Squeak Squad.");
	initTipImage(player_id.spr_alts, 9, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 11: Brown
	Resembles Brown Kirby.");
	initTipImage(player_id.spr_alts, 10, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 12: Ivory
	Resembles the Ivory Spray Paint from Kirby: Squeak Squad.");
	initTipImage(player_id.spr_alts, 11, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 13: Sea Blue
	Resembles the Carbon Spray Paint from Kirby and the Amazing Mirror and Kirby: Squeak Squad. The hat color resembles Sleep Kirby's looks in Kirby: Nightmare in Dreamland.");
	initTipImage(player_id.spr_alts, 12, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 14: Light Gray
	Resembles Valkyrie, another workshop character.");
	initTipImage(player_id.spr_alts, 13, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 15: Bright Pink
	Resembles the Cherry Spray Paint from Kirby and the Amazing Mirror and Kirby: Squeak Squad.");
	initTipImage(player_id.spr_alts, 14, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 16: Red + Blue
	No origin.");
	initTipImage(player_id.spr_alts, 15, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 17: Infamous
	Resembles the Infamous color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 16, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 18: Pure Gold
	Resembles the Pure Gold color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 17, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 19: Ranked Gold
	Resembles the Ranked Gold color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 18, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 20: Champion
	Resembles the Champion color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 19, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 21: Orange
	Resembles the Orange Spray Paint from Kirby and the Amazing Mirror and Kirby: Squeak Squad. Also resembles the Orange color from Kirby: Battle Royale.");
	initTipImage(player_id.spr_alts, 20, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 22: Emerald
	Resembles the Emerald Spray Paint from Kirby and the Amazing Mirror and Kirby: Squeak Squad.");
	initTipImage(player_id.spr_alts, 21, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 23: White
	Resembles the Snow Spray Paint from Kirby and the Amazing Mirror and Kirby: Squeak Squad.");
	initTipImage(player_id.spr_alts, 22, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 24: Pale
	Resembles Kirby's appearance when he has an ability in Kirby's Adventure for the NES.");
	initTipImage(player_id.spr_alts, 23, fa_left, 1, c_white, 0);
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
	 
	initPatch("1.1", "September 19, 2021");
	initPatchWords("General
	~ Fixed double outlines on the respawn platform.
	~ Putting Muno Steve to sleep sets his respawn point to where you put him to sleep.
	~ Added Trummel Codec.
	~ Added Otto bobblehead.
	~ Added Steve death message.
	~ Added Hikaru Title.
	~ Added Mt. Dedede Stadium title.
	~ Added Henry Stickmin fail text.
	~ Added Agent N text.
	~ Added Soulbound Conflict text.");
	initPatchWords("Neutral Air
	- Getting parried should put you into parry stun now.
	+ Landing Lag: 9 -> 7
	+ Landing Nair Base Knockback: 8 -> 9
	+ Landing Nair Knockback Scaling: 0.7 -> 0.8
	(this is what it originally was in beta before i toned it down a bit lol)");
	initPatchWords("Back Air
	~ Adjusted hitbox sizes.");
	initPatchWords("Neutral Special
	+ Cooldown: 120 Frames -> 80 Frames");
	initPatchWords("Up Special
	+ Base Knockback: 4 -> 5
	+ Knockback Scaling: .4 -> .5
	~ Added destroy effect to the hand.");
	initPatchWords("Down Special
	+ Opponents can’t destroy the Essence before the Ability star loads in anymore.");
	
	initPatch("1.0", "September 18, 2021");
	initPatchWords_ext("Kirby got the Sleep Ability in Rivals. Now nobody is safe from him. Brace yourself.", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_sleep, 4, fa_center, 1, c_white, 1);
	
	//ok this is all the beta patches Lol!
	/*
	initPatch("1.8 [BETA]", "14 September, 2021");
	initPatchWords("General
	~ Pillow attacks have unique hit effects.
	+ Walljump HSP: 2 -> 5
	+ Walljump VSP: 5 -> 8");
	initPatchWords("Neutral Special (Burst Bubble)
	- Burst Bubble charge is now lost upon losing a stock.
	~ There is now a hud indicator for when Sleep Kirby has Burst Bubble charged.
	+ Hold the opposite direction you’re facing when releasing the bubble to go flying a bit further. Could be useful for movement.
	~ Fixed a bug where hitting the bubble with Fspecial would always cause the bubble to go right.
	~ When the bubble is parried, Sleep Kirby goes into parry stun.");
	initPatchWords("Forward Special (Nightly Nightcap)
	+ Hitbox now matches the animation.
	- Has a 40 frame cooldown when hitting someone.");
	initPatchWords("Down Special (Sleep Copy Essence)
	~ There is now a hud indicator for when Sleep Kirby can place down another Copy Essence.
	- Opponents can get rid of the Copy Essence by hitting it before the Ability Star spawns into the Essence.");
	
	initPatch("1.5 [BETA]", "23 August, 2021");
	initPatchWords("General
	~ Fixed all animations having double outlines.
	~ Fixed numerous animation inconsistencies.
	~ Fixed sleeping opponents skyrocketing towards the top blastzone (???)
	~ Abyss Runes (with the exception of Rune J) have been added.
	~ MunoPhone animation added.
	~ Added a ton of dust effects.");
	initPatchWords("Jab (Pillow Attack, Pillow Uppercut, Pillow Takedown)
	+ Jab 3 range increased.");
	initPatchWords("Forward Tilt (Stress Kick)
	~ Adjusted hitbox placement.");
	initPatchWords("Up Tilt (Rear Kick)
	~ Adjusted hitbox sizes.");
	initPatchWords("Down Tilt (Slide)
	+ Slightly increased sliding distance.
	~ Angle: 80 -> 90");
	initPatchWords("Down Air (Drill Spin)
	+ Move should connect better now.");
	initPatchWords("Back Air (Backward Dropkick)
	~ Sweetspot Angle Flipper: 6 -> 0
	+ Sourspot Base Knockback: 3 -> 5");
	initPatchWords("Forward Strong (Smash Kick)
	+ Knockback Scaling: 0.9 -> 1");
	initPatchWords("Up Strong (Pillow Rise)
	~ Adjusted hit fx.");
	initPatchWords("Neutral Special (Burst Bubble)
	~ Adjusted to have a bigger bubble when charging to make it more noticeable.
	+ Cooldown: 240 Frames -> 120 Frames");
	initPatchWords("Forward Special (Nightly Nightcap)
	~ Removed sourspot.");
	initPatchWords("Down Special (Sleep Copy Essence)
	~ The star now breaks when parried. (The reflect code is too buggy.)
	- Sleep Kirby is put into parry stun when star is parried.");
	
	initPatch("1.4 [BETA]", "22 July, 2021");
	initPatchWords("General
	~ 4 new color palettes have been added.
	~ Some runes have been added, but not all are finished.");
	initPatchWords("Neutral Special (Burst Bubble)
	+ Bubble HSP: 2 -> 3");
	initPatchWords("Down Special (Sleep Copy Essence)
	- The star now reflects upon being parried.");
	
	initPatch("1.3 [BETA]", "22 July, 2021");
	initPatchWords("General
	+ Air Accel: .25 -> .3
	- Knockback Adj: 1.05 -> 1.1
	~ Doublejump’s animation is more puffier.
	~ Fixed a bug where if Sleep Kirby spawned in the match while facing left, Noddy would be behind Kirby.
	~ Fixed a bug where if Sleep Kirby parried something, the unique parry sfx would repeatedly play.
	- Total Sleep Time: 80 ish frames -> 65 ish frames");
	initPatchWords("Passive (Sweet Dreams)
	~ Rest Hitbox Angle Flipper: 3 -> 0 (Always sends at the angle it is sent to, no alterations.)");
	initPatchWords("Dash Attack (Running Tackle)
	- Endlag: 12 -> 15
	~ Added a funny spike hitbox that you will never ever land.");
	initPatchWords("Down Tilt (Slide)
	- Sliding off a ledge no longer grants a huge burst of speed.");
	initPatchWords("Neutral Air (Spinning Pillow Dive)
	+ Landing Lag: 12 -> 9");
	initPatchWords("Forward Air (Pillow Tantrum)
	- Landing Lag: 6 -> 7
	~ Adjusted swipe and hit sfx.");
	initPatchWords("Down Air (Drill Spin)
	- Final Hit Knockback Scaling: .5 -> .4
	+ Multi hits should now connect better.
	+ Final Hitbox size slightly increased.
	+ Final Hitbox Angle: 270 -> 285. This to better match the animation. This is also kind of experimental, so let me know if I should revert this change.");
	initPatchWords("Back Air (Backward Dropkick)
	- Landing Lag: 5 -> 6
	- Endlag: 9 -> 10");
	initPatchWords("Neutral Special (Burst Bubble)
	~ When the move is fully charged, press parry to cancel the move. The charge will still be stored! This opens up possibilities for recovery and such.");
	initPatchWords("Forward Special (Nightly Nightcap)
	- Landing the move grants the opponent a few frames of immunity of not being able to get hit by another Fspecial.
	~ Landing the sweetspot in the air does not inflict the Sleep status. It will dunk the opponent instead! This is experimental imo so i might change this later lol");
	initPatchWords("Down Special (Sleep Copy Essence)
	~ Shouldn’t randomly cause the galaxy effect.
	~ An indicator for which player is currently in possession of the Ability Star is now present.
	~ If the Ability Star is hit straight upward (ex. Sleep Kirby hit it with Up Tilt or Up Air), rather than always rotating to the right, it will slowly rotate in the direction the player who hit it was facing.");
		
	
	initPatch("1.2 [BETA]", "19 July, 2021");
	initPatchWords("General
	~ Fixed Sleep Kirby crashing the game in the playtest menu. He should work like normal, except that the Sleep status cannot be inflicted.");
	
	initPatch("1.1 [BETA]", "18 July, 2021");
	initPatchWords("General
	- Desyncs fixed.");

	
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
	
	// post_draw.gml
	initCheat("there is no cheat code", "cheat_funny_snail", [0, 1], ["no", "yes"], "go to bed");
	
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
	
	initAbout("About Sleep Kirby", "It's Kirby!
	
	...but with the Sleep Ability.");
	initAbout("Credits", "Character made by ricE!	
	
	Sound Effects were pulled from the following games:
	- Kirby's Return to Dream Land
	- Kirby Super Star Ultra
	- Kirby: Canvas Curse
	- Super Smash Bros. 64
	- Super Smash Bros. for Nintendo 3DS and Wii U
	
	Kirby is owned by HAL Labratories. No copyright infingement was intended in making this. This is merely made out of love for the series.");
	/*
	initAbout("Sleep Kirby's Move Names", "All of Sleep Kirby's moves have canonical names (or at least, names I made up).

	Passive: Sweet Dreams

	Jab: Pillow Attack, Pillow Uppercut, Pillow Takedown
	
	Dash Attack: Running Tackle
	
	Forward Tilt: Stress Kick
	Up Tilt: Rear Kick
	Down Tilt: Slide
	
	Neutral Air: Spinning Pillow Dive
	Forward Air: Pillow Tantrum
	Up Air: Pillow Fight
	Down Air: Drill Spin
	Back Air: Backward Dropkick
	
	Forward Strong: Smash Kick
	Up Strong: Pillow Rise
	Down Strong: Pillow Sweep
	
	Neutral Special: Burst Bubble
	Forward Special: Nightly Nightcap
	Up Special: Continue
	Down Special: Sleep Copy Essence");
	*/
	
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
	initCodecPage(SPK_TRUM, 7, 0, "oh god oh frick kirby has a nightcap and pillow");
	initCodecPage(SPK_TRUM, 7, 0, "we are doomed");
	initCodecPage(SPK_ALTO, 1, 0, "Oh come on, it cant be that bad. Besides, hes sleeping! He cant do anything, right?");
	initCodecPage(SPK_OTTO, 0, 0, "Kirby: Battle Royale would like to correct you on that statement. In other words, you are wrong.");
	initCodecPage(SPK_CODA, 0, 0, "It would be in your best interest to not get hit by that nightcap of Ability Star of his. One touch, and you will hit the bed instantly.");
	initCodecPage(SPK_TRUM, 0, 0, "wait alto
	
	if i go to sleep...");
	initCodecPage(SPK_TRUM, 0, 0, "cant u still fight since youre not being a sleepyhead");
	initCodecPage(SPK_ALTO, 0, 0, "I probably should, but for game logic reasons, I must sleep as well... unfortunately.");
	initCodecPage(SPK_CODA, 0, 0, "If you can, try knocking his Ability Star back at him to give him a taste of his own medicine.");
	
	
	//initCodecPage(SPK_SAND, 0, GIM_COLOR, "no");
	
	spr_custom_trummel_color = c_red;
	
	/*
	initCodecPage(SPK_TRUM, 7, 0, "oh god oh frick kirby has a nightcap");
	initCodecPage(SPK_TRUM, 7, 0, "we are doomed");
	
	initCodecPage(SPK_ALTO, 0, 0, "Oh come on, it cant be that bad. Besides, hes sleeping! He cant do anything, right?");
	initCodecPage(SPK_OTTO, 1, 0, "Kirby: Battle Royale would like to correct you on that statement. In other words, you are wrong.");
	initCodecPage(SPK_CODA, 0, 0, "It would be in your best interest to not get hit by that nightcap of Ability Star of his. One touch, and you will hit the bed instantly.");
	initCodecPage(SPK_TRUM, 0, 0, "wait alto
	
	if i go to sleep...");
	initCodecPage(SPK_TRUM, 0, 0, "cant u still fight since youre not being a sleepyhead");
	initCodecPage(SPK_ALTO, 0, 0, "I probably should, but for game logic reasons, I must sleep as well... unfortunately.");
	initCodecPage(SPK_CODA, 0, 0, "If you can, try knocking his Ability Star back at him to give him a taste of his own medicine.");
	*/
	
}



// Otto bobblehead

if pho_has_otto_bhead{

	otto_bobblehead_sprite = sprite_get("otto");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve couldn't stay awake";
	
}



if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("feri_costume", 84, 114);
		feri_costume = sprite_get("feri_costume");
		
	}
	
	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "Soundly Sleeping Star";
		
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
		
		ncode1 = "The Pink Demon from Dream Land.";
		ncode2 = "Carries his Sleep Ability.";
		ncode3 = "Do not be fooled by it: stay on guard.";
		
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
		
		arena_title = "Sleeping Star Warrior";
		arena_short_name = "Sleep Kirby";
		
	}
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* You start to feel like you're going to fall asleep.";
		
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