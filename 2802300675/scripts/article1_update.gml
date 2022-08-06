//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Despawn
- 3 Beginning Immunity


*/

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//State 0: Freshly spawned

if (state == 0){
	if(intro_trans < 1){
		intro_trans += 0.05;
	}
	if(state_timer = 21){
		state = 3;
		state_timer = 0;
	}
	if(state_timer = 2){
		//destroy if too close to prevent projectile bugs
	create_hitbox(AT_NSPECIAL, 4, x, y - 30);	
	}
	image_alpha = intro_trans;
    
}

//State 1: Idle

if (state == 1){
	//projectile interaction
	if (place_meeting(x, y, asset_get("pHitBox"))) {
    	with (asset_get("pHitBox")){
    		if (player == other.player_id.player){
    			if (place_meeting(x, y, other)){
    				other.hitbox_hit = self;
    			}
    		}
    	}if (hitbox_hit != noone){
    		if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0){
    			if(projectile_hit_cooldown = 0){
    				proj_sprdir = hitbox_hit.spr_dir
    				hitby = hitbox_hit.player_id;
    				
    			if(hitbox_hit.player_id.attack == AT_NSPECIAL && hitbox_hit.hbox_num == 1){	
    				/*if(hitby.spr_dir != proj_sprdir){
    					proj_sprdir = proj_sprdir * -1;
    				}*/
    				sound_play(asset_get("sfx_hod_steam_level2"));
    				var hbox = create_hitbox(AT_NSPECIAL, 2, hitbox_hit.x, hitbox_hit.y);
    				hbox.spr_dir = proj_sprdir;
    				if(proj_sprdir = 1){
    					hbox.hsp = 9;
    					hbox.spr_dir = 1;
    				}if(proj_sprdir = -1){
    					hbox.hsp = -9;
    					hbox.spr_dir = -1;
    				}
    				projectile_hit_cooldown = 60;
    				hitbox_hit.destroyed = true;
    			} if(hitbox_hit.player_id.attack == AT_NSPECIAL && hitbox_hit.hbox_num == 2){	
    				/*if(hitby.spr_dir != proj_sprdir){
    					proj_sprdir = proj_sprdir * -1;
    				}*/
    				sound_play(asset_get("sfx_hod_steam_level3"));
    				var hbox = create_hitbox(AT_NSPECIAL, 3, hitbox_hit.x, hitbox_hit.y);
					hbox.spr_dir = proj_sprdir;
    				if(proj_sprdir = 1){
    					hbox.hsp = 11;
    					hbox.spr_dir = 1;
    				}if(proj_sprdir = -1){
    					hbox.hsp = -11;
    					hbox.spr_dir = -1;
    				}
    				projectile_hit_cooldown = 60;
    				hitbox_hit.destroyed = true;
    				}
    				
    			}
    		}
    	}
    }    else{
    	hitbox_hit = noone;
    }
    if(projectile_hit_cooldown != 0){
    	projectile_hit_cooldown--;
    }
    
    //destroy if too close to prevent projectile bugs
with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_NSPECIAL and hbox_num == 4){
        other.state = 2;
        other.state_timer = 0;
    }
}

//Fspecial and Dspecial interactions
	    player_id.player_in_smog = false;
	playerdetect = collision_circle(x , y - 40, 90, oPlayer, false, false);
	if (playerdetect != noone && instance_exists(playerdetect)){
	    	with(playerdetect){
	    		if("isHasBrainDamage" in self){
	    	 player_in_smog = true;
	    	 //init_shader();
	    	 
	    	 if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	    	 if(attack == AT_FSPECIAL){
	    	 	if(window == 2){
	    	 		if(window_timer > 6){
	    	 		if(jump_pressed || (can_tap_jump() && tap_jump_pressed) || special_pressed){
	    	 			if(boost_used = false){
	    	 			move_cooldown[AT_FSPECIAL] = 0;
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_FSPECIAL_2;
	    	 		hurtboxID.sprite_index = sprite_get("fspecial_boosted_hurt");
	    	 		window = 1;
	    	 		window_timer = 0;
	    	 		boost_used = true;
	    	 				}
	    	 			}
	    	 		}
	    	 	}
	    	}if(attack == AT_DSPECIAL){
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_DSPECIAL_2;
	    	 		if(window == 3 && window_timer > 3){
	    	 			create_hitbox(AT_DSPECIAL_2, 1, x, y);
	    	 			}
	    			}
	    		}
	    	}
	    }
	}	player_id.player_in_smog = false;
	playerdetect = collision_circle(x , y - 40, 90, player_id, false, false);
	if (playerdetect != noone && instance_exists(playerdetect)){
	    	with(playerdetect){
	    	 player_in_smog = true;
	    	 //init_shader();
	    	 
	    	 if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	    	 if(attack == AT_FSPECIAL){
	    	 	if(window == 2){
	    	 		if(window_timer > 6){
	    	 		if(jump_pressed || (can_tap_jump() && tap_jump_pressed) || special_pressed){
	    	 			if(boost_used = false){
	    	 			move_cooldown[AT_FSPECIAL] = 0;
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_FSPECIAL_2;
	    	 		hurtboxID.sprite_index = sprite_get("fspecial_boosted_hurt");
	    	 		window = 1;
	    	 		window_timer = 0;
	    	 		boost_used = true;
	    	 				}
	    	 			}
	    	 		}
	    	 	}
	    	}if(attack == AT_DSPECIAL){
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_DSPECIAL_2;
	    	 		if(window == 3 && window_timer > 3){
	    	 			create_hitbox(AT_DSPECIAL_2, 1, x, y);
	    	 				}
	    				}
	    			}
	    }
	}if(!collision_circle(x , y - 40, 90, self, false, false)){
			player_id.player_in_smog = false;
			//init_shader();
	}
	
	//poison cloud
	/*
	if(player != self && collision_circle(x + 10, y - 40, 70, self, false, true)){
					if(cloud_poison_timer = 0) {
						if(invincible = 0){
							if(state != PS_RESPAWN){
					sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 0.5);
					var hitfx = spawn_hit_fx(x + spr_dir * 0, y - 30, 14);
					take_damage(player, -1, 1);
					cloud_poison_timer = 30;
							}
						}
					}
		}
		*/
		if(cloud_poison_timer != 0){
			cloud_poison_timer--;
		}
	with (asset_get("oPlayer")) {
		if(other.state = 1){
			if (player != other.player && invincible = 0 && invince_time = 0 && state != PS_RESPAWN && collision_circle( other.x, other.y - 40, other.effect_radius, self, true, false)){
			if(other.cloud_poison_timer = 0){
					sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 0.5);
					var hitfx = spawn_hit_fx(x + spr_dir * 0, y - 30, 14);
					take_damage(player, -1, 2);
					other.cloud_poison_timer = 25;		
			}
		}
	}
}
		
		//Despawn after timelimit
		if(state_timer = 600){
			state = 2;
			state_timer = 0;
		}
		with (player_id){
		if(destroy_smog){
			other.state = 2;
			other.state_timer = 0;			
		}if(state == PS_RESPAWN || state == PS_DEAD){
			other.state = 2;
			other.state_timer = 0;
		}
	}
	//get destroyed
    with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) and player_id != other.player_id && (!"isHasBrainDamage" in player_id)){
    	if(hit_priority != 0 && hitpause != 0){
        other.state = 2;
        other.state_timer = 0;
    		}
    	}
    }
with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) and player_id != other.player_id && ("isHasBrainDamage" in player_id)){
    	if(hitpause > 0 && hit_priority > 0){
    		    	if(attack != AT_FSPECIAL){
    		if(attack != AT_FSPECIAL_2){
    			if(attack != AT_DSPECIAL){
    				if(attack != AT_DSPECIAL_2){
        other.state = 2;
        other.state_timer = 0;
    						}
    					}
    				}
    			}
    		}
    	}
    }

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	state = 2;
	state_timer = 0;
}
}

//State 2: Despawn

if (state == 2){
	if(state_timer = 1){
		player_id.destroy_smog = false;
		player_id.player_in_smog = false;
		sound_play(asset_get("sfx_hod_steam_level1"));
	}if(state_timer = 48){
    instance_destroy();
    exit;
	}
}

//State 3: Beginning Immunity

if (state == 3){
	//projectile interaction
	if (place_meeting(x, y, asset_get("pHitBox"))) {
    	with (asset_get("pHitBox")){
    		if (player == other.player_id.player){
    			if (place_meeting(x, y, other)){
    				other.hitbox_hit = self;
    			}
    		}
    	}if (hitbox_hit != noone){
    		if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0){
    			if(projectile_hit_cooldown = 0){
    				proj_sprdir = hitbox_hit.spr_dir
    				hitby = hitbox_hit.player_id;
    				
    			if(hitbox_hit.player_id.attack == AT_NSPECIAL && hitbox_hit.hbox_num == 1){	
    				/*if(hitby.spr_dir != proj_sprdir){
    					proj_sprdir = proj_sprdir * -1;
    				}*/
    				sound_play(asset_get("sfx_hod_steam_level2"));
    				var hbox = create_hitbox(AT_NSPECIAL, 2, hitbox_hit.x, hitbox_hit.y);
    				hbox.spr_dir = proj_sprdir;
    				if(proj_sprdir = 1){
    					hbox.hsp = 9;
    					hbox.spr_dir = 1;
    				}if(proj_sprdir = -1){
    					hbox.hsp = -9;
    					hbox.spr_dir = -1;
    				}
    				projectile_hit_cooldown = 60;
    				hitbox_hit.destroyed = true;
    			} if(hitbox_hit.player_id.attack == AT_NSPECIAL && hitbox_hit.hbox_num == 2){	
    				/*if(hitby.spr_dir != proj_sprdir){
    					proj_sprdir = proj_sprdir * -1;
    				}*/
    				sound_play(asset_get("sfx_hod_steam_level3"));
    				var hbox = create_hitbox(AT_NSPECIAL, 3, hitbox_hit.x, hitbox_hit.y);
					hbox.spr_dir = proj_sprdir;
    				if(proj_sprdir = 1){
    					hbox.hsp = 11;
    					hbox.spr_dir = 1;
    				}if(proj_sprdir = -1){
    					hbox.hsp = -11;
    					hbox.spr_dir = -1;
    				}
    				projectile_hit_cooldown = 60;
    				hitbox_hit.destroyed = true;
    				}
    				
    			}
    		}
    	}
    }    else{
    	hitbox_hit = noone;
    }
    if(projectile_hit_cooldown != 0){
    	projectile_hit_cooldown--;
    }
    
    //destroy if too close to prevent projectile bugs
with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_NSPECIAL and hbox_num == 4){
        other.state = 2;
        other.state_timer = 0;
    }
}

//Fspecial and Dspecial interactions
	    player_id.player_in_smog = false;
	playerdetect = collision_circle(x , y - 40, 90, oPlayer, false, false);
	if (playerdetect != noone && instance_exists(playerdetect)){
	    	with(playerdetect){
	    		if("isHasBrainDamage" in self){
	    	 player_in_smog = true;
	    	 //init_shader();
	    	 
	    	 if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	    	 if(attack == AT_FSPECIAL){
	    	 	if(window == 2){
	    	 		if(window_timer > 6){
	    	 		if(jump_pressed || (can_tap_jump() && tap_jump_pressed) || special_pressed){
	    	 			if(boost_used = false){
	    	 			move_cooldown[AT_FSPECIAL] = 0;
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_FSPECIAL_2;
	    	 		hurtboxID.sprite_index = sprite_get("fspecial_boosted_hurt");
	    	 		window = 1;
	    	 		window_timer = 0;
	    	 		boost_used = true;
	    	 				}
	    	 			}
	    	 		}
	    	 	}
	    	}if(attack == AT_DSPECIAL){
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_DSPECIAL_2;
	    	 		if(window == 3 && window_timer > 3){
	    	 			create_hitbox(AT_DSPECIAL_2, 1, x, y);
	    	 				}
	    				}
	    			}
	    		}
	    }
	} player_id.player_in_smog = false;
	playerdetect = collision_circle(x , y - 40, 90, player_id, false, false);
	if (playerdetect != noone && instance_exists(playerdetect)){
	    	with(playerdetect){
	    	 player_in_smog = true;
	    	 //init_shader();
	    	 
	    	 if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	    	 if(attack == AT_FSPECIAL){
	    	 	if(window == 2){
	    	 		if(window_timer > 6){
	    	 		if(jump_pressed || (can_tap_jump() && tap_jump_pressed) || special_pressed){
	    	 			if(boost_used = false){
	    	 			move_cooldown[AT_FSPECIAL] = 0;
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_FSPECIAL_2;
	    	 		hurtboxID.sprite_index = sprite_get("fspecial_boosted_hurt");
	    	 		window = 1;
	    	 		window_timer = 0;
	    	 		boost_used = true;
	    	 				}
	    	 			}
	    	 		}
	    	 	}
	    	}if(attack == AT_DSPECIAL){
	    	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	    	 		spawn_hit_fx(x + spr_dir * 0, y - 30, bigsmoke);
	    	 		destroy_hitboxes();
	    	 		attack_end();
	    	 		attack = AT_DSPECIAL_2;
	    	 		if(window == 3 && window_timer > 3){
	    	 			create_hitbox(AT_DSPECIAL_2, 1, x, y);
	    	 				}
	    				}
	    			}
	    }
	}
		if(!collision_circle(x , y - 40, 90, self, false, false)){
			player_id.player_in_smog = false;
			//init_shader();
	}
		
		//Become Vunerable
		if(state_timer = 45){
			sound_play(asset_get("sfx_hod_steam_sfx2_03"));
			spawn_hit_fx(x + spr_dir * 0, y - 10, player_id.hitsmoke);
			state = 1;
			state_timer = 0;
		}
		with (player_id){
		if(destroy_smog){
			other.state = 2;
			other.state_timer = 0;			
		}if(state == PS_RESPAWN || state == PS_DEAD){
			other.state = 2;
			other.state_timer = 0;
		}
	}

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	state = 2;
	state_timer = 0;
}
}


//Assign each state both a sprite it should have and a way it should animate
if  (get_player_color(player) != 24) {
switch(state){
    case 0:
        new_sprite = sprite_get("cloud_idle");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("cloud_idle");
        animation_type = 2;
        break;
    case 2:
        new_sprite = sprite_get("cloud_disappear");
        animation_type = 2;
        break;
    case 3:
        new_sprite = sprite_get("cloud_idle");
        animation_type = 2;
        break;
	}
}if  (get_player_color(player) == 24) {
switch(state){
    case 0:
        new_sprite = sprite_get("outline_cloud_idle");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("outline_cloud_idle");
        animation_type = 2;
        break;
    case 2:
        new_sprite = sprite_get("cloud_disappear");
        animation_type = 2;
        break;
    case 3:
        new_sprite = sprite_get("outline_cloud_idle");
        animation_type = 2;
        break;
	}
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
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}



//Make time progress
state_timer++;