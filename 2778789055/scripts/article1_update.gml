//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Spawn
- 1 Idle
- 2 Hit
- 3 Spice Up
- 4 Shrimp Up
- 5 Trapped
- 6 Explode
- 7 Food


*/

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

if(spice_cooldown > 0){
	spice_cooldown--;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

if(state != 7){
var grav_speed = .4;
var grav_max = 12;
var air_friction = .025;

//gravity
if (type == 0){
	if (free && vsp < 12){
		vsp = vsp + grav_speed;
	}
}
else if (type == 1){
	//do things
}
}

if(has_shrimp && explode_timer != 300){
	explode_timer++;
}
if(explode_timer = 299){
	if(pot_hitbox_active){
	pot_hitbox.length = 0;
	pot_hitbox_active = false;
	}
	state = 6;
	state_timer = 0;
}

if(has_shrimp){
	can_opponent_hit = false;
}if(!has_shrimp){
	can_opponent_hit = true;
}


	//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, asset_get("pHitBox")) && can_be_hit && can_opponent_hit) { //makes the pot hittable when can_get_hit is true
    	with (asset_get("pHitBox")){
    		if (player != other.player_id.player){
    			if (place_meeting(x, y, other)){
    				other.hitbox_hit = self;
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
                    other.hitstop = hitpause;
                    other.pot_owner = player;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0){
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			var hitfx = spawn_hit_fx(floor(x), floor(y), hit_effect);
        			hitfx.pause = 10;
    			}
    			if(hitbox_hit.type == 1){
    			hitbox_hit.player_id.hitpause = true;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true;
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			}if(hitbox_hit.type == 2){
    			hitbox_hit.player_id.hitpause = false;
    			hitbox_hit.player_id.hitstop = 0;
    			hitbox_hit.player_id.hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.vsp = hitbox_hit.player_id.vsp
    			}
    		    can_be_hit = false;
    			state = 2;
    			state_timer = 0;
    			}

    			if(hitbox_hit.player_id.attack != AT_BAIR){
				        if(hitbox_hit.player_id.spr_dir == 1){
        	hsp_var = hitbox_hit.kb_value;
        }else if(hitbox_hit.player_id.spr_dir == -1){
        	hsp_var = hitbox_hit.kb_value * -1;
        }
    			}  if(hitbox_hit.player_id.attack == AT_BAIR){
				        if(hitbox_hit.player_id.spr_dir == 1){
        	hsp_var = hitbox_hit.kb_value * -1;
        }else if(hitbox_hit.player_id.spr_dir == -1){
        	hsp_var = hitbox_hit.kb_value;
        }
    			}
    			
    		}
    }
    else{
    	hitbox_hit = noone;
    }

if (place_meeting(x, y, asset_get("pHitBox")) && can_be_hit) { //makes the pot hittable when can_get_hit is true
    	with (pHitBox){
    		if (player == other.player_id.player){
    			if (place_meeting(x, y, other)){
    				other.hitbox_hit = self;
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
                    other.hitstop = hitpause;
                    other.pot_owner = player;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit.player_id.attack != AT_NSPECIAL){
    			if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0){
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			var hitfx = spawn_hit_fx(floor(x), floor(y), hit_effect);
        			hitfx.pause = 10;
    			}
    			if(hitbox_hit.type == 1){
    			hitbox_hit.player_id.hitpause = true;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true;
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			}if(hitbox_hit.type == 2){
    			player_id.hitpause = false;
    			player_id.hitstop = 0;
    			}
    		    can_be_hit = false;
    			state = 2;
    			state_timer = 0;
    			}

    			if(hitbox_hit.player_id.attack != AT_BAIR){
				        if(hitbox_hit.player_id.spr_dir == 1){
        	hsp_var = hitbox_hit.kb_value;
        }else if(hitbox_hit.player_id.spr_dir == -1){
        	hsp_var = hitbox_hit.kb_value * -1;
        }
    			}  if(hitbox_hit.player_id.attack == AT_BAIR){
				        if(hitbox_hit.player_id.spr_dir == 1){
        	hsp_var = hitbox_hit.kb_value * -1;
        }else if(hitbox_hit.player_id.spr_dir == -1){
        	hsp_var = hitbox_hit.kb_value;
        }
    			}
					}
					
    			if(spice_cooldown == 0){
    				if(spice_level < 3){
    			if(hitbox_hit.player_id.attack == AT_FTILT || hitbox_hit.player_id.attack == AT_UTILT || hitbox_hit.player_id.attack == AT_DTILT){
    			state = 3;
    			state_timer = 0;
    					}
    				}	
    			}
    		if(hitbox_hit.player_id.attack == AT_FSPECIAL && hitbox_hit.hbox_num == 1){	
    		    state = 4;
    			state_timer = 0;
    			hitbox_hit.destroyed = true;
    		}if(hitbox_hit.player_id.attack == AT_DSPECIAL && hitbox_hit.hbox_num == 1){	
    		    state = 4;
    			state_timer = 0;
    		}  if(spice_cooldown == 0){
    			if(spice_level < 3){
    			if(hitbox_hit.player_id.attack == AT_FSPECIAL_2){	
    		    state = 3;
    			state_timer = 0;
    			hitbox_hit.destroyed = true;
    				}
    			}
    		}
    	}
    }
    else{
    	hitbox_hit = noone;
    }



//State 0: Spawn

if (state == 0){
	can_be_hit = false;
	if(state_timer = 1){
	hsp = 5 * player_id.spr_dir;
	vsp = -3;
	}if(!free){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}
		}
	}if(hsp = 0 && state_timer > 2){
		state = 1;
		state_timer = 0;
	}
}



//State 1: Idle

if (state == 1){
	if(hsp = 0 && state_timer > 1){
	can_be_hit = true;
	}
	/*
if(!free){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}
		}
}
*/
with (oPlayer){
		if (place_meeting(x, y, other)){
			if (id != other.player_id || url != other.player_id.url){
	if(state == PS_HITSTUN && other_scalding == true){
		hitstop = 2;
		hitpause = true;
		other.pot_has_trapped = true;
		other.pot_trapped = self;
		other.state = 5;
		other.state_timer = 0;
			}
		}
	}
}
	
}

//State 2: Got Hit

if (state == 2){
	if(state_timer = 1){
		if(hsp_var < 4 && hsp_var > 0){
			hsp_var = 4;
		}if(hsp_var > -4 && hsp_var < 0){
			hsp_var = -4;
		}
		hsp = hsp_var * 0.9;
		if(!has_shrimp){
		pot_hitbox = create_hitbox(AT_NSPECIAL, 1, x + spr_dir, y - 30);
		pot_hitbox.player = pot_owner;
		pot_hitbox_active = true;
		if(hsp > 0){
			pot_hitbox.kb_angle = 50;
		}		if(hsp < 0){
			pot_hitbox.kb_angle = 130;
		}
		}
	}
	hsp = clamp(hsp,-10,10);
if(!free){
	if(!hitstop){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}if(hsp > 0 && hsp < .2){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.2){
				hsp = 0;
				}
			}
		}
	}if(hsp = 0 && state_timer > 2){
		if(!pot_has_trapped){
		state = 1;
		state_timer = 0;
		}if(pot_has_trapped){
		state = 5;
		state_timer = 0;
		}
	}
	if(state_timer > 1){
		if(hsp > 3 && pot_hitbox_active){
		pot_hitbox.x = x;
		pot_hitbox.y = y - 30;
		}if(hsp < -3 && pot_hitbox_active){
		pot_hitbox.x = x;
		pot_hitbox.y = y - 30;
		}
		if(hsp > 0 && hsp < 3 && pot_hitbox_active){
				pot_hitbox.length = 0;
				pot_hitbox_active = false;
				can_be_hit = true;
			}if(hsp < 0 && hsp > -3 && pot_hitbox_active){
				pot_hitbox.length = 0;
				pot_hitbox_active = false;
				can_be_hit = true;
				}
	}
	if(hit_wall){
		if(!pot_has_trapped){
		pot_hitbox.length = 0;
		state = 1;
		state_timer = 0;
		}if(pot_has_trapped){
		pot_hitbox.length = 0;
		state = 5;
		state_timer = 0;
		}
	}
with (oPlayer){
		if (place_meeting(x, y, other)){
			if (id != other.player_id || url != other.player_id.url){
	if(state == PS_HITSTUN && other_scalding == true){
		hitstop = 2;
		hitpause = true;
		other.pot_has_trapped = true;
		other.pot_trapped = self;
			}
		}
	}
}if(pot_has_trapped){
	pot_trapped.x = x;
	pot_trapped.y = y - 5;
	pot_trapped.hitstop = 2;
	pot_trapped.hitpause = true;
}
}

//State 3: Spice Up

if (state == 3){
	if(state_timer = 1){
		if(spice_level < 3){
		spice_level += 1;
		spice_cooldown = 90;
		}
		if(hsp_var < 4 && hsp_var > 0){
			hsp_var = 4;
		}if(hsp_var > -4 && hsp_var < 0){
			hsp_var = -4;
		}
		hsp = hsp_var * 0.9;
		if(!has_shrimp){
		pot_hitbox = create_hitbox(AT_NSPECIAL, 1, x + spr_dir, y - 30);
		pot_hitbox.player = pot_owner;
		pot_hitbox_active = true;
				if(hsp > 0){
			pot_hitbox.kb_angle = 50;
		}		if(hsp < 0){
			pot_hitbox.kb_angle = 130;
		}
		}
	}
	hsp = clamp(hsp,-10,10);
if(!free){
	if(!hitstop){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}if(hsp > 0 && hsp < .2){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.2){
				hsp = 0;
				}
			}
		}
	}
	if(state_timer = 16){
		spawn_hit_fx(x - spr_dir, y - 40, 3);
		sound_play(asset_get("sfx_zetter_fireball_fire"));
	}if(state_timer = 28){
		if(!pot_has_trapped){
		state = 2;
		state_timer = 2;
		}if(pot_has_trapped){
		state = 5;
		state_timer = 0;
		}
	}
	if(state_timer > 1){
		if(hsp > 3 && pot_hitbox_active){
		pot_hitbox.x = x;
		pot_hitbox.y = y - 30;
		}if(hsp < -3 && pot_hitbox_active){
		pot_hitbox.x = x;
		pot_hitbox.y = y - 30;
		}
		if(hsp > 0 && hsp < 3 && pot_hitbox_active){
				pot_hitbox.length = 0;
				pot_hitbox_active = false;
			}if(hsp < 0 && hsp > -3 && pot_hitbox_active){
				pot_hitbox.length = 0;
				pot_hitbox_active = false;
				}
	}
	if(hit_wall){
		pot_hitbox.length = 0;
	}
with (oPlayer){
		if (place_meeting(x, y, other)){
			if (id != other.player_id || url != other.player_id.url){
	if(state == PS_HITSTUN && other_scalding == true){
		hitstop = 2;
		hitpause = true;
		other.pot_has_trapped = true;
		other.pot_trapped = self;
			}
		}
	}
}if(pot_has_trapped){
	pot_trapped.x = x;
	pot_trapped.y = y - 5;
	pot_trapped.hitstop = 2;
	pot_trapped.hitpause = true;
}
if(state_timer > 1){
with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_FSPECIAL_2){
    	if(other.spice_level < 3)
        other.spice_level += 1;
        destroyed = true;
    	}
    }
}
}

//State 4: Shrimp Up

if (state == 4){
	can_be_hit = false;
	if(state_timer = 16){
		spawn_hit_fx(x - spr_dir, y - 40, 6);
		sound_play(asset_get("sfx_waterhit_weak"));
	}
	if(state_timer = 28){
		state = 1;
		state_timer = 0;
	}
	if(state_timer = 1){
		has_shrimp = true;
		with (player_id){
			shrimp_in_pot = true;
			has_shrimp = false;
		}
	}
	hsp = clamp(hsp,-10,10);
	if(!free){
	if(!hitstop){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}if(hsp > 0 && hsp < .2){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.2){
				hsp = 0;
				}
			}
		}
	}
}

//State 5: Trapped

if (state == 5){
	can_be_hit = false;
	if(pot_has_trapped){
	pot_trapped.x = x;
	pot_trapped.y = y - 5;
	pot_trapped.hitpause = true;
	pot_trapped.hitstop = 2;
	}
	hsp = clamp(hsp,-10,10);
if(!free){
	if(!hitstop){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}if(hsp > 0 && hsp < .2){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.2){
				hsp = 0;
				}
			}
		}
	}
if(state_timer % 15 == 0){
	steam_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y - 30);
	steam_hitbox.x = x;
	steam_hitbox.y = y - 30;
	if(spice_level = 0){
		steam_hitbox.damage = 1;
	}if(spice_level = 1){
		steam_hitbox.damage = 2;
	}if(spice_level = 2){
		steam_hitbox.damage = 3;
	}if(spice_level = 3){
		steam_hitbox.damage = 4;
	}
}
if(state_timer == 35){
	state = 6;
	state_timer = 0;
}
}

//State 6: Explosion

if (state == 6){
	can_be_hit = false;
	if(pot_has_trapped){
	pot_trapped.x = x;
	pot_trapped.y = y - 5;
	pot_trapped.hitpause = true;
	pot_trapped.hitstop = 2;
	}
if(state_timer = 1){
	sound_play(asset_get("sfx_ell_fspecial_charge"));
}if(state_timer = 16){
	sound_play(asset_get("sfx_orcane_dsmash"));
	finisher_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y - 70);
	finisher_hitbox.x = x
	finisher_hitbox.y = y - 70;
	if(spice_level = 0){
		finisher_hitbox.damage = 6;
		finisher_hitbox.kb_value = 7;
		finisher_hitbox.kb_scale = 1;
		food_id = 0;
	}if(spice_level = 1){
		finisher_hitbox.damage = 8;
		finisher_hitbox.kb_value = 8;
		finisher_hitbox.kb_scale = 1;
		food_id = 1;
	}if(spice_level = 2){
		finisher_hitbox.damage = 10;
		finisher_hitbox.kb_value = 9;
		finisher_hitbox.kb_scale = 1;
		food_id = 2;
	}if(spice_level = 3){
		finisher_hitbox.damage = 12;
		finisher_hitbox.kb_value = 10;
		finisher_hitbox.kb_scale = 1;
		food_id = 3;
	}
	if(has_shrimp){
	create_hitbox(AT_FSPECIAL, 2, x, y - 60);	
	if(has_shrimp = true){
		food_id = 4;
	with (player_id){
	move_cooldown[AT_FSPECIAL] = 240;
	shrimp_in_pot = false;	
		}
	}
	has_shrimp = false;
	explode_timer = 0;
	}
}if(state_timer = 18){
	spice_level = 0;
	if(pot_has_trapped){
	pot_trapped.other_scalding = false;
	pot_trapped.other_scalding_timer = 0;
	pot_has_trapped = false;
	pot_trapped = noone;
	}
}if(state_timer = 60){
	vfx = spawn_hit_fx(x - spr_dir, y - 40, player_id.dust_effect);
	vfx.depth = -10;
	sound_play(asset_get("sfx_metal_hit_strong"));
		with (player_id){
		move_cooldown[AT_NSPECIAL] = 240;
		has_pot = true;
	}
	state = 7;
	state_timer = 0;
}

	hsp = clamp(hsp,-10,10);
if(!free){
	if(!hitstop){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}if(hsp > 0 && hsp < .2){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.2){
				hsp = 0;
				}
			}
		}
	}
}

//State 7: Explosion

if (state == 7){
can_be_hit = false;	
if(state_timer = 1){
	vfx = spawn_hit_fx(x, y + 20, player_id.eat_up_effect);
	vfx.spr_dir = 1;
}
if(state_timer = 72){
	vfx = spawn_hit_fx(x - spr_dir, y - 40, 3);
	vfx.depth = -10;
    instance_destroy();
    exit;
}
}




//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice");
    }
        animation_type = 2;
        break;
    case 1:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice");
    }
        animation_type = 2;
        break;
    case 2:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice");
    }
        animation_type = 2;
        break;
    case 3:
        new_sprite = sprite_get("pot_expandanim");
        animation_type = 1;
        break;
    case 4:
        new_sprite = sprite_get("pot_expandanim_shrimp");
        animation_type = 1;
        break;
    case 5:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice");
    }
        animation_type = 2;
        break;
    case 6:
        new_sprite = sprite_get("pot_burst");
        animation_type = 1;
        break;
    case 7:
        new_sprite = sprite_get("blank_sheet");
        mask_index = sprite_get("blank_sheet");
        animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

//delete if out of bounds
if (y > room_height){
	with (player_id){
		move_cooldown[AT_NSPECIAL] = 240;
		has_pot = true;
	}
	if(pot_hitbox_active){
	pot_hitbox.length = 0;
	pot_hitbox_active = false;
	}if(has_shrimp = true){
	with (player_id){
	move_cooldown[AT_FSPECIAL] = 240;
	shrimp_in_pot = false;	
		}
	}
	pot_has_trapped = false;
	pot_trapped = noone;
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
	with (player_id){
		move_cooldown[AT_NSPECIAL] = 240;
		has_pot = true;
	}
	if(pot_hitbox_active){
	pot_hitbox.length = 0;
	pot_hitbox_active = false;
	}if(has_shrimp = true){
	with (player_id){
	move_cooldown[AT_FSPECIAL] = 240;
	shrimp_in_pot = false;	
		}
	}
	pot_has_trapped = false;
	pot_trapped = noone;
    instance_destroy();
    exit;
}



//Make time progress
state_timer++;