if state == PS_WAVELAND && state_timer == 1 && !hitpause {
    sound_play(asset_get("sfx_waveland_may"))
    sound_play(asset_get("sfx_waveland_syl"))
}

if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	boost_used = false;
}

//old stuff
/*if(smog_cloud != 0){
with (asset_get("oPlayer")) {
	if(other.smog_cloud.state = 1){
	if (player != other.player && invincible = 0 && state != PS_RESPAWN && collision_circle( other.smog_cloud.x, other.smog_cloud.y - 40, other.smog_cloud.effect_radius, self, true, false)){
		if(other.cloud_poison_timer = 0){
					sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 0.5);
					var hitfx = spawn_hit_fx(x + spr_dir * 0, y - 30, 14);
					take_damage(player, -1, 2);
					other.cloud_poison_timer = 25;	
				}	
			}
		}
	}
}

if(cloud_poison_timer != 0){
	cloud_poison_timer--;
}

if(player_in_smog = true){
	valley_outline = true;
	init_shader();
	if(get_gameplay_time() % 5 == 0){
	valley_outline_timer = 0;
	player_in_smog = false;	
	}
}if(player_in_smog = false){
	if(valley_outline_timer < 5){
		valley_outline_timer++;
	}
	if(valley_outline_timer == 2){
	valley_outline = false;
	init_shader();
	}
}
*/

if (get_gameplay_time() >= 20 && isHasBrainDamage == false){
	with(oPlayer){
		if("isHasBrainDamage" in self){
		num_valleys += 1;	
		}
	}
	isHasBrainDamage = true;
	//print(num_phasmos);
}
if(isHasBrainDamage){
	with(oPlayer){	
		if(num_valleys == 0){
		num_valleys = other.num_valleys;
		}
	}
}

//poison detection
if(poisonsmog_article != 0){
	with(oPlayer){
		for (var i = 0; i < array_length(other.poisonsmog_article.poison_array); i++){
			if(other.poisonsmog_article.poison_array[i].poison_active == true){
			if(collision_circle( other.poisonsmog_article.poison_array[i].x, other.poisonsmog_article.poison_array[i].y-30, other.poisonsmog_article.poison_array[i].radiuscircle, self, true, false)){
			in_poison_timer = 45;
			
			if(other.poisonsmog_article.poison_array[i].state_timer < (other.poisonsmog_article.poison_array[i].lifetime+other.poisonsmog_article.poison_array[i].introtime)){
				if(other.poisonsmog_article.poison_array[i].player != player and other.poisonsmog_article.poison_array[i].state_timer > other.poisonsmog_article.poison_array[i].introtime){
				in_poison = true;	
				}
			}
			
			//Valley Dspec Interaction
			if("isHasBrainDamage" in self){
				if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
					if(attack == AT_DSPECIAL && (window != 7)){
						other.poisonsmog_article.poison_array[i].usedbydspec = true;
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
			}
		}
	}
}

//other poison stuff
with(oPlayer){
	//poison damage
	if(in_poison_timer < 42){
		if(in_poison){
			in_poison = false;
		}
	}
	
	if(in_poison){
		poison_tick -= 1;
	}
	
	if(poison_tick == 0){
		sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.5);
		spawn_hit_fx(x, y - 30, 14);
		take_damage(player, -1, (num_valleys/num_valleys)*2);
		poison_tick = 25;
	}
	
	//decay outside of poison
	if(in_poison_timer > 0){
		in_poison_timer -= num_valleys/num_valleys;
	}else{
		
		if(poison_tick != 5){
			poison_tick = 5;
		}
	}
}

if(get_gameplay_time() > 100){
	if(!start_predraw){
	start_predraw = true;
	}
}

if(uspec_cooldown != 0){
	uspec_cooldown--;
}