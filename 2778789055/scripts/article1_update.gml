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

if(pot_hit_cooldown > 0){
	pot_hit_cooldown--;
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

if(has_shrimp && explode_timer != 120){
	explode_timer++;
}
if(clink_cooldown != 0){
	clink_cooldown--;
}
if(explode_timer = 119){
/*
	if(pot_hitbox_active){
	pot_hitbox.length = 0;
	pot_hitbox_active = false;
	}
	state = 6;
	state_timer = 0;
	*/
	sound_play(sound_get("se_younglink_special_N04"));
	var hitfx = spawn_hit_fx(floor(x), floor(y) - 40, 19);
    hitfx.pause = 10;
	player_id.shrimpsplosion = true;
}

if(has_shrimp && explode_timer != 120){
	can_opponent_hit = false;
}if(has_shrimp && explode_timer == 120){
	can_opponent_hit = true;
}if(!has_shrimp){
	can_opponent_hit = true;
}

if(explode_timer = 120){
	if(player_id.attack == AT_NSPECIAL_2){
		if(player_id.window == 1 && player_id.window_timer = 6 && player_id.hitpause = false){
			if(state != 6){
			state = 6;
			state_timer = 0;
			}
		}
	}
}

with (player_id){
	if(other.has_shrimp && other.explode_timer == 120){	
		if(other.state != 6){
	if (get_player_stocks( player ) == 0) {
		if(special_pressed){
		other.state = 6;
		other.state_timer = 0;
				}
			}
		}	
	}
}

if(explode_timer = 120){
    if(get_gameplay_time() % 20 == 0){
        snd_rng = random_func(0, 9, true);
        if (snd_rng == 0) {
        spawn_hit_fx(floor(x) , floor(y) - 75, player_id.steam_effect);	
        }if (snd_rng == 1) {
        spawn_hit_fx(floor(x) + 20, floor(y) - 70, player_id.steam_effect);	
        }if (snd_rng == 2) {
        spawn_hit_fx(floor(x) + 10, floor(y) - 90, player_id.steam_effect);	
        }if (snd_rng == 3) {
        spawn_hit_fx(floor(x) + 25, floor(y) - 50, player_id.steam_effect);	
        }if (snd_rng == 4) {
        spawn_hit_fx(floor(x) + -25, floor(y) - 70, player_id.steam_effect);	
        }if (snd_rng == 5) {
        spawn_hit_fx(floor(x) + -20, floor(y) - 65, player_id.steam_effect);	
        }if (snd_rng == 6) {
        spawn_hit_fx(floor(x) + -5, floor(y) - 85, player_id.steam_effect);	
        }if (snd_rng == 7) {
        spawn_hit_fx(floor(x) + 10, floor(y) - 80, player_id.steam_effect);	
        }if (snd_rng == 8) {
        spawn_hit_fx(floor(x) + -15, floor(y) - 45, player_id.steam_effect);	
        }	
    }
}

	//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, asset_get("pHitBox")) && can_be_hit && can_opponent_hit) { //makes the pot hittable when can_get_hit is true
    	with (asset_get("pHitBox")){
    		if (player != other.player_id.player){
    			if (place_meeting(x, y, other) && hit_priority != 0 && hitpause != 0 && kb_value != 0){
    				other.hitbox_hit = self;
    				if(type != 2 and other.hitbox_hit != other.pot_hitbox_id){
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
    				}
                    other.hitstop = hitpause;
                    other.pot_owner = player;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit != pot_hitbox_id){
    		if(hitbox_hit.hitpause > 0 && hitbox_hit.hit_priority > 0){
    				//if(hitbox_hit.hbox_group != pot_hitbox_group){    			
    			
    			
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
    			}
    			no_hitbox = false;
    		    can_be_hit = false;
    		    pot_turn_off_lockout = false;
    		    sweet_baby_dont_go = false;
    			if(hitbox_hit.player_id.attack != AT_BAIR){
				        if(hitbox_hit.spr_dir == 1){
        	hsp_var = hitbox_hit.kb_value;
        }else if(hitbox_hit.spr_dir == -1){
        	hsp_var = hitbox_hit.kb_value * -1;
        }
    			}  if(hitbox_hit.player_id.attack == AT_BAIR){
				        if(hitbox_hit.spr_dir == 1){
        	hsp_var = hitbox_hit.kb_value * -1;
        }else if(hitbox_hit.spr_dir == -1){
        	hsp_var = hitbox_hit.kb_value;
        }
    			}
    	if(hitbox_hit.player_id.url == "2778789055"){
    			if(hitbox_hit.frict = 500){
    				print("FUCK");
    				//clink_cooldown = 60;
    				no_hitbox = true;
    				//hitbox_hit.destroy_hitbox = true;
    			}
        }  if(hitbox_hit.player_id.url == "2832785375"){
    		if(hitbox_hit.player_id.attack == AT_FSPECIAL){
    			print("I hate articles");
    				pot_turn_off_lockout = true;
    				}
        }if(hitbox_hit.player_id.url == "2605304929"){
    		if(hitbox_hit.player_id.attack == AT_FSPECIAL){
    			print("15 seconds, detention for you");
    				no_hitbox = true;
    				}
        }
        if(hitbox_hit == pot_hitbox_id){
        	no_hitbox = true;
        	sweet_baby_dont_go = true;
        	print("aaaaaaaaaaaaaaaa");
        }
        if(!sweet_baby_dont_go){
            	state = 2;
    			state_timer = 0;
        }
    			print(hitbox_hit)
    			pot_hitbox_id = hitbox_hit;
    			//hitbox_hit.player_id.attack = pot_attack_id;
    			pot_hitbox_group = hitbox_hit.hbox_group;
    	}
    					}
    				//}
    		}
    }
    else{
    	hitbox_hit = noone;
    }
    
if (place_meeting(x, y, asset_get("pHitBox")) && can_be_hit) { //makes the pot hittable when can_get_hit is true
    	with (pHitBox){
    		if (player == other.player_id.player){
    			if (place_meeting(x, y, other) && hit_priority != 0){
    				other.hitbox_hit = self;
    				if(type != 2){
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
    				}
                    other.hitstop = hitpause;
                    other.pot_owner = player;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit.attack != AT_FSPECIAL){
    			if(hitbox_hit.hitpause > 0 && hitbox_hit.hit_priority > 0){
    				//if(hitbox_hit != pot_hitbox_id){
    				//if(hitbox_hit.hbox_group != pot_hitbox_group){	
    					
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
    			}
    			no_hitbox = false;
    		    can_be_hit = false;
    		    sweet_baby_dont_go = false;
    			//}

				//bair lol
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
    			
    	//if(hitbox_hit.player_id.url == "2778789055"){
    			//if(clink_cooldown == 0){
    				//print("FUCK");
    				//no_hitbox = true;
    				//hitbox_hit.destroy_hitbox = true;
    				//clink_cooldown = 60;
    			//}
        //}
       if(hitbox_hit == pot_hitbox_id){
        	no_hitbox = true;
        	sweet_baby_dont_go = true;
        }
        if(!sweet_baby_dont_go){
            	state = 2;
    			state_timer = 0;
        }
    			
    			print(hitbox_hit)
    			pot_hitbox_id = hitbox_hit;
    			//hitbox_hit.player_id.attack = pot_attack_id;
    			pot_hitbox_group = hitbox_hit.hbox_group;
    				//}
    			}
    			
    		}
				if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0){	
    			if(spice_cooldown == 0){
    				if(spice_level < 3){
    			if(hitbox_hit.player_id.attack == AT_FTILT || hitbox_hit.player_id.attack == AT_UTILT || hitbox_hit.player_id.attack == AT_DTILT){
    			state = 3;
    			state_timer = 0;
    					}
    				}	
    			}
    		if(!player_near_pot){
    		if(hitbox_hit.player_id.attack == AT_FSPECIAL && hitbox_hit.hbox_num == 1){
    			if(hitbox_hit == player_id.shrimp_proj){
    		        with (hitbox_hit){
        			sound_play(sound_effect);
        			var hitfx = spawn_hit_fx(floor(x), floor(y), hit_effect);
        			hitfx.pause = 10;
    			}
    		    state = 4;
    			state_timer = 0;
    			hitbox_hit.destroyed = true;
    			}
    		}
    		}if(hitbox_hit.player_id.attack == AT_DSPECIAL && hitbox_hit.hbox_num == 1 && hitbox_hit.type == 1){
    			//hitbox_hit.player_id.dspecial_spr_var = true;
    		    state = 4;
    			state_timer = 0;
    		}
    		
    		if(spice_cooldown == 0){
    			if(spice_level < 3){
    			if(hitbox_hit.player_id.attack == AT_FSPECIAL_2){	
    		    state = 3;
    			state_timer = 0;
    			hitbox_hit.destroyed = true;
    					}
    				}
    		}if(hitbox_hit.player_id.attack == AT_TAUNT){
    		pot_salt += 1;
    		hitbox_hit.destroyed = true;	
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
	}
	if(!free){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.3;
			}if(hsp < 0){
			hsp += 0.3;
			}
		}
	}if(hsp = 0 && state_timer > 2){
		state = 1;
		state_timer = 0;
		//pot_hit_cooldown = 5;
	}if(state_timer > 1 && !free){
			if(hsp > 0 && hsp < 0.21){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.21){
				hsp = 0;
				}
	}
	/*
	if(!free){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.25;
			}if(hsp < 0){
			hsp += 0.25;
			}
		}
	}if(hsp = 0 && state_timer > 2){
		state = 1;
		state_timer = 0;
	}if(state_timer > 1 && !free){
			if(hsp > 0 && hsp < 0.1){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.1){
				hsp = 0;
				}
	}
	*/
}



//State 1: Idle

if (state == 1){
	pot_hitbox_active = false;
	if(hsp = 0 && state_timer > 1 and pot_hit_cooldown == 0){
		if(!pot_has_trapped){
	can_be_hit = true;
		}if(pot_has_trapped){
	can_be_hit = false;
		}
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
pot_trap();

	player_near_pot = false;
	with (asset_get("oPlayer")) {
		if(other.state = 1){
	if (player != other.player && state != PS_RESPAWN){
			if(collision_circle( other.x, other.y - 40, other.effect_radius, self, true, false)){
			other.player_near_pot = true;
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
			if(!no_hitbox){
		pot_hitbox = create_hitbox(AT_EXTRA_2, 1, floor(x) + spr_dir, floor(y) - 25);
		pot_hitbox.player = pot_owner;
		pot_hitbox_active = true;
		if(pot_turn_off_lockout){
			pot_hitbox.no_other_hit = 0;
		}
		if(hsp > 0){
			pot_hitbox.kb_angle = 50;
		}		if(hsp < 0){
			pot_hitbox.kb_angle = 130;
		}
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
		pot_hit_cooldown = 5;
		}if(pot_has_trapped){
		state = 5;
		state_timer = 0;
		}
	}
	if(state_timer > 1){
		if(pot_hitbox_active){
		pot_hitbox.x = floor(x);
		pot_hitbox.y = floor(y) - 25;
		}if(pot_hitbox_active){
		pot_hitbox.x = floor(x);
		pot_hitbox.y = floor(y) - 25;
		}
		if(hsp > 0 && hsp < 3 && pot_hitbox_active){
				pot_hitbox.length = 0;
				pot_hitbox_active = false;
				if(!pot_has_trapped){
				can_be_hit = true;
				}
			}if(hsp < 0 && hsp > -3 && pot_hitbox_active){
				pot_hitbox.length = 0;
				pot_hitbox_active = false;
				if(!pot_has_trapped){
				can_be_hit = true;
				}
				}
	}
	if(hit_wall){
		if(!pot_has_trapped){
		pot_hitbox.length = 0;
		pot_hitbox_active = false;
		state = 1;
		state_timer = 0;
		pot_hit_cooldown = 5;
		}if(pot_has_trapped){
		pot_hitbox.length = 0;
		pot_hitbox_active = false;
		state = 5;
		state_timer = 0;
		}
	}
pot_trap();
if(pot_has_trapped){
	pot_trapped.x = floor(x);
	pot_trapped.y = floor(y) - 5;
	pot_trapped.hitstop = 2;
	pot_trapped.hitpause = true;
	pot_trapped.state = PS_HITSTUN;
if(pot_trapped.activated_kill_effect){
	galaxy_pot = true;
}
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
			if(!no_hitbox){
		pot_hitbox = create_hitbox(AT_EXTRA_2, 1, floor(x) + spr_dir, floor(y) - 25);
		pot_hitbox.player = pot_owner;
		pot_hitbox_active = true;
				if(hsp > 0){
			pot_hitbox.kb_angle = 50;
		}		if(hsp < 0){
			pot_hitbox.kb_angle = 130;
		}
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
		spawn_hit_fx(floor(x) - spr_dir, floor(y) - 40, 3);
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
		if(pot_hitbox_active){
		pot_hitbox.x = floor(x);
		pot_hitbox.y = floor(y) - 25;
		}if(pot_hitbox_active){
		pot_hitbox.x = floor(x);
		pot_hitbox.y = floor(y) - 25;
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
		pot_hitbox_active = false;
	}

pot_trap();
if(pot_has_trapped){
	pot_trapped.x = floor(x);
	pot_trapped.y = floor(y) - 5;
	pot_trapped.hitstop = 2;
	pot_trapped.hitpause = true;
	pot_trapped.state = PS_HITSTUN;
if(pot_trapped.activated_kill_effect){
	galaxy_pot = true;
}
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
		spawn_hit_fx(floor(x) - spr_dir, floor(y) - 40, 6);
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
	pot_trapped.x = floor(x);
	pot_trapped.y = floor(y) - 5;
	pot_trapped.hitpause = true;
	pot_trapped.hitstop = 2;
	pot_trapped.state = PS_HITSTUN;
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
	steam_hitbox = create_hitbox(AT_EXTRA_2, 2, floor(x), floor(y) - 30);
	steam_hitbox.x = floor(x);
	steam_hitbox.y = floor(y) - 30;
	steam_hitbox.player = explode_owner;
	//if(pot_trapped_gumbo){
		//steam_hitbox.can_hit_self = true;
	//}
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
}if(pot_trapped.activated_kill_effect){
	galaxy_pot = true;
}
}

//State 6: Explosion

if (state == 6){
	can_be_hit = false;
	if(pot_has_trapped){
	pot_trapped.x = floor(x);
	pot_trapped.y = floor(y) - 5;
	pot_trapped.hitpause = true;
	pot_trapped.hitstop = 2;
	pot_trapped.state = PS_HITSTUN;
	}
if(state_timer = 1){
	sound_play(asset_get("sfx_ell_fspecial_charge"));
	if(has_shrimp){
	player_id.shrimpsplosion = false;
	}
}if(state_timer = 16){
	sound_play(asset_get("sfx_orcane_dsmash"));
	finisher_hitbox = create_hitbox(AT_EXTRA_2, 3, floor(x), floor(y) - 70);
	finisher_hitbox.x = floor(x)
	finisher_hitbox.y = floor(y)- 70;
	finisher_hitbox.player = explode_owner;
	if(spice_level = 0){
		finisher_hitbox.damage = 8 + pot_salt;
		finisher_hitbox.kb_value = 5;
		finisher_hitbox.kb_scale = 1.2;
		food_id = 0;
	}if(spice_level = 1){
		finisher_hitbox.damage = 10 + pot_salt;
		finisher_hitbox.kb_value = 6;
		finisher_hitbox.kb_scale = 1.2;
		food_id = 1;
	}if(spice_level = 2){
		finisher_hitbox.damage = 12 + pot_salt;
		finisher_hitbox.kb_value = 7;
		finisher_hitbox.kb_scale = 1.2;
		food_id = 2;
	}if(spice_level = 3){
		finisher_hitbox.damage = 14 + pot_salt;
		finisher_hitbox.kb_value = 8;
		finisher_hitbox.kb_scale = 1.2;
		food_id = 3;
	}
	
	if(pot_trapped != noone){
	//compat
		with pot_trapped {
	if ("pot_compat_variable" in self) {
    	other.pot_compat_variable = pot_compat_variable;
    	other.food_id = 1987;
    	other.pot_compat_text = pot_compat_text;
		}
	}
	if(pot_trapped.url == CH_ZETTERBURN){
		food_id = 11;
		pot_compat_text = "Charred Steak"
	}	if(pot_trapped.url == CH_FORSBURN){
		food_id = 12;
		pot_compat_text = "Smoked Ham"
	}if(pot_trapped.url == CH_CLAIREN){
		food_id = 13;
		pot_compat_text = "Plasma Cooked Smores"
	}if(pot_trapped.url == CH_MOLLO){
		food_id = 14;
		pot_compat_text = "Pipe Bomb"
	}if(pot_trapped.url == CH_ORCANE){
		food_id = 15;
		pot_compat_text = "Sparkling Water"
	}if(pot_trapped.url == CH_ETALUS){
		food_id = 16;
		pot_compat_text = "Shaved Ice"
	}if(pot_trapped.url == CH_RANNO){
		food_id = 17;
		pot_compat_text = "Fried Frog Legs"
	}if(pot_trapped.url == CH_HODAN){
		food_id = 18;
		pot_compat_text = "Steamed Dumplings"
	}if(pot_trapped.url == CH_KRAGG){
		food_id = 19;
		pot_compat_text = "Layered Rock Wall Cake"
	}if(pot_trapped.url == CH_MAYPUL){
		food_id = 20;
		pot_compat_text = "Lily's Feed"
	}if(pot_trapped.url == CH_SYLVANOS){
		food_id = 21;
		pot_compat_text = "Strange Salad"
	}if(pot_trapped.url == CH_OLYMPIA){
		food_id = 22;
		pot_compat_text = "Rock Candy"
	}if(pot_trapped.url == CH_WRASTOR){
		food_id = 23;
		pot_compat_text = "Slipstream Croissant"
	}if(pot_trapped.url == CH_ABSA){
		food_id = 24;
		pot_compat_text = "Cotton Candy"
	}if(pot_trapped.url == CH_ELLIANA){
		food_id = 25;
		pot_compat_text = "Airplane Food"
	}if(pot_trapped.url == CH_POMME){
		food_id = 26;
		pot_compat_text = "Luxury Cheese"
	}if(pot_trapped.url == CH_ORI){
		food_id = 27;
		pot_compat_text = "Spirit Stew"
	}if(pot_trapped.url == CH_SHOVEL_KNIGHT){
		food_id = 28;
		pot_compat_text = "Arby's Roast Beef Sandwich"
	}if(pot_trapped.url == 2627476892){
		food_id = 29;
		pot_compat_text = "Lancer Cookie"
	}if(pot_trapped.url == 2768297654 or pot_trapped.url == 2453567307){
		food_id = 30;
		pot_compat_text = "Peculiar Cheese"
	}if(pot_trapped.url == 2817605804){
		food_id = 31;
		pot_compat_text = "Coffee, Cheetos, and Chicken"
	}if(pot_trapped.url == 2664982578){
		food_id = 32;
		pot_compat_text = "Fried Egg"
	}
	}
	
	
	if(pot_trapped_gumbo){
		//finisher_hitbox.can_hit_self = true;
	}if(galaxy_pot){
		finisher_hitbox.damage = 20;
		finisher_hitbox.kb_value = 20;
		finisher_hitbox.kb_scale = 1.5;
		food_id = 3;
		player_id.galaxy_timer = 60;
		galaxy_pot = false;
	}
	if(has_shrimp){
	create_hitbox(AT_FSPECIAL, 2, floor(x), floor(y) - 60);	
	if(has_shrimp = true){
		if(player_id.custom_food == 0){
		food_id = 4;
		}if(player_id.custom_food > 0){
		food_id = player_id.custom_food + 4;
		}
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
	if(pot_trapped_gumbo){
		pot_trapped.gumbo_scalding = false;
		pot_trapped.gumbo_scalding_timer = 0;
	}
	pot_trapped = noone;
	pot_has_trapped = false;
	}
}if(state_timer = 60){
	dust_vfx = spawn_hit_fx(floor(x) - spr_dir, floor(y) - 40, player_id.dust_effect);
	dust_vfx.depth = -10;
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

//State 7: Vfx

if (state == 7){
can_be_hit = false;	
if(state_timer = 1){
	eatup_vfx = spawn_hit_fx(floor(x), floor(y) + 20, player_id.eat_up_effect);
	eatup_vfx.spr_dir = 1;
}
if(state_timer = 72){
	eatup2_vfx = spawn_hit_fx(floor(x) - spr_dir, floor(y) - 40, 3);
	eatup2_vfx.depth = -10;
    instance_destroy();
    exit;
}
}




//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
if(player_id.pot_skin = 0){
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
}if(player_id.pot_skin = 1){
switch(state){
    case 0:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle_summer");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice_summer");
    }
        animation_type = 2;
        break;
    case 1:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle_summer");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice_summer");
    }
        animation_type = 2;
        break;
    case 2:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle_summer");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice_summer");
    }
        animation_type = 2;
        break;
    case 3:
        new_sprite = sprite_get("pot_expandanim_summer");
        animation_type = 1;
        break;
    case 4:
        new_sprite = sprite_get("pot_expandanim_shrimp_summer");
        animation_type = 1;
        break;
    case 5:
    if(spice_level != 3){
        new_sprite = sprite_get("pot_idle_summer");
    }    if(spice_level == 3){
        new_sprite = sprite_get("pot_idle_maxspice_summer");
    }
        animation_type = 2;
        break;
    case 6:
        new_sprite = sprite_get("pot_burst_summer");
        animation_type = 1;
        break;
    case 7:
        new_sprite = sprite_get("blank_sheet");
        mask_index = sprite_get("blank_sheet");
        animation_type = 1;
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
	sound_play(asset_get("sfx_metal_hit_strong"));
	with (player_id){
		move_cooldown[AT_NSPECIAL] = 240;
		has_pot = true;
	}
	if(pot_hitbox_active){
	pot_hitbox.length = 0;
	pot_hitbox_active = false;
	}if(has_shrimp = true){
	with (player_id){
	shrimpsplosion = false;
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
	sound_play(asset_get("sfx_metal_hit_strong"));
	with (player_id){
		move_cooldown[AT_NSPECIAL] = 240;
		has_pot = true;
	}
	if(pot_hitbox_active){
	pot_hitbox.length = 0;
	pot_hitbox_active = false;
	}if(has_shrimp = true){
	with (player_id){
	shrimpsplosion = false;
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
#define pot_trap
with (oPlayer){
	if (place_meeting(x, y, other)){
		if (id != other.player_id && url != other.player_id.url){
			if(state == PS_HITSTUN && other_scalding == true){
				hitstop = 2;
				hitpause = true;
				if(activated_kill_effect){
					other.galaxy_pot = true;
				}if(!activated_kill_effect){
					other.galaxy_pot = false;
				}
				if(other.pot_hitbox_active){
					other.pot_hitbox.length = 0;
					other.pot_hitbox_active = false;
				}
				other.explode_owner = other.player;
				other.pot_has_trapped = true;
				other.pot_trapped_gumbo = false;
				other.pot_trapped = self;
				other.state = 5;
				other.state_timer = 0;
			}
		} else { //gumbo
			if(state == PS_HITSTUN && gumbo_scalding == true){
				hitstop = 2;
				hitpause = true;
				if(activated_kill_effect){
					other.galaxy_pot = true;
				}if(!activated_kill_effect){
					other.galaxy_pot = false;
				}
				if(other.pot_hitbox_active){
					other.pot_hitbox.length = 0;
					other.pot_hitbox_active = false;
				}
				other.explode_owner = last_player;
				print(last_player);
				other.pot_has_trapped = true;
				other.pot_trapped_gumbo = true;
				other.pot_trapped = self;
				other.state = 5;
				other.state_timer = 0;
			}
		}
	}
}