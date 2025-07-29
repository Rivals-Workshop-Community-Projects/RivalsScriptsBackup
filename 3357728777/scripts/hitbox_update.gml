//Pulls the opponent (windbox)
if (attack == AT_FSPECIAL){
	if (hbox_num == 8){
		
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
		
		x = player_id.x + 110*spr_dir
		y = player_id.y - 26
		
		if (player_id.window >= 3){
			destroyed = true;
		}
	}
	if (hbox_num == 9){
		
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
		
		x = player_id.x + 80*spr_dir
		y = player_id.y - 26
		
		if (player_id.window >= 3){
			destroyed = true;
		}
	}
		if (hbox_num == 10){
		
		with (oPlayer) 
		if (id != other.player_id) {
		    if (place_meeting(x, y, other)) {
		    	var dodging_invul = false;
		    	var airborne = false;
		    	
			    if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_GROUND || state == PS_WALL_TECH){
					if (hurtboxID.dodging){
		        		dodging_invul = true;
					}
				}
				
				if free || (state == PS_JUMPSQUAT){
					airborne = true;
				}
				
				if (!dodging_invul){
					if !airborne{
						x -= 18*other.spr_dir;
					}else if airborne{
						x -= 8*other.spr_dir;
					}
					
				}
		    }
		}
		
		x = player_id.x + 178*spr_dir
		y = player_id.y - 26
		
		if (player_id.window >= 3){
			destroyed = true;
		}
	}
}
