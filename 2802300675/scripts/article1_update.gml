//

mark_for_destroyal = true;
for (var i = 0; i < array_length(poison_array); i++){
	if(poison_array[i].poison_active == true){
			poison_array[i].state_timer++;
			
			//start alpha
			if(poison_array[i].alpha < 1){
				poison_array[i].alpha += 0.05;
			}
			
			if (poison_array[i].state_timer % 5 == 0){
	        poison_array[i].image_index++;	
	        }
	        
	        //initial invunerability
	        if(poison_array[i].state_timer > poison_array[i].introtime){
	        	if(poison_array[i].color != c_white){
	        		poison_array[i].color = c_white;
	        		sound_play(asset_get("sfx_hod_steam_sfx2_03"));
					var hitsmoke = spawn_hit_fx(poison_array[i].x, poison_array[i].y, poison_array[i].player_id.hitsmoke);
					hitsmoke.depth = -10;
	        	}
	        }
			
			
			//move away from each other
			for (var j = 0; j < array_length(poison_array); j++){
				if(poison_array[j].poison_active == true and i != j){
					if(point_distance(poison_array[i].x, poison_array[i].y-30, poison_array[j].x, poison_array[j].y-30) < 110){
						poison_array[i].travel_angle = point_direction(poison_array[i].x, poison_array[i].y-30, poison_array[j].x, poison_array[j].y-30);
						poison_array[i].x -= lengthdir_x( 4, poison_array[i].travel_angle);
						poison_array[i].y -= lengthdir_y( 4, poison_array[i].travel_angle);
					}
				}
			}
			
			//Poison cloud being hit
			if(poison_array[i].state_timer > poison_array[i].introtime && poison_array[i].state_timer <= poison_array[i].lifetime+poison_array[i].introtime){
				with(pHitBox){
					if(player_id != other.poison_array[i].player_id){
						if(collision_circle( other.poison_array[i].x, other.poison_array[i].y, other.poison_array[i].radiuscircle, self, true, false)){
							if("isHasBrainDamage" not in player_id){//check if a Valley hits
							with(other) poison_array[i].state_timer = poison_array[i].lifetime+poison_array[i].introtime;//Destroy if not valley
							}else{
							if(!cant_break_clouds){
							with(other) poison_array[i].state_timer = poison_array[i].lifetime+poison_array[i].introtime;//Destroy if valley attacks normally	
							}else{
								if(attack == AT_NSPECIAL and tier != 3){
									with(other) upgrade_projectile();
								}
							}
							}
						}
					}else{//Nspecial interaction
					if(collision_circle( other.poison_array[i].x, other.poison_array[i].y, other.poison_array[i].radiuscircle, self, true, false)){
					if(attack == AT_NSPECIAL and tier != 3){
						with(other) upgrade_projectile();
								}
						}
					}
				}
			}
			if(poison_array[i].upgradecooldown > 0){
				poison_array[i].upgradecooldown--;
			}
			
			//death behavior
			if(poison_array[i].player_id.state == PS_DEAD or poison_array[i].player_id.state == PS_RESPAWN or poison_array[i].usedbydspec or poison_array[i].player_id.destroy_smog){
				if(poison_array[i].state_timer <= poison_array[i].lifetime+poison_array[i].introtime){
				poison_array[i].state_timer = poison_array[i].lifetime+poison_array[i].introtime;	
				}
			}
			
			//die
	        if(poison_array[i].state_timer == poison_array[i].lifetime+poison_array[i].introtime){
	        	sound_play(asset_get("sfx_hod_steam_level1"));
	        	poison_array[i].sprite_index = sprite_get("cloud_disappear");
	        	poison_array[i].image_index = 0;
	        }
	        if(poison_array[i].state_timer > poison_array[i].lifetime+poison_array[i].introtime){
	        	if(poison_array[i].image_index == 11){
	        	poison_array[i].poison_active = false;	
	        	}
	        }
			
		mark_for_destroyal = false;
	}
}

if(mark_for_destroyal){
	print("destroyed");
	player_id.poisonsmog_article = 0;
	player_id.destroy_smog = false;
	instance_destroy();
    exit;
}
#define upgrade_projectile
for (var i = 0; i < array_length(poison_array); i++){
	if(poison_array[i].poison_active == true){
with(pHitBox){
if(collision_circle( other.poison_array[i].x, other.poison_array[i].y, other.poison_array[i].radiuscircle, self, true, false)){
					if(attack == AT_NSPECIAL and tier != 3 and other.poison_array[i].upgradecooldown == 0){
									switch(tier){
										case 1:
										hitbox_timer = 0;
										damage = 7;
										kb_value = 7;
										kb_scale = 0.6;
										hitpause = 7;
										hitpause_growth = 0.5;
										sprite_index = level2sprite;
										hsp = 9*draw_xscale;
										hitstun_factor = 0.65;
										image_xscale = 0.2;
										image_yscale = 0.16;
										sound_play(asset_get("sfx_hod_steam_level2"));
										break;
										case 2:
										hitbox_timer = 0;
										length = 50;
										damage = 10;
										kb_value = 8;
										kb_scale = 0.9;
										hitpause = 11;
										hitpause_growth = 0.9;
										sprite_index = level3sprite;
										hsp = 12*draw_xscale;
										hitstun_factor = 1;	
										image_xscale = 0.35;
										image_yscale = 0.25;
										sound_play(asset_get("sfx_hod_steam_level3"));
										hit_effect = other.poison_array[i].player_id.bigsmoke;
										destroy_fx = other.poison_array[i].player_id.bigsmoke;
										final_upgrade_cooldown = 18;
										break;
									}
									tier += 1;
									spr_dir = draw_xscale;
									other.poison_array[i].upgradecooldown = 45;
								}
						}
}
}
}