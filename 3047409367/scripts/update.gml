if (max_djumps != 1){
	if (djumps == 1){
		djump_speed = djump_speed_small;
	}
	else{
		djump_speed = djump_speed_base;
	}
}

if (state == PS_DASH){
	if (state_timer mod 12 == 0){
		spawn_hit_fx( x - 12*spr_dir, y - 8, dash_vfx );
	}
}

if (state == PS_RESPAWN || state == PS_DEAD){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}

//range stuff
var nano_id = id;

with (asset_get("oPlayer")){
	with (asset_get("obj_article1")){
        if (player_id == nano_id){
        	if (state == 1){ //check for idle state
	        	var col = collision_circle(x, y, range, other, false, true);
	        	
	            if (col != noone){
	            	//this variable is used to tell the daruma whether or not the player that got hit is in range!
	                other.in_daruma_range = true;
	                break; 
	                //end loop early so it doesn't check through every article
	            }
	            else{
	                other.in_daruma_range = false;
	            }
        	}
        }
    }
}

//doing this because the draw script runs before the attack update script
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	uspec_dir = joy_dir;
}

//for the strong charge parry protection stuff
if (!have_strong_charge_hitboxes_in_general){
	enable_strong_charge_hitboxes = false;
}

if (strong_charge_disable_timer > 0){
	strong_charge_disable_timer--;
	enable_strong_charge_hitboxes = false;
}
else{
	enable_strong_charge_hitboxes = true;
}

//reset dair counter
if (state == PS_HITSTUN || state == PS_WALL_JUMP || state == PS_DOUBLE_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    hover_uses = 0;
}

if (daruma_targets_anyone){
//hit detection stuff
with (oPlayer){
	if (variable_instance_exists(player, "hit_player_obj") && hit_player_obj != -4 && hit_player_obj != noone){
		if (has_hit_player && player != other.player && state != PS_HITSTUN){
			    if (hit_player_obj.in_daruma_range || in_daruma_range){
			            if (hit_player_obj.state == PS_HITSTUN){
			            	if (hit_player_obj.player_id != nano_id){
				                with (obj_article1){
				                    if (player_id == nano_id){
				                        if (state == 1){
				                        	target_id = other.hit_player_obj;
				                            targetter_id = other;
				                            state = 4;
				                            state_timer = 0;
				                            break;
				                            //end loop early to not loop through every daruma
				                        }
				                    }
				                }
			            	}
			            }
			    }
		}
	}
}
}

//vfx
with hit_fx_obj if player_id == other{
  if (hit_fx == other.slapstick_dust || hit_fx == other.slapstick_dust_small || hit_fx == other.petal_small){
    depth = player_id.depth+1
  }
}