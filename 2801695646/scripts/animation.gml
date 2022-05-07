
/* IMPORTANT REMINDER FOR CODING:
When working with animation frames, pretend that the sprites don't have
alt costume variants; Treat them like regular sprite sheets.

Muno's function will take care of the rest, and convert the sprites to the
proper costumes. As long as you run all your custom code BEFORE Muno's
"process_form_sprite" function, you'll be fine.*/

var hold_type = dict_equipment[inv_firearm].hold_type;
var image_index_old = image_index;												// Save the image index.

//=========================================================
// INTRO
//=========================================================
if (state == PS_SPAWN) {
    if (introTimer < introAnimCount && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        var num_frames = image_number / num_sprite_sets;                                // Divides the sprite animation length by the number of alt costumes.
		var offset = num_frames * current_sprite_set;                                   // The animation starting frame offset.
		
		var img_looped = image_index % num_frames + offset;                             // For looped animations
        
        sprite_index = sprite_get("idle");
        image_index = img_looped;
    }
}



//=========================================================
// CHANGE PLAYER SPRITES BASED ON WEAPON HOLD TYPE
//=========================================================

var _box_transition_state = get_gameplay_time() < (sna_box_equip_time + sna_box_equip_duration);	// Whether or not the box being equipped is in the transition state.

// Box animations
if (sna_box_is_equipped) {														// If the box is equipped...
	switch (state) {
		case PS_IDLE:
	        sprite_index = sprite_get("idle_box");
	        image_index = image_index_old;
		break;
		case PS_WALK:
			sprite_index = sprite_get("walk_box");
	        image_index = image_index_old;
		break;
		
	    case PS_WALK_TURN:
	        sprite_index = sprite_get("walkturn_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_DASH_START:
	        sprite_index = sprite_get("dashstart_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_DASH:
	        sprite_index = sprite_get("dash_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_DASH_TURN:
	        sprite_index = sprite_get("dashturn_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_DASH_STOP:
	        sprite_index = sprite_get("dashstop_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_JUMPSQUAT:
	        sprite_index = sprite_get("jumpstart_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_FIRST_JUMP:
	    case PS_IDLE_AIR:
	        sprite_index = sprite_get("jump_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_DOUBLE_JUMP:
	    	sprite_index = sprite_get("doublejump_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_WALL_JUMP:
	    	sprite_index = sprite_get("walljump_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_LAND:
	        sprite_index = sprite_get("land_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_HITSTUN:
	    case PS_HITSTUN_LAND:
	    case PS_TUMBLE:
	    	sprite_index = sprite_get("hurt_box");
	        image_index = image_index_old;
	    break;
	    
	    case PS_ATTACK_GROUND:                                                      // if in the attack state...
	    case PS_ATTACK_AIR:
	    	switch(attack){
	    		case AT_TAUNT:
	        	case AT_TAUNT_2:													// Inventory selection
	        	case AT_EXTRA_1:													// Crouching
	        		sprite_index = sprite_get("idle_box");
			        image_index = image_index_old;
	        	break;
	    	}
	    break;
	}
}

// Hold type animations
else {																			// If the box is NOT equipped...
	switch (state){
	    case PS_IDLE:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("idle_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("idle_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_WALK:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("walk_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("walk_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_WALK_TURN:
	       // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("walkturn_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("walkturn_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_DASH_START:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("dashstart_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("dashstart_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_DASH:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("dash_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("dash_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_DASH_TURN:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("dashturn_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("dashturn_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_DASH_STOP:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 1:	// Pistol
	        		sprite_index = sprite_get("dashstop_pistol");
	        		image_index = image_index_old;
	        	break;
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("dashstop_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_JUMPSQUAT:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("jumpstart_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_FIRST_JUMP:
	    case PS_IDLE_AIR:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("jump_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_LAND:
	        // Weapon Equipped
	        switch (hold_type) {
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("land_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_ROLL_BACKWARD:
	    case PS_TECH_BACKWARD:
	        switch (hold_type) {
	        	
	        	case 2:	// Rifle
	        		sprite_index = sprite_get("roll_backward_rifle");
	        		image_index = image_index_old;
	        	break;
	        
	        }
	    break;
	    
	    case PS_ATTACK_GROUND:                                                      // if in the attack state...
	    case PS_ATTACK_AIR:
	        switch (attack){
	        	case AT_EXTRA_3: // Cover State
			    	// Weapon Equipped
			        switch (hold_type) {
			        	
			        	case 1:	// Pistol
			        		sprite_index = sprite_get("cover_pistol");
			        		image_index = image_index_old;
			        	break;
			        	case 2:	// Rifle
			        		sprite_index = sprite_get("cover_rifle");
			        		image_index = image_index_old;
			        	break;
			        
			        }
			    break;
	            
	            case AT_FSPECIAL: // Aiming Firearm
					
					// Cover transition sprites
					if (sna_is_in_cover) {													// If Snake is in cover...
						switch (window) {
							case 1: // Startup
							case 8: // Endlag
								switch (hold_type) {										// Get the hold type.
						        	case 1:	// Pistol
						        		sprite_index = sprite_get("cover_pistol");			// Change the sprite to the cover sprite.
						        	break;
						        	case 2:	// Rifle
						        		sprite_index = sprite_get("cover_rifle");			// Change the sprite to the cover sprite.
						        	break;
						        }
						        image_index = 5;
							break;
						}
					}
					
					// Aiming Sprites
					else {																// If Snake is NOT in cover...
						// Update limbs image_index
						var _spr_arms_f = dict_equipment[inv_firearm].spr_arms_f;
						if (_spr_arms_f == noone) break;
						
						image_index_arms = image_index + ((sprite_get_number(sprite_get(_spr_arms_f)) / num_sprite_sets) * current_sprite_set);		// Set the image index for the arms.
						image_index_equipment = image_index;		
					}
					
				break;
	        	
	        }
	    break;
	    
	}
}



//=========================================================
// OFFSET GRABBED PLAYER SPRITE
//=========================================================

//----------------------------------------------------------------
// Visually offset the grabbed player, based on the image index.
//----------------------------------------------------------------

if (instance_exists(sna_grabbed_playerid) && state == PS_ATTACK_GROUND) {		// If we have a grabbed player, and we're attacking...
	switch(attack){
		case AT_NTHROW:															// Set the visual grab offset.
			switch(image_index){
				
				// Grab Start
				case 6:
				case 7:
					sna_grabbed_playerid.draw_x = 2 * spr_dir;
				break;
				
				// Drag
				case 9:
					sna_grabbed_playerid.draw_x = 2 * spr_dir;
				break;
				
				// Turn
				case 14:
					sna_grabbed_playerid.draw_x = -36 * spr_dir;
				break;
				case 15:
					sna_grabbed_playerid.draw_x = -38 * spr_dir;
				break;
				case 16:
					sna_grabbed_playerid.draw_x = -34 * spr_dir;
				break;
				case 17:
					sna_grabbed_playerid.draw_x = -20 * spr_dir;
				break;
				case 18:
					sna_grabbed_playerid.draw_x = -2 * spr_dir;
				break;
				
				// Interrogate
				case 21:
				case 22:
					sna_grabbed_playerid.draw_x = -2 * spr_dir;
				break;
				
				// Chokehold
				case 23:
					sna_grabbed_playerid.draw_x = 2 * spr_dir;
				break;
				case 24:
					sna_grabbed_playerid.draw_x = -8 * spr_dir;
					sna_grabbed_playerid.draw_y = -2;
				break;
				case 25:
					sna_grabbed_playerid.draw_x = -6 * spr_dir;
					sna_grabbed_playerid.draw_y = -2;
				break;
				case 26:
					sna_grabbed_playerid.draw_x = -8 * spr_dir;
					sna_grabbed_playerid.draw_y = -2;
				break;
				case 27:
				case 28:
					sna_grabbed_playerid.draw_x = -6 * spr_dir;
					sna_grabbed_playerid.draw_y = -2;
				break;
				
				// Throw
				case 29:
					sna_grabbed_playerid.draw_x = -24 * spr_dir;
					sna_grabbed_playerid.draw_y = -2;
				break;
				case 30:
					sna_grabbed_playerid.draw_x = -44 * spr_dir;
					sna_grabbed_playerid.draw_y = -4;
				break;
				case 31:
					sna_grabbed_playerid.draw_x = -34 * spr_dir;
					sna_grabbed_playerid.draw_y = -6;
				break;
				case 32:
					//sna_grabbed_playerid.draw_x = -18 * spr_dir;
					//sna_grabbed_playerid.draw_y = -6;
					sna_grabbed_playerid.draw_x = -40 * spr_dir;
					sna_grabbed_playerid.draw_y = -10;
					sna_grabbed_playerid.spr_angle = -15 * spr_dir;
				break;
				case 33:
					//sna_grabbed_playerid.draw_x = -4 * spr_dir;
					//sna_grabbed_playerid.draw_y = -4;
					sna_grabbed_playerid.draw_x = -40 * spr_dir;
					sna_grabbed_playerid.draw_y = -16;
					sna_grabbed_playerid.spr_angle = -50 * spr_dir;
				break;
				case 34:
					//sna_grabbed_playerid.draw_x = 10 * spr_dir;
					//sna_grabbed_playerid.draw_y = 0;
					sna_grabbed_playerid.draw_x = -20 * spr_dir;
					sna_grabbed_playerid.draw_y = -36;
					sna_grabbed_playerid.spr_angle = -90 * spr_dir;
				break;
				case 35:
					//sna_grabbed_playerid.draw_x = 20 * spr_dir;
					//sna_grabbed_playerid.draw_y = 0;
					sna_grabbed_playerid.draw_x = -10 * spr_dir;
					sna_grabbed_playerid.draw_y = -56;
					sna_grabbed_playerid.spr_angle = -135 * spr_dir;
				break;
				
			}
		break;
	}
}


//=========================================================
// RUN ALT COSTUME FUNCTIONS
//=========================================================
var _len = array_length(checked_sprite_names);
for (var i = 0; i < _len; i++){                 								// Go through list of sprite names with alt cosumes.
	if sprite_index == sprite_get(checked_sprite_names[i]){                     // If the current sprite is on the list...
		process_form_sprite(checked_sprite_names[i]);                           // Run the function to modify the sprite index.
		exit;
	}
}


//-----------------------------------------
// Alt sprite switching function by Muno:
//-----------------------------------------
#define process_form_sprite(sprite)

var num_frames = image_number / num_sprite_sets;                                // Divides the sprite animation length by the number of alt costumes.
var offset = num_frames * current_sprite_set;                                   // The animation starting frame offset.

var img_looped = image_index % num_frames + offset;                             // For looped animations
var img_set_duration = image_index / num_sprite_sets + offset;                  // (TODO: Figure out what this is for)
var img_set_number = image_index + offset;                                      // (TODO: Figure out what this is for)
var img_one_frame = current_sprite_set;                                         // For single-frame animations

if (sna_box_is_equipped) {
	switch(sprite){
		
		// looping anims
		case "idle_box":
		case "walk_box":
		case "dash_box":
			image_index = img_looped;
			break;
		
		// anims w/ a set duration
		case "walkturn_box":
		case "dashstart_box":
		case "dashstop_box":
		case "dashturn_box":
		case "jumpstart_box":
		case "jump_box":
		case "doublejump_box":
		case "land_box":
			image_index = img_set_duration;
			break;
		
		// 1 frame animations
		case "hurt_box":
			image_index = img_one_frame;
			break;
		
		// anims that don't have alt costume variants
		//case "intro":
			//break;
		
		// walljump
		case "walljump_box":
			if image_index < 2{
				image_index = img_set_number;
			}
			else{
				image_index = lerp(2, 7, (image_index - 2) / 21) + offset;
			}
			break;
	}
}
else {
	switch (dict_equipment[inv_firearm].hold_type) {							// Get the current weapon hold type
		case 0: // Unarmed
			switch(sprite){
				
				// looping anims
				case "intro":
				case "idle":
				case "walk":
				case "dash":
				case "pratfall":
				case "spinhurt":
					image_index = img_looped;
					break;
				
				// anims w/ a set duration
				case "walkturn":
				case "dashstart":
				case "dashstop":
				case "dashturn":
				case "waveland":
				case "jumpstart":
				case "jump":
				case "doublejump":
				case "land":
				case "landinglag":
					image_index = img_set_duration;
					break;
				
				// anims w/ set numbers of frames per window
				case "crouch":
				case "crouch_full":
				case "parry":
				case "roll_forward":
				case "roll_backward":
				case "tech":
				case "airdodge":
				case "jab":
				case "ftilt":
				case "utilt":
				case "dtilt":
				case "dattack":
				case "nair":
				case "fair":
				case "bair":
				case "uair":
				case "dair":
				case "fstrong":
				case "ustrong":
				case "dstrong":
				case "nspecial":
				case "nspecial_air":
				case "fspecial":
				case "uspecial":
				case "dspecial":
				case "dspecial_air":
				case "dspecial_crouch":
				case "nthrow":
				case "taunt":
				case "taunt_air":
				case "taunt_crouch":
				case "cover":
				case "phone_open":
					image_index = img_set_number;
					break;
				
				// 1 frame animations
				case "hurt":
				case "hurtground":
				case "bighurt":
				case "uphurt":
				case "downhurt":
				case "bouncehurt":
				case "aim_head_fspecial":
				case "aim_torso_fspecial":
				case "aim_torso_fspecial_rifle":
				case "aim_legs_crouch":
					image_index = img_one_frame;
					break;
				
				// anims that don't have alt costume variants
				//case "intro":
					//break;
				
				// walljump
				case "walljump":
					if image_index < 2{
						image_index = img_set_number;
					}
					else{
						image_index = lerp(2, 7, (image_index - 2) / 21) + offset;
					}
					break;
				
				// crawl
				case "crawl":
					image_index = lerp(0 + offset, num_frames + offset, (crawl_timer / crawl_anim_time) );
					break;
			}
		break;
			
		case 1: // Pistol
			switch(sprite){
				
				// looping anims
				case "intro":
				case "idle":
				case "idle_pistol":
				case "walk_pistol":
				case "dash_pistol":
				case "pratfall":
				case "spinhurt":
					image_index = img_looped;
					break;
				
				// anims w/ a set duration
				case "walkturn_pistol":
				case "dashstart_pistol":
				case "dashstop_pistol":
				case "dashturn_pistol":
				case "waveland":
				case "jumpstart":
				case "jump":
				case "doublejump":
				case "doublejump_box":
				case "land":
				case "landinglag":
					image_index = img_set_duration;
					break;
				
				// anims w/ set numbers of frames per window
				case "crouch":
				case "crouch_full":
				case "parry":
				case "roll_forward":
				case "roll_backward":
				case "tech":
				case "airdodge":
				case "jab":
				case "ftilt":
				case "utilt":
				case "dtilt":
				case "dattack":
				case "nair":
				case "fair":
				case "bair":
				case "uair":
				case "dair":
				case "fstrong":
				case "ustrong":
				case "dstrong":
				case "nspecial":
				case "nspecial_air":
				case "fspecial":
				case "uspecial":
				case "dspecial":
				case "dspecial_air":
				case "dspecial_crouch":
				case "nthrow":
				case "taunt":
				case "taunt_air":
				case "taunt_crouch":
				case "cover_pistol":
				case "phone_open":
					image_index = img_set_number;
					break;
				
				// 1 frame animations
				case "hurt":
				case "hurtground":
				case "bighurt":
				case "uphurt":
				case "downhurt":
				case "bouncehurt":
				case "aim_head_fspecial":
				case "aim_torso_fspecial":
				case "aim_torso_fspecial_rifle":
				case "aim_legs_crouch":
					image_index = img_one_frame;
					break;
				
				// anims that don't have alt costume variants
				//case "intro":
					//break;
				
				// walljump
				case "walljump":
					if image_index < 2{
						image_index = img_set_number;
					}
					else{
						image_index = lerp(2, 7, (image_index - 2) / 21) + offset;
					}
					break;
				
				// crawl
				case "crawl":
					image_index = lerp(0 + offset, num_frames + offset, (crawl_timer / crawl_anim_time) );
					break;
			}
		break;
			
		case 2: // Rifle
			switch(sprite){
				
				// looping anims
				case "intro":
				case "idle":
				case "idle_rifle":
				case "walk_rifle":
				case "dash_rifle":
				case "pratfall":
				case "spinhurt":
					image_index = img_looped;
					break;
				
				// anims w/ a set duration
				case "walkturn_rifle":
				case "dashstart_rifle":
				case "dashstop_rifle":
				case "dashturn_rifle":
				case "waveland":
				case "jumpstart_rifle":
				case "jump_rifle":
				case "doublejump":
				case "land_rifle":
				case "landinglag":
					image_index = img_set_duration;
					break;
				
				// anims w/ set numbers of frames per window
				case "crouch":
				case "crouch_full":
				case "parry":
				case "roll_forward":
				case "roll_backward":
				case "roll_backward_rifle":
				case "tech":
				case "airdodge":
				case "jab_rifle":
				case "ftilt":
				case "utilt":
				case "dtilt":
				case "dattack":
				case "nair":
				case "fair":
				case "bair":
				case "uair":
				case "dair":
				case "fstrong":
				case "ustrong":
				case "dstrong":
				case "nspecial":
				case "nspecial_air":
				case "fspecial":
				case "uspecial":
				case "dspecial":
				case "dspecial_air":
				case "dspecial_crouch":
				case "nthrow":
				case "taunt":
				case "taunt_air":
				case "taunt_crouch":
				case "cover_rifle":
				case "phone_open":
					image_index = img_set_number;
					break;
				
				// 1 frame animations
				case "hurt":
				case "hurtground":
				case "bighurt":
				case "uphurt":
				case "downhurt":
				case "bouncehurt":
				case "aim_head_fspecial":
				case "aim_torso_fspecial":
				case "aim_torso_fspecial_rifle":
				case "aim_legs_crouch":
					image_index = img_one_frame;
					break;
				
				// anims that don't have alt costume variants
				//case "intro":
					//break;
				
				// walljump
				case "walljump":
					if image_index < 2{
						image_index = img_set_number;
					}
					else{
						image_index = lerp(2, 7, (image_index - 2) / 21) + offset;
					}
					break;
				
				// crawl
				case "crawl":
					image_index = lerp(0 + offset, num_frames + offset, (crawl_timer / crawl_anim_time) );
					break;
			}
		break;
	}
}

