switch(my_hitboxID.attack){
	case AT_DSPECIAL:
	case AT_EXTRA_2:
	{
		switch(my_hitboxID.hbox_num){
			case 1: // Dspecial grab
				switch(clone_dspecial_hit){
					case true: // Dspecial Grab special double condition where both Roekokos grab with same Dspecial
						if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
						  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
					    	  && was_parried == false
						  && hit_player_obj.clone == false) {
							
							//transition to the 'throw' part of the attack.
							attack_end();
							clone_dspecial_assist = false;
							//print("in loop");
							set_attack(AT_EXTRA_3);
							
							//if this attacsk hasn't grabbed a player yet, grab the player we just hit.
							if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
							
							//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
							else {
								var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
								var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
								if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
							}
						}
						break;
						
					case false: // Dspecial Grab normal (not double Dspecialed)
						if(clone_dspecial_hit == false){
						if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
						  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) 
						  && was_parried == false
						  && hit_player_obj.clone == false) {
							
							//transition to the 'throw' part of the attack.
							attack_end();
							clone_dspecial_assist = true;
							set_attack(AT_DTHROW);
							
							//if this attack hasn't grabbed a player yet, grab the player we just hit.
							if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
							
							//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
							else {
								var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
								var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
								if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
							}
						}
					}
					break;
					
					default:
					break;
				}
		break;
			
			case 2: // Clone Grab (Takes Precedance)
			case 3:
				if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) // Removed a state check from here
				&& was_parried == false
				&& hit_player_obj.clone == false) {
					// Transition to the 'throw' part of the attack.
					clone_dspecial_hit = true;
					clone_object_ID.clone_dspecial_hit = true;
					attack_end();
					destroy_hitboxes();
					
					//if this attack hasn't grabbed a player yet, grab the player we just hit.
					if (!instance_exists(clone_object_ID.grabbed_player_obj)) { clone_object_ID.grabbed_player_obj = hit_player_obj;}
					
					//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
					else {
						var old_grab_distance = point_distance(x, y, clone_object_ID.grabbed_player_obj.x, clone_object_ID.grabbed_player_obj.y);
						var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
						if (new_grab_distance < old_grab_distance) { clone_object_ID.grabbed_player_obj = hit_player_obj;}
					}
				}
			break;
				
			default:
				break;
		}
	}
		break;

	case 49: // AT_FINAL_STRONG_START_UP Final Smash Grab
	{
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	    	  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			attack_end();
			set_attack(AT_FINAL_STRONG_THROW);
			
			//instance_create(room_width / 2,room_height / 2,"obj_article1");
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}
		break;
	
	default:
		break;
}
	/*
	// Clone Grab (Takes Precedance)
	
	if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_EXTRA_2) && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) {
	
		if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) // Removed a state check from here
	    	  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			clone_dspecial_hit = true;
			clone_object_ID.clone_dspecial_hit = true;
			attack_end();
			destroy_hitboxes();
			
			//set_attack(AT_NTHROW);
			
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(clone_object_ID.grabbed_player_obj)) { clone_object_ID.grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, clone_object_ID.grabbed_player_obj.x, clone_object_ID.grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { clone_object_ID.grabbed_player_obj = hit_player_obj; }
			}
		}
	}
	
	// Dspecial Grab normal (not double Dspecialed)
	if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_EXTRA_2) && my_hitboxID.hbox_num = 1 && clone_dspecial_hit == false) {
	
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	    	  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			attack_end();
			clone_dspecial_assist = true;
			set_attack(AT_DTHROW);
			
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}

	// Dspecial Grab special double condition where both Roekokos grab with same Dspecial
	if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num = 1 && clone_dspecial_hit == true) {
	
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	    	  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			attack_end();
			clone_dspecial_assist = false;
			//print("in loop");
			set_attack(AT_EXTRA_3);
			
			//if this attacsk hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}
	*/
// Clone Kick during grab cooldown to prevent wobble
if (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num = 2){
	move_cooldown[AT_DSPECIAL] = 30;
}

// Clone Drops Opponent on hit to prevent saving the opponent
if (instance_exists(clone_object_ID)){
	if(clone_object_ID.state == 22){  //CL_DTHROW
		if(!(my_hitboxID.attack == AT_DTHROW)){
		clone_object_ID.grabbed_player_obj = noone;
		clone_object_ID.state = 1; //CL_IDLE
		clone_object_ID.clone_dspecial_hit = false;
		clone_dspecial_hit = false;
		clone_object_ID.clone_dspecial_cooldown = 60; // Added to prevent chain on Nair / Dair
		}
	}
}

// OLD CODE
/*
if (my_hitboxID.attack == AT_FINAL_STRONG_START_UP) {
	
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	    	  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			attack_end();
			set_attack(AT_FINAL_STRONG_THROW);
			
			//instance_create(room_width / 2,room_height / 2,"obj_article1");
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
}
*/



// Hit Effects - Not used
/*

var vfx_x_offset, vfx_y_offset,vfx_x_final,vfx_y_final;
var this_hitbox_ID = my_hitboxID;
var this_hitbox_attack = my_hitboxID.attack;
var this_hitbox_hbox_num = my_hitboxID.hbox_num;
var	vfx_x_origin = hit_player_obj.x;
var	vfx_y_origin = hit_player_obj.y;
 
with(my_hitboxID.player_id){
	vfx_x_offset = get_hitbox_value(this_hitbox_attack,this_hitbox_hbox_num,HG_HITBOX_X);
	vfx_y_offset = get_hitbox_value(this_hitbox_attack,this_hitbox_hbox_num,HG_HITBOX_Y);
}

vfx_x_final = vfx_x_origin// + (spr_dir * vfx_x_offset);
vfx_y_final = vfx_y_origin// + vfx_y_offset;

//print(vfx_x_final);
//print(vfx_y_final);

// Fire Paw VFX
switch(my_hitboxID.attack){
	// Any Hitbox On These moves
	case AT_BAIR:
	case AT_FSTRONG:
	case AT_USTRONG:
	case AT_DSTRONG:
	vfx_fire_paw_object = spawn_hit_fx(vfx_x_final,vfx_y_final,vfx_fire_paw);
		var depth_player = depth;
		var player_x = x;
		var player_y = hit_player_obj.y - (hit_player_obj.char_height/2);
		with(vfx_fire_paw_object){
			depth = depth_player - 1;
			y = player_y;
		}
			break;
	default:
		break;
}*/