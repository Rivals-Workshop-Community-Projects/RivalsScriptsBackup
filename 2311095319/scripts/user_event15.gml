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
			
			var copy_spr = sprite_get("kirby_ability");
			var copy_hrt = sprite_get("kirby_ability_hurt");
			var copy_icn = sprite_get("kirby_icon");
			var copy_sfx = sound_get("sfx_mario_fireball");
			var copy_sfxhit = sound_get("sfx_mario_fireball_hit");
			var copy_fire = sprite_get("fireball");
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				newicon = copy_icn;
				muno_last_swallowed = other.id;
				
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
				
				//Startup
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);

				//Release Fireball
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, copy_sfx);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);
				
				//Endlag
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);

				set_num_hitboxes(AT_EXTRA_3, 1);

				//Normal Fireball
				set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 90);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 80);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 1 * spr_dir);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, copy_fire);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, copy_fire);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.45);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, copy_sfxhit);
				//set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
			
			// this system avoids conflicts between 2 swallowed chars IF they both use the munophone system for copy abilities.
			if (window == 2 && window_timer == 0){
				spawn_hit_fx( x + 32 * spr_dir, y - 9, 3 );
				move_cooldown[AT_EXTRA_3] = 115;
			}
			
			with (pHitBox){
				if (attack == AT_EXTRA_3){
					//Capping Fall Speed
					if (vsp >= 6){
						vsp = 6
					}
					//Capping Rising Speed
					if (-7 >= vsp){
						vsp = -7
					}
					//oops
					if (!free){
						vsp = -7
					}
					if (hitbox_timer > 88){
						spawn_hit_fx( x - 10 * spr_dir, y - 18, 3 );
					}
				}
			}
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
pho_has_rat_allout = 0;	// Quip for Rat's all-out attack
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
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 1; // Portrait for the Last Resort stage
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
	
	initTip("NSpecial: Fireball");
	initTipWords("Throw a fireball like usual. Has a slight cooldown. Throwing the fireball resets the charge. You cancelout of the charge by pressing parry.
	Hold the Special button to charge it up and have it deal more damage and knockback when fully charged!");
	if ("spr_nspecial_proj" in player_id) initTipImage_ext(player_id.spr_nspecial_proj, -5, fa_right, 1, c_white, 3, 40, 30, 60, 0);
	initTipImage(player_id.spr_nspec, 7, fa_left, 1, c_white, 0);
	//initTipImage(player_id.spr_fireball, 0, fa_right, 1, c_white, 0);
	initTipImage_ext(player_id.spr_fireball, 6, fa_right, 1, c_white, 0, 20, 90, 96, 0);
	
	initTip("FSpecial: Dive");
	initTipWords("Dive forward to travel quickly! After diving for a while(indicated by this animation frame), the move can be canceled with either a jump or an airdodge. You can cancel this with a walljump at anytime!
	If Mario hits the ground, press Special within 8 frames of landing to get up and attack! VERY useful as a movement option AND a way to extend combos!");
	initTipImage_ext(player_id.spr_dive, 4, fa_center, 1, c_white, 0, 30, 38, 60, 0);
	
	initTip("USpecial: Super Jump Punch");
	initTipWords("Rise up and knock coins out of your opponent, launching them upward!
	
	Landing the first hit of the move guarantees that all hits will connect!
	
	Holding the opposite direction on the control stick of the direction you're facing without B-Reversing the move (ex. hold left if using the move while facing right) to ascend higher with less horizontal speed.
	Do the opposite and hold the direction you're facing (ex. hold right when you're facing right) to jump with greater speed, but less vertical height.");
	initTipImage(player_id.spr_sjp, 3, fa_center, 1, c_white, 0);

	initTip("Down Special: Mario Tornado");
	initTipWords("Mario spins like a tornado, bringing along anyone who gets caught in it!
	Press the Special button to repeatedly rise.
	This move mainly serves as a decent swiss-army knife in his toolkit. It has good recovery potential, great for combos, and can even throw fireballs if you have a Firebrand charge stored!
	Note that the fireballs thrown if you have a fireball charge will do 1 % instead of 5 %.");
	initTipImage(other.spr_tornado, -4, fa_center, 1, c_white, 0);
	
	initTip("Down Air: Stomp");
	initTipWords_ext("Similar to Dr. Mario's Down Air, Mario will stomp underneath him.
	However, Mario trades damage and killpower for much better frame data. This is to mainly reflect how Mario would stomp on an enemy in his home series.
	
	Stomping someone ten times in a row with this move without landing, as tradition holds it, nets Mario an extra life... if the stage is the Aether variant.", fa_left, c_white, 0, 0);
	initTipImage(player_id.spr_dairthing, -5, fa_center, 1, c_white, 0);
	//initTipWords_ext("rice gaming", fa_right, c_white, 0, 0);
	
	initTip("Dash Attack: Slide");
	initTipWords("Mario's Dash Attack, Slide, can... well, slide off ledges. The move's endlag can be jumpcanceled while airborne.");
	initTipImage(player_id.spr_dattackmuno, -5, fa_center, 1, c_white, 3);

	initTip("FStrong 2: Firebrand");
	initTipWords("If you have a fireball charged up when trying to do Forward Strong, Mario will instead perform the Firebrand technique from Superstar Saga!");
	initTipImage(player_id.spr_firebrand, -4, fa_center, 1, c_white, 0);
	
	initTip("Up Strong: Rising Uppercut");
	initTipWords("Up Strong has Mario rise with a devastating uppercut! Good combo tool.
	
	Charge the move to rise higher!
	
	The startup of Dash Attack can be canceled into this move. Perhaps you could try to cancel that move into this to slide off ledges with it...");
	initTipImage(player_id.spr_ustrongmuno, -5, fa_center, 1, c_white, 0);
	
	initTip("Alternate Colors");
	initTipWords("Alt 1: Default
	Mario's classic red and blue attire that's seen its fair share of adventures.");
	initTipImage(player_id.spr_alts, 0, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 2: Blue
	Resembles Mario's appearance on the Japanese boxart of the Famicom version of Mario Bros., which itself is based on his appearance in the arcade version of Mario Bros.");
	initTipImage(player_id.spr_alts, 1, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 3: Pink
	An inverse of Mario's blue color from Smash 4.");
	initTipImage(player_id.spr_alts, 2, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 4: Green
	Resembles Mario's appearance on the Japanese boxart of Wrecking Crew, although the overalls are more brown.");
	initTipImage(player_id.spr_alts, 3, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 5: Black
	Based on Flying Mario from Super Mario Galaxy.");
	initTipImage(player_id.spr_alts, 4, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 6: Purple
	Resembles Waluigi.");
	initTipImage(player_id.spr_alts, 5, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 7: Abyss
	Basic abyss color. Partically based on Mario's color pallete when poisoned in Super Mario RPG.");
	initTipImage(player_id.spr_alts, 6, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 8: Early Access
	Basic Early Access color.");
	initTipImage(player_id.spr_alts, 7, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 9: Brown
	Resembles Foreman Spike from Wrecking Crew.");
	initTipImage(player_id.spr_alts, 8, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 10: Yellow
	Resembles Wario.");
	initTipImage(player_id.spr_alts, 9, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 11: White
	Resembles Fire Mario.");
	initTipImage(player_id.spr_alts, 10, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 12: Cyan Blue
	Resembles Shadow Mario from Super Mario Sunshine.");
	initTipImage(player_id.spr_alts, 11, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 13: Lime Green
	Resembles Luigi.");
	initTipImage(player_id.spr_alts, 12, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 14: Deep Blue
	bluy");
	initTipImage(player_id.spr_alts, 13, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 15: Light Red
	Resembles Mario's older design.");
	initTipImage(player_id.spr_alts, 14, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 16: Retro
	Resembles Mario's appearance in Super Mario Bros. 3 for the NES.");
	initTipImage(player_id.spr_alts, 15, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 17: Infamous
	Resembles the Infamous color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 16, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 18: Pure Gold
	Resembles the Pure Gold color palletes found in Rivals. This also references the gold statue of Mario found in Super Mario RPG.");
	initTipImage(player_id.spr_alts, 17, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 19: Ranked Gold
	Resembles the Ranked Gold color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 18, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 20: Champion
	Resembles the Champion color palletes found in Rivals.");
	initTipImage(player_id.spr_alts, 19, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 21: Teal
	Resembles one of the color palletes that appears when Mario grabs a Starman in Super Mario RPG.");
	initTipImage(player_id.spr_alts, 20, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 22: Light Blue
	Resembles Mario's 4th alternate color from Mario Golf.");
	initTipImage(player_id.spr_alts, 21, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 23: Baby Blue
	Resembles Mario's appearance under the effects of the Boomerang Flower.");
	initTipImage(player_id.spr_alts, 22, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 24: Mixture
	pelee pablo");
	initTipImage(player_id.spr_alts, 23, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 25: Teal (Again)
	Original color scheme.");
	initTipImage(player_id.spr_alts, 24, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 26: Pink
	Resembles Princess Peach.");
	initTipImage(player_id.spr_alts, 25, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 27: Dark
	Evil Mario.");
	initTipImage(player_id.spr_alts, 26, fa_left, 1, c_white, 0);
	
	initTipWords("Alt 28: SMBZ
	Resembles Mario's appearance in Super Mario Bros. Z.");
	initTipImage(player_id.spr_alts, 27, fa_left, 1, c_white, 0);
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
	
	initPatch("1.17", "July 9, 2021");
	initPatchWords("General
	~ Adjusted Steam Preview picture.");
	
	initPatch("1.16", "July 9, 2021");
	initPatchWords("General
	~ Fixed Voiced Mode not working in VS. Mode.");
	
	initPatch("1.15", "July 7, 2021");
	initPatchWords("General
	~ Debug text turned off (I forgot to turn it off.)");
	
	initPatch("1.14", "July 6, 2021");
	initPatchWords("General
	~ Minor hotfixes to some stats oops Lol!
	~ Max Air Speed: 4.5 -> 5
	~ Walljump HSP: 5 -> 6");
	
	initPatch("1.13", "July 6, 2021");
	initPatchWords("General
	~ Mario now has a voiced mode! Press Taunt during a match's countdown to activate it, or when in practice mode (which you are right now!), use the cheat code to activate it.
	~ The alternate color section of the Munophone has been updated with all of the new alternate colors.
	- Max Air Speed: 5 -> 4.5
	- Walljump VSP: 11 -> 9
	- Walljump HSP: 7 -> 5");
	initPatchWords("Back Air (Backward Dropkick)
	~ Adjusted hit fx.");
	initPatchWords("Forward Special (Dive)
	- Endlag (2nd Part on Ground): 16 -> 21");
	initPatchWords("Down Special (Mario Tornado)
	- Endlag: 16 -> 17
	- Mario gains less height when using the move.");
	
	initPatch("1.12", "May 14, 2021");
	initPatchWords("General
	~ Mario’s AI is slightly better.
	~ Added 4 new alternate color palettes.
	~ Added Soulbound Conflict support.
	~ Adjusted Trummel codec.
	~ Switched the color slots of the Ranked Gold and Pure Gold alternate colors so the gold shine appears on the proper alt.
	~ The special premium icon appears for the Infamous, Pure Gold and Champion colors on the CSS.
	~ The Ranked Gold color has a special icon on the CSS.
	~ The Pure Gold color has a slightly brown outline color.
	~ Adjusted dashstop animation.");
	initPatchWords("Jab (Right Punch, Left Punch, Kick)
	+ Jab 2 Hitbox size increased. The full jab combo should now properly work.");
	initPatchWords("Forward Tilt (Cappy Toss)
	~ Adjusted the hit fx and hit fx offsets.
	~ Final Hitbox Angle: 65 -> 75");
	initPatchWords("Down Tilt (Raccoon Tail)
	~ Adjusted the hit fx offset.");
	initPatchWords("Forward Strong (Hammer Swing)
	~ Adjusted the hit sfx for when Shadow Mario uses it.");
	initPatchWords("Forward Strong 2 (Firebrand)
	~ Angle: 45 -> 361
	~ Adjusted sound effects and hit fx.");
	initPatchWords("Up Strong (Rising Uppercut)
	~ Adjusted physics.");
	initPatchWords("Neutral Special (Fireball)
	~ The vfx for when either version of the fireballs explode has been altered to not be in the same color group as Mario’s buttons.
	~ The destroy fx for either fireball has been corrected.");
	initPatchWords("Forward Special (Dive)
	~ Adjusted hit fx and fx offset.");
	initPatchWords("Up Special (Super Jump Punch)
	~ Adjusted physics.");
	
	initPatch("1.11", "April 23, 2021");
	initPatchWords("General
	~ Added 8 new color palettes! The CSS draw grid has been updated to accommodate for the additional palettes.
	~ Icons for the Abyss, Early Access, and Shadow Mario alt have been added.
	~ The Shadow Mario color palette has a unique Forward Strong animation where Shadow Mario uses his paintbrush instead of the hammer. Has different sound effects, and is strictly cosmetic only.");
	initPatchWords("Up Air (Air Slash)
	+ Hitboxes slightly increased.
	- Knockback Scaling: .45 -> .4");
	initPatchWords("Neutral Special (Fireball)
	- Parrying any fireball resets the fireball’s lifetime.");
	initPatchWords("Up Special (Super Jump Punch)
	+ First Hit Base Knockback: 9 -> 10
	+ First Hit Angle: 75 -> 80
	+ The connecting hitboxes when Mario lands the first hit should now connect better.");
	initPatchWords("Down Special (Mario Tornado)
	+ The move grants Mario more height in the air, giving the move more recovery potential.");

	
	initPatch("1.10", "Febuary 28, 2021");
	initPatchWords("General
	~ Added Miiverse posts.
	~ Adjusted Jumpman color to better match the Classic Suit from Super Mario Odyssey.
	~ Adjusted Taunt animation.");
	initPatchWords("Jab (Right Punch, Left Punch, Kick)
	+ Jab 2 Hitbox size increased.");
	initPatchWords("Neutral Air (Mario Kick)
	~ Fixed up the pillow shading on the hands.");
	initPatchWords("Forward Strong 2 (Firebrand)
	~ Adjusted animation to keep in line with the rest of Mario’s animations.");
	
	initPatch("1.9", "Febuary 15, 2021");
	initPatchWords("General
	~ Added Patch Notes for v1.8, as I forgot to add that when I updated Mario.
	~ Fading smears have been adjusted to not last as long.");
	initPatchWords("Neutral Special (Fireball)
	- Pressing Parry during the charge doesn't cancel the move with a parry: rather, an animation plays where Mario puts away the fireball.");
	
	initPatch("1.8", "January 29, 2021");
	initPatchWords("General
	~ Abyss alt’s colors now mirror the “Poisoned” status from Super Mario RPG.
	~ Added information about Mario’s alternate colors in the MunoPhone.
	~ New idle animation.
	~ New dash animation.
	~ Adjusted Mario’s facial expression when jumping.
	- Air Max Speed: 5.5 -> 5
	~ Max Fall Speed: 13 -> 11
	~ Fast Fall Speed: 16 -> 15");
	initPatchWords("Jab (Right Punch, Left Punch, Kick)
	~ Adjusted Mario’s facial expressions.");
	initPatchWords("Forward Tilt (Cappy Toss)
	- Total Hitbox Active Frames: 4 per hitbox -> 3 per hitbox
	~ Different sound effect (pulled from Odyssey)");
	initPatchWords("Up Tilt (Overhead Swing)
	~ Removed the weak spike hitbox");	
	initPatchWords("Neutral Air (Mario Kick)
	- Startup: 3 -> 4
	- Normal Hit Damage: 6 -> 5");
	initPatchWords("Forward Strong (Hammer Swing)
	+ Move has a little bit more range.");
	initPatchWords("Down Strong (Sweep Kick)
	- Startup: 11 -> 12
	- Endlag: 16 -> 17
	- First Hitbox size decreased.");
	initPatchWords("Neutral Special (Fireball)
	- Projectile Lifetime: 90 frames -> 65 frames");
	initPatchWords("Forward Special (Dive)
	- Startup: 6 -> 8
	- Dive Damage: 6 -> 5
	- Flip Damage: 7 -> 5");
	initPatchWords("Up Special (Super Jump Punch)
	~ Added information to the move in the MunoPhone.
	+ Landing the first hit of the move should guarantee the rest of the hitboxes connecting.");
	
	initPatch("1.7", "January 20, 2021");
	initPatchWords("General
	~ Updated Mario's MunoPhone to v9. The frame data chart should also now work. I don't know why it broke, but this new firmware fixes it!");
	initPatchWords("Up Strong (Rising Uppercut)
	- Hitpause: 7 -> 8
	- Hitpause Scaling: .6 -> .75");
	
	initPatch("1.6", "January 14, 2021");
	initPatchWords("General
	~ The little shine on Mario's shoe has been removed.
	~ Walk animation slightly adjusted.
	~ Dashstart animation adjusted.
	~ Jumpstart animation adjusted.
	~ Jump animation adjusted.
	~ Landing and landing lag animation adjusted.
	~ Mario’s face isn’t always neutral anymore. Occasionally has his mouth open or does other things.
	- Mario loses Firebrand upon being parried.
	~ Added cheat codes in the MunoPhone.");
	initPatchWords("Dash Attack (Slide)
	~ Added a bit of overshoot.");
	initPatchWords("Forward Tilt (Cappy Toss)
	~ Mario’s hair looks better.
	~ The hair changes also apply to taunt as well.
	~ Added a sound effect during endlag where Mario puts on his hat again.
	~ Mario spins when throwing the cap.
	- Startup: 10 -> 11
	+ The total amount of hits has been raised to 4.");
	initPatchWords("Down Tilt (Raccoon Tail)
	~ Move is now a reference to the Raccoon Leaf from Mario 3.
	+ Increased range and is a disjoint.
	- Startup: 5 -> 9");
	initPatchWords("Forward Air (Forward Knuckle)
	~ Adjusted animation.
	- Startup: 14 -> 15
	+ Spike Hitbox KBS: 0.85 -> 9");
	initPatchWords("Up Air (Air Slash)
	~ The smear doesn’t abruptly end anymore.
	~ SFX shouldn’t be mistimed anymore.");
	initPatchWords("Down Air (Stomp)
	~ Corrected information about this move in the MunoPhone.
	~ Mario’s head looks downward more during the animation.
	~ Added smear.
	~ Adjusted SFX timing.
	- Active Frames: 4 -> 2");
	initPatchWords("Back Air (Backward Dropkick)
	~ Mario holds the pose a bit more during endlag.");
	initPatchWords("Forward Strong (Hammer Swing)
	~ Reanimated the attack! However, the move has less range.
	+ Startup: 17 -> 16");	
	initPatchWords("Up Strong (Rising Uppercut)
	- Uncharged, Mario will rise less.
	+ Mario will rise more the longer he charges the move.");
	initPatchWords("Down Strong (Sweep Kick)
	~ Added smear and adjusted animation.");
	initPatchWords("Up Special (Super Jump Punch)
	~ Adjusted animation.
	+ Holding left or right during startup will influence Mario’s horizontal and vertical movement a bit.");
	initPatchWords("Down Special (Mario Tornado)
	~ Adjusted animation.
	~ Using the move on the ground allows you to rise, but you can’t cancel the move by landing.
	- Using the move while rising from the ground puts it into a very short cooldown.");
	
	initPatch("1.5", "January 3, 2021");
	initPatchWords("Neutral Special (Fireball)
	~ Removed the ugly fire effect when throwing a fireball.");
	
	initPatch("1.4", "December 26, 2020");
	initPatchWords("General
	~ Expanded upon Mario's 'About' tab in the MunoPhone.");
	initPatchWords("Back Air (Backward Dropkick)
	~ Adjusted animation and added a smear frame.
	- Active Frames: 3 -> 2
	+ Hitbox size increased to better match the animation.");
	
	initPatch("1.3", "21 December, 2020");
	initPatchWords("General
	~ The color selector on the CSS now is consistent with the colors of the alts. In other words, a bug was fixed that changed the colors of it for some reason.
	~ Adjusted the hat and overalls color on the Flying Mario color.
	~ Adjusted the shading modifier on the Shadow Mario color.
	~ Adjusted the button color on the Bluey alt.
	~ Adjusted crouch animation.
	~ Adjusted landing and landing lag animation.
	~ Adjusted parry animation to look slightly better.
	~ Added Kirby Copy Ability.
	~ Otto Bobblehead should now be at the correct size.
	~ Added TCO Drawing.");
	//initPatchWords_ext("Minor fix-ups.", fa_left, c_gray, 1, 0);
	initPatchWords("Jab (Right Punch, Left Punch, Kick)
	~ Adjusted animation to look much better.
	- Jab 1 Startup: 3 -> 4
	- Jab 1 Active Frames: 4 -> 2
	- Jab 2 Startup: 3 -> 4
	- Jab 2 Active Frames: 4 -> 2
	+ Jab 2 Angle: 55 -> 80
	+ Jab 2 Base Knockback: 3 -> 2
	+ Jab 3 Startup: 5 -> 4
	- Jab 3 Active Frames: 4 -> 2");
	initPatchWords_ext("Jab should now look much more clean and less static.
	Jab 2's BKB and angle were changed to make it easier to land the full 3 hit combo.
	Hitbox active frames were also adjusted to make the active frame poses less... stiff.", fa_left, c_gray, 1, 0);
	initPatchWords("Up Tilt (Overhead Swing)
	+ Hitbox sizes slightly increased.");
	//initPatchWords_ext("Minor fix-ups.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Air (Forward Knuckle)
	- Spike Angle: 275 -> 270");
	initPatchWords("Down Air (Stomp)
	- Startup: 6 -> 7
	~ Landing the move ten times in a row without landing earns you an extra stock. ONLY WORKS ON AETHER STAGES.");
	initPatchWords_ext("A nifty little detail I thought was worth adding. Also a teeny tiny startup change.", fa_left, c_gray, 1, 0);
	initPatchWords("Up Strong (Rising Uppercut)
	~ Added a tip for this move.
	~ Adjusted animation.
	+ Endlag: 16 -> 15");
	//initPatchWords_ext("Minor fix-ups.", fa_left, c_gray, 1, 0);
	initPatchWords("Down Strong (Sweep Kick)
	~ Adjusted animation.
	~ Adjusted hit effect offsets.
	+ Hitbox sizes slightly increased to match the new animation adjustments.");
	initPatchWords_ext("Minor fix-ups.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Special (Dive)
	~ If Mario lands after doing the get up attack, a landing sound effect will play.");
	initPatchWords_ext("Kinda forgot to add a sound effect for this.", fa_left, c_gray, 1, 0);
	initPatchWords("Down Special (Mario Tornado)
	~ Fixed Mario's tongue changing colors.");
	initPatchWords_ext("Oops.", fa_left, c_gray, 1, 0);
	
	initPatch("1.2", "15 December, 2020");
	initPatchWords("General
	~ Mario's portrait in the Steam Preview image shouldn't be as blurry.
	~ Speaking of the portrait, some odd pixel placements were fixed up on the portrait.
	~ Fixed a bug where if Mario attempted to parry while on the default color, his sleeves would be red during the parry's active frames.
	~ Mario has a victory background now.
	~ The Flying Mario alt now has a unique victory theme.
	~ The SMB3 alt now has a unique victory theme.
	~ New walk animation.
	~ 'Improved' jump animation.
	~ New doublejump animation.
	~ Added Agent N Codec.
	~ 'Added' Last Resort Painting. (He didn't actually get a painting, the default one is good enough.)");
	initPatchWords_ext("Minor polish fixes, with some comparability thrown in there as well.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Special (Dive)
	~ Corrected information for the Dive tip.");
	//initPatchWords_ext("Minor hotfixes.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Special (Dive)
	~ Added a landing sound effect if Mario hits the ground when diving.");
	initPatchWords("Down Special (Mario Tornado)
	- Startup: 6 -> 9
	- Endlag: 15 -> 16
	- Reduced the horizonal speed Mario can get when using the move.");
	initPatchWords_ext("Minor nerfs since the move was a bit too strong.", fa_left, c_gray, 1, 0);
	
	initPatch("1.1", "6 December, 2020");
	initPatchWords("General
	~ Fixed result_small.png not showing up.
	~ Added 'Finished' tag.
	~ Anti-reupload code now functions.");
	initPatchWords_ext("Minor fix-ups.", fa_left, c_gray, 1, 0);
	initPatchWords("Neutral Special (Fireball)
	+ The move charges up much faster.");
	initPatchWords_ext("Minor buff. The move needs it.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Special (Dive)
	~ Using the move no longer consumes your Firebrand charge.
	- Mario is put into parry stun if the move gets parried.");
	initPatchWords_ext("Minor hotfixes.", fa_left, c_gray, 1, 0);

	initPatch("1.0", "6 December, 2020");
	initPatchWords_ext("oh cool the character released", fa_center, c_white, 0, 1);
	//initPatchImage(other.spr_doublejump, 0, fa_center, 1, c_white, 1);
	
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

	//initCheat("Infinite Firebrand", "cheat_firebrand", [false, true], ["Disabled", "Enabled"], "Always have fireball fully charged.");
	initCheat("Voiced Mode", "cheat_voice", [0, 1], ["Disabled", "Enabled"], "Turn On or Off Mario's voice whenever you want.
	To turn on Mario's voice in a match, press Taunt during the countdown.");
	initCheat("More Double Jumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "Real Life"], "Change the amount of doublejumps Mario has.");
	initCheat("Dash Attack Jump Cancel", "cheat_da_jc", [false, true], ["Disabled", "Enabled"], "Mario will be able to jump cancel Dash Attack whenever he wants.");
	initCheat("funny fair", "cheat_fair_very_funy", [false, true], ["Disabled", "Enabled"], "funy fair go brrrrrr");
	initCheat("Instant Firebrand", "cheat_insta_fire", [5, 0], ["Disabled", "Enabled"], "Instantly get a Firebrand Charge when you charge Fireball.");
	initCheat("Mario Tornado", "cheat_mario_tornado", [0, 1], ["Disabled", "Enabled"], "Be able to use Mario Tornado and rise every time you use it.");
	initCheat("Mario?", "cheat_why", [0], ["Yes"], "You are Mario.");

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
		AT_FSTRONG_2,
		AT_USTRONG,
		AT_DSTRONG,
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
	
	initAbout("About Mario", "Mario is an iconic hero across all of video games. Known for running, jumping, transforming, and saving princesses from evil, Mario is an all-round superstar. He's got enough tricks up his sleeves to deal with any situation that prompts him. Say it with me: ''It's-a me, Mario!''");
	initAbout("Credits", "Sound Effects were pulled from the following games:
	- Super Mario Bros. (NES)
	- Super Mario Bros. 3 (NES)
	- Super Smash Bros. Melee
	- Super Smash Bros. for Nintendo 3DS and Wii U
	- Mario and Luigi: Superstar Saga
	- Mario and Luigi: Bowser's Inside Story
	- Probably some other game I'm forgetting
	
	Mario is owned by Nintendo. No copyright infingement was intended in making this. This is merely made out of love for the series.");
	initAbout("Mario's Move Names", "All of Mario's moves have canonical names (or at least, names I made up).

	Jab: Right Punch, Left Punch, Kick
	
	Dash Attack: Slide
	
	Forward Tilt: Cappy Toss
	Up Tilt: Overhead Swing
	Down Tilt: Raccoon Tail
	
	Neutral Air: Mario Kick
	Forward Air: Forward Knuckle
	Up Air: Air Slash
	Down Air: Stomp
	Back Air: Backward Dropkick
	
	Forward Strong: Hammer Swing
	Forard Strong 2: Firebrand
	Up Strong: Rising Uppercut
	Down Strong: Sweep Kick
	
	Neutral Special: Fireball
	Forward Special: Dive
	Up Special: Super Jump Punch
	Down Special: Mario Tornado");
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
	
	SPK_MARO = initSpeaker(1, "Mario", sprite_get("_pho_example_speaker"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "mario");
	initCodecPage(SPK_ALTO, 2, 0, "Mario?");
	initCodecPage(SPK_ECHO, 6, 0, "Mario...");
	initCodecPage(SPK_OTTO, 5, 0, "Mario Mario?");
	initCodecPage(SPK_CODA, 3, 0, "...Mario.");
	initCodecPage(SPK_MARO, 0, 0, "It's a me, Mario!");
	initCodecPage(SPK_TRUM, 6, 0, "holy frikc its mario");

	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("otto");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got stomped";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "Leaping Plumber";
	
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
	
	ncode1 = "Reisdent and hero of the Mushroom Kingdom.";
	ncode2 = "Known for jumping on enemies and transforming.";
	ncode3 = "Very agile for some reason.";
	
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
	
	sprite_change_offset("miiverse", 60, 30);
	miiverse_post = sprite_get("miiverse");
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	arena_title = "Mr. Video Game Himself";
	arena_short_name = "Mario";
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	battle_text = "* Mario leaps into sight!";
	
}



// Trial Grounds

if pho_has_been_found{

	sprite_change_offset("trial_grounds", 31, 0);
	guiltySprite = sprite_get("trial_grounds");
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	//sprite_change_offset("last_resort", 27, 39);
	//resort_portrait = sprite_get("last_resort");
	//I don't even need to do this, it's already done for me, as the default painting is Luigi. Lol!
	
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