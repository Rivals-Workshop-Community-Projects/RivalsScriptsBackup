//article1_update

//falling and checks to see if it can start construction
if(free == true){
    vsp += 0.6;
    building_state = 0;
}
else{ 
	if building_type == 1{
		sprite_index = sprite_get("dispenser_opening");
	} else if building_type == 2 && building_state == 0{
		sprite_index = sprite_get("sentry_opening");
	}
    hsp = 0;
    vsp = 0;
    life_timer = life_timer + 1;
}

if building_health > building_max_health and building_health < 200{
	building_health = building_max_health;
}



//this tells how many frames the animations use
if (frame_num == 3){
    if (life_timer == frames_3s[image_index]) {
    image_index++
    }
} else if frame_num == 4{
    if (life_timer == frames_4s[image_index]) {
    image_index++
    }
} else if frame_num == 5{
    if (life_timer == frames_5s[image_index]) {
    image_index++
    }
}

//intro
if (building_state == 0){
    frame_num = 4;
    if (building_type == 1){
    	frame_num = 5;
    }
    if (life_timer == 1){
        sound_play(asset_get("sfx_land_heavy"));
    }
    if (life_timer == 2){
		if(get_synced_var (player) == 2){
			sound_play(sound_get("cd_plant"), false, noone, 1.7);
		} else{
        sound_play(sound_get("deploy"));
		}
    }
    if (life_timer == 12){
        sound_play(asset_get("sfx_shovel_hit_light1"));
    }    
    if (life_timer == 13){
        sound_play(asset_get("sfx_shovel_swing_med2"));
    }    
}
if (building_state == 0 && life_timer == 40 && tp_count == 0){
    building_state = 1;
    tp_cooldown_loop = 1;
    sentry_sfx_loop_counter = 5;
    life_timer = 0;
    image_index = 0;
    
}


//teleporter code --------------------------------------------------------------------------------------------------------------------
if building_type == 0{
	
	//cooldown code
	if (building_state == 1){
		sprite_index = sprite_get("teleporter_cooldown");
		frame_num = 5;
		//sound loop
		if (life_timer == 1){
			sound_play(sound_get("tp_cooldown"));
		}
		//loop loop
		if (life_timer == 25){
			life_timer = 0;
			if (tp_cooldown_loop == 0){
				building_state = 2;
				life_timer = 0;
				tp_sfx_loop_counter = 2;
				sound_play(sound_get("tp_ready"));
				sound_play(sound_get("tp_loop"), true);
			}
			else{
			tp_cooldown_loop = tp_cooldown_loop - 1;
			}
		}
	}

	//ready to teleport code
	if (building_state == 2){
		sprite_index = sprite_get("teleporter_ready");
		frame_num = 5;
		player_id.tp_process = false;
		if (life_timer == 20){
			life_timer = 0;
		}
	}

	//teleporting code
	if (building_state == 3){
		sprite_index = sprite_get("teleporter_using");
		frame_num = 4;
		player_id.tp_process = true;
		if (life_timer == 12){
			sound_play(sound_get("eurika_zap2"));
			tp_count ++
			sound_stop(sound_get("tp_loop"));
		}
		if (life_timer == 36){
			building_state = 1;
			tp_cooldown_loop = 5; //used to be 3+tp_count
			life_timer = 0;
		}
	} else{
		player_id.tp_process = false;
	}
}
// dispenser code----------------------------------------------------------------------------------------------------------------------------------
if building_type == 1{
	
	mask_index = sprite_get("dispenser_lv1_idle");
	frame_num = 5;
	
	//idle code
	if (building_state == 1){
		dispense_timer ++
		if building_level == 1{
			sprite_index = sprite_get("dispenser_lv1_idle");
			building_max_health = 20;
			if (dispense_timer >= dispense_timer_max){
				dispense_timer = 0;
				s_ammo_drop = instance_create(x,y-30,"obj_article2");
				s_ammo_drop.vsp = -4;
				s_ammo_drop.hsp = spr_dir * -2;
				s_ammo_drop.ammo_direction = spr_dir * -1;
				s_ammo_drop.ammo_amount = 25;
				sound_play(sound_get("demoman_grenade"), false, noone, 0.5);
			}
		}
		if building_level == 2{
			sprite_index = sprite_get("dispenser_lv2_idle");
			building_max_health = 30;
			dispense_timer_max = 200;
			if (dispense_timer >= dispense_timer_max){
				dispense_timer = 0;
				s_ammo_drop = instance_create(x,y-30,"obj_article2");
				s_ammo_drop.vsp = -4;
				s_ammo_drop.hsp = spr_dir * -2;
				s_ammo_drop.ammo_direction = spr_dir * -1;
				s_ammo_drop.ammo_amount = 25;
				sound_play(sound_get("demoman_grenade"), false, noone, 0.6);
			}
		}
		if building_level == 3{
			sprite_index = sprite_get("dispenser_lv3_idle");
			building_max_health = 40;
			dispense_timer_max = 280;
			if (dispense_timer >= dispense_timer_max){
				dispense_timer = 0;
				m_ammo_drop = instance_create(x,y-30,"obj_article2");
				m_ammo_drop.vsp = -4;
				m_ammo_drop.hsp = spr_dir * -2;
				m_ammo_drop.ammo_direction = spr_dir * -1;
				m_ammo_drop.ammo_amount = 100;
				m_ammo_drop.ammo_type = 1;
				sound_play(sound_get("demoman_grenade"), false, noone, 1);
				sound_play(asset_get("sfx_waveland_fors"));
			}
			if (life_timer == 30){
				life_timer = 0;
			}
		}
		//upgrade code
		if building_upgrade == 4{
			building_max_health = building_max_health + 10;
			building_health = building_max_health;
			building_upgrade = 0;
			building_state = 2;
			life_timer = 0;
			if(get_synced_var (player) == 2){
				sound_play(sound_get("cd_plantgrow"), false, noone, 2.1);
			} else{
				sound_play(sound_get("dispenser_generate_metal"));
			}
		}
		
		//metal sfx code
		if (dispense_timer == dispense_timer_max - 60){
			sound_play(sound_get("dispenser_generate_metal"));
		}
	}
	//upgrading
	if (building_state == 2){
		if building_level == 1{
			sprite_index = sprite_get("dispenser_lv1_upgrading");
		} else if building_level == 2{
			sprite_index = sprite_get("dispenser_lv2_upgrading");
		}
		if life_timer = 20{
			life_timer = -4;
			building_level = building_level + 1;
			building_state = 1;
			dispense_timer = 75 + dispense_timer_max;
		}
	}
	
}
// sentry code ------------------------------------------------------------------------------------------------------------------------------------
if building_type == 2{
	
	mask_index = sprite_get("dispenser_lv1_idle");
	

	if (building_state == 1){
		if sprite_index = sprite_get("sentry_opening"){
			sound_play(sound_get("dispenser_generate_metal"));
			sprite_index = sprite_get("sentry_lv1_idle");
		}
		frame_num = 5;
		if building_level == 1{
			sprite_index = sprite_get("sentry_lv1_idle");
			building_max_health = 20;
			if life_timer >= 50 && life_timer < 54{ //this is here to fix the animation, don't ask why this didn't work otherwise
				image_index = 11;
			}
			if life_timer == 54{
				life_timer = 0;
				sentry_sfx_loop_counter++
				image_index = 0;
			}
		}
		if building_level == 2{
			sprite_index = sprite_get("sentry_lv2_idle");
			building_max_health = 30;
			if life_timer >= 50{ //this is here to fix the animation, don't ask why this didn't work otherwise
				image_index = 11;
			}
			if life_timer >= 54{
				life_timer = 0;
				sentry_sfx_loop_counter++
				image_index = 0;
			}
		}
		if building_level == 3{
			sprite_index = sprite_get("sentry_lv3_idle");
			building_max_health = 40;
			if life_timer >= 50{ //this is here to fix the animation, don't ask why this didn't work otherwise
				image_index = 11;
			}
			if life_timer >= 54{
				life_timer = 0;
				sentry_sfx_loop_counter++
				image_index = 0;
			}
		}
		
		//search sfx code
		if (sentry_sfx_loop_counter > 2){
			sound_play(sound_get("sentry_search"), false, noone, 0.4);
			sentry_sfx_loop_counter = 0;
		}
	}
		
		
	if building_state == 1 or building_state == 4{
		//maybe try some kind of check to see if there's more than 2 players fighting
		with (oPlayer) if player != other.player{
			var radius = 180;
			if (point_distance(x, y, other.x, other.y + 90 ) <= radius){
				if y < other.y + 180{
					if other.more_than_2_players == true{ //this is if there's >2 players, otherwise the sentry breaks the code and your ears
						if other.building_state == 1{
							if other.still_fire_anyways_loop_prevent == true{
								other.life_timer = 0;
								other.image_index = 0;
								other.still_fire_anyways_loop_prevent = false;
							} else{
								other.life_timer = 120;
							}
							other.building_state = 4;
						}
						other.still_fire_anyways = true;
					} //else{ //here's the normal code for if there's just 2 players
					// 	if other.enemy_being_shot == 0{
					// 		other.enemy_being_shot = player;
					// 	}
					// 	other.still_fire_anyways = false;
					// 	other.sentry_enemy_x = x;
					// 	other.sentry_enemy_y = y;
					// 	if other.building_state == 1{
					// 		other.building_state = 4;
					// 		other.life_timer = 120;
					// 	}
					// }
					//turns sentry around if it's facing the wrong way
						if x > other.x{
							if other.spr_dir == -1{
								other.x = other.x - 12;
							}
							other.spr_dir = 1;
						} else{
							if other.spr_dir == 1{
								other.x = other.x + 12;
							}
							other.spr_dir = -1;	
						}
					//shoot angle
					if y < other.y +30{
						if y < other.y -10{
							other.shoot_angle = 90;
						} else{
							other.shoot_angle = 45;
						}
					} else{
						other.shoot_angle = 0;
					}
				} else{
					other.enemy_being_shot = 0;
				}
			} else{
				other.enemy_being_shot = 0;
			}
		}
		
		//upgrade code
		if building_upgrade == 4{
			building_max_health = building_max_health + 10;
			building_health = building_max_health;
			building_upgrade = 0;
			building_state = 2;
			life_timer = 0;
			if(get_synced_var (player) == 2){
				sound_play(sound_get("cd_plantgrow"), false, noone, 2.1);
			} else{
				sound_play(sound_get("dispenser_generate_metal"));
			}
		}
	}
		
		
	//the actual firing - shooting code
	if (building_state == 4){
		frame_num = 3;
		if building_level == 1{ //level 1
			building_max_health = 20;
			//shoot angle
			if shoot_angle == 0{
				sprite_index = sprite_get("sentry_lv1_shoot_0");
			}
			if shoot_angle == 45{
				sprite_index = sprite_get("sentry_lv1_shoot_45");
			}
			if shoot_angle == 90{
				sprite_index = sprite_get("sentry_lv1_shoot_90");
			}
			//timer stuff
			if life_timer == 120{ //initial targetting
				sound_play(sound_get("sentry_target"), false, noone, 0.6);
				life_timer = 10;
			}
			if life_timer == 2{ //hitbox spawn
				create_hitbox(AT_USPECIAL, 3, x, y - 26);
				if(get_synced_var (player) == 2){
					sound_play(sound_get("cd_pea"), false, noone, 1.7);
				}
				sound_play(sound_get("sentry_shoot_lv1"));
				
			}
			if life_timer >= 9{ //animation fix
				image_index = 3;
			}
			if life_timer >= 40 && life_timer < 100{ //loop
				life_timer = 0;
				image_index = 0;
				if still_fire_anyways == true{
					still_fire_anyways = false;
					still_fire_anyways_loop_prevent = true;
				}
			}
		}
		if building_level == 2{ //level 2
			building_max_health = 30;
			sprite_index = sprite_get("sentry_lv2_shoot_0");
			//shoot angle
			if shoot_angle == 0{
				sprite_index = sprite_get("sentry_lv2_shoot_0");
			}
			if shoot_angle == 45{
				sprite_index = sprite_get("sentry_lv2_shoot_45");
			}
			if shoot_angle == 90{
				sprite_index = sprite_get("sentry_lv2_shoot_90");
			}
			//timer stuff
			if life_timer == 2{ //shoot bullets code
				create_hitbox(AT_USPECIAL, 3, x, y - 26);
				if(get_synced_var (player) == 2){
					sound_play(sound_get("cd_pea"), false, noone, 1.7);
				} 
				sound_play(sound_get("sentry_shoot_lv1"));
				
			}
			if life_timer >= 9{ //fixes animations
				image_index = 3;
			}
			if life_timer >= 20 && life_timer < 70{ //the < 70 is so that it can have a second to aim
				life_timer = 0;
				image_index = 0;
				if still_fire_anyways == true{
					still_fire_anyways = false;
					still_fire_anyways_loop_prevent = true;
				}
			}
			if life_timer > 70{ //intial targetting
				image_index = 0;
				if life_timer > 100{
					life_timer = 0;
				}
			}
		}
		
		if building_level == 3{ //level 3
			building_max_health = 40;
			sprite_index = sprite_get("sentry_lv3_shoot_0");
			//shoot angle
			if shoot_angle == 0{
				sprite_index = sprite_get("sentry_lv3_shoot_0");
			}
			if shoot_angle == 45{
				sprite_index = sprite_get("sentry_lv3_shoot_45");
			}
			if shoot_angle == 90{
				sprite_index = sprite_get("sentry_lv3_shoot_90");
			}
			//timer stuff
			if life_timer == 2{
				create_hitbox(AT_USPECIAL, 3, x, y - 26);
				if(get_synced_var (player) == 2){
					sound_play(sound_get("cd_pea"), false, noone, 1.7);
				}
				sound_play(sound_get("sentry_shoot_lv1"));
				
			}
			if life_timer >= 9{
				image_index = 3;
			}
			if life_timer >= 20 && life_timer < 70{ //the < 70 is so that it can have a second to aim
				life_timer = 0;
				image_index = 0;
				rocket_timer ++
				if rocket_timer >= 7{ // rocket code
					rocket_timer = 0;
					var sentry_rockets = create_hitbox(AT_USPECIAL, 4, x, y + (15*player_id.spr_dir * spr_dir) + 30);
					sound_play(sound_get("sentry_rocket"));
					sentry_rockets.spr_dir = spr_dir;
					if shoot_angle == 90{
						sentry_rockets.hsp = 0;
						sentry_rockets.vsp = -9;
						if player_id.spr_dir == -1{
							sentry_rockets.proj_angle = 90;
						} else{
							sentry_rockets.proj_angle = 270;
						}
					} else{
						sentry_rockets.hsp = 9 * spr_dir;
						sentry_rockets.vsp = 0;
						if spr_dir != 1{
							if player_id.spr_dir == -1{
								sentry_rockets.proj_angle = 180;
							} else{
								sentry_rockets.proj_angle = 0;
							}
						} else{
							if player_id.spr_dir == -1{
								sentry_rockets.proj_angle = 0;
							} else{
								sentry_rockets.proj_angle = 180;
							}
						}
					}
				}
				if rocket_timer == 6{ //warning
					sound_play(sound_get("dispenser_generate_metal"));
				}
				if still_fire_anyways == true{
					still_fire_anyways = false;
					still_fire_anyways_loop_prevent = true;
				}
			}
			if life_timer > 70{
				image_index = 0;
				if life_timer > 100{
					life_timer = 0;
					rocket_timer = 2
				}
			}
		}
		if enemy_being_shot == 0 && still_fire_anyways == false{
			building_state = 1;
		}
	}	
	
	
	//wrangling
	if building_state == 3{
		image_index = 0;
		life_timer = 0;
		if building_level == 1{
			sprite_index = sprite_get("sentry_lv1_idle");
		}
		if building_level == 2{
			sprite_index = sprite_get("sentry_lv2_idle");
		}
		if building_level == 3{
			sprite_index = sprite_get("sentry_lv3_idle");
		}
	}

	
	//upgrading
	if (building_state == 2){
		if building_level == 1{
			sprite_index = sprite_get("sentry_lv1_upgrading");
		} else if building_level == 2{
			sprite_index = sprite_get("sentry_lv2_upgrading");
		}
		if life_timer = 20{
			life_timer = -4;
			building_level = building_level + 1;
			building_state = 1;
			sentry_sfx_loop_counter = 2;
		}
	}
}

// universal code ------------------------------------------------------------------------------------------------------------------------------------
// print(building_hit_cooldown)
//damage/repair code
if building_hit_cooldown == 0{
    with pHitBox {
		if !(player_id == other.player_id) {
			building_hit = 1; //Enemy hit
			if (building_hit == 1){
                if place_meeting(x,y,other){
                    if other.building_hit_cooldown == 0{
						if damage > 0{ //only attacks that deal damage hurt it
							sound_play(sound_effect)
							spawn_hit_fx( x + hit_effect_x, y + hit_effect_y, hit_effect );
							print(damage);
							sound_play(asset_get("sfx_shovel_hit_light1"));
							other.building_health = other.building_health - damage;
							player_id.has_hit = true;
							player_id.in_hitpause = true;
							if transcendent == true or enemies == 1{
								other.building_hit_cooldown = damage * damage * 2;
							} else{
								destroyed = true;
								other.building_hit_cooldown = damage * 2;
							}
						}
                    }
                }
            }
		} else{
			building_hit = 2; //Engineer repair
			if (building_hit == 2){
				if place_meeting(x,y,other){
					if (player_id.wrench == true && hbox_num == 1 && type == 1){//that engi is swinging his wrench
						if other.building_hit_cooldown == 0{
							other.building_hit_cooldown = 15;
							with hit_fx_obj if player_id == other{
								if other.hit_fx == repairperfect or other.hit_fx == repair1 or other.hit_fx == repairfail{
									other.depth = 2000;
								}
							}
							snd_rng = random_func(0, 10, true);
							if player_id.metal_count > 0{ //if he has enough metal
								if other.building_health < other.building_max_health{
									other.building_health = other.building_health + 25;
									player_id.metal_count = player_id.metal_count - 25;
									// spawn_hit_fx( other.x + 6, other.y +80, 310 );
									if snd_rng <= 5{
										spawn_hit_fx( other.x - 5 + snd_rng * 2, other.y +20, player_id.repair1 );
										sound_play(sound_get("repair_1"));
									} else{
										spawn_hit_fx( other.x - 15 + snd_rng * 2, other.y +20, player_id.repair2 );
										sound_play(sound_get("repair_2"));
									}
									
								}else if other.building_level < 3 && other.building_type > 0{ //upgrades if it isn't lv3 or a teleporter
									other.building_upgrade ++
									player_id.metal_count = player_id.metal_count - 25;
									// spawn_hit_fx( other.x + 6, other.y +80, 310 );
									if snd_rng <= 5{
										spawn_hit_fx( other.x - 5 + snd_rng * 2, other.y + 30, player_id.repair1 );
										sound_play(sound_get("repair_1"));
									} else{
										spawn_hit_fx( other.x - 15 + snd_rng * 2, other.y + 40, player_id.repair2 );
										sound_play(sound_get("repair_2"));
									}
									
								}else{ //perfect
									sound_play(sound_get("repair_fail")); //y + 30
									spawn_hit_fx( other.x + 4, other.y + 70 - 22 * other.building_level - (1 + 5 * other.building_type), player_id.repairperfect);
								}
							} else{ //no metal
								sound_play(sound_get("repair_fail"));
								if (other.building_level < 3 && other.building_type > 0) or (other.building_health < other.building_max_health){
									spawn_hit_fx( other.x + 4,  other.y + 70 - 22 * other.building_level - (1 + 5 * other.building_type), player_id.repairfail );
								} else{ //still perfect
									spawn_hit_fx( other.x + 4, other.y + 70 - 22 * other.building_level - (1 + 5 * other.building_type), player_id.repairperfect);
								}
							}
						}
                    }
                }
            }
		}
    }
}
if building_hit_cooldown > 0{
    building_hit_cooldown = building_hit_cooldown - 1;
}


//destruction code
if (building_health <= 0) or (y > room_height){
    sound_play(sound_get("demolition"));
    spawn_hit_fx( x, y+86, 140 );
    if building_type == 0{
		player_id.tp_alive = 0;
		player_id.tp_process = false;
		if(get_synced_var (player) == 1){
			sound_play(sound_get("v_teleporterdown")); //sadly I cannot use voiceplay(); in articles without over-clamplicating things
		}
    } else if building_type == 1{
		player_id.disp_alive = 0;
		if(get_synced_var (player) == 1){
			sound_play(sound_get("v_dispenserdown"));
		}
    }
	else if building_type == 2{
		player_id.sentry_alive = 0;
		if(get_synced_var (player) == 1){
			sound_play(sound_get("v_sentrydown"));
		}
    }
    scrap_ammo_drop = instance_create(x-40,y,"obj_article2");
	scrap_ammo_drop.ammo_type = 3;
	scrap_ammo_drop.ammo_amount = 25 *(1 + 1 * building_type);
	sound_stop(sound_get("tp_loop"));
    instance_destroy();
    exit;
}

//self destruction code
if (building_health >= 400){ //you see it sets the health to a crazy high amount so that I don't need new variables
	building_state = 200;
	life_timer = 0;
	image_index = 0;
	building_health = 300;
	frame_num = 4;
}

if (building_state = 200){
	sprite_index = sprite_get("detonate");
	sentry_collision = false;
	if (life_timer == 4){
		sound_play(sound_get("demolition"));
		scrap_ammo_drop = instance_create(x-40,y,"obj_article2");
		scrap_ammo_drop.ammo_type = 3;
		scrap_ammo_drop.ammo_amount = 25 *(1 + 1 * building_type);
		self_destruct = create_hitbox(AT_USPECIAL, 2, x , y + 94);
    }
    if (life_timer == 36){
		if building_type == 0{
			player_id.tp_alive = 0;
			player_id.tp_process = false;
		} else if building_type == 1{
			player_id.disp_alive = 0;
		}
		else if building_type == 2{
			player_id.sentry_alive = 0;
		}
		sound_stop(sound_get("tp_loop"));
		instance_destroy();
		exit;
    }
}