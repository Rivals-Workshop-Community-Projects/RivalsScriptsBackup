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

			var ability_spr = sprite_get("kirby");
			var ability_hurt = sprite_get("kirby_hurt")
			var ability_proj = sprite_get("fspecial_proj");
			var ability_icon = sprite_get("kirbyicon");
			with enemykirby {
				newicon = ability_icon;
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
				set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_shop_move"));
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 13);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);

				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));

				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 30);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 10);

				set_num_hitboxes(AT_EXTRA_3, 2);

				set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 9);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 80);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 48);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 38);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 38);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
				set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 48);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
				set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 2.5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .01);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, -0.05);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .75);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 153);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);

				set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
				set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
				set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 4);
				set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 45);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -30);
				set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 50);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 50);
				set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 6);
				set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 5);
				set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
				set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
				set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 10);
				set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
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
pho_has_copy_power = 1;	// Kirby Copy Ability
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
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
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
muno_char_name = "Bluey";							// Here I replace the name, because "Sandbert with a Phone" is awkwardly long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_nspecial_proj = sprite_get("nspecial_proj");
spr_nspecial_proj2 = sprite_get("nspecial_proj2");
spr_nspecial_proj3 = sprite_get("nspecial_proj3");
spr_fspecial_proj = sprite_get("fspecial_proj");
spr_fspecial_proj2 = sprite_get("fspecial_proj2");
spr_ftilt_r = sprite_get("ftilt_r");
spr_ftilt_p = sprite_get("ftilt_p");
spr_ftilt_s = sprite_get("ftilt_s");
spr_ftilt_gottem = sprite_get("ftilt_gottem");
spr_dspecial2 = sprite_get("dspecial2");

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
	
	initTip("NSpecial: Charging Blasts");
	initTipWords("You can hold NSpecial in order to shoot bigger charge shots. The third charge will shoot the biggest and strongest shot! Press shield during charging to stop and store some magic.");
	initTipImage(player_id.spr_nspecial, -4, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_nspecial_proj, -2, fa_right, 1, c_white, 0);
	initTipImage(player_id.spr_nspecial_proj2, -2, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_nspecial_proj3, -2, fa_right, 1, c_white, 0);
	
	initTip("Souped Up Specials");
	initTipWords("If you have some magic charge, you can hold the special button during other specials in order to soup them up!");
	initTipWords("FSpecial makes you throw bowling bombs that deal more damage and explode on contact.");
	initTipImage(player_id.spr_fspecial_proj2, -2, fa_right, 1, c_white, 1);
	initTipImage(player_id.spr_fspecial, 10, fa_left, 1, c_white, 0);

	initTipWords("USpecial will make you go higher as you hold the special button.");
	initTipImage(player_id.spr_uspecial, 2, fa_left, 1, c_white, 0);
	
	initTipWords("DSpecial will make you dash even further forward. Landing the aerial version also unleashes magic blasts on the ground.");
	initTipImage(player_id.spr_dspecial, -3, fa_left, 1, c_white, 3);
	initTipImage(player_id.spr_dspecial2, -3, fa_right, 1, c_white, 3);			
	
	initTip("Souped Up Normals");
	initTipWords("But wait, there's more! You can also use magic charge to power up regular attacks that use Bluey's magic wand.");
	initTipWords("DTilt inflicts a stun effect similar to full charge NSpecial.");
	initTipImage(player_id.spr_dtilt, -3, fa_left, 1, c_white, 1);
	
	initTipWords("UStrong deals more blasts and thus more damage.");
	initTipImage(player_id.spr_ustrong, -3, fa_left, 1, c_white, 1);

	initTip("FSpecial: Re-Hitting Bowling Balls");
	initTipWords("After throwing a FSpecial, you can relaunch it with a couple normals - Jab3, FStrong, DStrong, and FAir. All of these moves throw it at different angles.");
	initTipImage(player_id.spr_fspecial_proj, -2, fa_right, 1, c_white, 1);
	initTipImage(player_id.spr_fstrong, -2, fa_left, 1, c_white, 1);
	
	initTip("FTilt Angling");
	initTipWords("You can angle your FTilt to get different hand signals with different effects among them.");

	initTipWords("The default angle will be a fist(rock). Compared to the other angled variations, it's the most average one in terms of damage and knockback.");
	initTipImage(player_id.spr_ftilt_r, -3, fa_left, 1, c_white, 0);

	initTipWords("Angling up will give you scissors. It hits twice, so it deals the most damage. It doesn't quite have the same launch power as rock, though.");	
	initTipImage(player_id.spr_ftilt_s, -3, fa_left, 1, c_white, 0);

	initTipWords("Angling down will give you paper. It slightly stuns your opponent, so it may be possible to follow it up with another attack.");	
	initTipImage(player_id.spr_ftilt_p, -3, fa_left, 1, c_white, 0);	

	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");
	initTipWords(" ");	
	initTipWords(" ");	
	initTipWords(" ");
	initTipImage(player_id.spr_ftilt_gottem, -3, fa_left, 1, c_white, 1);
	initTipWords("haha gottem");	
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
	initPatch("BO.EY", "30 December, 2020");
	initPatchWords("Up Aerial");
	initPatchWords_ext("The move will no longer stall Bluey in the air when fast falling.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Aerial");
	initPatchWords_ext("Main hitbox's size has been slightly decreased in height.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Upper sourspot has been enlarged. Hit SFX was changed.", fa_left, c_gray, 1, 0);
	initPatchWords("Down Special");
	initPatchWords_ext("Fixed mistimed SFX.", fa_left, c_gray, 1, 0);
	
	initPatch("BA.BO", "27 December, 2020");
	initPatchWords("Down Aerial");
	initPatchWords_ext("Base knockback decreased from 6 to 5.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("Hitstun multiplier value of 0.85 added.", fa_left, c_gray, 1, 0);
	initPatchWords("Forward Special");
	initPatchWords_ext("Collision with enemy hitboxes has been slightly adjusted.", fa_left, c_gray, 1, 0);
	initPatchWords_ext("When having a Bowling Ball connect with another one, be it from another Bluey or Cinnamon, they should both properly ricochet back at their owners.", fa_left, c_gray, 1, 0);
	
	initPatch("1.0", "7 October, 2019");
	initPatchWords_ext("HOLY CRAP THE CHARACTER IS OUT!", fa_center, c_white, 0, 1);
	initPatchImage(other.spr_doublejump, 0, fa_center, 1, c_white, 1);
	
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
	
	initCheat("Be blue.", "cheat_funny_snail", [1], ["yes", "yeah"], "You are already blue.");
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
		AT_EXTRA_3,
		AT_UTILT,
		AT_DATTACK,
		AT_FSTRONG,
		AT_USTRONG,
		AT_USTRONG_2,
		AT_DSTRONG,
		AT_FSTRONG_2,
		AT_DSTRONG_2,
		AT_NAIR,
		AT_FAIR,
		AT_BAIR,
		AT_EXTRA_2,
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
	stats_notes = "Why tf is this a template character"; // set to   "-"   if you don't need to put any notes
	
	
	
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
	
	initAbout("About Bluey", "Character designed and developed by SB-2749. @SB2749
	
	If you're reading this, that means you have taken the time to download this random mod made by a random user on the Internet and learn things about him. To that, I and Bluey say: thank you from the bottom of our hearts.
	
	Do check out my other Rivals mods, if you will! tinyurl.com/SB2749-ROA
	");
	
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
	
	SPK_BLUY = initSpeaker(1, "Bluey", sprite_get("_pho_cdc_char_bluy"));
	SPK_BLY2 = initSpeaker(2, "Bluey 2", sprite_get("_pho_cdc_char_bluy"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "woag it's bluy");
	initCodecPage(SPK_ALTO, 11, 0, "WHAT!!!!!!!!!");
	initCodecPage(SPK_BLUY, 0, GIM_LAUGH_TRACK, "Lol!")
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	steve_death_message = "Steve was green.";
}



// Steve death message

if pho_has_steve_dmsg{
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	
}



// Fire's taunt

if pho_has_fire_taunt{
	
}



// Wall-E's radio

if pho_has_wall_e_ost{
	
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
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
}



// Miiverse post

if pho_has_miivs_post{
	
}



// Mt Dedede title

if pho_has_dede_title{
	
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