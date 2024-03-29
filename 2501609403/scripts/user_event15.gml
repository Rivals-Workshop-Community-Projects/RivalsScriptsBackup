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
			
			var copy_spr = sprite_get("_bug_kirb");
			var copy_hrt = sprite_get("_bug_kirb");
			var copy_icn = sprite_get("_bug_ability");
			var copy_rage = sprite_get("nspecial_proj5");
			var copy_rage2 = sprite_get("nspecial_proj5.2");
			var copy_rage3 = sprite_get("nspecial_proj5.3");
			// add more to transfer other sprites, or sfx
			
			with enemykirby{
				newicon = copy_icn;
				muno_last_swallowed = other.id;
				
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
				
				// edit the below (and, indeed, the above!) just like a regular attack script
				
				//Mouth Closed
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 5);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 0);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

				//Mouth Opened
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_syl_fspecial_bite"));

				//Item Thrown
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 0);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

				//Recovery
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 0);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_bite"));

				
				set_num_hitboxes(AT_EXTRA_3, 1);
				
				//Rage Ball
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 99);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, copy_rage);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, copy_rage);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 7.5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
				
			}
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
			//Rage Ball
			if (attack == AT_EXTRA_3){
				move_cooldown[AT_EXTRA_3] = 40
				if (window == 3 && window_timer == 1){
					create_hitbox(AT_EXTRA_3,1,x+15*spr_dir,y-35)
				}
				//Updates Damage of Rage Ball
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, (1.6 + (0.114 * get_player_damage( player ))));
			}
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
		        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));

				//Enter
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 6);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);

				//Loop
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 50);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);

				//Item Thrown
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 0);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
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
pho_has_ahime_dead = 1;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 1; // Amber's plush and/or hug
pho_has_moon_music = 1; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 0;	// Title for the Mt Dedede Stadium stage
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
	
	initTip("Movement");
	initTipWords("Bugingi's movement is very unnatural");
	initTipWords("His dash has an insanely slow startup speed, Though after a few frames you will speed up a ludicrous amount");
	initTipImage(player_id.spr_dash, -5, fa_right, 1, c_white, 3);
	initTipWords("His walk creates afterimages, and instead of walking at a consistant speed he teleports every couple of frames.
	A good tip for knowing which one is actually you is that you're always the frontmost bugingi");
	initTipImage(player_id.spr_OLDwalk, -5, fa_right, 1, c_white, 3);
	initTipWords("And finally his triple jump, The first two jumps are normal for the most part except for the final jump.
	Bugingi proceeds to bounce up and down for a while before finally going straight up at the end.
	The third jump can be used for a multitude of things, for example:
	if you use it right before inputting a move it can be treated as a third short hop in the air.
	if you wait until the final jump you can chain it with uair to get some serious height
	it's also great for stalling and the niche case where you need to go down and perform a move.");
	initTipImage(player_id.spr_doublejump, -5, fa_center, 1, c_white, 0);
	
	
	initTip("Nspecial");
	initTipWords("Bugingi's nspecial throws out a completely random projectile");
	initTipWords("By pressing nspecial you're able to to throw 10 different projectiles. There's also a 1 in 10 chance for you to throw a jackpot projectile which there are two of.");
	initTipImage(player_id.spr_nspecial, -5, fa_center, 1, c_white, 0);
	
	
	initTip("Nspecial: Projectiles");
	initTipImage(player_id.spr_inventory, 0, fa_left, 1, c_white, 0);
	initTipWords("100 Ton Weight:");
	initTipWords("The 100 Ton weight is a projectile that has a very weak hitbox until it lands on the ground. The inner part of the hitbox deals a decent amount of damage and knockback whereas the outer part just stuns.
	Try not to throw this offstage lol.");
	initTipImage(player_id.spr_inventory, 1, fa_left, 1, c_white, 0);
	initTipWords("Mini Bugingi:");
	initTipWords("Mini Bugingi is a slow moving projectile which will block all incoming projectiles. Mini Bugingi will only start moving forward once it land's on the ground and will have much less damage and knockback than the grounded version.
	When you get the mini bugingi try to throw it while at either mid range or long range so that they don't unintentionally break the airborne bugingi.");
	initTipImage(player_id.spr_inventory, 2, fa_left, 1, c_white, 0);
	initTipWords("Wrench:");
	initTipWords("Wrench is a pretty standard projectile which is good for just getting decent damage.
	Wrench is good in pretty much all cases. It can be great for edge guarding if you angle it backwards while throwing it since it stalls in midair for a short while or as just a good long ranged projectile in order to secure an approach.");
	initTipImage(player_id.spr_inventory, 3, fa_left, 1, c_white, 0);
	initTipWords("Dumbell:");
	initTipWords("The Dumbell spikes.
	You can also use this as a tool to hit an opponent slightly above you by holding the stick towards you while throwing it.");
	initTipImage(player_id.spr_inventory, 4, fa_left, 1, c_white, 0);
	initTipWords("Rage Ball:");
	initTipWords("The Rage ball is a green projectile that grows in size and damage the more damage you take.");
	initTipImage(player_id.spr_inventory, 5, fa_left, 1, c_white, 0);
	initTipWords("Bomb:");
	initTipWords("The Bomb is a projectile which will explode after a certain amount of time. While it is on the ground you can hit it in order to reposition it. You're also able to get damaged by the explosion yourself so be careful.
	A good way of hitting the bomb onto a platform is by doing falling Nair->Utilt.");
	
	initTip("Nspecial: Special Projectiles");
	initTipImage(player_id.spr_inventory, 7, fa_left, 1, c_white, 0);
	initTipWords("Ball:");
	initTipWords("The ball is a special projectile which you can only obtain by countering and hitting someone with Dspecial. It shares all the same stats as wrench except for damage and knockback which are increased.");
	initTipImage(player_id.spr_jack1, 0, fa_left, 1, c_white, 0);
	initTipWords("1000 Ton Weight:");
	initTipWords("The 1000 Ton Weight is a Jackpot projectile which combines the properties of the Dumbell and the 100 Ton Weight. It also does more damage and knockback but removes the ability to stun. Since the airborne version spikes now, you can throw it offstage without being too worried.");
	initTipImage(player_id.spr_jack2, 0, fa_left, 1, c_white, 0);
	initTipWords("Mega Bugingi:");
	initTipWords("The Mega Bugingi is a Jackpot projectile which is just a bigger version of the mini bugingi.");
	
	initTip("Nspecial: Misc");
	initTipWords("Projectile Angling:");
	initTipWords("While performing nspecial you can angle the projectile you're about to throw by tilting the joystick in a certain direction.");
	initTipWords("Projectile Storing:");
	initTipWords("While performing nspecial you can press the parry button to save the projectile for later.
	While a projectile is stored, Upon hitting a move you can cancel out of it with nspecial and throw the projectile you stored.");
	initTipImage(player_id.spr_wrench, -3, fa_left, 1, c_white, 3);
	
	initTip("Heat");
	initTipWords("By Dash Dancing you're able to build up heat. Doing this will increase your dash speed and jump height for a short while.");
	
	
	/*
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
	//1.15
	initPatch("1.15", "15 September 2021");
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Uspecial wont pull the camera down anymore");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- You can now shoot stored projectiles during Uspecial
	- Uspecial Base Knockback Reduced (10->7)
	- Fspecial startup frames reduced (34->28)");
	//1.15
	initPatch("1.15", "14 September 2021");
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fixed an issue with the Dash SFX (keyboard players now dont go deaf)");
	//1.14
	initPatch("1.13.1", "19 August 2021");
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Down Taunt sound now stops when you get hit");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Down Taunt now exists");
	//1.13
	initPatch("1.13", "19 August 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Dstrong hitpause scaling has been increased (.2->.9)
	- Bair hitpause scaling has been increased (.4->.75)
	- Bomb Explosion no longer has an angle flipper");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Down Taunt now exists");
	//1.12
	initPatch("1.12", "17 August 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Bomb Explosion now sends away from the center instead of towards it
	- Bomb Explosion now does more damage (10->18)
	- Bomb Explosion now does more knockback (8->9)
	- Bomb Explosion now does has more knockback scaling (0.8->1.1)
	- Bomb Explosion is now slightly bigger
	- You can now cancel taunt if you are holding a projectile
	- There are two new cheats in muno phone (You're now able to manually choose which projectile you will get)");
	initPatchWords_ext("Sound Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Nerfed the run sound");
	//1.11
	initPatch("1.11", "17 July 2021");
	initPatchWords("- While im here i might aswell add a few more colours");
	//1.10
	initPatch("1.10", "17 July 2021");
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Enemies now become visible again if you're hit during fspecial or dair
	- Dspecial projectile now overwrites the jackpot projectile");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Dspecial is now active for slightly longer
	- Dspecial will now activate upon hitting a projectile but wont store the special projectile unless it hits an enemy
	- Storing projectiles has a shorter cooldown [60->30]");	
	//1.9
	initPatch("1.9", "4 July 2021");
	initPatchWords_ext("Movement Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Reduced Dash Speed (12.8->12.3)
	- Jump Speed Reduced to 7.2
	- Double Jump Speed Reduced to 8
	- Increased Knockback Adjustment (1->1.1)
	- Air Friction Reduced (0.07->0.04)
	- Max Fall Reduced (10->8)
	");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fspecial now has more kbs (.8->1)
	- Fstrong now has more kbs (.8-1.2)
	- Ustrong now has more kbs (1->1.1)
	- Ustrong now goes through platforms
	- Dstrong now has more kbs (1->1.1)
	- Uspecial now has a smaller hitbox
	- Fspecial now has more knockback
	- You can now do the dtilt multihit with the right stick
	- You can now store the taunt projectile
	- You can now cancel fstrong into any special after enough time has passed
	(i.e. when you use it off the stage and cant get back)
	- You now loose your stored projectile on death");
	//1.8
	initPatch("1.8", "17 June 2021");
	initPatchWords_ext("Movement Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Bugingi now has 3 jumps, The third being the old double jump
	- Jump speed has decreased to 9.2
	- Dash turn time reduced (6->14)
	- Dash turn accel increased (1.5->2)
	- Dash start speed increased (0->3)
	- Dash start time reduced (15->10)
	- Ground friction Increased (.3->.6)
	- Waveland Friction Increased to 0.07");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added Projectile Gatling. If you have a projectile stored, you can now cancel any move after hitting someone to throw the projectile.
	- Utilt, Changed Angle (90->80)
	- Fair damage increased (5->6)
	- Utilt damage increased by 1
	- Extended Fspecial's hurtbox out a bit
	- Every Aerial now give a slight vertical boost");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added lore to the munophone
	- Added tips to the munophone
	- Added Combat for *breathes in*: Truml Codec, Anguish Kirby, Otto , Steve, Feri, Hikaru, Rat, TCO, Toon Link, Wall-E, Moonchild,
	Amber, Agent N, Dracula, Miiverse, Callie (kinda, i only did one path)
	- Added an Añi alt (atleast i tried to)
	- Added Trans alt for pride month");
	//1.7
	initPatch("1.7", "30 May 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Ustrong should connect slightly better
	- Dair Offstage now has more knockback");
	//1.6
	initPatch("1.6", "2 June 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- You can now change the speed of the rage ball by angling");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Replaced Taunt");
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fixed Weight's sprite teleporting around if you turn around before it hits the ground
	- Fixed Lognes Alt");
	//1.5
	initPatch("1.5", "30 May 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Emergency fix to nspecial cause im stupid");
	//1.4
	initPatch("1.4", "30 May 2021");
	initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Dspecial has less startup frames (8->4)
	- You now walk slightly faster
	- You can now angle the dspecial projectile");
	initPatchWords_ext("Cosmetic Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Added two more alts (Sackboy and Drosera)
	- Walking after images now always spawn on ur last location before teleporting
	- Added a small little animation to the hud icon when storing an item
	- Dumbell now has a destroy effect
	- Dspecial ball now has a destroy effect");
	initPatchWords_ext("Bug Fixes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Bomb should no longer make an error sound if an enemy hits it
	- Fixed colors.gml");
	//1.3
	initPatch("1.3", "30 May 2021");
	//initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Literally the same as the last patch but witha different move");
	//1.2
	initPatch("1.2", "30 May 2021");
	//initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Emergency patch to fix dair because of the stupid idiot that i am");
	//1.1
	initPatch("1.1", "30 May 2021");
	//initPatchWords_ext("Balance Changes:", fa_center, c_gray, 1, 0);
	initPatchWords("- Fixed a sprite having mixels EW
	- Fixed dash dancing doing a weird thing to the enemy player
	- Grabbing two people SHOULD HOPEFULLY MAYBE SOMETIMES only make the person you're grabbing invisible (possibly)");
	//1.0
	initPatch("1.0", "May 29, 2021");
	initPatchWords_ext("what", fa_center, c_white, 0, 1);
	
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
	
	// attack_update.gml
	initCheat("Change Projectile", "proj_override", [0, 1, 2, 3, 4, 5, 6, 7], ["Random","100 Ton Weight", "Mini Bugingi", "Wrench", "Dumbell", "Rage Ball", "Bomb", "Dspecial Projectile"], "Make it so NSPECIAL will always give you the projectile of your choosing");
	
	initCheat("Jackpot", "jack_override", [0, 1, 2, 3, 4], ["Random","Always On", "Always Off", "1000 Ton Weight", "Mega Bugingi"], "Make Jackpot Projectiles Always Occur, Never Occur or Pick one of your choosing");

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
	initAbout("About Bugingi: Lore", "Bugingi is a god of matter and is a member of a hivemind with the same name.
	They wonder the realm of the gods and observe, Learning how to create many different kinds of contraptions.
	
	Personality:
	Bugingi is mostly nonsensical. pretty much constantly spewing non sequitur statements and occasionally breaking the fourth wall.
	Despite this, Bugingi is mostly chilled out and doesnt really ever come off as agressive or anything.
	
	The Hivemind:
	The Bugingi Hivemind are a collection of small pink worms which come together and form larger humanoid creatures.
	They use their matter abilities to create a green shell around their body to give themselves a more appealing look.
	The more worms that come together the higher tier bugingi you will get. The one in rivals is a low tier Bugingi.
	
	The Hierarchy goes as follows:
	Bug - Lowest tier, is one of the projectiles that bugingi can throw out
	Worker - Second lowest tier, have a lot of shell but are generally dumber and weaker than soldiers. This is seen as one of the Jackpot Projectiles.
	Soldier - This is the form seen in rivals. Soldier bugingi are the most common and is the first tier to be able to display intelligence.
	Commander - Much stronger and more intelligent than the previous tier, a lot less common.
	Royal - Almost never seen, Royal bugingi generally stop creating weapons with matter and use the matter itself as a weapon.
	Queen - The queen is formed once every single worm congregates into one place.
	
	Backstory:
	Before coming a god, The hivemind were an incredibly invasive species.
	after eliminating life on their home planet, They would hitchike onto nearby space ships and invade their home planets.
	Due to Being a hivemind and the only living species on that planet. That planet's god soul was placed into the hivemind.
	Being a hivemind they all shared one soul, Which transported the entire species to the realm of the gods upon ascension.

	Becoming a god did not stop them however. They would continue to try to invade and eliminate other species.
	The catch being that they were fighting other gods now. They were completely powerless against the other gods.
	if they ever wanted to stand a fighting chance they would have to all combine into the queen.
	The only problem with that was how scattered the species was when transported to the realm of the gods.

	So they tried to all converge into one spot. But along the way something happened to them.
	They would observe many different gods along their journey. Being completely powerless ended up making them see other beings in a new light.
	They would grow attatched to the gods. Becoming ever curious about them. Slowly the bugingi would come to interact with these gods.
	forming friendships and learning about the universe. Eventually the time came where the Bugingi reached their conversion point.
	They have changed. The conversion was no longer for its original purpose to become all powerful.
	They spend a brief time as the queen taking one last moment in this form. At which they demerge and journey out again.
	Forever to wonder the realm.");
	
	
	initAbout("About Bugingi: Gameplay", "Bugingi is an unorthodox fighter that specializes in using random projectiles and strange movement in order to confuse your opponent.
	
	When in doubt, Press NSPECIAL. Nspecial throws out a completely random projectile at the opponent.
	Despite it being random you still have some influence over the projectile, for instance:
	You can angle the projectile by tilting the stick in certain directions.
	You can also store the projectile and see what projectile you were about to throw by pressing the parry button while perfoming NSPECIAL.
	
	Bugingi also has very strange movement. His dash takes a few frames to startup but once it does it's extremely fast.
	use this when you've confirmed a safe approach with a projectile or any other means.
	Bugingi's Third Jump is also very strange. It sends you up and down repeatedly before finally sending you up at the end.
	due to the different directions and speeds the jump can have, this is a great tool for performing aerials. Try it out for yourself to see what results you can achieve with it.");
	
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
	
	SPK_BUG = initSpeaker(1, "Bugingi", sprite_get("_bug_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "literally what is that");
	initCodecPage(SPK_ALTO, 0, 0, "Beats me");
	initCodecPage(SPK_BUG, 1, 0, "Hmm..");
	initCodecPage(SPK_BUG, 1, 0, "I think i might know what it is");
	initCodecPage(SPK_BUG, 0, 0, "That's bugingi");
	initCodecPage(SPK_BUG, 0, 0, "He has this really stupid dumb gimmick where he throws out a random projectile out during nspecial");
	initCodecPage(SPK_BUG, 0, 0, "He's also able to store the projectile for later, this is good for you because you'll know what he's about to throw out");
	initCodecPage(SPK_BUG, 0, 0, "Also his dash and double jump are really stupid lol. Chances are the person playing as him doesnt know how to use them properly");
	initCodecPage(SPK_TRUM, 0, 0, "oh, thanks for the help bugingi");
	initCodecPage(SPK_BUG, 0, 0, "No problem fam");
	initCodecPage(SPK_ALTO, 0, 0, "what");
	
	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_bobble");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got bugingigigingigingigi'd";
	
}



if !phone_lightweight{



	// Feri taunt costume
	
	if pho_has_feri_taunt{
		
		sprite_change_offset("_bug_feri_costume", 84, 114);
		feri_costume = sprite_get("_bug_feri_costume");
		
	}
	
	
	
	// Hikaru fakie title
	
	if pho_has_hikaru_fak{
		
		Hikaru_Title = "Bugingi";
		
	}
	
	
	
	// Rat all-out quote
	
	if pho_has_rat_allout{
		
		personaQuips[10] = "Bugingi";
		
	}
	
	
	
	// The Chosen One sketch
	
	if pho_has_tco_sketch{
		
		tcoart = sprite_get("_bug_tco");
		
	}
	
	
	
	// Abyss Hime death sprite
	
	if pho_has_ahime_dead{
		
		abyssHime_deathspr = sprite_get("hurt");
		
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
		
		walle_taunt_sound = sound_get("Bugingi Mode");
		walle_taunt_type = 1;
		
	}
	
	
	
	// Amber's plushie and hug
	
	if pho_has_amber_love{
		
		plushForAmber = sprite_get("_bug_plush");
		
		// Amber interaction variables
		amber_herObj = noone; // The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
		amber_thisHugSprite = sprite_get("_bug_hug");
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
		
		sprite_change_offset("_bug_hug", 32, 84);
		sprite_change_offset("amber_hug", 32, 62);
		
	}
	
	
	
	// Moonchild music
	
	if pho_has_moon_music{
		
		childsupport = true; // this is so sad
		
	}
	
	
	
	// Agent N codec
	
	if pho_has_agentn_cdc{
		
		ncode1 = "The Hivemind";
		ncode2 = "A god of matter and an ex-destroyer of worlds";
		ncode3 = "Now extremely passive with a positive outlook";
		
	}
	
	
	
	// Dracula dialogue
	
	if pho_has_drac_codec{
		
		dracula_portrait = sprite_get("_bug_dracula_portrait");
		dracula_portrait2 = asset_get("empty_sprite");
		dracula_portrait3 = asset_get("empty_sprite");
		var page = 0;
		
		// Page 0
		dracula_speaker[page] = 0;
		dracula_text[page] = "Ah, It seems a Bugingi has wandered into my domain";
		page++;
		
		// Page 1
		dracula_speaker[page] = 0;
		dracula_text[page] = "I assume you come here to research the countless technology I have here in my castle";
		page++;

		// Page 2
		dracula_speaker[page] = 1;
		dracula_text[page] = "Yeah something like that";
		page++;
		
		// Page 3
		dracula_speaker[page] = 1;
		dracula_text[page] = "I think you'll make a perfect actor in my brand new movie";
		page++;
		
		// Page 4
		dracula_speaker[page] = 1;
		dracula_text[page] = "You'll be a star, Dracula";
		page++;
		
		// Page 5
		dracula_speaker[page] = 0;
		dracula_text[page] = "... What?";
		page++;
		
		// Page 6
		dracula_speaker[page] = 1;
		dracula_text[page] = "I call it";
		page++;
		
		// Page 7
		dracula_speaker[page] = 1;
		dracula_text[page] = "WESRWE ,MRBHJIWEHFIJUKL	q";
		page++;
		
		// repeat...
		
	}
	
	
	
	// Miiverse post
	
	if pho_has_miivs_post{
		
		sprite_change_offset("_bug_miiverset", 60, 30);
		miiverse_post = sprite_get("_bug_miiverse");
		
	}
	
	
	
	// Mt Dedede title
	
	if pho_has_dede_title{
		
		arena_title = "The Hivemind";
		arena_short_name = "Bugingi";
		
	}
	
	
	
	// Soulbound Conflict
	
	if pho_has_soul_title{
		
		battle_text = "* OMG IS THAT BUGINGI???";
		
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