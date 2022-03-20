if (!has_hit_already) {
	if (attack == AT_FSTRONG) {
		
		torren_speedforce += 60
		
	}
	else if (attack == AT_USTRONG) {
		
		torren_speedforce += 60
		
	}
	else if (attack == AT_DSTRONG) {
		
		torren_speedforce += 60
		
	}
	else if (attack == AT_FSPECIAL) {
		
		torren_speedforce += 90
		
	}
	else if (attack == AT_DSPECIAL) {
		if my_hitboxID.hbox_num == 1 {
			torren_speedforce += 60 }
		if my_hitboxID.hbox_num == 2 {
			torren_speedforce += 120 }
		if my_hitboxID.hbox_num == 3 {
			torren_speedforce += 160 }	
			
	} else if (torren_speedforce > 0) {
		
	//	torren_speedforce += 10
	}
}





/*


if (has_hit && hit_player_obj.zoomered && !has_hit_already) {
	
	if (attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG) {
	
	//if not in zoom state and has the status, add to it 
	
	if (attack == AT_DSPECIAL && window >= 5 && hit_player_obj.zoomerang < 3) {
		
		hit_player_obj.zoomerang += 1
	}
	if (attack == AT_DSPECIAL && window >= 6 && hit_player_obj.zoomerang < 3) {
		
		hit_player_obj.zoomerang += 1
	}
	if (attack == AT_DSPECIAL && torren_speedforce > 0) {
		
		hit_player_obj.zoomerang += 1
	}
	
	
	if (torren_speedforce <= 0 && hit_player_obj.zoomerang < 3) {
		hit_player_obj.zoomerang += 1
		
	} 
	//if in the state, subtract
	else if (torren_speedforce > 0) {
		//remove speed if already at 0
			if (hit_player_obj.zoomerang == 0) {
			
		
				torren_speedforce = 0
		} 
	  if (hit_player_obj.zoomerang >= 1) {
						hit_player_obj.zoomerang -= 1

			
	}
	
		
		
		
		
	}
	has_hit_already = true }
}




if (has_hit && !hit_player_obj.zoomered) {
	
	hit_player_obj.zoomered = true
	hit_player_obj.zoomerang = 1
	torren_speedforce = 0
	hit_player_obj.zoomed_id = id
	
		if (attack == AT_DSPECIAL && window >= 5) {
		
		hit_player_obj.zoomerang += 1
	}
	if (attack == AT_DSPECIAL && window >= 6) {
		
		hit_player_obj.zoomerang += 1
	}
	if (attack == AT_DSPECIAL && torren_speedforce > 0) {
		
		hit_player_obj.zoomerang += 1
	}
	
	
	has_hit_already = true
}

*/




if (has_hit) {
	
		has_hit_already = true

}










if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)
{
//speeddisk.state = 1
//speeddisk.state_timer = 0
	
	
}







if (attack == AT_FAIR && window < 3) { //hi delta
	var lerpam
//	lerpam = [1, 1]
	if (torren_speedforce > 0) {     lerpam = [0.5, 0.5]     } else {
	lerpam = [0.2, 0.2] }
	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+35*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-30, lerpam[1])

	
}




if(has_hit_player && my_hitboxID.attack != AT_NSPECIAL){
	//
//	free = true
speedmultiplier = hit_player_obj.orig_knock

speedopponenthitstungravity = hit_player_obj.hitstun_grav

if (attack == AT_NAIR) {
	
	speedmultiplier = hit_player_obj.orig_knock/1.4

	
}

//0.3*(my_hitboxID.kb_value * 4 * ((hit_player_obj.knockback_adj - 1) * 0.6 + 1)) + 0.3*(get_player_damage(hit_player_obj.player) * 0.12 * my_hitboxID.kb_scale * 4 * 0.65 * hit_player_obj.knockback_adj)

attackangle = my_hitboxID.kb_angle //  * ((dsin(my_hitboxID.kb_angle) + 2)/3) )* sign(my_hitboxID.kb_angle)

if (attack == AT_NAIR) {
	
	attackangle = 380
}
           shouldreverse = my_hitboxID.hit_flipper
      //     speedmultiplier = clamp(speedmultiplier, 3, 10)

}

//hit_player.gml grab code from mawral!!!
if (my_hitboxID.attack == AT_DATTACK || (my_hitboxID.attack == AT_UAIR && window < 4)) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
	transition_to_next_window = true
		
		
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


//makes it so fair1 connects when going zooooooom
if (attack == AT_FAIR && window <= 3 && torren_speedforce > 0 ) {
	
//	hit_player_obj.orig_knock *= 1.5
//jesus christ
}






if ((attack == AT_UAIR && my_hitboxID.hbox_num == 1) || (attack == AT_DATTACK)) {
	
	
	hit_player_obj.should_make_shockwave = false;
}
