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

phone_lightweight = true;

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
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
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
	num_alts = 0; // Number of alt costumes; controls how many appear on the CSS
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
	
	initTip("NSpecial: Shadow Clone");
	initTipWords("When you press NSpecial, Ryu will summon a Shadow Clone, after the clone is out, you can hold NSpecial to bring the clone closer to Ryu, so you can better position it.");
	initTipImage(player_id.spr_nspecial, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_dash_clone, -5, fa_right, -1, c_white, 2);
	initTipWords_ext("Tip: The clone will always face the direction Ryu is facing when you 
	use NSpecial, that way you can just tap NSpecial to change the 
	direction the clone is facing.", fa_left, c_gray, 0, 0);
	
	initTip("About the Clone");
	initTipWords("The Clone will mimic all of Ryu's Normals + Strongs, including the movement that comes with different moves. That way you can use moves like Jab, DTilt, Dash Attack or FStrong to move the clone horizontally, or UStrong, DStrong or DAir to move it vertically");
	initTipImage(player_id.spr_dtilt_clone, -5, fa_left, 1, c_white, 3);
	initTipWords("The clone's moves have a bit less damage and knockback compared to Ryu's. However all of the Clone's Strongs will stun the opponent and have set knockback, so use that to your advantage!");
	initTipImage(player_id.spr_fstrong_clone, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_ustrong_clone, -5, fa_right, 1, c_white, 0);
	initTipWords_ext("The Clone will be destroyed if it gets hit by any enemy attack that deals more than 1 point of Damage and Knockback, the clone can also be destroyed if any of it's attacks are parried (or Ryu's while the clone is active). So please be mindful of your clone.", fa_left, c_gray, 0, 0);
	
	initTip("Shadow Clone Meter");
	initTipWords("If the Clone gets destroyed by an opponent's action, Ryu's little Meter on his HUD will be empty (it will also appear next to Ryu for easy checking) Ryu can no longer summon his trusty clone until the Meter is back to full. The Meter fills on it's own in 5 seconds, however when Ryu lands moves on his opponents, the meter will fill up faster, however the opposite is also true, if Ryu gets hit the meter will lose a bit of charge too.");
	initTipImage(player_id.spr_clone_hud, -6, fa_center, 1, c_white, 0);
	initTipWords_ext("When the meter is empty and Ryu lands a parry, the meter will be instantly filled up, however if the meter is still charging and Ryu gets parried instead, the meter will lose it's charge completely.", fa_center, c_gray, 0, 0);
	
	initTip("Strongs: Ultimate Technique");
	initTipWords("All of Ryu's strongs send him to their corresponding direction, and unlike other Strongs, once you reach Max Charge, Ryu will travel way further in that direction.");
	initTipImage(player_id.spr_ustrong, -5, fa_center, 1, c_white, 0);
	initTipWords("Ryu can also charge his Strongs for a much longer time (when the aura around Ryu turns Orange, it means he reached the max charge for the move).");
	initTipImage(player_id.spr_strongf1, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_strongf2, -3, fa_right, 1, c_white, 0);
	initTipWords_ext("All of Ryu's Strongs also allow him to go off stage or even be used while in mid-air, if you time them well enough", fa_center, c_gray, 0, 0);
	
	initTip("FSpecial: Shuriken Throw");
	initTipWords("Ryu throws a Shuriken in front of him, however you can throw it diagonally upwards or downwards too by holding the corresponding direction (keep an eye on the arrow in front of Ryu).");
	initTipImage(player_id.spr_fspecial, -3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_proj1, -3, fa_right, 1, c_white, 3);
	initTipWords("If you simply tap the button, Ryu will throw a weaker but faster Shuriken, however if you hold down the Button, Ryu will them throw a stronger but slower Windmill Shuriken.");
	initTipImage(player_id.spr_fspecial, -6, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_proj2, -6, fa_right, 1, c_white, 3);
	
	initTip("Teleporting to the Clone");
	initTipWords("If you throw any Shuriken at your Clone, Ryu will immediately teleport to where the clone was, you can use that to quickly move around the battlefield, for safer recoveries, or even attacking/retreating if you time your attacks well enough.");
	initTipImage(player_id.spr_proj1, -3, fa_left, 1, c_white, 3);
	initTipImage(player_id.spr_idle_clone, -3, fa_right, -1, c_white, 1);
	
	initTip("USpecial: Izuna Drop");
	initTipWords("Ryu prepares himself and lunges with a upwards Jump, if there's no one in his path he'll simply enter the pratfall state. However if Ryu manages to grab anyone, they will both be launched upward and then come tumbling down in a very strong explosion!");
	initTipImage(player_id.spr_uspecial, 3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_izuna3, -5, fa_right, 1, c_white, 0);
	initTipWords("However watch out when using this move off-stage, because Ryu will always die first, and if you and your opponent fall into the bottom blastzone, the opponent might still be able to recover (however in the side blastzones it's a guarantee KO)");
	initTipWords_ext("If you use the USpecial near a clone, the clone will blow up and launch Ryu way higher than usual, and if any opponent gets hit by this explosion, they'll be grabbed by Ryu's Izuna Drop", fa_center, c_gray, 0, 0);
	
	initTip("DSpecial: Ninpo - Fire Wheel");
	initTipWords("Ryu strikes a pose and is circled around by 3 fire balls, during this short period of time, if Ryu gets hit by any attack, a small fire burst will strike anyone near him. But that's not all, because Ryu will than gain something called Essence (which we will discuss later).");
	initTipWords_ext("If you land this counter while your clone meter is charging, it will be completely fill up!", fa_left, c_gray, 0, 0);
	initTipImage(player_id.spr_dspecial, -5, fa_center, 1, c_white, 0);
	initTipWords("However, if the Clone is out, the DSpecial Fire Wheel will instead protect the Clone rather than Ryu, which means that, if the clone gets hit while the DSpecial is active, the Clone will blow up into a very powerful explosion!");
	initTipWords_ext("One of Ryu's best tricks is throwing a Shuriken at the clone, and right before it hits it's mark, activating the DSpecial, thus you trigger the counter and detonate the clone yourself!", fa_center, c_red, 0, 0);
	
	initTip("Essence Charging");
	initTipWords("You can get Essence in 2 different ways, the first is by triggering your DSpecial successfully, the other however, is to teleport to the clone while you're charging or about to charge any of your Strongs, this will fully charge your Strong, thus giving Ryu access to the so called Ultimate Technique!");
	initTipImage(player_id.spr_fstrong, -5, fa_center, 1, c_white, 3);
	initTipWords_ext("If you get hit while charging the Strong or get parried at any time, you will lose all of your essence though.", fa_left, c_gray, 0, 0);
	initTipWords_ext("Even if you have full Essence, you can still keep charging the move to better time your strike. However if you press the Parry/Dodge button, Ryu will than lose that Essence and start charging from scratch, you can use this trick to really catch your foes off-guard.", fa_right, c_gray, 0, 0);
	
	initTip("Wall Climb");
	initTipWords("Unlike other character, Ryu has more than a mere wall jump, he can cling to walls and then climb up or down! However after some time Ryu will automatically jump off the wall.");
	initTipImage(player_id.spr_wall_jump, -8, fa_center, -1, c_white, 0);
	
	initTip("General Move Tips");
	initTipWords_ext("Dash Attack: Flying Swallow1", fa_center, c_gray, 0, 0);
	initTipWords("This move is one of the best ways to move the clone around, but it's main thing is using with near a ledge, Ryu will slide off the ledge but keep his horizontal momentum without falling, and doing that cancels most of it's endlag.");
	initTipImage(player_id.spr_dattack, -5, fa_center, 1, c_white, 3);
	initTipWords_ext("DStrong: Helmet Splitter", fa_center, c_gray, 0, 0);
	initTipWords("Ryu jumps up and then down, jumping higher the more you charge, Ryu is invincible while he's sprite isn't present. You can also hold down on the analog stick to fall through platforms (this works for both Ryu and the clone). The falling hitbox spikes opponents, and any airborne opponents hit by this hitbox will pass through non-solid platforms.");
	initTipImage(player_id.spr_dstrong, -5, fa_center, 1, c_white, 0);
	initTipWords_ext("NAir: Jump and Slash", fa_center, c_gray, 0, 0);
	initTipWords("Ryu spins in midair with his blade in hand, hitting anyone near him, however the big thing about this move is, you can hold down the attack button to keep Ryu spinning.");
	initTipImage(player_id.spr_nair, -5, fa_center, 1, c_white, 0);
	initTipWords_ext("DAir: Flying Swallow2", fa_center, c_gray, 0, 0);
	initTipWords("Ryu dives down with a powerful kick, which spikes at the very start, this move however is a great movement option, since Ryu can cancel all of his lag if he lands with the move near a ledge (this move is also a great way to move the clone around). You can also change your direction at the start of the move.");
	initTipImage(player_id.spr_dair, -5, fa_center, 1, c_white, 0);
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
	*/
	initPatch("1.0", "22 February, 2021");
	initPatchWords_ext("HOLY CRAP THE CHARACTER IS OUT!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_doublejump, 0, fa_center, 1, c_white, 1);
	
	initPatch("1.1", "27 February, 2021");
	initPatchWords_ext("BAir Ajustments:", fa_left, c_white, 0, 0);
	initPatchWords_ext("+ Higher Knockback Growth on BAir2", fa_center, c_gray, 0, 0);
	initPatchWords_ext("- Endlag from 8 to 10 frames", fa_center, c_gray, 0, 0);
	initPatchWords_ext("- Launch Angle from 40° (140°) to 50° (130°)", fa_center, c_gray, 0, 0);
	initPatchImage(other.spr_bair, -5, fa_center, 1, c_white, 0);
	initPatchWords_ext("Changed the part of the melody in Ryu's Victory Jingle", fa_left, c_white, 0, 0);
	initPatchWords_ext("Updated the Munophone and made the lightweight mode On by default", fa_left, c_white, 0, 0);
	
	initPatch("1.11", "01 March, 2021");
	initPatchWords_ext("Changed most of the SFXs to reflect the ones used in Ninja Gaiden Black", fa_left, c_white, 0, 0);
	initPatchWords_ext("When reaching Max Charge while charging a Strong, a Visual and Sound Effect will play", fa_left, c_white, 0, 0);
	
	initPatch("1.2", "11 March, 2021");
	initPatchWords_ext("Strongs Ajustments:", fa_left, c_white, 0, 0);
	initPatchWords_ext("Strongs will only change their travel distance when reaching Max Charge", fa_left, c_white, 0, 0);
	initPatchWords_ext("The initial distance travelled for the strongs is a bit higher, however the Max Charge version doesn't go as far anymore", fa_left, c_white, 0, 0);
	initPatchImage(other.spr_fstrong, -5, fa_center, 1, c_white, 0);
	
	initPatch("1.21", "06 June, 2021");
	initPatchWords_ext("USpecial now has more Knockback Growth", fa_left, c_white, 0, 0);
	initPatchWords_ext("Strongs all have more Knockback Growth", fa_left, c_white, 0, 0);
	initPatchWords_ext("Added some new Compatibility Stuff", fa_left, c_white, 0, 0);
	initPatchImage(other.spr_fstrong, -5, fa_center, 1, c_white, 0);
	
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
	initCheat("No Clone Cooldown", "infinite_cooldown", [0, 1], ["Off", "On"], "No need to wait for the cooldown to reset.");
	
	// update.gml
	initCheat("Invincible Clone", "invincible_clone", [0, 1], ["Off", "On"], "Makes the Clone immune to enemy attacks.");
	
	// attack_update.gml
	initCheat("Max Strong Charge", "max_charge", [0, 1], ["Off", "On"], "Gives Ryu full Essence for his Strongs");
	
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
	
	initAbout("About Ryu Hayabusa", "Character made by VVizard, with some animations and a lot of help from SuperSandbag.
	
	The original idle sprite was made by Dimpsuu on DeviantArt, you can check it out here:
	https://www.deviantart.com/dimpsuu/art/Super-Smash-Bros-Delta-Hayabusa-834827933
	
	Ryu uses SFXs from the NES Ninja Gaiden games, Ninja Gaiden Black and a couple of royalty free SFXs
	
	Ryu Hayabusa and the Ninja Gaiden series are properties of Koei Tecmo and Team Ninja");
	
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
	
	SPK_HAYA = initSpeaker(1, "Hayabusa", sprite_get("codec"));
	var both = GIM_LAUGH_TRACK *GIM_SHADER;
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_OTTO, 0, 0, "Wait who's the ninja guy?");
	initCodecPage(SPK_ALTO, 0, GIM_HOWL, "That's Ryu Hayabusa, it seems he received quite an upgrade!");
	initCodecPage(SPK_CODA, 0, 0, "He seems just like a regular ninja to me, what's so special about him?");
	initCodecPage(SPK_ALTO, 0, 0, "Ryu can summon a Shadow Clone that fights by his side, mimicing his every move. So he can be in one place, and attack in another!");
	initCodecPage(SPK_OTTO, 0, 0, "Well that's not really fair right, you 2 would be fighting... 2 as well");
	initCodecPage(SPK_ECHO, 0, GIM_CLONE, "It seems you finally have a fair match after all");
	initCodecPage(SPK_ALTO, 0, 0, "Either way, Ryu is a mighty foe, if he throws a shuriken at the clone they can instantly swap places, or even blow up the clone on the spot!");
	initCodecPage(SPK_OTTO, 0, 0, "He seems pretty strong, how can you guys beat him?");
	initCodecPage(SPK_ALTO, 0, GIM_SKIP , "Well we can't let the clone be moving around, so try to focus on either Ryu or the clone depending on the situation...");
	initCodecPage(SPK_TRUM, 0, 0, "If you set a course for the moon and merely follow the stars... then you will miss that which you have set forth");
	initCodecPage(SPK_HAYA, 0, both, "What the...?!");
	
	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("otto");

	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve is all the way back to 6-1";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "Master Ninja";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "It's just an endless cycle of things that kill you";
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	tcoart = sprite_get("tco");
	
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
	
	walle_taunt_sound = sound_get("walle_ryu");
	walle_taunt_type = 1;
	
}



// Amber's plushie and hug

if pho_has_amber_love{
	
	plushForAmber = sprite_get("amber_plush_ryu");
	
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
	
	ncode1 = "The Dragon Ninja, from the Hayabusa clan."
	ncode2 = "Master of discipline, ninpo and shadow clones."
	ncode3 = "Proficient with any weapon imaginable."
	
}



// Dracula dialogue

if pho_has_drac_codec{
dracula_portrait = sprite_get("dracula_hayabusa");
dracula_portrait2 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Creature of Chaos! Fade into the depths of oblivion.";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Oh, Ryu Hayabusa, never would I imagine to find you here, but you are no match for the Dark Lord! Only the Vampire Killer can strike me down!";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "I wield the Dragon Sword, with it I've been able to slay Demons and Gods! I'm sure a mere vampire like yourself will be no match for us.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Ha! Amusing![glass] Let's see if you really have the mastery to wield such power!";
page++;

}



// Miiverse post

if pho_has_miivs_post{
	
	sprite_change_offset("miiverse_post", 60, 30);
	miiverse_post = sprite_get("miiverse_post");
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	arena_title = "The Dragon Ninja";
	arena_short_name = "Ryu Hayabusa";
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	battle_text = "* wow a ninja is jumping around";
	battle_text2 = "* now 2 ninjas are jumping around";
	
}



// Trial Grounds

if pho_has_been_found{

	sprite_change_offset("guilty_hayabusa", 31, 0);
	guiltySprite = sprite_get("guilty_hayabusa");
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	sprite_change_offset("resort_ryu", 27, 39);
	resort_portrait = sprite_get("resort_ryu");
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
	pkmn_stadium_front_img = sprite_get("pkm_ryu_front");
	pkmn_stadium_back_img = sprite_get("pkm_ryu_back");
	pkmn_stadium_name_override = "Hayabusa";
	
}



// Daroach dialogue

if pho_has_daro_codec{
daroach_portrait = sprite_get("dracula_hayabusa");
daroach_portrait2 = asset_get("empty_sprite");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "You! What is your business here, Ninja?";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "I don't know who or what you are creature, but I won't allow another Ancient Ship of Doom to fulfill it's plans!";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "Wow wow slow down my friend, the only Doom I have here are Doom mods and ports[laugh]";
page++;

//Page 3
daroach_speaker[page] = 1;
daroach_text[page] = "I have fought in many battles recently. Even in this world, my destiny to eradicate darkness remains unchanged, so I shall end it by my own hand!";
page++;

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