//acticle1_update
//glowmodifier

if glowmodifier < .8 {
	glowmodifierdir = 1 
}
if glowmodifier > 1.2 {
	glowmodifierdir = -1
}

if glowmodifierdir = -1 {
	glowmodifier -= .01
}
if glowmodifierdir = 1 {
	glowmodifier += .01
}

if(state == 0){
    sprite_index = sprite_get("blackhole_inactive")
    mask_index = sprite_get("blackhole_inactive");
    if(image_yscale != 1){
        image_yscale = lerp(image_yscale, 1, 0.25)
    }else{
        state = 1
        sound_play(asset_get("sfx_clairen_sword_activate"))
    }
}

if(state == 1){
    sprite_index = sprite_get("blackhole_active")
    mask_index = sprite_get("blackhole_inactive");
    image_index += 0.25
    if(movement = "thinning"){
        image_yscale += 0.002
    }else if(movement = "widening"){
        image_yscale -= 0.002
    }
    if(image_yscale >= 1.05){
        movement = "widening"
    }else if(image_yscale <= 0.95){
        movement = "thinning"
    }
    image_xscale = 2 - image_yscale
 
    //Hitting the Article
    with (asset_get("pHitBox")){
    	if (place_meeting(x, y, other) ){
    		if(player_id != other.player_id && other.gotHit_timer <= 0 && attack != AT_DSPECIAL  && attack != AT_FSPECIAL){
    			if(other.state == 1 && other.state_timer > 2){
    				spawn_hit_fx(x, y, hit_effect)
    				sound_play(sound_effect)
    				sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    				other.gotHit_timer = 25
    				if(type == 1){
    					with(player_id){
    						old_hsp = hsp
    						old_vsp = vsp
    						hitstop = 6
    						hitstop_full = 6
    						hitpause = true
    					}
    				}
    				other.blackhole_hits += 1
    				if(kb_angle >= 0 && kb_angle < 55){
    				    var real_knockback_angle = 0
    				}else if(kb_angle >= 50 && kb_angle < 125){
    				    var real_knockback_angle = 90
    				}else if(kb_angle >= 125 && kb_angle < 210){
    				    var real_knockback_angle = 180
    				}else if(kb_angle >= 210 && kb_angle < 330){
    				    var real_knockback_angle = 270
    				}else{
    				    var real_knockback_angle = 0
    				}
    				other.hsp = (lengthdir_x(2, real_knockback_angle)) * spr_dir
    				other.vsp = lengthdir_y(2, real_knockback_angle)
    			}
    		}
    	}
    }
}

if(blackhole_hits > 3){
	state = 3
	state_timer = 0
	image_index = 0
}


if (y < 0 || y > room_height + 80){
	with oPlayer{
		//gravity_speed = old_gravity_speed	
		//hitstun_grav = old_hitstun_grav_speed
	}
	player_id.move_cooldown[AT_DSPECIAL] = 60
    instance_destroy();
    exit;
}

if (x < -80 || x > room_width + 80){
    with oPlayer{
		//gravity_speed = old_gravity_speed	
		//hitstun_grav = old_hitstun_grav_speed
	}
	player_id.move_cooldown[AT_DSPECIAL] = 60
    instance_destroy();
    exit;
}

if(state != 2){
	if(player_id.orbitting == true){
	    orbit_dir += (2 + player_id.orbit_timer / 10)
	    if(orbit_dir > 359){
	    	orbit_dir = 0
	    }
	    orbit_x = x + (lengthdir_x(90 - player_id.orbit_timer / 2.5, orbit_dir))
	    orbit_y = y + (lengthdir_y(90 - player_id.orbit_timer / 2.5, orbit_dir))
	}
	hsp /= 1.05
	vsp /= 1.05
	
	state_timer++
	if(hitstop <= 0){
	    gotHit_timer--
	}
	
	with oPlayer{
		if place_meeting(x, y, other) {
			invoid = 1;
			//gravity_speed = 0.01
			if(player == other.player){
				if(!free){
					if(left_down && momentum > -6){
						momentum -= 0.2
					}else if(right_down && momentum < 6){
						momentum += 0.2
					}
				}
				if(free){
					vsp -= 0.15
					if(left_down && hsp > -6){
						hsp -= 0.15
					}else if(right_down && hsp < 6){
						hsp += 0.15
					}
				}
			}else{
				if(state == PS_HITSTUN && !activated_kill_effect){
					x -= round(hsp * 0.4);
					y -= round(vsp * 0.4);
				}
				if(other.state_timer mod 40 == 0){
					take_damage(player, -1, 1)
					with(other){
						spawn_hit_fx(lerp(other.x, x, 0.4), lerp(other.y - 20, y, 0.4), vfx_space_extra_small)
					}
				}
				if(state != PS_HITSTUN){
					if(hsp > 3){
						hsp = 3
					}else if(hsp < -3){
						hsp = -3
					}
					if(vsp > 3){
						vsp = 5
					}else if(vsp < -3){
						vsp = -5
					}
				}
				if(right_down && hsp > -3){
						hsp -= 0.05
					}else if(left_down && hsp < 3){
						hsp += 0.05
					}
			}
			//hitstun_grav = 0.01
		}else{
			//gravity_speed = old_gravity_speed
			invoid = 0
		}
			if place_meeting(x, y, other){
				if(!down_down && player == other.player){
					if vsp > 2{
						vsp = 2
					}
				}else if(player != other.player){
					if vsp > 2{
						vsp = 2
					}
				}
			}
	}
	
   /*with (asset_get("pHitBox")){
    	if (place_meeting(x, y, other)) {
			if (player_id != other.player_id && type == 2) {
				sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
				destroy_hitboxes();
			}
		}
   }*/
}

if(detonate == true){
	state = 2
	state_timer = 0
}

if(state == 2){
	player_id.move_cooldown[AT_DSPECIAL] = 200
	player_id.orbitting = false
	with(oPlayer){
		invoid = 0
	}
	image_xscale = 1
	image_yscale = 1
	sprite_index = sprite_get("blackhole_explode")
    mask_index = sprite_get("blackhole_inactive");
    vsp = 0
    hsp = 0
    if(image_index == 1){
    	sound_play(asset_get("sfx_clairen_sword_activate"))
    	sound_play(asset_get("sfx_frog_dspecial_swallow"))
    }
    if(image_index == 11){
    	var blegh = create_hitbox(AT_DSPECIAL, 2, x, y)
    	blegh.spr_dir = 1
    	sound_play(asset_get("sfx_ell_explosion_medium"))
	    sound_play(asset_get("sfx_clairen_sword_deactivate"))
    }
    image_index += 0.25
    if(image_index >= 18){
		instance_destroy()
		exit;
    }
}

if(state == 3){
	sprite_index = sprite_get("blackhole_inactive")
	mask_index = sprite_get("blackhole_inactive")
	if(image_yscale > 0){
	image_yscale -= 0.1
	}else{
		sound_play(asset_get("sfx_clairen_sword_deactivate"))
		instance_destroy();
		exit;
	}
}