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
pho_has_hikaru_fak = 1;	// Title for Hikaru's fakie
pho_has_rat_allout = 1;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
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
	
	initTip("An Air Fighter?");
	initTipWords("While Little Mac is still a glass cannon, he has more options to keep the offense. For instance, his air stats and ground stats have been rounded to be less lopsided. On top of this, aerials have been made more usable instead of just being dead-weight. To trade this off, super armor has been removed from his Strongs.");
	
	initTip("Straight Lunge/Upper");
	initTipWords("Not only is the Straight Lunge the same, but a new move can also be done out of the charge! Pressing up and special performs an uppercut that sends Mac upwards instead of forward.");
	initTipImage_ext(player_id.spr_nspecial, 9, fa_left, 1, c_white, 0, 80, 80, 100, 4);
	initTipImage_ext(player_id.spr_nspecial, 15, fa_right, 1, c_white, 0, 40, 140, 100, 4);
	
	initTip("Quick Dodge");
	initTipWords("Down Special is entirely new, turning into a spot dodge.");
	initTipImage_ext(player_id.spr_dspecial, 3, fa_left, 1, c_white, 0, 40, 70, 60, 4);
	initTipWords("When an opponent's move is dodged, Mac can either dodge again, or press special to counterattack. If the counterattack connects, it transitions into a barrage of blows!");
	initTipImage_ext(player_id.spr_dspecial, 7, fa_left, 1, c_white, 0, 40, 70, 60, 4);
	
	initTip("Stars");
	initTipWords("Instead of having the KO Meter from the arcade, the Star mechanic from the home release is used. Getting a star can be done by these five methods:
	Finishing a 3-Hit combo with Ftilt, Dattack, Fair, Bair, Dair, Strongs, Fspecial, and Uspecial.
	Performing 2 counterattacks in a row.
	Performing a Strong to intercept an opponent's attack.
	Parrying an attack.
	Hitting an opponent while they're taunting.
	");
	initTipImage_ext(player_id.spr_starempty, 1, fa_center, 1, c_white, 0, 10, 90, 0, 40);
	initTipWords("After getting at least one star, all Specials (that aren't Down Special) become Star Enhanced! They can be performed by pressing Special and Attack at the same time, or by performing a Special after a normal attack.
	Nspecial will be performed instantly with no charge. Damage and knockback will scale based on the number of stars.
	Fspecial starts up quicker and sends the opponent downwards. Damage and knockback will also scale based on the number of stars.
	Uspecial will send Mac farther than normal with an extra spin in the middle of the attack. Recovery distance will scale based on the number of stars.");
	initTipImage_ext(player_id.spr_fspecial_star, -5, fa_left, 1, c_white, 0, 40, 70, 80, 20);
	initTipWords("Performing any of these specials will reset the star meter, and getting hit at a certain knockback or being parried will get rid of one of the stars. If you don't want to use your powered-up move quite yet, you can either tap special or hold taunt before the special comes out.");
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
	
	initPatch("1.7", "September 22, 2023");
	initPatchWords_ext("yeah i still haven't upgraded this phone
(btw thank you NoArms/Weorgoran for a handful of these changes!)

Misc:
- Fixed Whifflag (it now exists instead of always deactivating)
- Jab 1 now stops looping itself if the opponent is hit and the button is still held down

Neutral Air:
- Decreased landing lag: 8 -> 7

Forward Air:
- Decreased landing lag: 10 -> 8
- Increased knockback scaling: 0.4 -> 0.45
- Decreased endlag (window 3): 14 -> 12

Neutral Special (Star Enhanced):
- Lunge:
    - Early hit 1 star base knockback: 12 -> 11
    - Early hit 3 star base knockback: 21 -> 12.5
    - Early hit knockback scaling 0.6 -> 0.8

    - Late hit 1 star base knockback: 10 -> 9
    - Late hit 3 star base knockback: 17.5 -> 10.5
    - Late hit knockback scaling 0.5 -> 0.6

-Uppercut:
    - 1 star base knockback: 12 -> 11
    - 3 star base knockback: 21 -> 12.5
    - Knockback scaling 0.6 -> 0.8

Forward Special (Star Enhanced):
- 1 star base knockback: 10 -> 9
- 3 star base knockback: 17.5 -> 10.5
- Base knockback is reduced by 2 if the spike hitbox is selected", fa_left, c_white, 0, 0);
	
	initPatch("1.6", "February 12, 2022");
	initPatchWords_ext("Star System:
-Star Enhanced specials can only be performed by pressing A and B at the same time. This allows Mac to use his normal specials without spending any stars! Cancelling normals into Star specials still only need a B press to activate.

Down Tilt:
-Animation and hitbox adjusted.

Down Strong:
-Animation adjusted.

Down Special:
-Dodge requirement for star removed. If you land the countermove of Down Special twice without losing a stock, you will be awarded a star.

Misc.:
-Added 9 new colors! (blame Zerks)
-Portrait redrawn.
-New sound plays when selecting Mac.
-Mac now has a voiced mode! (feat. Doc Louis from the hit Club Nintendo game, Doc Louis's Punch Out)", fa_left, c_white, 0, 0);
	
	initPatch("1.5", "July 9, 2021");
	initPatchWords_ext("Up Strong:
-Hit sounds adjusted. Now plays both a heavy hit and Forsburn combust on sweetspot.

Down Special:
-After successfully dodging an attack, Mac can now dash, jump, or attack afterwards!

Star Mechanic:
-Formula adjusted for Nspecial and Fspecial to calculate Base Knockback and Hitpause, instead of the Growth.
-Star moves adjusted to have more Base Knockback and less Knockback Growth.

Neutral Special (Star Enhanced):
-Angle Changed (Hitbox 1): 30 > 40
-Angle Changed (Hitbox 2): 30 > 45

Up Special (Star Enhanced):
-Hitboxes added when Mac is rising. Acts the same as his ground hitbox.", fa_left, c_white, 0, 0);
	
	initPatch("1.4", "June 2, 2021");
	initPatchWords_ext("Dash Attack:
-Window Length Increased (Window 3): 10 > 15

Neutral Air:
-Landing Lag Increased: 5 > 8

Forward Air:
-Landing Lag Increased: 7 > 10
-Window Length Increased (Window 3): 10 > 14

Forward Strong:
-Knockback/Hitpause Scaling Decreased (Hitbox 1/4): 1.0 > .95

Up Strong:
-Knockback/Hitpause Scaling Decreased (Hitbox 1): 1.2 > 1.0

Misc.:
-Fixed an issue with stars being gained infinitely, after hitting an opponent while they're taunting.", fa_left, c_white, 0, 0);
	
	initPatch("1.3", "May 26, 2021");
	initPatchWords_ext("Dash Attack:
-Fixed an issue with sfx_obstacle_hit repeating after the last hit.

Neutral Special:
-Can now B-Reverse the move after charge ends.

Forward Special:
-Cooldown resets after a walljump. Also resets after getting hit, but only once.

Misc.:
-Added Miiverse support (forgot to add it yesterday, sprites made by snolid, too).", fa_left, c_white, 0, 0);
	
	initPatch("1.2", "May 25, 2021");
	initPatchWords_ext("Down Tilt:
-Hitbox has been made wider and repositioned.
-Knockback Scaling Increased: .35 > .5

Dash Attack:
-Damage Decreased (Hitbox 1): 9 > 8

-Damage Decreased (Hitbox 2): 11 > 10
-Knockback Decreased (Hitbox 2): 8 > 6
-Knockback Scaling Decreased (Hitbox 2): .75 > .5

-Damage Decreased (Hitbox 3): 9 > 8

-Decreased the amount of screen shake

Back Air:
-Knockback Scaling Increased (Hitbox 1): .6 > .65

Up Air:
-Landing Lag Decreased: 7 > 5
-Knockback Scaling Increased: .45 > .5

Down Air:
Landing Lag Increased: 4 > 8

Forward Strong:
-Base hitpause has been increased for all hitboxes.

-Hitbox 1 has been made higher.
-Knockback Scaling Increased (Hitbox 1): .75 > .8

-Knockback Scaling Increased (Hitbox 3): .1 > .5

Up Strong:
-Visual effect and sound effect changed on Hitbox 1.

Neutral Special:
-Lunge
	-HSP Decreased (Window 4): 1 > 0 (Doesn't affect calculations, still adds hsp from the charge)
	-HSP Calculation Changed: nspecial_charge * 5 > nspecial_charge * 4

-Base Hitpause Increased (Hitbox 1): 6 > 9

-Base Hitpause Increased (Hitbox 2): 5 > 8
-Knockback Scaling Increased (Hitbox 2): .3 > .4

-Base Hitpause Increased (Hitbox 3/4): 6.5 > 8

Neutral Special (Star Enhanced):
-Angle Changed (Hitbox 1): 60 > 30
-Angle Changed (Hitbox 2): 50 > 30

Forward Special (Star Enhanced):
-Star Damage Calculation Changed: (0.5 + (star_meter/2)) > (0.75 + (star_meter/4))
-Star Knockback/Hitpause Scaling Changed: (0.8 * star_meter) > (0.8 * (star_meter/2))
-Damage Decreased: 11 > 10
-Base Hitpause Increased: 9 > 11
-Angle Changed: 280 > 50
-Holding special during startup will increase the amount of startup, but the hitbox will spike.

Up Special:
-Base Hitpause Decreased (Hitbox 1-5): 5 > 3

-Base Knockback Decreased (Hitbox 6): 10 > 8
-Knockback Scaling Increased (Hitbox 6): .7 > .9

Up Special (Star Enhanced):
-Base Hitpause Increased: 7.5 > 10

Down Special:
-Window Length Reduced (Window 2): 30 > 20
-Window Length Reduced (Window 3): 20 > 15
-Invincibility Time Decreased: 20 > 15

Misc.:
-Most moves have had their hitpause scaling changed to match the knockback scaling.
-The amount of knockback needed to lose a star has been decreased: 7.5 > 7
-Changes to the patch notes section of MunoPhone support.
-Adjusted profile slots for misc. particle effects.
-New victory themes have been added to specific colors.
-16th color changed to be more classic looking.", fa_left, c_white, 0, 0);

	initPatch("1.1", "May 22, 2021");
	initPatchWords_ext("Jab:
-Angle Flipper Changed (Hitbox 1/2): 9 > 4
-Fixed Jab 1 going into Jab 2 from one attack press.

Forward Tilt:
-Angle Flipper Changed (Hitbox 1): 9 > 4

Forward Air:
Startup Increased (Window 1): 9 > 12

Back Air:
-Angle Changed (Hitbox 1): 155 > 145
-Damage Changed (Hitbox 1): 10 > 9
-Sound Changed (Hitbox 1): sfx_blow_heavy2 > sfx_blow_medium2

-Damage Changed (Hitbox 2): 8 > 7
-Sound Changed (Hitbox 2): sfx_blow_medium2 > sfx_blow_weak2

Down Air:
-Damage Decreased: 11 > 10
-Base Knockback Decreased: 9.5 > 6
-Knockback Scaling Decreased: .8 > .6
-Base Hitpause Decreased: 10 > 8
-Hitpause Scaling Decreased: .75 > .4
-Angle Changed (Hitbox 1): 275 > 280

Forward Strong:
-(Angled Forward):
	-Adjusted hitboxes to better match smears. Cannot hit opponents from behind Mac.
-(Angled Down):
	-Hitpause Scaling Decreased (Hitbox 3): .5 > .1

Up Special:
-Made it easier to connect multihits.
-VSP Increased (Window 2): -5.5 > -12
-VSP Type 1 Removed (Window 2)
-Fixed the swipe sfx not appearing (Window 3)
-Angle Flipper Changed (Hitbox 1/2): 9 > 4
-Base Knockback Decreased (Hitbox 1/2): 10 > 5
-Base Hitpause Increased (Hitbox 1/2): 4 > 5
-Angle Flipper Removed (Hitbox 6)

Up Special (Star Enhanced):
-Removed Hitboxes 2-9

-Damage Increased (Hitbox 1): 3 > 7
-Base Knockback Increased (Hitbox 1): 5 > 10
-Knockback Scaling Added (Hitbox 1): .3
-Base Hitpause Increased (Hitbox 1): 4 > 10
-Hitpause Scaling Added (Hitbox 1): .5 > .7
-Angle Changed (Hitbox 1): 90 > 40

-Knockback Scaling Increased (Hitbox 2[10]): .7 > .75
-Base Hitpause Increased (Hitbox 2): 7 > 7.5
-Hitpause Scaling Increased (Hitbox 2): .5 > .7

Misc.:
-Knockback Adjustment Changed: .93 > 1.1 (bruh)
-If hit, losing a star now requires the opponent's move to have >= 7.5 knockback.
-Removed star condition for using a special while the opponent is in parry stun.
-One star can be gained from parrying an attack, but you can also lose one star if you are parried.
-Star meter changed to be x2 scale instead of x1.5 scale.
", fa_left, c_white, 0, 0);
	
	initPatch("1.0", "May 21, 2021");
	initPatchWords_ext("Show 'em what you got, Mac baby!", fa_center, c_white, 0, 0);
	initPatchImage(other.spr_taunt, 9, fa_center, 1, c_white, 0);
	
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
	initCheat("More Stars", "cheat_stars", [0, 1, 2, 3], ["0", "1", "2", "3"], "Change how many stars you want.");
	
	// attack_update.gml
	initCheat("DSpecial Actions", "cheat_dspecial_actions", [0, 1], ["Off", "On"], "Allows extra Dspecial actions with needing to dodge.");
	
	// draw_hud.gml
	initCheat("Star UI", "cheat_hud", [0, 1], ["On", "Off"], "Shows or hides the star meter.");
	
	// draw_hud.gml
	initCheat("Combo/Dodge HUD", "cheat_combo", [0, 1], ["Off", "On"], "Shows the combo counter/combo timer and times dodged to the player hud.");
	
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
	
	initAbout("About Little Mac", "Made by me, Dors!
	Animations and concept inspired by Super Smash Bros. Ultimate.
	Punch Out is owned by Nintendo. Please support the official works!");
	
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
	
	otto_bobblehead_sprite = sprite_get("bobblehead");
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve was hit by a big mosquito";
	
}



if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("feri_costume", 84, 114);
		feri_costume = sprite_get("feri_costume");
		
	}
	
	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "The Big Cheese";
		
	}
	
	
	
	// Rat all-out quote
	
	if pho_has_rat_allout{
		
		personaQuips[10] = "This boxing tournament sucks.";
		
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
		
		ncode1 = "World Circuit champion of the";
		ncode2 = "World Video Boxing Association.";
		ncode3 = "Fast, but incredibly vulnerable.";
		
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
		
		arena_title = "Bruiser from the Bronx";
		
	}
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* There's a faint smell of chocolate.";
		
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
		pkmn_stadium_name_override = "L. Mac";
		
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