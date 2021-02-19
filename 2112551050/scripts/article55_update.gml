//
timer++;
state_timer++;

if (tall) {
	sprite_index = sprite_get("bone_floor_tall");
	mask_index = sprite_get("bone_floor_tall");
}

switch (state) {
	case 0: //spawn state
	state++;
	state_timer = 0;
	break;
	
	case 1: //start moving
	
	//damage players
	var playerHit = false;
	var hurtboxPlayerID = undefined;
	var hitPlayerID = undefined;
	
	if (state_timer mod 2 == 0) {
		
		with oPlayer {
			if (state == PS_ROLL_BACKWARD) || (state == PS_ROLL_FORWARD) || (state == PS_AIR_DODGE) {
		    	if (cpuId == undefined) {
		    		var article = instance_place(x, y, obj_stage_article);
					if (article == other.id) {
						playerHit = true;
						hitPlayerID = id;
					}
		    	}
			}
		}
		
		with pHurtBox {
			if (playerID.cpuId == undefined) {
				var article = instance_place(x, y, obj_stage_article);
				if (article == other.id) {
					playerHit = true;
					hurtboxPlayerID = playerID;
				}
			}
		}
	    /*
	    var playerVar = instance_place(x, y, oPlayer);
	    if (playerVar != noone) && (playerVar.cpuId == undefined) {
	    	playerHit = true;
	    	hitPlayerID = playerVar.id;
	    }
	    */
		
		if (playerHit) {
			var stageExpertMode = player_id.expertMode;
	        with oPlayer {
	        	if (id == hurtboxPlayerID) || (id == hitPlayerID) {
	        		var levelKR = 2;
	        		if (stageExpertMode) {
	        			levelKR = 3;
	        		}
    				take_damage(player, -1, 1);
        			KR += levelKR;
					damageTaken++;
					if (KR < playerHP) {
						karmaTaken += levelKR;
					}
	        	}
	        }
	        sound_play(sound_get("bone_hit"), false, 0);
	    }
	    
	    with oPlayer {
	    	takenDamage = false;
	    }
	}
	break;
	
	case 9: //kill state
	instance_destroy();
	break;
}
