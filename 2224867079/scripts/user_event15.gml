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
		"loges",
		"loges",
		"loges"
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
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 1; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 0;	// Posts for the Miiverse stage
pho_has_dede_title = 0;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
pho_has_pkmn_image = 1; // Battle sprite for Pokémon Stadium
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

phone.dont_fast = 1;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



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
	
	initTip("DSpecial");
	initTipWords("Dspecial Will change your stance between red and blue, Red does more knockback but Blue Does more damage. There are more changes other than this though. Strongs change completely and specials have new properties");
	initTipImage_ext(player_id.spr_red_dspecial, -5, fa_left, 1, c_white, 0, 94, 94, 100, 10);
	initTipImage_ext(player_id.spr_dspecial, -5, fa_right, 1, c_white, 0, 94, 94, 100, 10);
	
	initTip("Stance Differences");
	initTipWords("Red Deals more knockback but less damage and Blue Deals more damage but less knockback.");
	initTipWords("Red strongs are mostly all punches whereas blue strongs a bit more creative.");
	initTipWords("Red Fspecial Sends opponents away whereas Blue Fspecial sends them towards you.");
	initTipWords("Red Uspecial has a sweetspot at the very start and blue Uspecial has consitent damage. Blue also has worse vertical distance than red but you can turn left and right");
	initTipImage(player_id.spr_red_fstrong, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_fstrong, -5, fa_right, 1, c_white, 0);
	
	initTip("Kunai Bombs");
	initTipWords("If you perform a Nspecial in the air. The kunai will land on the ground");
	initTipWords("Once grounded, You can detonate the kunai by switching modes. Depending on the mode you switch on, the explosion's properties will change.");
	initTipImage(player_id.spr_kunai_grounded, -5, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_red_kunai_grounded, -5, fa_right, 1, c_white, 0);
	
	initTip("Red Uspecial Sweetspot");
	initTipWords("Red Uspecial has a sweetspot right near the start of the attack");
	initTipWords("If it hits the move will do a ton of knockback making it a great kill move");
	initTipImage(player_id.spr_red_uspecial, -5, fa_center, 1, c_white, 1);
	
	/*
	initTip("Fspecial Waveland");
	initTipWords("You're able to waveland right as you hit your opponent with fspecial, you can do this to cancel into any move of your choice.");
	initTipWords("Bonus tip:");
	initTipWords("If you hit someone with the last few frames of fspecial you can immeditely dtilt out of it");
	initTipImage(player_id.spr_fspecial, -5, fa_center, 1, c_white, 3);
	*/
	
	initTip("Dair Reversal");
	initTipWords("if you immedietly turn your joystick to the opposite direction when you perform a dair you can reverse it and go the other way");
	initTipImage(other.spr_dair, -4, fa_center, 1, c_white, 0);

	/* THIS IS ALL OLD.
	initTip("Lognes' Lore");
	initTipWords_ext("Chapter 1", fa_center, c_gray, 0, 0);
	initTipWords("A long time ago in a very distant land. One being existed. It had no purpose, no goals, not even a body. This being was known as lognes. One day, Lognes created the two lesser beings to himself. The god of matter, and the god of antimatter.");
	initTipWords("Despite these gods having completely seperate ideals, one could not exist without the other. Lognes gave them both 1 simple philosophy. The god of matter simply wanted to create, the god of antimatter simply wanted to destroy.");
	initTipWords_ext("Chapter 2", fa_center, c_gray, 0, 0);
	initTipWords("A lot of time has passed since the gods' creation. Lognes completely taking the role of spectator. Matter has created countless planets, stars, galaxies. but no matter how many things Matter would make. Antimatter would always be there to take it away. The planets matter created started to create life.");
	initTipWords("the beings living on these planets all took on a similar philosophy to matter. but for every bit of life matter would create, similarly opposing creatures of antimatter would be given life. all having the same philosophy as antimatter.");

	initTipWords_ext("Chapter 3", fa_center, c_gray, 0, 0);
	initTipWords("It was discovered that souls not possesing a body were out there in the world. some of these each planet had one, and at any given time these souls could take the physical form of one of the creatures on that planet.");
	initTipWords("However some planets had no life, souls without bodies. One of the beings created a mannequin which let the souls take physical form. the mannequin would shape itself into what that soul represented. thanks to this creation, Lognes, God of Matter and God of Antimatter were all able to be given physical form.");
	
	initTip("Phone Controls");
	initTipWords("On the Character Select Screen, hold the 0 (zero) key on your keyboard to view the expanded list of Compatibility Icons.");
	initTipWords("To perform the regular taunt instead of opening the phone, hold a direction on the control stick.");
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
	
//	initPatch("1.1", "32 Mebruary, 20XX");
//	initPatchWords("Buffs
//	- a");
//	initPatchWords_ext("This buff will help Sandbert a.", fa_left, c_gray, 1, 0);
//	initPatchWords("Nerfs
//	- a
//	- b
//	- a
//	- uhhhh");
//	initPatchWords_ext("Wait why did i nerf thsio ahgain", fa_left, c_gray, 1, 0);
//	initPatchWords("Fnuuy joke
//	- waog");
//	initPatchWords_ext("Wow that is very funny", fa_left, c_gray, 1, 0);
	//2.29
	initPatch("2.29	", "20 June 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added Dust Effects to some moves
	- Fixed Red Down-Taunt
	- Fixed the Dair Effect showing up at the wrong times");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Strongs now come out a little bit after you let go of charge
	- Red Ustrong should now be much easier to hit
	- Every aerial now gives a slight vertical boost
	- Nspecial now has a 45 frame cooldown instead of 10
	- Body hit of blue fstrong damage reduced (4%-1%)
	- All moves now have whifflag
	- Utilt now goes a lot less higher
	- Dair Landing lag increased (6->8)
	- Red Uspecial BKB decreased (12->9)
	- Fstrong hurtbox should no longer cover the effects");	
	initPatchWords_ext("Movement Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red mode inital dash speed reduced (9.5->9)
	- Red mode air max speed reduced (6->4) 
	- Blue dash speed reduced (8->6.5)
	- Blue Initial dash speed reduced (8.5->7)
	- Blue Air max speed reduced (7->6)
	- Blue Double jump speed reduced (12->11)
	- Both air friction increased to 0.04
	- Pratland time increased (5->10)")
	//2.28
	initPatch("2.28	", "2 June 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Dair now has more friction when landing on the ground after performing it");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Redesigned Dair
	- Toned down some of the afterimages")
	//2.27
	initPatch("2.27	", "25 May 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- knockback_adj increased (1->1.2)
	- gravity accel lowered (.65->.5) 
	- air friction increased (0.01 -> 0.03)
	- max fall speed lowered (13->10)
	- ground friction increased (.5->.7)
	- initial dash speed lowered (10->9)
	- initial dash time increased (8->14)
	- dash stop time increased (4->6)
	- red dash turn increased (1.5->2)
	- walk accel increased (0.25->0.5)
	- wave friction increased (0.4->0.6)
	- jump start time increased (4->5)
	- jump speed lowered (14->10.5)");
	//2.26
	initPatch("2.26	", "23 May 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red Dair's Spike has new VFX")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Blue Kunai Explosion (Blue->Red) has less bkb (12->9)
	- Blue Kunai Explosion (Blue->Red) has less kb scaling (0.2->0.7)");
	//2.25
	initPatch("2.25	", "21 May 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Changed Dattack Smear
	- Changed Fair Smear
	- Blurs no longer show up during wavedash
	- Kunai Bombs now have a new sound effect")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Nair now gives you a slight vertical boost
	- Blue Fstrong should be harder to di out of
	- Uair now does more damage
	- Fair is now slightly bigger
	- Fixed an error in the logs - (Thanks to blu)");
	//2.24
	initPatch("2.24	", "15 May 2021");
	initPatchWords_ext("Log now has a final smash!", fa_center, c_red, 1, 0);
	initPatchWords("- You can activate it through the final smash buddy or through munophone cheats.")
	//2.23
	initPatch("2.23	", "8 May 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fixed Dair not resetting the hit particle
	- Fixed an issue with small sprites
	- Blue Ustrong and both dtilts now have extra vfx")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red Dattack should now be easier to hit");
	//2.22
	initPatch("2.22	", "1 May 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fixed the issue with the default skin")
	//2.21
	initPatch("2.21	", "1 May 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- The STUPID Uspecial effect works now - Thanks to lukaru
	- Added custom hit particle effects because ive only just now realised that was a thing
	- Added Lite mode
	- Added two new alts (Beepbox and Modbox)
	- Edited colours.css again (the lines now change colour too)")
	//2.20
	initPatch("2.20	", "28 April, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Resprited Uair
	- After images now dissapear when performing certain moves
	- Nspecial now has the new blue colours")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Brand new Red Dattack
	- Fair Angle Changed (35->60)
	- Fair now has a hitbox for when you just barely hit someone
	- Aerials now have whifflag
	- Removed the Uair Sourspot
	- Redid the Uair Hitboxes
	- Removed the Bair sourspot
	- Ftilt Angle Changed (55->361)
	- Blue Ftilt BKB Changed (6->5)
	- Red Ftilt BKB Changed (10->7)");
	//2.19
	initPatch("2.19	", "24 April, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Edited the new taunt sprite
	- Redid the afterimages (Using lukaru's code)
	- Edited a few sprites")
	//2.18
	initPatch("2.18	", "16 April, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- New taunt (old taunt moved to down taunt)")
	//2.17
	initPatch("2.17	", "16 April, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Tweaked Colors.gml
	- Made it so it displays Red Uspecial's old VFX if not at kill percent
	- Blue Uspecial now has less anim frames on the final window
	- New Alts
	- The red uspecial effect should work better on certain alts (probably not as well as it should, i'm gonna try find a better solution)")
	//2.16
	initPatch("2.16", "12 April, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Made it so it displays Red Uspecial's old VFX if not at kill percent")
	//2.15
	initPatch("2.15", "11 April, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- New Red Uspecial Effect")
	//2.14
	initPatch("2.14", "10 April, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fspecial has less active frames (12->8)
	- Fspecial now has more recovery frames (6->8)");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Updated Portrait")
	//2.13
	initPatch("2.13", "8 April, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Kunai bombs now follow moving platforms
	- Kunai bombs now have much better collision with the ground (though you could probably still get them to float)")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red nspecial projectiles no longer have a glow
	- Blue nspecial air projectile no longer has a glow")
	//2.12
	initPatch("2.12", "5 April, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red Uspecial base knockback changed (19->12)
	")
	//2.11
	initPatch("2.11", "18 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red utilt does less knockback
	- Red utilt has slightly less startup (6->4)
	- Red Jab does less knocbkack
	- Red Jad has slightly more hitstunis")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added Intro Animation
	- Pratfall Fixed")
	//2.10
	initPatch("2.10", "18 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Blue Uspecial has been replaced
	- Red Jab is now a one hit move that can cancel into any normal
	- You can now B-Reverse red specials")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Updated Red Walkturn
	- Updated Pratfall")
	//2.9
	initPatch("2.9", "17 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Increased all of red base knockback by 1
	- Nair SHOULD now connect better
	- Blue's Uspecial now goes higher than Red's")
	//2.7
	initPatch("2.7", "16 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Reduced Red Dash speed by .5
	- Dtilt now properly changes when switching back to blue
	- Fixed the hurtsprites
	")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- New Vfx when dodging
	- New Jump Sprite
	- Fixed Kawaii Alt
	- Updated Jumpstart
	- Updated Waveland")
	//2.6
	initPatch("2.6", "15 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Decreased all the damage by 1
	- Red performs better on ground
	- Blue performs better in the air
	- Red Ftilt sends you backwards
	- Red Fspecial now no longer sends down
	- Red Fspecial now covers more distance
	- Blue Fspecial can now be aimed
	- Red Dtilt now sends downwards
	- Charged Blue Nspecial now shoots two regular projectiles
	")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red Dattack now makes the right sound
	- New Red Dtilt sprite")
	//2.5
	initPatch("2.5", "14 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Adjusted a lot of hitboxes to give them sweet and sour spots
	- Nspecial now has a cooldown of 10 frames
	- Red Nspecial now has less startup (12->9)
	- Nair angle changed (361->65)
	- Utilt now has a sweetspot
	- Utilt has now been made taller to more easily hit grounded opponents
	- Uair now has a sourspot
	- Fair is extended slightly further out
	- Fair's active window is now slightly longer (5->7)
	- Blue Uspecial now no longer does 12 damage (12->8)
	- Blue Ustrong now has a sweetspot
	- Dtilt now has a sweetspot
	")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Nair now hurts your ears less")
	//2.4
	initPatch("2.4", "13 March, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Overall damage increase
	- Adjusted Dtilt Hitbox
	- Adjusted Nair Hitbox
		- Adjusted Uair Hitbox
	- Adjusted Utilt Hitbox
	- Adjusted Blue Dstrong Hitbox
	- Bair now has a different launch angle, (Should be easier to DI)
	- Charged Nspecial now comes out quicker and has less lifetime
	- Nair is now a 3 hit move
	- Blue Fstrong shouldnt be as jank anymore
	- Uspecial now happens over a shorter period of time
	")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Updated Dstrong
	- Uspecial now has new visual effects")
	//2.3
	initPatch("2.3", "12 March, 2021");
	initPatchWords_ext("Completely revamped how palettes worked in order to cut down on the amount of sprites", fa_center, c_white, 1, 0);
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Hitpause has been increased universally")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- The eyes now stay in the right spot when turning around
	- Updated Taunt
	- Updated Ustrong Sprite
	- Updated Info
	- Updated Walkturn")
	//2.2
	initPatch("2.2", "11 March, 2021");
	initPatchWords_ext("Updated Munophone", fa_center, c_white, 1, 0);
	initPatchWords_ext("Added Lore", fa_center, c_white, 1, 0);
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Blue's Dair's Sweetspot basically doesnt do anything anymore
	- Dair's Sweetspot is now diagonal ")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Updated Red Idle
	- Double jump is now the same as regular jump
	- New taunt
	- New alt")
	//2.1
	initPatch("2.1", "2 March, 2021");
	initPatchWords_ext("Fspecial Update", fa_center, c_white, 1, 0);
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Fspecial can now bounce off solid objects
	- Fspecial Frame data has been changed")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- New Fspecial Sprites")
	//2.0
	initPatch("2.0", "2 March, 2021");
	initPatchWords_ext("Character Rework", fa_center, c_white, 1, 0);
	initPatchWords("- The markers are GONE. They have been moved to an abyss rune
	- You can now plant kunais into the ground and detonate them like bombs")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Updated blue roll sprites
	- Disabled the tilting Nair
	- Updated Nair sprite
	- Added a recharge bar for Dspecial
	- Fixed colours.gml
	- Updated red's vfx
	- Charged Nspecial spawns a bit higher")
	//1.9
	initPatch("1.9", "2 March, 2021");
	initPatchWords_ext("Started work on abyss runes", fa_center, c_white, 1, 0);
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Blue Dair Sweetspot now does less knockback
	- Red Fspecial now has more knockback scaling
	- Every move has had its damage increased by one
	- Dair spike is now a meteor smash
	- Dattack now has a slight speed boost and 2 frames of extra endlag")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Every blue attack now has updated sprites
	- Dair makes a new sound when it spikes
	- New blue idle animation
	- New nair animation")
	//1.8
	initPatch("1.8", "26 Febuary, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Dair now has 4 active frames and is a lot faster
	- Dair now has a sweetspot
	- Utilt now has 4 active frames and is faster
	- Dair and Utilt now have hitpause")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Nep alt now has sounds
	- changed red crouch
	- Fixed the kawaii alt on the wrong alt")
	//1.7
	initPatch("1.7", "23 Febuary, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- Reduced end lag of red Nspecial
	- Charged Nspecial now applies mark")
	//1.6
	initPatch("1.6", "23 Febuary, 2021");
	initPatchWords_ext("Revamped Nspecial", fa_center, c_white, 1, 0);
	initPatchWords_ext("You're now able to charge it to summon a shield-like projectile", fa_center, c_gray, 1, 0);
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_white, 1, 0);
	initPatchWords("- New alt
	- Changed colours of kawaii alt")
	//1.5
	initPatch("1.5", "11 Febuary, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Changed Visual Effects
	- Updated Portrait Sprite")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Revamped Blue Uspecial (I'll probably be changing it more in the future)
	- Increased Knockback scaling of all red strongs
	- Blue fstrong has different hitbox angles")
	//1.4
	initPatch("1.4", "3 Febuary, 2021");
	initPatchWords_ext("MunoPhone:", fa_center, c_gray, 1, 0);
	initPatchWords("- Able to remove the cooldown of Dspecial in cheat codes
	- Updated the slider sprite")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- After images are now tinted certain colours
	- Updated red Dtilt sprite
	- Updated lue Dstrong sprite")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Dspecial cooldown is reduced
	- Blue Nspecial now has knockback
	- Red mode does a bit more damage")
	//1.3
	initPatch("1.3", "3 Febuary, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red ustrong's hit sfx now plays after swipe sfx
	- Bair's hit sfx now plays after swipe sfx
	- Updated Utilt Sprite
	- Updated Jab Sprite
	- Updated Ftilt Sprite
	- Updated Dattack Sprite
	- New Bair sprite
	- Fixed Blue UStrong's offset
	- Updated Uair Sprite")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Buffed Red Fstrong
	- Bair has more range
	- Dattack has more range
	- Utilt comes out later
	- Fair Hitbox appears later
	- Fair has even more range
	- Uair has more range")
	//1.2
	initPatch("1.2", "2 Febuary, 2021");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Buffed sounds")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Every move now has more hitstun
	- Ftilt has slightly more range
	- Fair now has more range
	- Utilt now has more range
	- Fspecial goes slightly further
	- Switching states now has a cooldown")
	//1.1.1
	initPatch("1.1.1", "2 Febuary, 2021");
	initPatchWords_ext("oops forgot to update munophone and config", fa_center, c_white, 1, 0);
	//1.1
	initPatch("1.1", "2 Febuary, 2021");
	initPatchWords_ext("Compatibility:", fa_center, c_gray, 1, 0);
	initPatchWords("- Otto Bobblehead
	- Moonchild Song
	- Feri Costume")
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Strongs have new sound effects")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Blue attacks now do a little bit more damage
	- Red attacks now do a bit more knockback")
	//1.0
	initPatch("1.0", "31 January, 2021");
	initPatchWords_ext("1.0 RELEASE!!", fa_center, c_red, 1, 0);
	initPatchWords_ext("Markers work again", fa_center, c_white, 1, 0);
	initPatchWords_ext("Additions:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added Blue Dstrong
	- More hurtsprites
	- Pokemon Stadium support")
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Blue Upstrong now has a sprite
	- Red Dstrong now has a sprite")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Red Dair now does less knockback
	- Old taunt is back")
	//0.12
	initPatch("0.12", "21 January, 2021");
	initPatchWords_ext("MARKERS DO NOT WORK UNTIL FURTHER NOTICE", fa_center, c_red, 1, 0);
	initPatchWords_ext("the marker mechanic is breaking the damage numbers on red mode so ive disabled it
the visuals are still there it just does nothing", fa_center, c_white, 1, 0);
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Updated Jump Sprite
	- Updated Dash Start Sprite
	- Markers now show on yourself instead of the opponent")
	
	//0.11
	initPatch("0.11", "3 January, 2021");
	initPatchWords_ext("Additions:", fa_center, c_gray, 1, 0);
	initPatchWords("- Muno Phone Support")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Modifier now properly applies to red Ustrong
- Modifier now properly applies to blue moves
- Fspecial now applies mark to incentivise agressive gameplay
- More animatons have hurtboxes")
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Animation changed depending on if ur in red or blue when respawning
- Added a platform sprite
- Red Fstrong Sprite
- Blue Fstrong Sprite
- Red Ustrong Sprite
- Added Tech Sprites
- Marker now switches to whoever you're hitting")
	
	//0.10
	initPatch("0.10", "3 January, 2021");
	initPatchWords("ACTUALLY fixed the modifiers now hopefully")
	
	//0.9
	initPatch("0.9", "3 January, 2021");
	initPatchWords("ok fixed marker modifiers hopefully")
	
	//0.8
	initPatch("0.8", "3 January, 2021");
	initPatchWords_ext("Additions:", fa_center, c_gray, 1, 0);
	initPatchWords("- MARKER MECHANIC
	Nspecial can now mark the opponent,
	if marked with red, blue will be buffed
	if marked with blue, red will be buffed")
	
	//0.7
	initPatch("0.7", "3 January, 2021");
	initPatchWords_ext("Additions:", fa_center, c_gray, 1, 0);
	initPatchWords("- Revamped Dtilt and Dair")
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- New Dtilt Sprite")
	
	//0.6
	initPatch("0.6", "2 January, 2021");
	initPatchWords_ext("Additions:", fa_center, c_gray, 1, 0);
	initPatchWords("- Blue Fstrong
	-Red Ustrong")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Both Dspecials are now harder to hit and do less knockback
	- Blue Nspecial now does no knockback
	- Dtilt now does slightly more knockback")
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added Shujo Alt
	- Blur now properly displays alt colours
	- Updated Red Dattack Visuals
	- Updated Red Ftilt Visuals
	- Updated Red Fstrong")
	
	//0.5
	initPatch("0.5", "1 January, 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Jab now doesn't do as much knockback on the first hit
	- Blue Uspecial now lets you have horizontal directional influence
	it also has slower vertical speed
	- Red Uspecial slighty slower")
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Nair now has a blur effect
	- Blue Upsecial No longer has a blur effect
	- Jab has updated Visuals
	- New hurtsprites
	- Revamped Alternate Colours")
	
	//0.4
	initPatch("0.4", "29 December, 2020");
	initPatchWords_ext("Additions:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added Jab")
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Increased End lag on a couple of moves
	- Red Nair's First hit now deals no damage
	- Red Dtilt now does the correct amount of damage")
	initPatchWords_ext("Visual Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Dattack, Dair, Dtilt, Uspecial and Fspecial now all have a blur effect
	- Updated Taunt
	- Changed Intro Animation")

	
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
	//initCheat("Say woag", "cheat_funny_snail", [0, 1], ["no", "yes"], "Say woag? Yes. No. AAAAAA");
	
	// update.gml
	//initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Sandbert's maximum number of double jumps.");
	
	// attack_update.gml
	//initCheat("USpecial Flight Speed", "cheat_flight_speed", [1, 1.25, 1.5, 2, 3, 5, 10], ["1", "1.25", "1.5", "2", "3", "5", "10"], "Change the speed of USpecial's flight.");
	
	// attack_update.gml
	//initCheat("FSpecial Cancel", "cheat_fspecial_cancel", [0, 1], ["Off", "On"], "Cancel FSpecial into any action.");
	
	// update.gml
	//initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how");
	
	// init_shader.gml
	//initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "skittles");
	
	// update.gml
	initCheat("Remove Dspecial cooldown", "dspecial_nocd", [0, 1], ["Off", "On"], "flavour text");
	initCheat("why are you hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf");
	initCheat("turns jab into final smash", "jab_fsmash", [0, 1], ["Off", "On"], "(it's not ready yet)");
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
	include_custom = true;
	
	// If so, what's its name?
	custom_name = "Marker Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Red Mark");
	initCFDBody("- Blue Buffs -
	Damage: +2
	Knockback: +1");
	
	initCFDHeader("Blue Mark");
	initCFDBody("- Red Buffs -
	Damage: +1
	Knockback: +2");
	
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
	
	initAbout("About Lognes: Gameplay", 
	"Lognes is an insanely fast rushdown character who's able to switch between red and blue stances.
	
	Red and Blue come with base stat changes, completely different strongs and specials with different properties
	Blue does more damage with the downside of less knockback. The specials try to keep you closer to the oppenent and the strongs create objects.
	Red does more knockback with the upside of less damage. The specials try to force the opponent away from you and the strongs are all very powerful punches.
	
	Red Upsecial and Red Dair has a special property of being able to sweetspot and do massive damage.
	You can also create kunai bombs by using neutral special in the air and detonating them by switching
	
	For more, Check out the Fighter Tips Section");
	
	
	initAbout("About Lognes: Lore", 
	"According to all known rules about the world of TOTH. Lognes should NOT exist. No one knows how or why he exists, but he does anyway. 

	Despite this, Lognes is a Vessel. He is somehow able to wield both antimatter and matter. This should not be possible yet he does it anyway.
	He's also has incredible agility. Seemingly a complete master of how to wield his body.

	Lognes has a split personality. he's constantly having an internal struggle with his matter half and antimatter half.
	Blue log (Matter Log) seems completely devoid of emotion. He's able to understand them but he does not seem to posses them. 
	On the other hand.
	Red Log (Antimatter Log) Is just bursting with emotion, completely unable to look at situations logically and does a lot of regrettable actions because of this.
	They still both share the same consious however. They think the same things but just express them differently.

	Lognes however, is contempt with his split personality. He sees it as a nessisary evil. And when situations are dire, They will completely cooperate and switch only when they both agree to switch.");
	
	initAbout("About Vessels", 
	"Vessels are an artifical species of people created by gods. They mainly serve the purpose of assisting the gods in their solar system with protecting it.
	
	Vessels are created by going to a planet / dwarf planet that dont contain life and by extracting the god soul residing there.
	Usually the god soul is born into one of the species on that planet but if it doesnt contain life there is no body for the soul to occupy.
	Once the soul has been collected and put into a physical object for it to reside in (a soulgem). The gem is put into a Vessel Body. Once placed, The body morphs into a shape befitting the soul.
	
	Since they contain a God soul, They also have all the same abilities a regular god has. They are able to create and manipulate matter and live however long their host planet survives for.");
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
	
	SPK_LOG = initSpeaker(1, "Lognes", sprite_get("_pho_example_speaker"));
	SPK_NEP = initSpeaker(1, "Neptendo", sprite_get("_pho_nep_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "Who the heck is this guy");
	initCodecPage(SPK_NEP, 1, 0, "LOGGY WOGGY CHAN???");
	initCodecPage(SPK_ALTO, 0, 0, "Huh??");
	initCodecPage(SPK_NEP, 1, 0, "You guys fighting log?");
	initCodecPage(SPK_ALTO, 0, 0, "I guess, who are you?");
	initCodecPage(SPK_NEP, 1, 0, "Don't worry about who i am, you should try focus on fighting lognes instead");
	initCodecPage(SPK_TRUM, 0, 0, "Any tips?");
	initCodecPage(SPK_NEP, 1, 0, "Only because i'm sure you wont beat him ;)");
	initCodecPage(SPK_NEP, 1, 0, "When his hands switch to red it won't hurt as bad but get ready to go flying if he does hit you");
	initCodecPage(SPK_ALTO, 0, 0, "Alright, thanks crazy lady");
	
	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve saw too much Red and Blue";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "Red and Blue";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "Bwah this";
	
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
	
	walle_taunt_sound = sound_get("Red_And_Blue");
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
	
	ncode1 = "He can dart around the stage blisteringly fast"
	ncode2 = "Careful when he turns red,"
	ncode3 = "It wont hurt as bad but it'll send you flying"

	
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
	pkmn_stadium_name_override = "Lognes";
	
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