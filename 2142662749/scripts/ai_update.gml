//ai-update

is_ai = true;

targetDistX = abs(ai_target.x - x);
targetDistY = abs(ai_target.y - y);
facing = (x > ai_target.x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1);
//if 60 > targetDistX and 60 > targetDistY { AIwait -= 1 }

if (get_training_cpu_action() == CPU_FIGHT) {
    
    //follow target
    if (targetDistX > 100) && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
        if (x < ai_target.x) {
            right_hard_pressed = true;
            if (state == PS_DASH) {
                right_down = true;
            }
        } else {
            left_hard_pressed = true;
            if (state = PS_DASH) {
                left_down = true;
            }
        }
    }
    
    //jump for aerial if target on platform
    if state_cat == SC_GROUND_NEUTRAL && !ai_target.free && (ai_target.y < y - 60) {
        jump_pressed = true;
    }
    
    //jump to follow up an attack
    if state == PS_ATTACK_GROUND && (attack == AT_UTILT || attack == AT_DTILT) && has_hit {
        jump_pressed = true;
    }
    
    //aerial followups
    if (state == PS_ATTACK_AIR && (attack == AT_UAIR) && has_hit) {
        if (ai_target.y < y - 60) {
            jump_pressed = true;
        }
    }
    
    //shorthop vs fullhop
    if (state == PS_JUMPSQUAT) || (state == PS_FIRST_JUMP) {
        if (ai_target.y < y - 60) {
            jump_down = true;
        }
    }
    
    //follow target during aerials for followups
    if (state == PS_ATTACK_AIR) || (free && (state != PS_HITSTUN || hitpause)) {
        if (x < ai_target.x) {
            right_down = true;
        } else {
            left_down = true;
        }
    }
    
    if state_cat = SC_HITSTUN {
		randDI = 0;
		if (aiHitboxAngle < 45) && (aiHitboxKB < 10) { //DI full out
			randDI = 1
		}
		if (aiHitboxAngle < 45) && (aiHitboxKB >= 10) { //DI full in
			randDI = 2
		}
		if (aiHitboxAngle > 45) && (aiHitboxKB >= 10) { //DI full down
			randDI = 3
		}
		if (aiHitboxAngle > 45) && (aiHitboxKB < 10) { //DI full up
			randDI = 4
		}
		if 3 > hitstop{
			if randDI = 1 {
				if x > ai_target.x{
					left_down = false;
					right_down = true;
				} else {
					left_down = true;
					right_down = false;
				}
			}
			if randDI = 2 {
				if x > ai_target.x{
					left_down = true;
					right_down = false;
				} else {
					left_down = false;
					right_down = true;
				}
			}
			if randDI = 3 {
				down_down = true
			}
			if randDI = 4 {
				up_down = true
			}
		}
	}
    
    //hitfalling if close to ground
    var floorDist = 0;
    var offstage = false;
    while !(position_meeting(x, y + floorDist, asset_get("par_block"))) && !(position_meeting(x, y + floorDist, asset_get("par_jumpthrough"))) && floorDist < 800 {
    	floorDist += 15;
    }
    if (floorDist < 85) && (can_fast_fall) && (has_hit_player) && (free) && !(attack == AT_DAIR && window < 6) {
    	down_hard_pressed = true;
    }
    if (floorDist > 600) {
    	offstage = true;
    }
    
    //grounded normals
    if can_attack && !free {
        //ftilt
        if targetDistX < 80 && targetDistY < 30 && facing {
            clear_button_buffer( PC_ATTACK_PRESSED );
            joy_pad_idle = true;
            if (x < ai_target.x) {
    	        left_down = false;
    	        right_down = true;
            } else {
                left_down = true;
    	        right_down = false;
            }
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        //jab
        if targetDistX < 50 && targetDistY < 30 && facing {
            clear_button_buffer( PC_ATTACK_PRESSED );
            joy_pad_idle = true;
            left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        if (get_gameplay_time() mod 3 == 0) && (targetDistY < 40) && (targetDistX > 100) && (targetDistX < 250) { // Dattack
	        clear_button_buffer( PC_ATTACK_PRESSED );
			if ai_target.x > x {
				right_hard_pressed = true;
			} else {
				left_hard_pressed = true;
			}
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
		}
        //utilt
        if (targetDistX < 40 && facing || targetDistX < 30 && !facing) && targetDistY < 70 {
            clear_button_buffer( PC_ATTACK_PRESSED );
            joy_pad_idle = true;
            left_down = false;
	        right_down = false;
	        up_down = true;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        //dtilt
        if targetDistX < 100 && targetDistY < 20 && facing {
            clear_button_buffer( PC_ATTACK_PRESSED );
            joy_pad_idle = true;
            left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = true;
	        special_pressed = false;
	        attack_pressed = true;
        }
    }
    
    //aerials
    if can_attack && free && get_stage_data( SD_Y_POS ) > y+24 {
        //fair
        if (facing) && (targetDistX < 40) && (targetDistX > 10) && (targetDistY < 20) {
            clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        if (x < ai_target.x) {
    	        left_down = true;
    	        right_down = false;
            } else {
                left_down = false;
    	        right_down = true;
            }
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        //bair
        if (!facing) && (targetDistX < 100) && (targetDistX > 50) && (targetDistY < 40) {
            clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        if (x > ai_target.x) {
    	        left_down = true;
    	        right_down = false;
            } else {
                left_down = false;
    	        right_down = true;
            }
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        //uair
        if (ai_target.y < y) && (ai_target.y > y - 60) && (targetDistX < 50) {
            clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = true;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        //nair
        if (facing) && (targetDistX < 40) && (targetDistY < 40) {
            clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
        }
        //dair
        if (get_gameplay_time() mod 20 > 10) && (targetDistX < 80) && (ai_target.y > y) && (ai_target.y < y + 80) {
            clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = true;
	        special_pressed = false;
	        attack_pressed = true;
        }
    }
    
    //Zo attacks
    if (zoID != undefined) && (instance_exists(zoID)) {
        var targetZoX = abs(ai_target.x - zoID.x);
        var targetZoY = abs(ai_target.y - zoID.y);
        
        var zoDistX = abs(x - zoID.x);
        var zoDistY = abs(y - zoID.y);
        var zoDist = abs(sqrt(zoDistX*zoDistX + zoDistY*zoDistY));
        
        var zoFacing = (zoID.x > ai_target.x && zoID.spr_dir == -1) || (ai_target.x > zoID.x && zoID.spr_dir == 1);
        
        var zoFloorDist = 0;
        var zoOffstage = false;
	    while !(position_meeting(zoID.x, zoID.y + zoFloorDist, asset_get("par_block"))) && zoFloorDist < 1000 {
	    	zoFloorDist += 10;
	    }
	    if (zoFloorDist > 900) {
	    	zoOffstage = true;
	    }
        
        //stuck on platform
        if !zoID.free && free && zoID.y < y + 50 && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
            joy_pad_idle = true;
            up_down = false;
            down_down = false;
            left_down = false;
            right_down = false;
            //down_hard_pressed = true;
        }
        
        //attacks
        if (zoID.state == PS_IDLE || zoID.state == PS_WALK || zoID.state == PS_DASH || zoID.state == PS_JUMPSQUAT || zoID.state == PS_IDLE_AIR || zoID.state == PS_FIRST_JUMP || zoID.state == PS_DOUBLE_JUMP) {
            
            if (!ai_recovering) {
	            //fstrong
	            if targetZoX < 150 && targetZoX > 50 && targetZoY < 30 && zoFacing {
	    	        special_pressed = false;
	    	        if zoID.x > ai_target.x {
	        	        left_strong_pressed = true;
	        	    } else {
	        	        right_strong_pressed = true;
	        	    }
	            }
	            //ustrong
	            if targetZoX < 60 && targetZoY < 100 && ai_target.y <= zoID.y {
	    	        special_pressed = false;
	        	    up_strong_pressed = true;
	            }
	            //dstrong
	            if targetZoX < 90 && targetZoY < 40 {
	    	        special_pressed = false;
	        	    down_strong_pressed = true;
	            }
	            
	            //nspecial
	            if (get_gameplay_time() mod 15 == 0) && (!zoOffstage) && (targetZoX < 300) && (targetZoX > 200) && (targetZoY < 500) {
	            	joy_pad_idle = true;
	            	strong_pressed = false;
	    	        special_pressed = true;
	    	        up_down = false;
	    	        down_down = false;
	    	        left_down = false;
	    	        right_down = false;
	            }
	            
	            //fspecial
	            if (!zoOffstage) && (!free && targetZoX < 240 || free && targetZoX < 200) && targetZoX > 50 && targetZoY < 20 && zoFacing && ((zoID.x - x)*zoID.spr_dir > 0 || abs(zoID.y - y) > 40) {
	    	        strong_pressed = false;
	    	        special_pressed = true;
	    	        if zoID.x > ai_target.x {
	        	        left_down = true;
	        	        right_down = false;
	        	    } else {
	        	        left_down = false;
	        	        right_down = true;
	        	    }
	        	    up_down = false;
	                down_down = false;
	            }
            }
            
            //uspecial
            if (offstage && ai_recovering && state != PS_ATTACK_AIR) && (zoDist < zoID.rocketDist) {
            	joy_pad_idle = true;
            	strong_pressed = false;
    	        special_pressed = true;
    	        left_down = false;
    	        right_down = false;
    	        down_down = false;
    	        up_down = true;
            } else if (offstage && ai_recovering && state != PS_ATTACK_AIR) && (abs(x - zoID.x) > 50 || abs(y - zoID.y) > 50) { //dspecial
            	joy_pad_idle = true;
            	strong_pressed = false;
    	        special_pressed = true;
    	        left_down = false;
    	        right_down = false;
    	        down_down = true;
    	        up_down = false;
            }
        }
        
        
        if (zoID.state == PS_ATTACK_AIR || zoID.state == PS_ATTACK_GROUND) {
            strong_down = false;
            //dstrong charge
            if (zoID.attack == AT_DSTRONG) {
                if targetZoX < 70 && targetZoY < 20 {
            	    strong_down = true;
                }
            }
            
            //nspecial
            if (zoID.attack == AT_NSPECIAL) {
	        	var zoAngle = darctan2(zoID.y - ai_target.y, abs(zoID.x - ai_target.x));
	        	
	        	if (zoOffstage && zoID.window > 1) || (targetZoX > 400 || targetZoX < 200 || targetZoY > 500) {
	        		special_pressed = true;
	        	}
	        	
	        	//breverse
	        	if (zoID.window == 1) {
	        		if (zoFacing) {
	        			left_down = false;
	        			right_down = false;
	        			left_pressed = false;
	        			right_pressed = false;
	        		} else {
	        			if (zoID.x < ai_target.x) {
	        				left_down = false;
	        				right_down = true;
	        			} else {
	        				left_down = true;
	        				right_down = false;
	        			}
	        		}
	        	}
	        	
	        	if abs(zoID.turretAngle) < zoAngle - 10 {
	        		up_down = true;
	        		down_down = false;
	        		if (zoID.window == 1) {
	        			special_down = true;
	        		}
	        	} else if abs(zoID.turretAngle) > zoAngle + 10 {
	        		down_down = true;
	        		up_down = false;
	        		if (zoID.window == 1) {
	        			special_down = true;
	        		}
	        	} else {
	        		special_pressed = true;
	        	}
	        }
	        
	        //dspecial
	        if (zoID.attack == AT_DSPECIAL_2) {
	        	joy_pad_idle = true;
	        	down_down = false;
	        	up_down = false;
	        	left_down = false;
	        	right_down = false;
	        }
	        
	        //uspecial
	        if (zoID.attack == AT_USPECIAL) {
	        	special_down = true;
	        	if x < room_width/2 - 100 {
	        		right_down = true;
	        		left_down = false;
	        	} else if x > room_width/2 + 100{
	        		left_down = true;
	        		right_down = false;
	        	}
	        }
        }
    }
}
