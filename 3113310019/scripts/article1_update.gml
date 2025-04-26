//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Open
- 1 Idle
- 2 Dying
- 3 Bounce
- 4 Attacking
- 5 Closed

*/
	//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

    if (state != 2) && (reflect_cooldown <= 0){
    	with (asset_get("pHitBox")){
    		if (player != other.player_id.player){
				if collision_rectangle(
				other.x - 56, 
				other.y - 72, 
				other.x + 56, 
				other.y - 18, 
				self, true, false){
					if (type == 2) && (does_not_reflect == false) 
					&& !(other.state == 3 && other.state < 16 && reflected == true){
						with (other){
							sound_play (sound_get ("deflect"));
							if !(state = 3 && state_timer < 16) && state != 4{
								state = 3;
								state_timer = 4;
								image_index = 0;
							}
							if (state == 4) reflect_cooldown = 5;
						}
						was_parried = true;
						reflected = true;
						spr_dir *= -1;
						draw_xscale *= -1;
						hsp *= -1;
						vsp = -abs(vsp);
						//length *= 2;
						can_hit_self = true;
						can_hit[other.player] = false;
					}
    			}
    		}
    	}
	}
	if (state != 2) && (state != 4) {
		with (asset_get("pHitBox")){
    		if (get_player_team(player) != get_player_team(other.player)){
    			if collision_rectangle(
				other.x - 24, 
				other.y - 48, 
				other.x + 24, 
				other.y - 0, 
				self, true, false) && (type != 2){
    				other.hitbox_hit = self;
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
                    other.hitstop = hitpause;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
			/*
			if (hitbox_hit.player_id.free == true){
				state = 4;
				state_timer = 33;
			} else {
			*/
				state = 2;
				state_timer = 0;
			//}
			player_id.umbrellaleaf_recharge = 0;
    		with (hitbox_hit){
        		sound_play(sound_effect);
        		spawn_hit_fx(x, y, hit_effect);
    		}
    		hitbox_hit.player_id.hitpause = true;
    		hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    		hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp;
    		hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp;
    		hitbox_hit.player_id.has_hit = true;
    		hitstop = hitbox_hit.hitpause;
    		hitby = hitbox_hit.player_id;
    	}
    } else hitbox_hit = noone;

//bounce
if (state != 2 && state != 5){
	with pHitBox{
	    if collision_rectangle(
		other.x - 56, 
		other.y - 56, 
		other.x + 56, 
		other.y - 18, 
		self, true, false) 
		&& (player_id == other.player_id){
			
			// projectiles
			if (attack == AT_JAB && hbox_num == 3){
				if (vsp > -3){
					umbrellaleaf_bounces += 1;
					vsp = -12;
					length *= 2;
					damage = 12;
					sound_play (sound_get ("deflect"));
					with (other){
						if !(state = 3 && state_timer < 11) && state != 4{
							state = 3;
							state_timer = 4;
							image_index = 0;
						}
						other.hsp = (other.hsp*.5) + hsp*2;
					}
				}
			}
			if (attack == AT_EXTRA_2 && hbox_num == 5){
				if (vsp > -3){
					umbrellaleaf_bounces += 1;
					hsp = (-10 * (abs(hsp)/hsp));
					vsp = -8;
					length *= 2;
					damage = 12;
					draw_xscale *= -1;
					sound_play (sound_get ("deflect"));
					with (other){
						if !(state = 3 && state_timer < 11) && state != 4{
							state = 3;
							state_timer = 4;
							image_index = 0;
						}
					}
				}
			}
			if (attack == AT_USTRONG && hbox_num == 1){
				if (vsp > -5){
					umbrellaleaf_bounces += 1;
					var closest_distance = 9999999999999;
					var closest_player = noone;
					with (oPlayer) if (get_player_team(player) != get_player_team(other.player)){
						if (distance_to_object(other) < closest_distance){
							closest_distance = distance_to_object(other);
							closest_player = self;
						}
					}
					if (umbrellaleaf_bounces < 5){
						vsp = -14;
						hsp = other.hsp;
					} else {
						vsp = -8;
						if (closest_player == noone) || (closest_player.x - x == 0) hsp = 12 * spr_dir;
						else hsp = 12 * ((closest_player.x - x) / abs(closest_player.x - x));
						umbrellaleaf_bounces = 1;
					}
					length *= 2;
					damage = 12;
					if (closest_player != noone) && (closest_player.x - x != 0){
						draw_xscale = (closest_player.x - x) / abs(closest_player.x - x);
					}
					sound_play (sound_get ("deflect"));
					with (other){
						if !(state = 3 && state_timer < 11) && state != 4{
							state = 3;
							state_timer = 4;
							image_index = 0;
						}
					}
				}
			}
			if (attack == AT_NSPECIAL && hbox_num == 1){
				if (vsp > 0){
					umbrellaleaf_bounces += 1;
					vsp = (abs(hsp) * -1) - 3;
					//hsp = hsp - (12 * (abs(hsp)/hsp));
					hsp = (12 * spr_dir) - hsp;
					length *= 2;
					damage = 12;
					sound_play (sound_get ("deflect"));
					with (other){
						if !(state = 3 && state_timer < 11) && state != 4{
							state = 3;
							state_timer = 4;
							image_index = 0;
						}
					}
				}
			}
			if (attack == 49 && hbox_num == 1){
				if (vsp > -5){
					umbrellaleaf_bounces += 1;
					var closest_distance = 9999999999999;
					var closest_player = noone;
					with (oPlayer) if (get_player_team(player) != get_player_team(other.player)){
						if (distance_to_object(other) < closest_distance){
							closest_distance = distance_to_object(other);
							closest_player = self;
						}
					}
					if (umbrellaleaf_bounces < 2){
						vsp = -28;
					} else {
						vsp = -8;
						if (closest_player == noone) hsp = 12 * spr_dir;
						else hsp = 12 * ((closest_player.x - x) / abs(closest_player.x - x));
						umbrellaleaf_bounces = 1;
					}
					length *= 2;
					damage = 12;
					if (closest_player != noone) draw_xscale = (closest_player.x - x) / abs(closest_player.x - x);
					sound_play (sound_get ("deflect"));
					with (other){
						if !(state = 3 && state_timer < 11) && state != 4{
							state = 3;
							state_timer = 4;
							image_index = 0;
						}
					}
				}
			}
			
			// you
			if (attack == AT_DAIR) && (hbox_num == 1) && (player_id.window < 5){
				/*
				image_xscale = 0.5;
				image_yscale = 0.4;
				y_pos = 8;
				*/
				with player_id{
					move_cooldown[AT_DAIR] = 40;
					move_cooldown[AT_FSPECIAL] = 40;
					window = 5;
					window_timer = 0;
					
					hitpause = true;
					hitstop_full = hitpause;
					hitstop = 4;
					old_vsp = -12 + min(umbrellaleaf_dair_bounces*2, 6);
					old_hsp = clamp(hsp, -5, 5);
					
					umbrellaleaf_dair_bounces++;
					//destroy_hitboxes();
				}
				sound_play (sound_get ("deflect"));
				with (other){
					if !(state = 3 && state_timer < 11) && state != 4{
						state = 3;
						state_timer = 4;
						image_index = 0;
					}
				}
			}
		}
		
		// glider
		if collision_rectangle(
		other.x - 36, 
		other.y - 56, 
		other.x + 36, 
		other.y - 0, 
		self, true, false) 
		&& (player_id == other.player_id){
			if (attack == AT_FSPECIAL) && (!has_hit){
				hit_priority = 0;
				with player_id{
					destroy_hitboxes();
					attack = AT_FSPECIAL_2;
					window = 1;
					sound_play (sound_get ("floop"));
					
					hitpause = true;
					hitstop_full = hitpause;
					hitstop = other.hitpause;
					//old_hsp = ((obj_article1.x - x) / 40) + (4 * spr_dir);
				}
				with (other){
					player_id.melonpult_fspecial_grabbed = id;
					spawn_hit_fx(floor(x), floor(y) - 24, 301);
					state = 0;
					state_timer = 5;
					image_index = 1;
					spr_dir = player_id.spr_dir;
					hsp = 0;
				}
				if (hbox_num == 1){
					with player_id{
						window_timer = 4;
						if (free){
							old_hsp = 6.5 * spr_dir;
							old_vsp = clamp(vsp-2, -4.5, 0);
							sound_play (sound_get ("glider_engage"));
						} else {
							old_hsp = 0;
							old_vsp = 0;
						}
					}
					with (other){
						x = floor(player_id.x) + (62 * player_id.spr_dir);
						y = floor(player_id.y) - 16;
					}
				} else {
					with player_id{
						sound_play (sound_get ("dissipate"));
						if (umbrellaleaf_glide_used == false){
							if (!free) old_vsp = -4.5;
							else old_vsp = -3.5;
							umbrellaleaf_glide_used = true;
						} else {
							old_vsp = clamp(vsp-2, -4.5, 0);
							sound_play (sound_get ("glider_engage"));
						}
					}
					if (hbox_num == 2){
						with player_id{
							window_timer = 4;
							old_hsp = 8.5 * spr_dir;
						}
						with (other){
							x = floor(player_id.x) + (62 * player_id.spr_dir);
							y = floor(player_id.y) - 16;
						}
					} else if (hbox_num == 3){
						with player_id{
							window_timer = 2;
							old_hsp = 9 * spr_dir;
						}
						with (other){
							x = floor(player_id.x) + (94 * player_id.spr_dir);
							y = floor(player_id.y) - 16;
						}
					} else if (hbox_num == 4){
						with player_id{
							window_timer = 0;
							old_hsp = 9.5 * spr_dir;
						}
						with (other){
							x = floor(player_id.x) + (126 * player_id.spr_dir);
							y = floor(player_id.y) - 16;
						}
					}
				}
			}
			if (attack == AT_USPECIAL) && (hbox_num == 1) && !(player_id.hitstop){
				hit_priority = 0;
				with player_id{
					destroy_hitboxes();
					attack_end();
					attack = AT_USPECIAL_2;
					window = 1;
					window_timer = 0;
					sound_play (sound_get ("floop"));
					
					hitpause = true;
					hitstop_full = hitpause;
					hitstop = other.hitpause;
					old_hsp = hsp;
					old_vsp = vsp;
				}
				with (other){
					player_id.melonpult_uspecial_grabbed = id;
					sound_play (sound_get ("dissipate"));
					spawn_hit_fx(floor(x), floor(y) - 24, 301);
					x = floor(player_id.x) + (26 * player_id.spr_dir);
					if (y < player_id.y - 18){
						player_id.y = floor(y) + 26;
					} else {
						y = floor(player_id.y) - 18;
					}
					new_sprite = sprite_get("umbrellaleaf_open");
					hsp = 0;
					state = 4;
					state_timer = 0;
					image_index = 0;
					spr_dir = player_id.spr_dir;
				}
			}
		}
	}
	with (player_id){
		if collision_rectangle(
		other.x - 36, 
		other.y - 56, 
		other.x + 36, 
		other.y - 0, 
		self, true, false) {
			if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) 
			&& (attack == AT_USPECIAL) && (window >= 2) && !(hitstop){
				destroy_hitboxes();
				attack_end();
				attack = AT_USPECIAL_2;
				window = 1;
				window_timer = 0;
				sound_play (sound_get ("floop"));
				
				hitpause = true;
				hitstop_full = hitpause;
				hitstop = 6;
				old_hsp = hsp;
				old_vsp = vsp;
				with (other){
					player_id.melonpult_uspecial_grabbed = id;
					sound_play (sound_get ("dissipate"));
					spawn_hit_fx(floor(x), floor(y) - 24, 301);
					x = floor(player_id.x) + (26 * player_id.spr_dir);
					if (y < player_id.y - 18){
						player_id.y = floor(y) + 26;
					} else {
						y = floor(player_id.y) - 18;
					}
					new_sprite = sprite_get("umbrellaleaf_open");
					hsp = 0;
					state = 4;
					state_timer = 0;
					image_index = 0;
					spr_dir = player_id.spr_dir;
				}
			}
		}
	}
		
	// bouncing opponents in hitstun (scrapped)
	/*
	if (state != 4){
		with (oPlayer){
			if (state == PS_HITSTUN && state != PS_TUMBLE && !hitpause && !hitstop){
				if collision_rectangle(
				other.x - 56, 
				other.y - 56, 
				other.x + 56, 
				other.y - 18, 
				self, true, false){
					if (vsp > 0){
						vsp = min(-abs(vsp), -6);
						with (other){
							sound_play (sound_get ("deflect"));
							if !(state = 3 && state_timer < 16){
								state = 3;
								state_timer = 4;
								image_index = 0;
							}
						}
					}
		        }
	        }
	    }
	}
	*/
	
	// throws
	if (player_id.melonpult_fspecial_grabbed == id)
	&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
		//free = true;
		if (player_id.attack == AT_FTHROW) && (player_id.window == 2){
			if (player_id.window_timer == 0) && !(player_id.hitstop){
				spawn_hit_fx(floor(x), floor(y) - 24, 301);
			}
			if (player_id.window_timer == 1){
				hsp = 6*spr_dir;
				vsp = -2;
			}
		}
		if (player_id.attack == AT_NTHROW) && (player_id.window == 2){
			if (player_id.window_timer == 0) && !(player_id.hitstop){
				spawn_hit_fx(floor(x), floor(y) - 24, 301);
			}
			if (player_id.window_timer == 1){
				hsp = -6*spr_dir;
				vsp = -2;
			}
		}
	}
}


//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 3

if (player_id.state == PS_RESPAWN && player_id.state_timer == 1 && state != 2){
	shovel = true;
}

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//gravity
if (grav_on){
	var grav_speed = .1
	var grav_max = 4;
	
	if (free) 
	&& !(player_id.melonpult_fspecial_grabbed == id
	&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
	&& player_id.attack == AT_FSPECIAL_2 && player_id.window != 4){
		
		grounded_timer = 0;
		
		if (vsp < grav_max){
			vsp = vsp + grav_speed;
		}
	}else{
		grounded_timer++;
		
		if (grounded_timer == 1){
			sound_play (sound_get("glider_land"));
		}
	}
}
if (free){
	hsp *= 0.985; // jerma
	/*
	if (hsp != 0) && (collision_rectangle(
	x, y-36, x+18*(hsp/abs(hsp)), y-12, 
	asset_get("par_block"), false, false) != noone){
		hsp *= -1;
		sound_play (sound_get("glider_wallbounce"));
	}
	*/
} else {
	hsp = 0;
}

//State 0: Open
if (state == 0){
	if (state_timer == 1){
		spawn_hit_fx(x + 16,y,15)
		spawn_hit_fx(x - 16,y,15)
	}
	if (state_timer == 20){
		state = 1;
		state_timer = 0;
	}
}

//State 1: Idle
if (state == 1){
	if (free) vsp = min(vsp, 1.5);
}

//State 2: Dying
if (state == 2){
	with (player_id){
		if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if (melonpult_fspecial_grabbed == other.id && attack == AT_FSPECIAL_2) 
			|| (melonpult_uspecial_grabbed == other.id && attack == AT_USPECIAL_2){
				if (window != 4){
					set_state( PS_PRATFALL );
				}
			}
		}
	}
	if (state_timer == 32){
		spawn_hit_fx(x,y - 16,17)
		instance_destroy();
		exit;
	}
}

//State 3: Bounce
if (state == 3){
	if (state_timer == 20){
		state = 1;
		state_timer = 0;
	}
	if (free){
		if (state_timer <= 10) vsp = -1;
	}
}

//State 4: Attacking
if (state == 4){
	if (image_angle != 0){
		image_angle = 0;
	}
	if (state_timer == 10){
		new_sprite = sprite_get("umbrellaleaf_attacking");
		image_index = 0;
		sound_play (asset_get("sfx_spin"));
	}
	if (state_timer >= 10 && state_timer < 34){
		if (state_timer < 33) vsp = -4.5;
		if (state_timer mod 2 == 0){
			image_index++;
		}
		if (state_timer mod 4 == 2){
			create_hitbox( AT_USPECIAL_2, 1, floor(x), floor(y - 40) );
		}
	}
	if (state_timer == 33){
		new_sprite = sprite_get("umbrellaleaf_bounce");
		image_index = 0;
	}
	if (state_timer == 34){
		sound_play (asset_get("sfx_swipe_weak1"));
		create_hitbox( AT_USPECIAL_2, 2, floor(x), floor(y - 60) );
	}
	if (state_timer >= 34 && state_timer < 50){
		if (state_timer mod 8 == 2){
			image_index++;
		}
	}
	if (state_timer >= 50){
		state = 2;
		state_timer = 0;
		image_index = 0;
	}
	with (player_id){
		if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if (melonpult_fspecial_grabbed == other.id && attack == AT_FSPECIAL_2){
				if (window != 4){
					set_state( PS_PRATFALL );
				}
			}
		}
	}
}

//State 5: Closed
if (state == 5){
	
}

if (player_id.melonpult_fspecial_grabbed == id
&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
&& player_id.attack == AT_FSPECIAL_2 && player_id.window != 4){
	if (ignores_walls = false){
		ignores_walls = true;
	}
} else if (player_id.melonpult_uspecial_grabbed == id
&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
&& player_id.attack == AT_USPECIAL_2 && player_id.window != 4){
	if (ignores_walls = false){
		ignores_walls = true;
	}
} else if (ignores_walls = true) ignores_walls = false;

//Assign each state both a sprite it should have and a way it should animate
if (player_id.melonpult_fspecial_grabbed == id
&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
&& player_id.attack == AT_FSPECIAL_2 && player_id.window != 4){
	image_angle = lerp(image_angle, clamp(player_id.hsp*4.5, -45, 45), 0.25); 
}
switch(state){
    case 0:
        new_sprite = sprite_get("umbrellaleaf_open");
		image_angle = lerp(image_angle, 0, 0.25);
        animation_type = 0;
        break;
    case 1:
		if (player_id.melonpult_fspecial_grabbed == id 
		&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) 
		&& player_id.attack == AT_FSPECIAL_2 && player_id.window != 4
		&& player_id.free){
			new_sprite = sprite_get("umbrellaleaf_glide");
			animation_type = 0;
		} else {
			image_angle = lerp(image_angle, 0, 0.25);
			if (!free){
				new_sprite = sprite_get("umbrellaleaf_idle");
				animation_type = 1;
			} else { 
				new_sprite = sprite_get("umbrellaleaf_idle_air");
				animation_type = 2;
			}
        }
        break;
    case 2:
        new_sprite = sprite_get("umbrellaleaf_close");
		image_angle = lerp(image_angle, 0, 0.25);
        animation_type = 1;
        break;
    case 3:
		new_sprite = sprite_get("umbrellaleaf_bounce");
        animation_type = 0;
        break;
    case 4: //Since all of these guys are just kinda
        animation_type = 3;
		image_angle = lerp(image_angle, 0, 0.25);
        break;
    case 5: //in a row, without any "break;" lines to
		new_sprite = sprite_get("umbrellaleaf_open");
        animation_type = 3;
		image_angle = lerp(image_angle, 0, 0.25);
        break;
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("umbrellaleaf_idle")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 5 == 0){
            image_index++;
        }
        break;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 8 == 0){
            image_index++;
        }
        break;
		
    case 2: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 12 == 0){
            image_index++;
        }
        break;
		
	case 3: //Increment image_index at the rate determined by idle_anim_rate
        break;
		
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
	if (state != 4){
		image_index = 0;
	}
}


//delete if out of bounds
if (y > (room_height + 192)){
    sound_play (sound_get ("shovel"));
    instance_destroy();
    exit;
}

//shovel
if (shovel == true){
	spawn_hit_fx(x + 16,y,15);
	spawn_hit_fx(x - 16,y,15);
    sound_play (sound_get ("shovel"));
	instance_destroy();
    exit;
}

//Make time progress
state_timer++;
reflect_cooldown--;