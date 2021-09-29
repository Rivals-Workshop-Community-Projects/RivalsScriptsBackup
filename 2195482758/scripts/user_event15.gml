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
		string(phone.stage_id == 102090),
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
			
			    swallowed = 0;
			    var ability_spr = sprite_get("kirby");
			    var ability_hurt = sprite_get("kirby_hurt");
			    var ability_icon = sprite_get("kirbyicon");
			    var kirb_sound = sound_get("tenru_firecracker");
			    var fc_kirby = sprite_get(fc_string);
			    with enemykirby {
			        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
					set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
					set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
					set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
					set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
					set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
					set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1 )
					
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2)
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9)
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8)
					
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0)
					
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 1);
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5)
					 
					set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
					set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 18);
					set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
					set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 7);
					set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5)
					
					set_num_hitboxes(AT_EXTRA_3, 2);
					
					// Single Firecracker hitbox
					set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX,1);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
					set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
					set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
					set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
					set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -40);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
					set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 5);
					set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 2);
					set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
					set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
					set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
					//set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1);
					//set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, fc_kirby);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.6);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.08);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
					set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
					set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
					
					
					// Explosion hitbox
					set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
					set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 5);
					set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 90);
					set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 90);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 4);
					set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 2);
					set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 90);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.6);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GRAVITY, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_AIR_FRICTION, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_TECHABLE, 0);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_UNBASHABLE, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);
					set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
					set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 13);
					set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, 16);
			        
			        newicon = ability_icon
			    }
		}
		if enemykirby != undefined { //if kirby is in a match & swallowed
		var fc1 = sound_get( "tenru_fc1" );
		var fc2 = sound_get( "tenru_fc2" );
		var k_firecracker_angle = firecracker_angle;
		var k_fc_count = fc_count;
		var k_default_firecracker_angle = 45;
		var k_fc_smoketimer = fc_smoketimer;
		var k_fc_max_hold_time = fc_max_hold_time;
		var k_fc_string = fc_string;
		var k_firecracker_speed = firecracker_speed;
		
		var k_fc1spr = sprite_get("firecracker_single");
		var k_fc2spr = sprite_get("firecracker_double");
		var k_fc3spr = sprite_get("firecracker_triple");
		
		with oPlayer { //Run through all players
			if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
			
				k_firecracker_angle = 45
				print_debug(string(k_firecracker_angle));
				// Reset angle
				if(window == 1 && window_timer == 1)
				{
					k_firecracker_angle = k_default_firecracker_angle;
					k_fc_count = 1;
					k_fc_smoketimer = 6;
				}
				
				if(!joy_pad_idle)
				{
					// Set angle to joystick
					k_firecracker_angle = joy_dir;
					
					if(abs(k_firecracker_angle-0)<10) k_firecracker_angle = 30;
					if(abs(k_firecracker_angle-180)<10) k_firecracker_angle = 150;
				   
				  // Manage facing left and pulling back
					if(k_firecracker_angle > 90 && k_firecracker_angle < 270 && spr_dir == -1)
					{
				  		k_firecracker_angle = 180 - k_firecracker_angle;
					}
					else if(spr_dir == -1)
					{
						k_firecracker_angle = 102;
					}
					else if(k_firecracker_angle > 90 && k_firecracker_angle < 270 && spr_dir == 1)
					{
						k_firecracker_angle = 102;
					}
					
			
					
					if(spr_dir = -1)
					{
			
						if(k_firecracker_angle > 90 && k_firecracker_angle < -90)
							k_firecracker_angle = 90;
					}
				}
			    print_debug(string(k_firecracker_angle));	
			
			    // Throw firecracker
				var k_throw_speed = k_firecracker_speed;
				// Set firecracker speed
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, k_throw_speed * -dsin(k_firecracker_angle));
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, k_throw_speed * dcos(k_firecracker_angle));
				
				// Set firecracker sprite
				set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, k_fc3spr);
				
			
			
			}
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
		//Amber hug compatibility
		if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
		{
		    with (amber_herObj) //Access Amber's player object and set the values
		    {
		        //Set the window values for Amber's hugging. DO NOT change Amber's sprites
		        //in the attack_values
		        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
		       
		    	// Enter
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 44);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 8);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
		    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
		    	
		    	// Loop
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_TYPE,9);
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_LENGTH,60);
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAMES,11);
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAME_START,8);
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_HAS_SFX,0);
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_VSPEED,0);
		    	set_window_value(AT_EXTRA_3,2,AG_WINDOW_VSPEED_TYPE,0);
		    	
		    	// Exit
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_TYPE,1);
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_LENGTH,24);
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_ANIM_FRAMES,4);
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_ANIM_FRAME_START,19);
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_HAS_SFX,0);
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_VSPEED,0);
		    	set_window_value(AT_EXTRA_3,3,AG_WINDOW_VSPEED_TYPE,0);
				
		        //Important. Puts Amber in startup hug state (2).
		        //Editing this variable not recommended
		        amberHugState = 2; 
		    }
		    //Important. Puts this character in startup hug state (2).
		    //Editing this variable not recommended
		    oPlayerHugAmberState = 2;
		    
		    //Set this bool back to false so that this doesn't loop
		    amber_startHug = false;
		}
	}
	
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
			
			// NOTE: Using sprite_get() does not work here, so sprites must be saved as
			// variables. See init.gml for an example of this with spr_nspecial_proj.
			
			initTip("NSpecial: Firecrackers");
			initTipWords("Hold down special to charge up to three firecrackers, then release to throw! Firecrackers will briefly stun enemies, and the more you charged, the longer the stun! 
			
			If you press any other button while charging the firecrackers, Tenru will throw them with a backspin! Backspun firecrackers ignore platforms, and bounce backwards! Choose whichever one suits the situation.");
			
			// Muno pls
			if(stage_id == 102090)
			{
				initTipImage_ext(player_id.spr_nspecial, 2, fa_top, 1, c_white, 4, 44,	 90, 194, 0);
				initTipImage_ext(player_id.spr_nspecial, 10, fa_top, 1, c_white, 4, 184, 90, 194, 0);
				initTipImage_ext(player_id.spr_nspecial, 14, fa_top, 1, c_white, 4, 304, 90, 194, 0);
				initTipImage_ext(player_id.spr_nspecial, 21, fa_top, 1, c_white, 4, 424, 90, 194, 0);
			}
			else
			{
				initTipImage_ext(player_id.spr_nspecial, 2, fa_top, 1, c_white, 4, 44, 90,   144, 0);
				initTipImage_ext(player_id.spr_nspecial, 10, fa_top, 1, c_white, 4, 184, 90, 144, 0);
				initTipImage_ext(player_id.spr_nspecial, 14, fa_top, 1, c_white, 4, 304, 90, 144, 0);
				initTipImage_ext(player_id.spr_nspecial, 21, fa_top, 1, c_white, 4, 424, 90, 144, 0);
			}
			//initTipImage_ext(player_id.spr_nspecial, 10, fa_left, 1, c_white, 0, 64, 90, 124, 40);
		
			
			initTip("FSpecial: Side Tail Grab");
			initTipWords("Grab your opponent, and then hold a direction to throw them either:
			- up
			- down
			- back
			- forward
			
			Also works on your own firecrackers! In fact, grabbing your own firecracker and throwing it will make it stun enemies longer, as well as making it trancendent!
			
			By default, Tenru will also grab the stage with this move, flinging you sideways. Hold down special or parry when grabbing to ignore the stage if you just want to grab a player or projectile.
			
			Also, if you hold special or parry when you have a projectile grabbed, you will fling it behind you and shoot yourself forward!
			
			You can also angle the stick up or down when doing the move to change the grab angle!");
			initTipImage_ext(player_id.spr_fspecial, -3, fa_left, 1, c_white, 0,100,100,140,100);
			
			initTip("USpecial: Up Tail Grab");
			initTipWords("Grab whatever's above you, be it a player, projectile, or stage element. Tenru will then fling whatever he grabbed down while pulling himself up.
			
			If you throw a firecracker straight up, you can then grab it with upspecial! Use this when recovering or when you need a lot of vertical height. It also makes the firecracker trancendent on the way down!
			
			Like Fspecial, holding parry or special while doing this move will cause it to ignore stage elements.
			
			You'll notice Tenru gets a respectable amount of height when using this move. You can use this small jump to stay in the air a little longer or do small recoveries. Be careful though, the more you use it in the air the less height you get for it!
			
			You can cancel the endlag of this move into down special if you land it on an opponent!");
			initTipImage(player_id.spr_uspecial, 9, fa_left, 1, c_white, 0);
			
			initTip("DSpecial (ground): Spin Flip");
			initTipWords("When used on the ground, DSpecial will be a forward facing flip! You can control the landing position slightly by moving. You can also fall through platforms by holding down.
			
			You can cancel this move during the jump with any aerial or special, try out what combos you can land! My favorite it using it to approach while canceling with down air.
			
			This move has a very fast pop-up hitbox right at ther start, use this to cancel into DSpecial (air) for a DI chase combo!
			
			Finally, you can do a mario-style double jump by using this move again just as you land to jump even higher!");
			initTipImage(other.spr_dspecial, -3, fa_left, 1, c_white, 3);
			
			initTip("DSpecial (air): Power Stomp");
			initTipWords("Use this move in the air to plummet down and stomp enemies at high speeds! You have a little control of yourself in the air. You can also fall through platforms by holding special.
			
			If you hit this move, Tenru will jump off his target and send them downwards! You can also angle the stick after landing to change the launch angle and jump direction. It also gives you your double jump back.
			
			While falling, you can cancel the moves with a jump if you have one, and airdodge, or another special.
			
			When used as a cancel out of DSpecial (ground) or when the opponent is already in hitstun, Tenru won't jump as high off an opponent and the knockback will be slightly higher!
			
			The startup portion of this move conserved momentum, so try using it at high speeds!");
			initTipImage(other.spr_dspecial_air, -3, fa_center, 1, c_white, 0);
		
			
			initTip("UPtilt Multihits");
			initTipWords("Uptilt has 3 hits, just like jab.
			
			Hold attack to go into uptilt2 after uptilt1. Keep holding it to keep spinning Tenru's tail as a trap.
			
			Let go of attack and press it again to do a finisher out of uptilt2. This is also done automatically of the move lands.
			
			You can also jump cancel uptilt2 if you land it. Choosing whether to let uptilt2's spin finish for max damage, finish it early by forcing the finisher, or canceling with a jump are all key to mastering this move! Watch your opponent as you make your choice.");
			initTipImage(other.spr_utilt, -3, fa_center, 1, c_white, 0);
			
			initTip("DAir Double Jump");
			initTipWords_ext("Landing dair gives you your double jump back.",fa_center,c_white,0,0);
			initTipImage(other.spr_dair, -3, fa_center, 1, c_white, 1);
			initTipWords_ext("Now get out there and get those RISKY PLAYS", fa_center, c_red, 0, 0);
			
		
			
			initTip("Fair sweetspots");
			initTipWords("Fair has a sweetspot on Tenru's feet where it will deal max damage and knockback.
			
			However, this only lasts for the first few frames of the move, so both timing and position are key. You can also wait for the weaker hitbox on purpose and use this move as a sex kick.");
			initTipImage(player_id.spr_fair, -3, fa_center, 1, c_white, 0);
			initTipWords_ext("hee hee sex kick", fa_right, c_white, 0, 0);
			
			initTip("Fstrong Movement");
			initTipWords("FStrong moves you forward a little, but that's not even the good part.
			
			You can move a little during this moves endlag! Just input a direction to hop that way as the move ends. Use this to bait or escape punishes.
			
			This move also features a dash attack cancel, where pressing fstrong 3 frames into the startup of dash attack will move the momentum of dash attack to this move.");
			initTipImage(player_id.spr_fstrong, -3, fa_center, 1, c_white, 3);
			
			initTip("Starter Combos");
			initTipWords("Easy:
			
			Side Special->Upstrong
			Neutral Special->Side Special
			Up Special->Down Special (air)
			Grounded Down Special->Aerial Down Special
			Dtilt->Uptilt1-3
			
			Hard:
			
			Landing Upair1->Upstrong
			Landing Nair->Dstrong
			Dtilt->uptilt1->uptilt2->jump cancel upair->double jump upair->Upspecial->Downspecial (air)
			
			Animated gifs on the steam page");
		
			
			initTip("Tenru's Lore");
			initTipWords_ext("Chapter 1", fa_center, c_gray, 0, 0);
			initTipWords("Tenru is a prankster and a tinkerer, living by himself in a jungle. He passes the time by fiddling with new pyrotechnics or mechanisms, and playing pranks on innocent bystanders.");
			initTipWords("After toying with a strange smoke-cloaked hyena who wandered near his treehouse, the two become unexpected friends, and Tenru decides to travel with him for a while. The journey of Tenru and Forsburn begins.");
			initTipWords_ext("Chapter 2", fa_center, c_gray, 0, 0);
			initTipWords("Forsburn's and Tenru's journey eventually comes to a close, and Forsburn states me must return to his home in the Blazing Hideout. Unwilling to leave his friend, and thrilled by the joy of executing a plan he has begun to concoct, Tenru accompanies Forsburn in secret to the hideout");
			initTipWords("Tenru requests to join the monks as a member of the Blazing Hideout. Knowing that only those who can manipulate fire in some form are allowed, Tenru puts on a large show of faking control over flame using his knowledge of pyrotechnics. Thouroughly fooled, the monks allow him entry, dazzled by his performance.");
			initTipWords_ext("Chapter 3", fa_center, c_gray, 0, 0);
			initTipWords("Forsburn is shocked by Tenru's sudden appearance in his home, but welcomes the trickster. They share the secret of Tenru's deceipt, and begin living together as friends.");
			initTipWords("Many months pass, and it becomes harder and harder for Tenru to maintain his facade as the monks demand to experience more and more of his abilities. Eventually, Tenru's hidden pyrotechnic workshop is discovered, and his secret is revealed.");
			initTipWords_ext("Chapter 4", fa_center, c_gray, 0, 0);
			initTipWords("Tenru is exiled from the blazing hideout. Forsburn can do naught but watch as his friend is branded over the eye as a trickster and liar. Exhausted and saddened, Tenru returns to the jungle.");
			initTipWords("On return to his old home, Tenru dons a mask to hide the mark given to him by the monks, and gradually returns to his old lifestyle, now constantly seeking battle in an attempt to temper himself to the level of the monks who exiled him. He does not seek revenge, only the knowledge that he has surpassed them using his own methods.");
			
			
			initTip("Additional Information");
			initTipWords("Thanks for playing Tenru! If you like him, please leave a like on the steam page. 
			
			The steam page also has lots of animated gifs and extra info on combos and stuff, so go check that out for more info on how to play Tenru.
			
			You can also contact me on discord at Selrate#4428 or join the official Tenru discord at https://discord.com/invite/WXSVZX8.
			
			
			
			
			
			
			
			
			
			
			It's a secret
			
			Down + Taunt
			Taunt while attacking");
			initTipImage(player_id.spr_taunt2, -5, fa_center, 1, c_white, 0);
			
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
pho_has_trum_codec = 1;	// Trummel & Alto codec (can't be bothered learning the new system yet, will do this later)
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
pho_has_tink_picto = 1;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 0; // Wall-E's music
pho_has_amber_love = 1; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 1; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 1;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 1;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 1; // Text for the Soulbound Conflict stage
pho_has_been_found = 1; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
pho_has_pkmn_image = 0; // Battle sprite for Pokémon Stadium ( I have this but it's in the stage files itself, not mine )
pho_has_daro_codec = 1; // Dialogue for the Daroach boss fight



if (object_index == asset_get("cs_playerbg_obj")){
	num_alts = 23; // Number of alt costumes; controls how many appear on the CSS
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

phone.taunt_hint_x = 40;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.






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
	
	initPatch("1.x", "69 Smarch, 0420");
	initPatchWords("Just look at the steam page jeez");

	
	initPatch("1.0", "30 Mebruary, 20XX");
	initPatchWords_ext("OOK OOK MONKE!", fa_center, c_red, 0, 1);
	initPatchImage(other.spr_idle, 34, fa_center, 1, c_white, 1);
	
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
	initCheat("PhoneSkin", "cheat_phone_skin", [0, 1], ["Banana", "Firecracker"], "Change the current phone skin");
	initCheat("Party", "cheat_party", [0, 1], ["No Party.", "Party!"], "Wear a party hat");
	
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
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_TENRU = initSpeaker(1, "Tenru", sprite_get("_pho_speak"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_ALTO, 7, 0, "Oh no.");
	initCodecPage(SPK_TENRU, 0, 0, "Oh YES!");
	initCodecPage(SPK_TRUM, 6, 0, "huh");
	initCodecPage(SPK_ALTO, 8, 0, "That's Tenru.
	If he's here, then...
	well...");
	initCodecPage(SPK_ALTO, 0, 0, "It would be in our best interests to stop sharing that trait with him.
	Preferrably at high speeds.");
	initCodecPage(SPK_ALTO, 9, GIM_SKIP, "He used to be a monk from the Blazing Hideout, but now he is most known for-");
	initCodecPage(SPK_TENRU, 1, 0, "HEEEEEEEEEEEEEEEEEEEEEEEE EEEEEEEEEEEEEEEEEEEEEEEEE EEEEEEEEEEEEEEEEEEEEEEEEE EEEEEEEEEEEEEEEEEEEEEEEEE EEEEEEEEEEEEEEEEEEEEEY!!!!!!");
	initCodecPage(SPK_TENRU, 1, 0, "ARE YOU GONNA SIT THERE TALKING ABOUT ME ALL DAY, OR ARE WE GONNA FIGHT!?");
	initCodecPage(SPK_TRUM, 2, 0, "rude");
	initCodecPage(SPK_ALTO, 4, 0, "Very. Well, this loudmouthed prankster relies on rushing his opponents down.");
	initCodecPage(SPK_ALTO, 9, 0, "He also struggles to gain height away from a wall. Keep him at a distance, and far offstage.");
	initCodecPage(SPK_TENRU, 0, 0, "Big talk coming from a washed-up Lakitu and a slug with no fashion sense.");
	initCodecPage(SPK_TRUM, 2, 0, "hey im the most dapper snail around");
	initCodecPage(SPK_ALTO, 10, 0, "Oh THAT was uncalled for. Prepare for a pummelling!");
	initCodecPage(SPK_TENRU, 2, 0, "Now that's more like it!");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	// Otto
	otto_bobblehead_sprite = sprite_get("otto");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve had had enough monkeying around";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	// Feri
	feri_costume = sprite_get("feri_costume_tenru");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	// Hikaru
	Hikaru_Title = "Deceitful Yokai";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "Looks like you're taking a nosedive!"
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	// TCO
	tcoart = sprite_get("TCO");
	
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
	
	// Amber
	plushForAmber = sprite_get("plush")

	
	//Amber interaction variables
	amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
	amber_thisHugSprite = sprite_get("tenru_hug");
	amber_herHugSprite = sprite_get("amber_hug");
	amber_startHug = false; //This variable is set true from Amber's scripts
	amber_thisSpriteInFront = true; //When true, this character's sprite is rendered over Amber's sprite
	amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true
	
	amber_hugStartPos[0] = 62; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
	amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction
	
	amber_hugExitPos[0] = 62; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
	amber_hugExitPos[1] = 0; //The y target offset point.
	
	//The x target offset positions will inherit the character's spr_dir when this is true.
	//Set this to true for character interactions that face toward each other such as hugging
	//Set this to false for centered interaction animations
	amber_useSprDirOffset = true; 
	
	amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
	amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop
	
}



// Moonchild music

if pho_has_moon_music{
	
	childsupport = true; // this is so sad
	
}



// Agent N codec

if pho_has_agentn_cdc{
	
	// Agent N
	nname = "Tenru"
	
	ncode1 = "Monkey."
	ncode2 = "Loud and obnoxious"
	ncode3 = "Destroy on sight."
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
	//Dracula support
	dracula_portrait = sprite_get("dracula_portrait");
	dracula_portrait2 = asset_get("empty_sprite");
	dracula_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	//Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "Oh.";
	page++;
	
	//Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "It's y-";
	page++;
	
	//Page 2
	dracula_speaker[page] = 1;
	dracula_text[page] = "It's me!";
	page++;
	
	//Page 3
	dracula_speaker[page] = 0;
	dracula_text[page] = "... [shake]";
	page++;
	
	//Page 4
	dracula_speaker[page] = 0;
	dracula_text[page] = "You know, I'm not really in the mood for this. Perhaps you can-";
	page++;
	
	//Page 5
	dracula_speaker[page] = 1;
	dracula_text[page] = "wHaT iS a MaN!?";
	page++;
	
	//Page 6
	dracula_speaker[page] = 0;
	dracula_text[page] = "?";
	page++;
	
	//Page 7
	dracula_speaker[page] = 1;
	dracula_text[page] = "A mIsErAblE bUnCh Of AmAtEuRs WhO KeEp ShOwInG uP aNd BeAtInG mE uP!";
	page++;
	
	//Page 8
	dracula_speaker[page] = 1;
	dracula_text[page] = "That's you.";
	page++;
	
	//Page 9
	dracula_speaker[page] = 1;
	dracula_text[page] = "That's how you talk.";
	page++;
	
	//Page 10
	dracula_speaker[page] = 0;
	dracula_text[page] = "[glass]..!";
	page++;
	
	//Page 11
	dracula_speaker[page] = 0;
	dracula_text[page] = "[shake] On second thought, I can't think of anything I'd rather be doing!";
	page++;
	
	//Page 12
	dracula_speaker[page] = 1;
	dracula_text[page] = "Couldn't have said it better myself.";
	page++;
	
}



// Miiverse post

if pho_has_miivs_post{
	
	// Miiverse
	miiverse_post = sprite_get("miiverse");
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	// Mt dedede
	arena_title = "The Scrappy Prankster";
	arena_short_name = "Tenru";
	
}



// Soulbound Conflict

if pho_has_soul_title{
	

	// Soulbound conflict
	battle_text = "You feel an urge to itch your nose...";
	
}



// Trial Grounds

if pho_has_been_found{

	// Trial Grounds
	guiltySprite = sprite_get("dang");
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	sprite_change_offset("last_resort", 27, 39);
	resort_portrait = sprite_get("last_resort");
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	// I think it's in the stage be default?
	pkmn_stadium_front_img = sprite_get("2195482758_front");
	pkmn_stadium_back_img = sprite_get("2195482758_back");
	pkmn_stadium_name_override = "Tenru";
	
}



// Daroach dialogue

if pho_has_daro_codec{
	
	//Daroach support
	daroach_portrait = sprite_get("daroach_portrait");
	daroach_portrait2 = asset_get("empty_sprite");
	daroach_portrait3 = asset_get("empty_sprite");
	page = 0;
	
	//Page 0
	daroach_speaker[page] = 0;
	daroach_text[page] = "Well that was impressive.";
	page++;
	
	//Page 1
	daroach_speaker[page] = 0;
	daroach_text[page] = "I've never seen a slingshot that large, much less someone stupid enough to try and use it.";
	page++;
	
	//Page 2
	daroach_speaker[page] = 0;
	daroach_text[page] = "May I ask, what persuaded you to, *ahem*, 'travel' to my great airship?";
	page++;
	
	//Page 3
	daroach_speaker[page] = 1;
	daroach_text[page] = "Hey, something this flashy showing up out of nowhere has gotta have some strong fighters on board!";
	page++;
	
	//Page 4
	daroach_speaker[page] = 1;
	daroach_text[page] = "And by the look of you, I was right! Let's see what you've got!";
	page++;
	
	//Page 5
	daroach_speaker[page] = 0;
	daroach_text[page] = "[laugh]";
	page++;
	
	//Page 6
	daroach_speaker[page] = 0;
	daroach_text[page] = "Well you're right of course, I *am* extraordinarily powerful.";
	page++;
	
	//Page 7
	daroach_speaker[page] = 0;
	daroach_text[page] = "But how about we sweeten the deal? Beat me, and I'll let you pick one item from our last haul.";
	page++;
	
	//Page 8
	daroach_speaker[page] = 0;
	daroach_text[page] = "Lose, however, and I'll be taking those illustrous earrings of yours!";
	page++;
	
	//Page 9
	daroach_speaker[page] = 1;
	daroach_text[page] = "Hey, if it'll make you put more effort into the fight, I'll throw my bracelets in as well!";
	page++;
	
	//Page 10
	daroach_speaker[page] = 0;
	daroach_text[page] = "[laugh]";
	page++;
	
	//Page 11
	daroach_speaker[page] = 0;
	daroach_text[page] = "[shake] Now that's what I like to hear!";
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