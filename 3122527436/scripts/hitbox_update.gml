//Pulls the opponent (windbox)
if (attack == AT_NSPECIAL){
	if (hbox_num == 1){
		
		with (oPlayer) 
		if (id != other.player_id) {
		    if (place_meeting(x, y, other)) {
		    	var dodging_invul = false;
		    	
			    if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_GROUND || state == PS_WALL_TECH){
					if (hurtboxID.dodging){
		        		dodging_invul = true;
					}
				}
				
				if (!dodging_invul){
					x -= 4*other.spr_dir;
				}
		    }
		}
		
		x = player_id.x + 50*spr_dir
		y = player_id.y - 26
		
		if (player_id.window >= 3){
			destroyed = true;
		}
	}
}

if (attack == AT_DSPECIAL_2) {
	if (hitbox_timer%2 == 0){
		if (hbox_num == 1){
			spawn_hit_fx(x, y, player_id.dspecial2_trail);
		}
	}
}