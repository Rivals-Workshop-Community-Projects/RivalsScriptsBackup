// Shield Health Regain
if !hitpause{
	if ((state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR)){
		// regain shield health
		if wren_shield_health < wren_shield_health_max{
			wren_shield_health += .5;
		}
	} else {
		if attack != AT_EXTRA_2{
			if wren_shield_health < wren_shield_health_max{
				wren_shield_health += .5;
			}
		}
	}
}

with(oPlayer){
    if player != other.player{
        if !hitstop{
            rtwo_hit_shield = false;
            rtwo_hit_shield_noise = false;
        }
    }
}
switch(prev_state){
    case PS_TUMBLE:
        switch(state){
            case PS_HITSTUN_LAND:
                set_attack(AT_EXTRA_1);
                break;
        }
        break;
}
switch(state){
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
        if state_timer == 28 and shield_down{
            set_attack(AT_EXTRA_2);
        }
        break;
    case PS_PARRY_START:
        if (wren_rtwo_stopparry and (!special_pressed or !special_down) and wren_parry_cool == 0){
            set_attack(AT_EXTRA_2);
        }
        break;
    case PS_PARRY:
        if state_timer == 20 and shield_down{
            set_attack(AT_EXTRA_2);
            window = 2;
            window_timer = 0;
            wren_parry_cool = wren_parry_cool_max;
        }
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_EXTRA_2:
                switch(window){
                    case 2:
                    	// Shield Health Decline
                    	if wren_shield_health != 0{
                    		if !hitstop or !hitpause{
                    			wren_shield_health -= 1;
                    		}
                    		if wren_shield_health > 144{
                    			wren_shield_anim = 0;
                    		}
                    		if wren_shield_health < 144 and wren_shield_health > 108{
                    			wren_shield_anim = 1;
                    		}
                    		if wren_shield_health < 108 and wren_shield_health > 72{
                    			wren_shield_anim = 2;
                    		}
                    		if wren_shield_health < 72 and wren_shield_health > 36{
                    			wren_shield_anim = 3;
                    		}
                    		if wren_shield_health < 36 and wren_shield_health > 0{
                    			wren_shield_anim = 4;
                    		}
                    	}
                    	if wren_shield_health <= 0{
                    		sound_play(asset_get("sfx_obstacle_hit"));
                    		window = 4;
                    		window_timer = 0;
                    		wren_shield_health = wren_shield_health_max;
                    	}
                        // Shield Noises and Damage
                        if instance_exists(pHitBox){
                            if point_distance(pHitBox.x, pHitBox.y, x, y) <= 80{
                            	if pHitBox.player_id != id{
                            		// Hitbox is hitting the "shield"
                            		if pHitBox.player_id.rtwo_hit_shield == false{
                            			if pHitBox.player_id.rtwo_hit_shield_noise == false{
                            				// Play Sound
                            				sound_play(asset_get("sfx_oly_dspecial_armorhit"))
                            				pHitBox.player_id.rtwo_hit_shield_noise = true;
                            			}
                            			// Apply hitpause and damage
                            			pHitBox.player_id.can_fast_fall = false;
                            			pHitBox.player_id.has_hit = false;

                            			if (wren_shield_health - (pHitBox.damage * .5) <= 0){
	                            			wren_shield_health -= pHitBox.damage * .5;
                            				window = 4;
                            				window_timer = 0;
                            			} else {
	                            			wren_shield_health -= pHitBox.damage * .5;
	                            			hitstop = floor(get_hitstop_formula(0, pHitBox.damage, pHitBox.hitpause, pHitBox.hitpause_growth, pHitBox.extra_hitpause) * .5);
	                            			pHitBox.player_id.hitstop = floor(get_hitstop_formula(0, pHitBox.damage, pHitBox.hitpause, pHitBox.hitpause_growth, pHitBox.extra_hitpause));
	                            			
	                            			// Give a HSP boost depending on knockback
	                            			if pHitBox.type == 1{
	                            				if pHitBox.player_id.free == false{
		                            				hsp = floor(get_kb_formula(0, knockback_adj, get_match_setting(SET_SCALING), pHitBox.damage, pHitBox.kb_value, pHitBox.kb_scale) * pHitBox.player_id.spr_dir);
		                            				pHitBox.player_id.hsp = floor(get_kb_formula(0, pHitBox.player_id.knockback_adj, get_match_setting(SET_SCALING), pHitBox.damage, pHitBox.kb_value, pHitBox.kb_scale) * (pHitBox.player_id.spr_dir * -1));
		                            			}
	                            			} else {
	                            				// reflect?
	                            				if pHitBox.does_not_reflect == false and pHitBox.transcendent == true{
	                            					pHitBox.was_parried = true;
	                            					pHitBox.player_id = id;
	                            					pHitBox.hsp *= -1;
	                            					pHitBox.vsp *= -1;
	                            					pHitBox.spr_dir *= -1;
	                            				} else {
	                            					pHitBox.destroyed = true;
	                            				}
	                            			}
                            			}

                            		}
                            		//print("Attack:" + string(pHitBox.attack));
                            	}
                            }
                        }
                        break;
                    case 3:
                    	if down_pressed{
                    		fall_through = true;
                    		destroy_hitboxes();
                    		attack_end();
                    		set_state(PS_IDLE)
                    	}
                    	break;
                }
                break;
        }
        if attack != AT_EXTRA_1{
            wren_rtwo_was_hit = false;
        }
        break;
}
if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND{
    wren_rtwo_was_hit = false;
}
if state != PS_PARRY_START and state != PS_PARRY{
    wren_rtwo_stopparry = true;
}
if wren_parry_cool != 0{
    wren_parry_cool--;
}

#region // Ledge
// if you're off-stage
if !free or state_cat = SC_HITSTUN{
    wren_rtwo_cangrabledge = true;
}

if !wren_rtwo_cangrabledge{
    if state == PS_ATTACK_AIR{
        if attack != AT_EXTRA_3{
            wren_rtwo_cangrabledge = true;
        }
    }
}
if free and wren_rtwo_cangrabledge{
	// Check to see if you are off-stage
	var stage_x = get_stage_data(SD_X_POS);
	var stage_blast = (get_stage_data(SD_BOTTOM_BLASTZONE));

	if (x < stage_x or x > room_width - stage_x){
		if place_meeting(x + (32 * spr_dir), y , asset_get("par_block")) and !place_meeting(x + (32 * spr_dir), y - 32, asset_get("par_block")){
			// If you are within range, snap to it and move to attack EXTRA_3
			if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
				destroy_hitboxes();
				attack_end();
			}
			set_attack(AT_EXTRA_3);
			// Set your X and Y position
			
			y = stage_blast;
			print("Y: " + string(stage_blast));
			wren_rtwo_cangrabledge = false;
		}
	}
}
#endregion