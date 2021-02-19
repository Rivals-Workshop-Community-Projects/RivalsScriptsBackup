//
timer++;

image_angle = rotAngle;
sprite_index = sprite_get("bone_attack1");
mask_index = sprite_get("bone_attack1");

if (timer > 2) {
	state_timer++;
	
	if (slam == true) && (timer <= 8) { //gravity change
		var slamHsp = 0;
		var slamVsp = 0;
		switch spawnSide {
			case 0:
			slamHsp = -20;
			slamVsp = 0;
			xMod = -10;
			break;
			
			case 1:
			slamHsp = 20;
			slamVsp = 0;
			xMod = 10;
			break;
			
			case 2:
			slamHsp = 0;
			slamVsp = -20;
			yMod = -10;
			break;
			
			case 3:
			slamHsp = 0;
			slamVsp = 20;
			yMod = 10;
			break;
		}
		
		with oPlayer {
			outline_color = [0, 0, 255];
			init_shader();
			hsp = slamHsp;
			vsp = slamVsp;
			if (other.timer == 4) {
				has_airdodge = true;
			}
		}
	}
	
	if (timer == 30) {
		with oPlayer {
			outline_color = [0, 0, 0];
			init_shader();
		}
	}
	
	if (timer == 6) && (!mute) {
		sound_play(sound_get("impact"), false, 0);
		if (!noShake) {
			player_id.roomXmod = xMod;
			player_id.roomYmod = yMod;
		}
	}
	
	switch (state) {
		case 0: //spawn warning box
		image_index = 0;
		
		if (state_timer == 1) {
			sound_play(sound_get("alert"), false, 0);
		}
		
		if (state_timer == delay) {
			state_timer = 0;
			state++;
		}
		break;
		
		case 1: //bones rise
		if (state_timer == 1) {
			sound_play(sound_get("bone_rise"), false, 0);
		}
		
		if (state_timer mod 2 == 0) {
			image_index++;
		}
		if (image_index == 4) {
			state_timer = 0;
			state++;
		}
		break;
		
		case 2: //bones active
		image_index = 4;
		if (state_timer == boneActiveTime) {
			state_timer = 0;
			state++;
		}
		
		//damage players
		var playerHit = false;
		var hurtboxPlayerID = undefined;
		var hitPlayerID = undefined;
		if (state_timer mod 2 == 0) {
			
			with oPlayer {
				if (state == PS_ROLL_BACKWARD) || (state == PS_ROLL_FORWARD) || (state == PS_AIR_DODGE) {
					if !(variable_instance_exists(id, "temp_level")) {
						var article = instance_place(x, y, obj_stage_article);
						if (article == other.id) {
							take_damage(player, -1, 1);
							takenDamage = true;
							playerHit = true;
							hitPlayerID = id;
						}
					}
				}
			}
			
			//hurtbox hit detection
			with pHurtBox {
				if (playerID.cpuId == undefined) && !(playerID.takenDamage) {
					var article = instance_place(x, y, obj_stage_article);
					if (article == other.id) {
						take_damage(player, -1, 1);
						playerHit = true;
						hurtboxPlayerID = playerID;
					}
				}
			}
			
			if (playerHit) {
				var stageExpertMode = player_id.expertMode;
			    with oPlayer {
			    	if (id == hurtboxPlayerID) || (id == hitPlayerID) {
			    		take_damage(player, -1, 1);
			    		var levelKR = 2;
			    		if (stageExpertMode) {
			    			levelKR = 3;
			    		}
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
		
		case 3: //bones descend
		if (state_timer mod 2 == 0) {
			image_index--;
		}
		
		if (image_index == 1) {
			state_timer = 0;
			state = 9;
		}
		break;
		
		case 9: //kill state
		instance_destroy();
		break;
	}
}

