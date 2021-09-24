 //B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Nspecial Magnet Grab
if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window == 2 && grabbedid != noone){
    grabbedid.invincible = false
	grabbedid.ungrab = 0;
	grabbedid.vsp = 0
	grabbedid.hsp = 0
	if(grabbedid.state == PS_HITSTUN){
		grabbedid.x = lerp(grabbedid.x, x, 0.08); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
		grabbedid.y = lerp(grabbedid.y, y, 0.08); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
		grabbedid.hitpause = true
		grabbedid.hitstop = 2
		grabbedid.hitstop_full = 2
	}else{
		grabbedid.x = lerp(grabbedid.x, x, 0.05); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
		grabbedid.y = lerp(grabbedid.y, y, 0.05); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	}
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        //if(window == 2){
	        
        //}
        if(nspecial_extended_window && !(instance_exists(flying_rock1) || instance_exists(flying_rock2) || instance_exists(flying_rock3))){
        	window = 3
        	window_timer = 0
        }
    }else if(window == 3){
    	grabbedid = noone
    }
}

if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window == 2 && grabbedid != noone && (instance_exists(flying_rock1) || instance_exists(flying_rock2) || instance_exists(flying_rock3))){
    grabbedid.invincible = false
	grabbedid.ungrab = 0;
	grabbedid.vsp = 0
	grabbedid.hsp = 0
	if(grabbedid.state == PS_HITSTUN){
		grabbedid.x = lerp(grabbedid.x, x, 0.08); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
		grabbedid.y = lerp(grabbedid.y, y, 0.08); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
		grabbedid.hitpause = true
		grabbedid.hitstop = 2
		grabbedid.hitstop_full = 2
	}else{
		grabbedid.x = lerp(grabbedid.x, x, 0.05); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
		grabbedid.y = lerp(grabbedid.y, y, 0.05); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	}
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        //if(window == 2){
	        
        //}
    }else if(window == 3){
    	grabbedid = noone
    }
}

if (attack == AT_UAIR){
	if (window == 1 && window_timer == 11){
		if (spr_dir == 1){
		spawn_hit_fx( x + 42, y - 45, bat_sweetspot );
		} else if (spr_dir == -1){
		spawn_hit_fx( x - 42, y - 45, bat_sweetspot );
		}
	}
}

if(attack == AT_FSTRONG){
	if(window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_swipe_medium1"))
	}
}

if (attack == AT_DAIR){
	if (window == 3 && window_timer == 15){
		set_state( PS_IDLE_AIR );
	}
}

if (attack == AT_BAIR){
	if (window == 3 && window_timer == 16){
		set_state( PS_IDLE_AIR );
	}
}
   	
if(attack == AT_USPECIAL){
	if(window == 1){
		rock_hit = false
		if(window_timer == 9){
			state_timer = -20
			if(!instance_exists(flying_rock1)){
				flying_rock1_uspecial = true
				flying_rock1 = instance_create(x, y - 5, "obj_article1")
				if(left_down){
					flying_rock1.hsp = 2 + random_func_2(1, 5, true)
				}else if(right_down){
					flying_rock1.hsp = -2 - random_func_2(1, 6, true)
				}else{
					flying_rock1.hsp = -3 + random_func_2(1, 7, true)
				}
				flying_rock1.vsp = 3
				flying_rock1.state = 2
			}else{
				flying_rock1_uspecial = false
			}
			if(!instance_exists(flying_rock2)){
				flying_rock2_uspecial = true
				flying_rock2 = instance_create(x, y - 5, "obj_article1")
				if(left_down){
					flying_rock2.hsp = 2 + random_func_2(2, 5, true)
				}else if(right_down){
					flying_rock2.hsp = -2 - random_func_2(2, 6, true)
				}else{
					flying_rock2.hsp = -3 + random_func_2(2, 7, true)
				}
				flying_rock2.vsp = 6
				flying_rock2.state = 2
			}else{
				flying_rock2_uspecial = false
			}
			if(!instance_exists(flying_rock3)){
				flying_rock3_uspecial = true
				flying_rock3 = instance_create(x, y - 5, "obj_article1")
				if(left_down){
					flying_rock3.hsp = 2 + random_func_2(3, 5, true)
				}else if(right_down){
					flying_rock3.hsp = -2 - random_func_2(3, 6, true)
				}else{
					flying_rock3.hsp = -3 + random_func_2(3, 7, true)
				}
				flying_rock3.vsp = 9
				flying_rock3.state = 2
			}else{
				flying_rock3_uspecial = false
			}
		}
	}
	if(window == 2){
		colCir = collision_circle(x, y - 25, 130, oPlayer, true, true);
		grabbedid = colCir
		if(colCir != noone){
			if(!grabbedid.free){
				grabbedid.y -= 2
			}
		}
		if(state_timer mod 10 == 0 && !hitpause){
			var magnet_vfx = instance_create(x, y, "obj_article2")
			magnet_vfx.image_xscale = 1
			magnet_vfx.image_yscale = 1
			magnet_vfx.movement = 1
		}
		if(!rock_hit){
			if(shield_pressed && window_timer > 8 && (flying_rock1_uspecial || flying_rock2_uspecial || flying_rock3_uspecial)){
				sound_play(asset_get("mfx_back"))
				set_state(PS_PRATFALL)
				vsp = -3
				create_hitbox(AT_NSPECIAL, 3, x, y)
				if(flying_rock1_uspecial){
					flying_rock1.state = 2
					flying_rock1.hsp = -1 + random_func_2(1, 3, true)
					flying_rock1.vsp = -2
				}
				if(flying_rock2_uspecial){
					flying_rock2.state = 2
					flying_rock2.hsp = -1 + random_func_2(2, 3, true)
					flying_rock2.vsp = -2
				}
				if(flying_rock3_uspecial){
					flying_rock3.state = 2
					flying_rock3.hsp = -1 + random_func_2(3, 3, true)
					flying_rock3.vsp = -2
				}
				exit;
				
			}
		}
	}
	if(window <= 2){
		hsp /= 1.1
		vsp /= 1.1
		can_move = false
	}
	if(window == 2 && window_timer > 10 || window == 3){
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.75);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.95);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 303);
		if(flying_rock1_uspecial == true){
			extended_nspecial_window = true
		}else if(flying_rock2_uspecial == false && flying_rock3_uspecial == false){
			extended_nspecial_window = false
		}
		if(flying_rock2_uspecial == true){
			extended_nspecial_window = true
		}else if(flying_rock1_uspecial == false && flying_rock3_uspecial == false){
			extended_nspecial_window = false
		}
		if(flying_rock3_uspecial == true){
			extended_nspecial_window = true
		}else if(flying_rock1_uspecial == false && flying_rock2_uspecial == false){
			extended_nspecial_window = false
		}
		if(window == 2){
			if(extended_nspecial_window){
				window_timer = 11
			}
		}else if(window == 3){
			if(extended_nspecial_window){
				window_timer = 0
			}
		}
		if(instance_exists(flying_rock1) && flying_rock1_uspecial == true){
			flying_rock1.spr_dir = 1
			flying_rock1.magnet = true
			flying_rock1.ignores_walls = true; 
			flying_rock1.sprite_index = sprite_get("flying_rock")
			flying_rock1.state = 0
			flying_rock1.image_angle = point_direction(flying_rock1.x, flying_rock1.y, x, y) + 45
			if(hitpause == false){
				flying_rock1.vsp = (floor((state_timer * -1) / 3)) * sin(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));;
				flying_rock1.hsp = (floor(state_timer / 4))* cos(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));
			}else{
				flying_rock1.hsp = 0
				flying_rock1.vsp = 0
			}
			if(distance_to_object(flying_rock1) < 2){
				rock_hit = true
				flying_rock1_uspecial = false
				vsp = (floor((state_timer * -1) / 3))* sin(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));
				hsp = (floor(state_timer / 6)) * cos(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));
				sound_play(asset_get("sfx_blow_medium1"))
				spawn_hit_fx(flying_rock1.x, flying_rock1.y - 10, 193)
				instance_destroy(flying_rock1)
				if(hsp > 0){
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
					}
				}else{
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
					}
				}
				create_hitbox(AT_NSPECIAL, 1, x, y - 20)
				rock_hit = true
			}
		}
		if(instance_exists(flying_rock2) && flying_rock2_uspecial == true){
			flying_rock2.spr_dir = 1
			flying_rock2.magnet = true
			flying_rock2.ignores_walls = true; 
			flying_rock2.sprite_index = sprite_get("flying_rock")
			flying_rock2.state = 0
			flying_rock2.image_angle = point_direction(flying_rock2.x, flying_rock2.y, x, y) + 45
			if(hitpause == false){
				flying_rock2.vsp = (floor((state_timer * -1) / 3)) * sin(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));;
				flying_rock2.hsp = (floor(state_timer / 4))* cos(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));
			}else{
				flying_rock2.hsp = 0
				flying_rock2.vsp = 0
			}
			if(distance_to_object(flying_rock2) < 2){
				rock_hit = true
				flying_rock2_uspecial = false
				vsp = (floor((state_timer * -1) / 3))* sin(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));
				hsp = (floor(state_timer / 6)) * cos(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));
				sound_play(asset_get("sfx_blow_medium2"))
				spawn_hit_fx(flying_rock2.x, flying_rock2.y - 10, 193)
				instance_destroy(flying_rock2)
				if(hsp > 0){
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
					}
				}else{
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
					}
				}
				create_hitbox(AT_NSPECIAL, 1, x, y - 20)
				rock_hit = true
			}
		}
		if(instance_exists(flying_rock3) && flying_rock3_uspecial == true){
			flying_rock3.spr_dir = 1
			flying_rock3.magnet = true
			flying_rock3.ignores_walls = true; 
			flying_rock3.sprite_index = sprite_get("flying_rock")
			flying_rock3.state = 0
			flying_rock3.image_angle = point_direction(flying_rock3.x, flying_rock3.y, x, y) + 45
			if(hitpause == false){
				flying_rock3.vsp = (floor((state_timer * -1) / 3)) * sin(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));;
				flying_rock3.hsp = (floor(state_timer / 4))* cos(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));
			}else{
				flying_rock3.hsp = 0
				flying_rock3.vsp = 0
			}
			if(distance_to_object(flying_rock3) < 2){
				rock_hit = true
				flying_rock3_uspecial = false
				vsp = (floor((state_timer * -1) / 3))* sin(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));
				hsp = (floor(state_timer / 6)) * cos(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));
				sound_play(asset_get("sfx_blow_medium3"))
				spawn_hit_fx(flying_rock3.x, flying_rock3.y - 10, 193)
				instance_destroy(flying_rock3)
				if(hsp > 0){
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
					}
				}else{
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
					}
				}
				create_hitbox(AT_NSPECIAL, 1, x, y - 20)
				rock_hit = true
			}
		}
	}
}

if(attack == AT_NSPECIAL){
	if(hit_enemy_nspec == false){
		set_num_hitboxes(AT_NSPECIAL, 2);
	}else{
		set_num_hitboxes(AT_NSPECIAL, 1);
	}
	if(window == 1){
		if(window_timer == 1){
			state_timer = 0
		}
		rock_hit = false
		hit_enemy_nspec = false
		spinny_rocks_var = 0
		move_cooldown[AT_NSPECIAL] = 50
	}
	if(window <= 2){
		colCir = collision_circle(x, y - 25, 130, oPlayer, true, true);
		grabbedid = colCir
		if(colCir != noone){
			if(!grabbedid.free){
				grabbedid.y -= 2
			}
		}
		if(state_timer mod 10 == 0 && !hitpause){
			var magnet_vfx = instance_create(x, y, "obj_article2")
			magnet_vfx.image_xscale = 1
			magnet_vfx.image_yscale = 1
			magnet_vfx.movement = 1
		}
		can_move = false
		hsp /= 1.1
		vsp /= 1.1
		if(rock_hit == true){
			if(jump_pressed && djumps < 2){
				set_state(PS_DOUBLE_JUMP)
				if(instance_exists(flying_rock1)){
					flying_rock1.state = 2
					if(x > flying_rock1.x){
						flying_rock1.hsp = 4
					}else{
						flying_rock1.hsp = -4
					}
					flying_rock1.vsp = -3
				}
				if(instance_exists(flying_rock2)){
					flying_rock2.state = 2
					if(x > flying_rock2.x){
						flying_rock2.hsp = 4
					}else{
						flying_rock2.hsp = -4
					}
					flying_rock2.vsp = -3
				}
				if(instance_exists(flying_rock3)){
					flying_rock3.state = 2
					if(x > flying_rock3.x){
						flying_rock3.hsp = 4
					}else{
						flying_rock3.hsp = -4
					}
					flying_rock3.vsp = -3
				}
				exit;
			}
		}
	}
	if(window == 2){
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4 + floor(state_timer / 12));
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2 + floor(state_timer / 10));
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6 + floor(state_timer / 120));
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4 + floor(state_timer / 10));
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6 + floor(state_timer / 100));
		if(state_timer < 40){
			set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 303);
		}else if(state_timer >= 40){
			set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 304);
		}
		if(instance_exists(flying_rock1)){
			extended_nspecial_window = true
		}else if(!instance_exists(flying_rock2) && !instance_exists(flying_rock3)){
			extended_nspecial_window = false
		}
		if(instance_exists(flying_rock2)){
			extended_nspecial_window = true
		}else if(!instance_exists(flying_rock1) && !instance_exists(flying_rock3)){
			extended_nspecial_window = false
		}
		if(instance_exists(flying_rock3)){
			extended_nspecial_window = true
		}else if(!instance_exists(flying_rock1) && !instance_exists(flying_rock2)){
			extended_nspecial_window = false
		}
		if(window_timer > 8){
			if(extended_nspecial_window){
				window_timer = 13
			}
		}
		if(instance_exists(flying_rock1)){
			flying_rock1.spr_dir = 1
			flying_rock1.magnet = true
			flying_rock1.ignores_walls = true; 
			flying_rock1.sprite_index = sprite_get("flying_rock")
			flying_rock1.state = 0
			flying_rock1.image_angle = point_direction(flying_rock1.x, flying_rock1.y, x, y) + 45
			if(hitpause == false){
				flying_rock1.vsp = (floor((state_timer * -1) / 3)) * sin(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));;
				flying_rock1.hsp = (floor(state_timer / 3)) * cos(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));
			}else{
				flying_rock1.vsp = 0
				flying_rock1.hsp = 0
			}
			if(distance_to_object(flying_rock1) < 2){
				vsp = (floor((state_timer * -1) / 6))* sin(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));
				hsp = (floor(state_timer / 6)) * cos(degtorad(point_direction(flying_rock1.x, flying_rock1.y, x, y)));
				sound_play(asset_get("sfx_blow_medium1"))
				spawn_hit_fx(flying_rock1.x, flying_rock1.y - 10, 193)
				instance_destroy(flying_rock1)
				if(hsp > 0){
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 130);
					}
				}else{
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 130);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
					}
				}
				create_hitbox(AT_NSPECIAL, 1, x, y - 20)
				rock_hit = true
			}
		}
		if(instance_exists(flying_rock2)){
			flying_rock2.spr_dir = 1
			flying_rock2.magnet = true
			flying_rock2.ignores_walls = true; 
			flying_rock2.sprite_index = sprite_get("flying_rock")
			flying_rock2.state = 0
			flying_rock2.image_angle = point_direction(flying_rock2.x, flying_rock2.y, x, y) + 45
			if(hitpause == false){
				flying_rock2.vsp = (floor((state_timer * -1) / 3)) * sin(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));;
				flying_rock2.hsp = (floor(state_timer / 3)) * cos(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));
			}else{
				flying_rock2.vsp = 0
				flying_rock2.hsp = 0
			}
			if(distance_to_object(flying_rock2) < 2){
				vsp = (floor((state_timer * -1) / 6))* sin(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));
				hsp = (floor(state_timer / 6)) * cos(degtorad(point_direction(flying_rock2.x, flying_rock2.y, x, y)));
				sound_play(asset_get("sfx_blow_medium2"))
				spawn_hit_fx(flying_rock2.x, flying_rock2.y - 10, 193)
				instance_destroy(flying_rock2)
				if(hsp > 0){
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 135);
					}
				}else{
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 135);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
					}
				}
				create_hitbox(AT_NSPECIAL, 1, x, y - 20)
				rock_hit = true
			}
		}
		if(instance_exists(flying_rock3)){
			flying_rock3.spr_dir = 1
			flying_rock3.magnet = true
			flying_rock3.ignores_walls = true; 
			flying_rock3.sprite_index = sprite_get("flying_rock")
			flying_rock3.state = 0
			flying_rock3.image_angle = point_direction(flying_rock3.x, flying_rock3.y, x, y) + 45
			if(hitpause == false){
				flying_rock3.vsp = (floor((state_timer * -1) / 3)) * sin(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));;
				flying_rock3.hsp = (floor(state_timer / 3)) * cos(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));
			}else{
				flying_rock3.vsp = 0
				flying_rock3.hsp = 0
			}
			if(distance_to_object(flying_rock3) < 2){
				vsp = (floor((state_timer * -1) / 6))* sin(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));
				hsp = (floor(state_timer / 6)) * cos(degtorad(point_direction(flying_rock3.x, flying_rock3.y, x, y)));
				sound_play(asset_get("sfx_blow_medium3"))
				spawn_hit_fx(flying_rock3.x, flying_rock3.y - 10, 193)
				instance_destroy(flying_rock3)
				if(hsp > 0){
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 135);
					}
				}else{
					if(spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 135);
					}else{
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
					}
				}
				create_hitbox(AT_NSPECIAL, 1, x, y - 20)
				rock_hit = true
			}
		}
	}
	if(window == 2){
		if(window_timer == 15){
			if(hit_enemy_nspec == false){
				var magnet_vfx = instance_create(x, y, "obj_article2")
				magnet_vfx.image_xscale = 0.3
				magnet_vfx.image_yscale = 0.3
				magnet_vfx.movement = -2
				magnet_vfx.image_index = 3
			}
		}
	}
}

if(attack == AT_DSPECIAL){
	if(window == 2 && window_timer > 5){
		if(special_pressed){
			set_attack(AT_DSPECIAL_AIR)
		}
	}
}
if(attack == AT_DSPECIAL_AIR){
	if(window == 2 && window_timer == 23){
		if(was_parried){
			set_state(PS_PRATFALL)
		}else{
			set_state(PS_IDLE_AIR)
		}
	}
	if(window == 2 && !free){
		window = 3
		window_timer = 0
		sound_play(asset_get("sfx_blow_weak1"))
		sound_play(asset_get("sfx_kragg_rock_shatter"))
		if(instance_exists(flying_rock1)){
			if(flying_rock1.state == 1){
				if(flying_rock1.grounded_state == "ground"){
					flying_rock1.vsp = -8
					flying_rock1.state = 2
					spawn_hit_fx(flying_rock1.x, flying_rock1.y, 193)
				}else if(flying_rock1.grounded_state == "wall"){
					flying_rock1.hsp = -8*flying_rock1.spr_dir
					flying_rock1.state = 2
					spawn_hit_fx(flying_rock1.x, flying_rock1.y - 10, 193)
				}
			}
		}
		if(instance_exists(flying_rock2)){
			if(flying_rock2.state == 1){
				if(flying_rock2.grounded_state == "ground"){
					flying_rock2.vsp = -8
					flying_rock2.state = 2
					spawn_hit_fx(flying_rock2.x, flying_rock2.y, 193)
				}else if(flying_rock2.grounded_state == "wall"){
					flying_rock2.hsp = -8*flying_rock2.spr_dir
					flying_rock2.state = 2
					spawn_hit_fx(flying_rock2.x, flying_rock2.y - 10, 193)
				}
			}
		}
		if(instance_exists(flying_rock3)){
			if(flying_rock3.state == 1){
				if(flying_rock3.grounded_state == "ground"){
					flying_rock3.vsp = -8
					flying_rock3.state = 2
					spawn_hit_fx(flying_rock3.x, flying_rock3.y, 193)
				}else if(flying_rock3.grounded_state == "wall"){
					flying_rock3.hsp = -8*flying_rock3.spr_dir
					flying_rock3.state = 2
					spawn_hit_fx(flying_rock3.x, flying_rock3.y - 10, 193)
				}
			}
		}
	}
}
if(attack == AT_FSPECIAL_AIR){
	if(!free){
	set_state(PS_LANDING_LAG)
	}
	if(window == 2 && window_timer == 3){
		if(!instance_exists(flying_rock1)){
			flying_rock1 = instance_create(x - 20*spr_dir, y + 5, "obj_article1")
			flying_rock1.hsp = 5*spr_dir
			flying_rock1.vsp = 6
		}else if(!instance_exists(flying_rock2)){
			flying_rock2 = instance_create(x - 20*spr_dir, y + 5, "obj_article1")
			flying_rock2.hsp = 5*spr_dir
			flying_rock2.vsp = 6
		}else if(!instance_exists(flying_rock3)){
			flying_rock3 = instance_create(x - 20*spr_dir, y + 5, "obj_article1")
			flying_rock3.hsp = 5*spr_dir
			flying_rock3.vsp = 6
		}
	}
}

if(attack == AT_FSPECIAL){
	if(window == 2 && window_timer == 3){
		if(!instance_exists(flying_rock1)){
			flying_rock1 = instance_create(x - 20*spr_dir, y - 40, "obj_article1")
			flying_rock1.hsp = 3*spr_dir
			flying_rock1.vsp = -7
			flying_rock1.state = 2
		}else if(!instance_exists(flying_rock2)){
			flying_rock2 = instance_create(x - 20*spr_dir, y - 40, "obj_article1")
			flying_rock2.hsp = 3*spr_dir
			flying_rock2.vsp = -7
			flying_rock2.state = 2
		}else if(!instance_exists(flying_rock3)){
			flying_rock3 = instance_create(x - 20*spr_dir, y - 40, "obj_article1")
			flying_rock3.hsp = 3*spr_dir
			flying_rock3.vsp = -7
			flying_rock3.state = 2
		}
	}
}

if(attack == AT_USTRONG){
	if(window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_swipe_medium2"))
	}
}

if(attack == AT_TAUNT){
	if(window > 1 && window < 4){
		char_height = lerp(char_height, 80, 0.3)
	}else{
		char_height = lerp(char_height, 52, 0.3)
	}
	if(window == 3){
		if(window_timer == 4){
			sound_play(asset_get("sfx_birdflap"))
		}
		if(window_timer == 32){
			if(taunt_down){
				window = 2
				window_timer = 0
			}else{
				window = 4
				window_timer = 0
			}
		}
	}
}