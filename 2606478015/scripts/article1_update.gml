
if(state == 0){ //AERIAL
gyro_pickup = false
    sprite_index = sprite_get("gyro_spin")
    gyro_wiggle = 0
    image_index += gyro_spin_rate / 20
    
    //stored vsp
    if(vsp != 0){
        stored_vsp = vsp
    }
    
    //hitbox
    if(hit_timer < 0 && gyro_spin_rate > 1){
    	if(state_timer mod 2 == 0){
        var gyro_hitbox = create_hitbox(AT_DSPECIAL, 3, x, y + 10)
    	}
    }
    
    //if grounded
    if(!free){
        if(vsp == 0){
        	if(hsp < 1 && hsp > -1){
            	hsp = 0
            }
            if(hsp == 0){
                state = 1
                state_timer = 0
            }
            vsp = (stored_vsp * -1) / 2
            hsp /= 1.5
        }
    }else{
        //gravity
        if(vsp < 8){
        vsp += 0.4
        }else{
        	vsp = 8
        }
    }
    hitbox_check = instance_place(x, y, pHitBox);
    if (hitbox_check != noone){
    	if(hitbox_check.player_id == player_id && hitbox_check.attack != AT_DSPECIAL && gotHit_timer <= 0){
			if(hitbox_check.attack == AT_NSPECIAL && hitbox_check.hbox_num == 1 && gotHit_timer <= 0 && hitbox_check.player_id == player_id && gyro_spin_rate > 1 && hitbox_check.gyrobounce == false && instance_exists(player_id.laser)){
				spawn_hit_fx(x, y, laser_gyrobounce_fx)
				with(player_id){
                    laser_new = create_hitbox(AT_NSPECIAL, 1, laser.x, laser.y)
                    laser_new.sprite_index = laser.sprite_index
                    laser_new.hsp = laser.hsp * -1
                    laser_new.vsp = laser.vsp
                    laser_new.proj_angle = laser.proj_angle * -1
                    laser_new.spr_dir = laser.spr_dir * -1
                    sound_play(asset_get("sfx_clairen_tip_weak"))
                    gotHit_timer = 25
                    laser_new.gyrobounce = true
                    laser_new.length = laser.length
                    laser_new.kb_angle = laser.kb_angle
                    instance_destroy(laser)
				}
			}
		}else if(gotHit_timer <= 0 && hitbox_check.player_id != player_id){
			spawn_hit_fx(x, y, hitbox_check.hit_effect)
			sound_play(hitbox_check.sound_effect)
			hitstop = 8
			hitstop_full = 8
			hitpause = true
			with(hitbox_check.player_id){
				old_hsp = hsp
				old_vsp = vsp
				hitstop = 8
				hitstop_full = 8
				hitpause = true
			}
			instance_destroy();
			exit;
    	}
    }
    if(gotHit_timer > 0){
    	gotHit_timer--
    }
}

if(state == 1){ //GROUNDED
gyro_pickup = false
    if(gotHit_timer > 0){
    	gotHit_timer--
    }
    if(free){
    	if(vsp < 8){
        vsp += 0.4
        }else{
        	vsp = 8
        }
        state = 0
    }else{
    	if(hsp < 1 && hsp > -1){
    		hsp = 0
    	}else{
    		hsp /= 0.5
    	}
    	if(state_timer == 0){
    	hsp = 0
    	vsp = 0
    	}
    }
    image_index += gyro_spin_rate / 20
    if(gyro_spin_rate > 2.5){
        sprite_index = sprite_get("gyro_spin")
        if(hit_timer < 0){
        	if(state_timer mod 2 == 0){
        		if(thrown == false){
        			var gyro_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y + 10)
        		}else{
        			var gyro_hitbox = create_hitbox(AT_DSPECIAL, 3, x, y + 10)
        		}
        	}
        }
        if(gyro_wiggle_timer < 0){
            gyro_wiggle = -1 + random_func_2(1, 3, true)
            gyro_wiggle_timer = 20
        }
        x += gyro_wiggle
    }else{
        sprite_index = sprite_get("gyro_wobble")
        if(hit_timer < 0 && gyro_spin_rate > 1){
        	if(state_timer mod 2 == 0){
    			var gyro_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y + 10)
        	}
        }
    }
    if(gyro_spin_rate > 0){
        gyro_spin_rate -= 0.01
    }else{
        gyro_spin_rate = 0
    }
    hitbox_check = instance_place(x, y, pHitBox);
    if (hitbox_check != noone && gyro_spin_rate > 1){
    	if(hitbox_check.player_id == player_id && hitbox_check.attack != AT_DSPECIAL && gotHit_timer <= 0){
			if(hitbox_check.attack == AT_NSPECIAL && hitbox_check.hbox_num == 1 && gotHit_timer <= 0 && hitbox_check.player_id == player_id && gyro_spin_rate > 1 && hitbox_check.gyrobounce == false && instance_exists(player_id.laser)){
				spawn_hit_fx(x, y, laser_gyrobounce_fx)
				with(player_id){
                    laser_new = create_hitbox(AT_NSPECIAL, 1, laser.x, laser.y)
                    laser_new.sprite_index = laser.sprite_index
                    laser_new.hsp = laser.hsp * -1
                    laser_new.vsp = laser.vsp
                    laser_new.proj_angle = laser.proj_angle * -1
                    laser_new.spr_dir = laser.spr_dir * -1
                    sound_play(asset_get("sfx_clairen_tip_weak"))
                    gotHit_timer = 25
                    laser_new.gyrobounce = true
                    laser_new.length = laser.length
                    laser_new.kb_angle = laser.kb_angle
                    instance_destroy(laser)
				}
			}
		}else if(gotHit_timer <= 0 && hitbox_check.player_id != player_id){
			spawn_hit_fx(x, y, hitbox_check.hit_effect)
			sound_play(hitbox_check.sound_effect)
			hitstop = 8
			hitstop_full = 8
			hitpause = true
			with(hitbox_check.player_id){
				old_hsp = hsp
				old_vsp = vsp
				hitstop = 8
				hitstop_full = 8
				hitpause = true
			}
			if(gyro_spin_rate > 1){
				gyro_spin_rate = 1
			}else{
				gyro_spin_rate = 0
			}
    	}
    }
}

if(state == 2){ //PICKED UP
	sprite_index = sprite_get("gyro_spin")
	gyro_pickup = true
	if(state_timer == 0){
		x = player_id.x
		y = player_id.y
	}
	x = lerp(x, player_id.x + 30*player_id.spr_dir, 0.6)
	y = player_id.y - 30
	spr_dir = player_id.spr_dir
}

if (y > room_height + 80){ //|| y < 0 (less jank this way)
	if(!gyro_pickup){
	    instance_destroy();
	    exit;
	}
}

if (x < -200 || x > room_width + 200){
	if(!gyro_pickup){
	    instance_destroy();
	    exit;
	}
}

state_timer++
hit_timer--
gyro_wiggle_timer--