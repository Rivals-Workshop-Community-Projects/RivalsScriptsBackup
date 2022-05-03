//post-draw

//------------------------------------------------------
// Muno phone stuff (top)
//------------------------------------------------------
//muno_event_type = 4;
//user_event(14);

//draw_debug_text(x, y + 20, string(sna_prime));
//draw_debug_text(x, y + 40, string(sna_stealth_seen) + " " + string(sna_stealth_seen_timer));
//draw_debug_text(x, y + 20, string(sna_is_in_smoke));
//draw_debug_text(x, y + 20, string(ui_state_current));
//draw_debug_text(x, y + 20, string(supplydrop_pickup_1));
//draw_debug_text(x, y + 40, string(supplydrop_pickup_2));
//draw_debug_text(x, y + 60, string(supplydrop_pickup_3));
//draw_debug_text(x, y + 40, string(supply_menu_open));
//draw_debug_text(x, y + 20, string(sna_pkupdrop_queue));
//draw_debug_text(x, y + 20, string(sna_box_is_equipped));
//draw_debug_text(x, y + 20, string(dict_equipment[inv_firearm].mag_bullet_queue));
//draw_debug_text(x, y + 20, string(is_crouching));
//draw_debug_text(x, y + 40, string(sna_aim_dir_target));
//draw_debug_text(x, y + 40, string(state) + " " + string(attack));

// Snake's height points.
/*draw_sprite_ext(sprite_get("ui_supply_marker"), 0, x, y - char_height, 1, 1, 0, c_white, 0.5);
draw_sprite_ext(sprite_get("ui_supply_marker"), 0, x, y - char_height * 0.5, 1, 1, 0, c_white, 0.5);
draw_sprite_ext(sprite_get("ui_supply_marker"), 0, x, y, 1, 1, 0, c_white, 0.5);*/

var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

//=========================================
// DRAW LAYERED SPRITES
//=========================================
/* This is for drawing things like firearms, or rotating limbs. */

var _cur_firearm = dict_equipment[inv_firearm];
var str_w_name = _cur_firearm.spritename;						// Weapon name string
var str_w_suppressed = "";														// Declare weapon suppressor prefix.
switch (_cur_firearm.suppressor_attached) {
	case true:
		str_w_suppressed = "s";													// Set suppressed prefix if a suppressor is attached.
	break;
}

var spr_scale = 1 + small_sprites;


//var sna_arms_angle = sna_aim_dir_visual;
//var sna_head_angle = lerp( 0, angle_difference(0, -sna_aim_dir_visual), _cur_firearm.head_ang_multiplier);
var sna_arms_angle = (spr_dir == 1) ? sna_aim_dir : sna_aim_dir - 180;			// Set the visual aim direction, for sprites. Has rotation offset for spr_dir.;
var sna_head_angle = lerp( 0, angle_difference(0, -sna_arms_angle), _cur_firearm.head_ang_multiplier);

//--------------------------------------
// Draw weapon aiming sprites
//--------------------------------------
switch (state){
    
    case PS_ATTACK_GROUND:                                                      // if in the attack state...
    case PS_ATTACK_AIR:
        
        switch (attack){
            
            case AT_FSPECIAL:                                                   // if using a firearm...
                
                if (instance_exists(sna_grabbed_playerid)) break;				// If a player is grabbed, do NOT run this.
                
                var _cover_transition =  (sna_is_in_cover && (window == 1 || window == 8));		// Is Snake transitioning in/out of cover?
                
                var _spr_arms_f = _cur_firearm.spr_arms_f;                                                                                               			// Get arm sprite index
                var _spr_head = _cur_firearm.spr_head;                                                                                               				// Get arm sprite index
                var _muzzle_flash_idx = _cur_firearm.muzzle_flash_idx;																								// Get muzzle flash index
                
                // Draw the limbs
                if (!_cover_transition) {										// If NOT in a cover transition...
	            	shader_start();
	                if (_spr_head != noone)																																				// If the head sprite is specified...
	                	draw_sprite_ext(sprite_get(_spr_head), current_sprite_set, x + sna_head_x * spr_dir, y + sna_head_y, spr_scale * spr_dir, spr_scale, sna_head_angle, c_white, 1 );	// Draw the head
	                if (_spr_arms_f != noone)																																			// If the arms sprite is specified...
	                	draw_sprite_ext(sprite_get(_spr_arms_f), image_index_arms, x + sna_arms_x * spr_dir, y + sna_arms_y, spr_scale * spr_dir, spr_scale, sna_arms_angle, c_white, 1 );	// Draw the arms
	                shader_end();
                }
                
                
                // Draw the equipment
                if (_cover_transition) {										// If in a cover transition...
                	draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_cover"), 5, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 ); // Draw the equipment
                }
                else {															// If NOT in a cover transition...
                	if (_spr_arms_f != noone)																																			// If the arms sprite is specified...
                		draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_fspecial"), image_index_equipment, x + sna_arms_x * spr_dir, y + sna_arms_y, spr_scale * spr_dir, spr_scale, sna_arms_angle, c_white, 1 ); // Draw the equipment
                }
                
                // Draw Muzzle Flashes
                if (_muzzle_flash_idx != -1 && !_cur_firearm.suppressor_attached) {		// If a muzzle flash is specified, and the weapon is NOT suppressed...
                	
                	if (window == 3 && window_timer < 3)						// If on the first few frames of the firing window...
                		draw_sprite_ext(sprite_get("fx_muzzle"), _muzzle_flash_idx, x + sna_muzzle_x, y + sna_muzzle_y, spr_scale * spr_dir, spr_scale, sna_arms_angle, c_white, 1 ); // Draw the muzzle flash.
                	
                }
                
            break;
        }
    
    break;
}


//--------------------------------------
// Draw equipment sprites
//--------------------------------------

var _box_transition_state = get_gameplay_time() < (sna_box_equip_time + sna_box_equip_duration);	// Whether or not the box being equipped is in the transition state.

// Box
if (sna_box_is_equipped) {																// If a box is equipped...
	
	var _box_y_adj = 0;
	if (_box_transition_state) _box_y_adj = -20;								// Move the box sprite up if transitioning.
	
	var _str_dmg = "";
	if (sna_box_dmg > sna_box_dmg_threshold * 0.5) _str_dmg = "_dmg";			// Set the damaged sprite name string, if the equipped box is damaged enough.
	
	switch (state) {
		case PS_IDLE:
			draw_sprite_ext(sprite_get("ent_box_idle" + _str_dmg), 0, x, y + _box_y_adj, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_WALK:
			draw_sprite_ext(sprite_get("ent_box_walk" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_WALK_TURN:
			draw_sprite_ext(sprite_get("ent_box_walkturn" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_DASH_START:
			draw_sprite_ext(sprite_get("ent_box_dashstart" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_DASH:
			draw_sprite_ext(sprite_get("ent_box_dash" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_DASH_STOP:
			draw_sprite_ext(sprite_get("ent_box_dashstop" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_DASH_TURN:
			draw_sprite_ext(sprite_get("ent_box_dashturn" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_JUMPSQUAT:
			draw_sprite_ext(sprite_get("ent_box_jumpstart" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_FIRST_JUMP:
		case PS_IDLE_AIR:
			draw_sprite_ext(sprite_get("ent_box_jump" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_DOUBLE_JUMP:
			draw_sprite_ext(sprite_get("ent_box_doublejump" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_LAND:
			draw_sprite_ext(sprite_get("ent_box_land" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_WALL_JUMP:
			draw_sprite_ext(sprite_get("ent_box_walljump" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_HITSTUN:
		case PS_HITSTUN_LAND:
		case PS_TUMBLE:
			draw_sprite_ext(sprite_get("ent_box_hurt" + _str_dmg), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		case PS_ATTACK_GROUND:                                                      // if in the attack state...
	    case PS_ATTACK_AIR:
	        switch (attack){
	        	case AT_TAUNT:
	        	case AT_TAUNT_2:													// Inventory selection
	        	case AT_EXTRA_1:													// Crouching
	        		draw_sprite_ext(sprite_get("ent_box_idle" + _str_dmg), 0, x, y + _box_y_adj, spr_dir, 1, 0, c_white, 1);
	        	break;
	        }
	    break;
	}
}
// Weapons
else {																				// If a box is NOT equipped...
	switch (dict_equipment[inv_firearm].hold_type){									// Get the weapon's hold type.
		
		case 2:																		// If this is a rifle... (rifle exclusive animations)
			
			switch (state){
				
				case PS_ATTACK_GROUND:
					
					switch (attack){
						
						case AT_EXTRA_2:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_jab"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_FSTRONG:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_fstrong"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_USTRONG:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_ustrong"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_DSTRONG:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dstrong"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
					}
					
				break;
					
			}
			
		case 1:																		// Or if this is a pistol...
			
			switch (state){															// Draw the currently equipped weapon sprites above the player sprites.
	    
			    case PS_IDLE:
			        if (_box_transition_state) break;							// Do NOT draw the weapon in the box transition state.
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_idle"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_WALK:
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_walk"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_WALK_TURN:
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_walkturn"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_DASH_START:
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dashstart"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_DASH:
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dash"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_DASH_TURN:
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dashturn"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_DASH_STOP:
			        draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dashstop"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
			    break;
			    
			    case PS_JUMPSQUAT:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_jumpstart"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_FIRST_JUMP:
				case PS_IDLE_AIR:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_jump"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_DOUBLE_JUMP:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_doublejump"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_LAND:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_land"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_ROLL_FORWARD:
				case PS_TECH_FORWARD:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_roll_forward"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_ROLL_BACKWARD:
				case PS_TECH_BACKWARD:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_roll_backward"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_AIR_DODGE:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_airdodge"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_PARRY_START:
				case PS_PARRY:
					draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_parry"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
				break;
				
				case PS_ATTACK_GROUND:
					
					switch (attack){
						
						case AT_EXTRA_1:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_crouch_full"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_EXTRA_3:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_cover"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_JAB:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_jab"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_FTILT:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_ftilt"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_DATTACK:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dattack"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_UTILT:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_utilt"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
						case AT_DTILT:
							draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_dtilt"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						break;
						
					}
					
				break;
			    
			}
			
		break;
	}
}


//--------------------------------------
// Draw Held Plantables
//--------------------------------------
if (is_attacking) {
	switch(attack){
		case AT_DSPECIAL:	// Plantables
			
			var _cur_plantable_eq = dict_equipment[inv_plantable];
			var _cur_plantable_ent = dict_entities[_cur_plantable_eq.ent_idx];
			var _spr_plantable = _cur_plantable_ent.spr_idx;
			
			var _str_crouch = is_crouching ? "_crouch" : "";
			
			// Draw Clacker
			if (_cur_plantable_ent.plnt_detonatable || window == 5 || window == 6 || window == 7)	// If the current plantable can be detonated, or in the detonate windows...
				draw_sprite_ext(sprite_get("dspecial" + _str_crouch + "_clacker"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );		// Draw the clacker in hand.
			// TODO: Only draw clacker when holding plantables you can detonate. (Or if the player is in the detonate windows.)
			// TODO: Draw the currently held detonatable in the player's hand.
			
			
			// Set Drawn Plantable Coordinates
			var _hand_x = 0;
			var _hand_y = 0;
			var _hand_crouch_x = 0;
			var _hand_crouch_y = 0;
			var _is_visible = true;
			switch(window){
				case 1: // Ready
					switch (window_timer){
						case 0:
						case 1:
						case 2:
						case 3:
						case 4:
						case 5:
						case 6:
						case 7:
						case 8:
							_hand_x = 12; _hand_y = -26;
							_hand_crouch_x = 34; _hand_crouch_y = -14;
						break;
						
						default:
							_hand_x = 22; _hand_y = -38;
							_hand_crouch_x = 38; _hand_crouch_y = -14;
						break;
					}
				break;
				
				case 3: // Plant - Floor
					_hand_x = 36; _hand_y = -14;
					_hand_crouch_x = 38; _hand_crouch_y = -16;
					switch (window_timer){
						case 0:
						case 1:
						case 2:
						case 3:
						case 4:
						case 5:
							_is_visible = true;
						break;
						
						default:
							_is_visible = false;
						break;
					}
				break;
				
				case 4: // Plant - Wall
					_hand_x = 36; _hand_y = -36;
					_hand_crouch_x = 38; _hand_crouch_y = -16;
					switch (window_timer){
						case 0:
						case 1:
						case 2:
						case 3:
						case 4:
						case 5:
							_is_visible = true;
						break;
						
						default:
							_is_visible = false;
						break;
					}
				break;
				
				case 3: // Plant - Wall
					_hand_x = 36; _hand_y = -14;
					_hand_crouch_x = 38; _hand_crouch_y = -16;
					switch (window_timer){
						case 0:
						case 1:
						case 2:
						case 3:
						case 4:
						case 5:
							_is_visible = true;
						break;
						
						default:
							_is_visible = false;
						break;
					}
				break;
				
				case 5: // Detonate Antic
				case 6: // Detonate
				case 7: // Detonate Endlag
					_hand_x = 22; _hand_y = -38;
					_hand_crouch_x = 38; _hand_crouch_y = -14;
					_is_visible = _cur_plantable_ent.plnt_detonatable;			// Hide the held plantable if it isn't detonatable.
				break;
				
				case 8: // Exit
					_hand_x = 12; _hand_y = -26;
					_hand_crouch_x = 34; _hand_crouch_y = -14;
				break;
				
				default:
					_hand_x = 22; _hand_y = -38;
					_hand_crouch_x = 38; _hand_crouch_y = -14;
				break;
			}
			
			// Set hand coordinates to crouching coordinates, if crouching.
			if (is_crouching) { _hand_x = _hand_crouch_x; _hand_y = _hand_crouch_y; }
			
			// Set individual equipment offset.
			var _eq_off_x = 0;
			var _eq_off_y = 0;
			
			if (inv_plantable == EQ_C4) {
				_eq_off_x = -4;
				_eq_off_y = 6;
			}
			if (inv_plantable == EQ_CLAYMORE) _eq_off_y = 8;
			
			// Apply offset.
			_hand_x += _eq_off_x;
			_hand_y += _eq_off_y;
			
			// Draw Plantable
			if (_cur_plantable_eq.ammo_total > 0 && _is_visible) {				// If the player has ammo for the current plantable, and it should be visible...
				draw_sprite_ext(sprite_get(_spr_plantable), 0, x + _hand_x * spr_dir, y + _hand_y, (spr_scale * spr_dir) * 0.5, spr_scale * 0.5, 0, c_white, 1 );		// Draw the plantable in hand.
			}
			
		break;
	}
}



//=========================================
// DRAW THROWABLE AIMING ARCS
//=========================================

// Get current attack and window.
if (is_attacking) {
	switch(attack){
		case AT_NSPECIAL:
			
			if !(instance_exists(sna_held_entity)) break;
			
			var pb_x = x;
			var pb_y = y;
			var pa_x = x;
			var pa_y = y;
			
			var _grav_spd = sna_held_entity.gravity_speed;
			var _max_fall = sna_held_entity.max_fall;
			var _air_frict = sna_held_entity.air_friction;
			
			var arc_hsp = 0;
			var arc_vsp = 0;
			
			// Get starting points, and momentum
			switch(window){
				case 2: // Neutral
					pa_x = x + 8 * spr_dir;
					pa_y = y - 18;
					arc_hsp = 5 * spr_dir;
					arc_vsp = -5;
					pb_x = pa_x + arc_hsp;
					pb_y = pa_y + arc_vsp;
				break;
				case 4: // Forward
					pa_x = x + 12 * spr_dir;
					pa_y = y - 66;
					arc_hsp = 9 * spr_dir;
					arc_vsp = -4;
					pb_x = pa_x + arc_hsp;
					pb_y = pa_y + arc_vsp;
				break;
				case 6: // Up
					pa_x = x - 6 * spr_dir;
					pa_y = y - 74;
					arc_hsp = 2 * spr_dir;
					arc_vsp = -10;
					pb_x = pa_x + arc_hsp;
					pb_y = pa_y + arc_vsp;
				break;
				case 8: // Back
					pa_x = x + 8 * spr_dir;
					pa_y = y - 18;
					arc_hsp = 2.5 * spr_dir;
					arc_vsp = -7.5;
					pb_x = pa_x + arc_hsp;
					pb_y = pa_y + arc_vsp;
				break; // Down
				case 10:
					pa_x = x + 8 * spr_dir;
					pa_y = y - 18;
					arc_hsp = 3.5 * spr_dir;
					arc_vsp = -2;
					pb_x = pa_x + arc_hsp;
					pb_y = pa_y + arc_vsp;
				break;
			}
			
			// Draw Arc
			switch(window){
				case 2:
				case 4:
				case 6:
				case 8:
				case 10:
					
					// Draw the mask
					maskHeader();
					draw_sprite_ext(sprite_get("ui_mask_pattern1"), 0, view_get_xview(), view_get_yview(), 2, 2, 0, c_white, 1);
					
					// Draw the arc
					maskMidder();
					for (var i = 0; i < 80; i ++) {
						    // Update arc physics
						    // Vertical
				            arc_vsp = clamp(arc_vsp + _grav_spd, -1000, _max_fall );             // Increase the gravity.
				            // Horizontal
				            arc_hsp = lerp(arc_hsp, 0, _air_frict);                              // Apply air friction
						    
						    // Update point A
						    pa_x = pb_x;
						    pa_y = pb_y;
						    
						    // Update point B
						    pb_x = pa_x + arc_hsp;
						    pb_y = pa_y + arc_vsp;
						    
						    // Get rounded coordinates
						    var pa_r_x = round(pa_x);
						    var pa_r_y = round(pa_y);
						    var pb_r_x = round(pb_x);
						    var pb_r_y = round(pb_y);
						    
						    // Collision Check
						    var _hit_point = noone;
						    
						    // Platforms
						    if (pa_y < pb_y) {																							// If the arc is moving down...
						    	_hit_point = collision_line(pa_r_x, pa_r_y, pb_r_x, pb_r_y, asset_get("par_jumpthrough"), true, true);	// Check for platforms.
						    	if (instance_exists(_hit_point)) {																		// If a platform is detected...
						    		if (pa_y > get_instance_y(_hit_point)) _hit_point = noone;											// Ignore the platform if the line is below it.
						    	}
						    }
						    
						    // Solids
						    if (_hit_point == noone)																				// If no platforms were detected...
								_hit_point = collision_line(pa_r_x, pa_r_y, pb_r_x, pb_r_y, asset_get("par_block"), true, true);	// Check for solids.
						    
						    // Draw Landing Point
						    if (_hit_point != noone) {																				// If the line hits a solid object...
						    	draw_sprite_ext(sprite_get("ui_gren_landingpoint"), 0, pa_r_x, pa_r_y, 2, 2, 0, c_white, 1);		// Draw the landing point.
						    	break;																								// Stop drawing the line. End the loop.
						    }
						    
						    // Draw the arc. (Drawn a bit later, because drawing it immediately makes it look like Snake is taking a piss.)
						    if (i > 3) draw_line_width_color(pa_r_x, pa_r_y, pb_r_x, pb_r_y, 4, c_white, c_white);
						    
						}
					
					// Reset the shaders
					maskFooter();
					
				break;
			}
		break;
	}
}



//=========================================
// DRAW STATUS
//=========================================
/*
NOTE: We only draw our own HUD if we're the "prime" Snake.
That way, HUDs won't overlap if there are multiple Snake players. 
*/
if (sna_prime) {																		// If we're the "prime" Snake...
	switch(sna_ui_status_state){
	    
	    case 0: // Do not Display
		        lerp_visual_lifebars(0.2);                                              // Always update the visual life gauge bars.
		    break;
	    
	    case 1: // Display
	        draw_status_ui(x - 40, y - char_height - 28, 1);
	    break;
	    
	    case 2: // Fade Out
	        var _len = (sna_ui_status_states[2].length > 0) ? sna_ui_status_states[2].length : 1;   // Avoid dividing by 0.
	        var _alpha = lerp (1, 0, sna_ui_status_timer / _len );
	        
	        draw_status_ui(x - 40, y - char_height - 28, _alpha);
	    break;
	}
}





//=========================================
// DRAW SMOKE LAYERS
//=========================================
/*with (obj_article1) {                                                       // Get the other articles.
    if player_id == other {                                       // If the owner of this article is the owner of the other articles...
        if (ent_idx == player_id.ENT_ELMT_SMOKE) {
            
            // TODO: Un-hard-code this!
    
		    // Get sprite index
		    var _spr_idx = sprite_get("ent_smoke");                                     // Get smoke sprite
		    // Get image index
		    var _anim_length = anim_length;                                             // Get smoke animation length.
		    var _t = (get_gameplay_time() % anim_length) / anim_length;                 // Set the image index loop duration.
		    var _img_idx = lerp(0, 4, _t);                                              // Loop the image index from frames 1 to 4.
            
            draw_sprite_ext(_spr_idx, _img_idx, x, y, 1, 1, 0, c_white, 1);
            
        }
    }
}*/


//=========================================================
// FUNCTIONS
//=========================================================

//---------------------------------------------------------
// Draw Status UI
//---------------------------------------------------------
#define draw_status_ui(_x, _y, _alpha)
// Draw the UI elements.

lerp_visual_lifebars(0.2);

var _life_idx = floor(lerp(39, 0, sna_life_drawn / 100));
var _psyche_idx = floor(lerp(39, 0, sna_psyche_drawn / 100));

var _str_depleted = "";
if (sna_life_depleted) _str_depleted = "_depleted";

draw_sprite_ext(sprite_get("ui_status_back"), 0, _x, _y, 2, 2, 0, c_white, _alpha);             				// Draw the base of the status bar
draw_sprite_ext(sprite_get("ui_status_life" + _str_depleted), _life_idx, _x, _y, 2, 2, 0, c_white, _alpha);		// Draw LIFE gauge
draw_sprite_ext(sprite_get("ui_status_psyche"), _psyche_idx, _x, _y, 2, 2, 0, c_white, _alpha); 				// Draw PSYCHE gauge
draw_sprite_ext(sprite_get("ui_status_front"), 0, _x, _y, 2, 2, 0, c_white, _alpha);            				// Draw the top layer of the status bar

var _disp_name = (current_sprite_set == 1) ? "PLISKIN" : "SNAKE";												// Get unique display names for Snake.
textDraw_custom(_x + 6, _y - 10, "fName", c_white, 1, 200, fa_left, 1, true, 0.5, _alpha, _disp_name);			// Draw the character name.


#define lerp_visual_lifebars(_lerpspeed)

sna_life_drawn = lerp(sna_life_drawn, sna_life, _lerpspeed);				// When the life bar is adjusted, gradually slide the bar to the desired point.
if (sna_life_drawn) < 0.5 sna_life_drawn = 0;                                   // Round it down.
sna_psyche_drawn = lerp(sna_psyche_drawn, sna_psyche, _lerpspeed);			// When the psyche bar is adjusted, gradually slide the bar to the desired point.
if (sna_psyche_drawn) < 0.5 sna_psyche_drawn = 0;                               // Round it down.



//---------------------------------------------------------
// Draw Text (Custom)
//---------------------------------------------------------
#define textDraw_custom(x1, y1, font, color, lineb, linew, align, scale, outline, outline_alpha, alpha, text)

//---------------
// Code by Muno!																// (Slightly edited by me, to specify outline alpha.)
//---------------

/*
	Available Fonts:

		"medFont"
		"fName" 		<-- default font
		"roundFont"
		"roaMBLFont"
		"roaLBLFont"
		"tinyFont"
		
*/

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha * outline_alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];



//---------------------------------------------------------
// Alpha Mask
//---------------------------------------------------------
// Code by Muno https://discord.com/channels/630147058535235604/722892672347668491/889503052929847337
#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskMidderAdd // Edit by me

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_one); // bm_add
//gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_src_colour); // bm_max
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);


