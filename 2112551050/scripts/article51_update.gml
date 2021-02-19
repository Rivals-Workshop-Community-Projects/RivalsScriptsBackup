//
timer++;
state_timer++;

if (blue) {
    image_blend = make_color_rgb(0, 148, 255);
}

if (rotAngle != 0) {
	image_angle = rotAngle;
	depth = -1;
}

switch (state) {
	case 0: //spawn state
	state++;
	state_timer = 0;
	image_yscale = length;
	break;
	
	case 1: //start moving
	hsp = boneHspeed;
	vsp = boneVspeed;
	
	if (state_timer == 600) {
		state = 9;
		state_timer = 0;
	}
	
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
	        var isMoving = false;
	        var stageExpertMode = player_id.expertMode;
	        with oPlayer {
	        	if (id == hurtboxPlayerID) || (id == hitPlayerID) {
	        		if (other.blue && hsp == 0 && vsp == 0) {
	        			isMoving = false;
	        		} else {
	        			isMoving = true;
	        			
	        			if (other.isMeta) {
	        				var levelKR = 1;
	        				if (stageExpertMode) {
	        					levelKR = 2;
	        				}
	        				if (playerHP > 1) || (stageExpertMode) {
	        					take_damage(player, -1, 1);
			        			KR += levelKR;
								damageTaken++;
								if (KR < playerHP) {
									karmaTaken += levelKR;
								}
	        				}
	        			} else {
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
	        	}
	        }
	        
	        if (!blue) || (isMoving) {
	        	sound_play(sound_get("bone_hit"), false, 0);
	        }
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
