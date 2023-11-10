if (state != PS_ATTACK_GROUND){
    if (state != PS_ATTACK_AIR){
    	if (state == PS_HITSTUN){
	        sound_stop(sound_get("hamood_loop"));
    	}
    }
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	grabbed = -4;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (state_timer == 1){
		grabbed = -4;
	}
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    uspecial_refreshed_djumps = false;
}


//check if an alarm is out
var alarm_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        alarm_out = true;
    }
}

if (url != 2863909689){
	player = -1;
	spawn_hit_fx(x,y,0);
}

//alarm stuff
if (instance_exists(hit_player_obj)){
	var other_x = hit_player_obj.x;
	var other_y = hit_player_obj.y;
}

if (alarm_out){
	
	move_cooldown[AT_DSPECIAL] = dspec_cooldown;
	
	with(asset_get("obj_article1")){
        if (player_id == other.id){
	        	
	        var col = collision_circle(x, y, range, other, false, true);
	        	
	        if (col != noone){
	            other.in_alarm_range = true;
	            other.alarm_obj = self;
	            break; 
	            //end loop early so it doesn't check through every article
	        }
	        else{
	            other.in_alarm_range = false;
	            other.alarm_obj = -4;
	        }
            
        }
    }
}
else{
	alarm_obj = -4;
}




/*
//ustrong galaxy protection
if (hit_player_obj != noone){
	if (last_hit_atk != noone){
		if (last_hit_atk == AT_USTRONG && hit_player_obj.activated_kill_effect){
			ustrong_galaxy = true;
			last_hit_atk = noone;
			atk_timer = 0;
		}
	}
	
	if (last_hit_atk != noone){
		atk_timer++;
		if (atk_timer == 20){
			last_hit_atk = noone;
			atk_timer = 0;
			ustrong_galaxy = false;
		}
	}
}
*/

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	ustrong_galaxy = false;
	last_hit_player = -4;
}


		if (in_alarm_range && alarm_obj.state == 0 && !ustrong_galaxy){
			if (last_hit_player != -4){
				if (get_player_damage( last_hit_player.player ) <= 100){
					can_cancel = true;
				}
				else{
					can_cancel = false;
				}
			}
			else{
				can_cancel = false;
			}
		}
		else{
			can_cancel = false;
		}


//alarm galaxy protection
if (alarm_out){
	with (oPlayer){
		if (hit_player_obj != noone){
			if (hit_player_obj.activated_kill_effect){
				with (asset_get("pHitBox")){
					if (player == other.player){
						if (attack == AT_DSPECIAL){
							destroyed = true;
						}
					}
				}
			}
		}
	}
}