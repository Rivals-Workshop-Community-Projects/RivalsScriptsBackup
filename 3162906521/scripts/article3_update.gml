//article3_update

life_timer = life_timer + 1;

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

//toolbox of boxing
if tool_type == 0{
	if tool_state == 0{//flying through the air
		frame_num = 4;
		hsp = 6 * spr_dir;
		if vsp < 50{
			vsp = vsp + 0.4;
		}
		wait_timer = 0;
		if life_timer == 1 or life_timer == 5{
			create_hitbox(AT_FSPECIAL, 2, x, y);
			//put in parried.gml that hitbox AT_FSPECIAL, 2 sets it to tool_state 10 if parried
		}
		if life_timer == 8{//loops animations
			life_timer = 0
		}
		if free == false{//there's also another line of code in hit_player that will send it straight to tool_state 2 on hit
			tool_state = 1;
			life_timer = 0;
			sound_play(sound_get("deploy"), false, noone, 0.4);
		}
		
		//rng for bread easter egg
		if life_timer == 0{
			if (get_synced_var (player) == 1){ //rng for the bread easter egg
				snd_rng = random_func(0, 4, true);
				if snd_rng == 1{
					is_bread = true;
				} else{
					is_bread = false;
				}
			}
		}
	}
	
	if tool_state == 1{//landed on the ground, waits a second or two
		if free == true{
			vsp = vsp + 0.4;
		}
		hsp = hsp/1.2;
		life_timer = 0;
		wait_timer ++;
		//set it so that hitbox AT_FSPECIAL, 2 will be destroyed if tool_state != 1
		// blunt_trauma.destroyed = true;
		sprite_index = sprite_get("toolbox");
		if wait_timer >= 120{
			tool_state = 2;
			wait_timer = 0;
		}
	}
	
	if tool_state == 2{//punching
		hsp = hsp/2;
		vsp = vsp/2;
		wait_timer = 0;
		frame_num = 4;
		if is_bread == false{
			sprite_index = sprite_get("toolboxing");
		} else{
			sprite_index = sprite_get("toolboxing2");
		}
		
		if life_timer <= 6{//squash
			image_index = 0;
		}else
		if life_timer <= 10{//springing
			image_index = 1;
		}else
		if life_timer <= 13{
			image_index = 2;
		}else
		if life_timer <= 17{//peak
			image_index = 3;
		}else
		if life_timer <= 22{//returning
			image_index = 4;
		}else
		if life_timer <= 27{//closed/shrinking
			image_index = 5;
			if life_timer == 27{
			sound_play(asset_get("sfx_roll"));
			}
		}else
		if life_timer <= 32{
			image_index = 6;
		}else
		if life_timer <= 37{
			image_index = 7;
		}else
		if life_timer <= 42{//tiny
			image_index = 8;	
		}else{
			spawn_hit_fx( x, y, 14 );
			instance_destroy();
			exit;
		}
		//sounds
		if life_timer == 6{
			if is_bread == false{
				sound_play(sound_get("cartoon_spring"));
			} else{
				sound_play(asset_get("sfx_syl_uspecial_travel_start"));
			}
			sound_play(asset_get("sfx_swipe_heavy1"));
		}
		
		if life_timer == 5{
			killing_glove_of_boxing = create_hitbox(AT_FSPECIAL, 3, x, y- 40);
			// if is_bread == true{
			// 	killing_glove_of_boxing.sound_effect = asset_get("sfx_orca_crunch");
			// }
		}
		if life_timer == 14{
			sound_play(asset_get("sfx_orca_bite"));
		}
		
		// if life_timer == 9{
		// 	punching_sweet = create_hitbox(AT_FSPECIAL, 4, x, y);
		// }
		// if (punching_sour.was_parried == true) or (punching_sweet.was_parried == true){
		// 	tool_state = 10;
		// }
	}
	
	
	if tool_state >= 10{
		sprite_index = sprite_get("toolboxair");
		wait_timer ++;
		vsp = -0.7
		if wait_timer == 120{
			instance_destroy();
			exit;
		}
	}
}




//La Rata
if tool_type == 1{ 
	death_timer++
	if tool_state == 0{ //spawn
		// other.move_cooldown[AT_DSPECIAL] = 400;
		frame_num = 4;
		if free == true{
			vsp = -6 + life_timer
		}
		sprite_index = sprite_get("rat_spawn");
		if life_timer == 17{//loops animations
			life_timer = 0;
			tool_state = 1;
		}
	}
	if tool_state == 1{ //idle
		frame_num = 4;
		sprite_index = sprite_get("rat_idle");
		if life_timer == 5{//loops animations
			life_timer = 0;
			tool_state = 2;
			sound_play(sound_get("deploy"), false, noone, 0.1);
		}
	}
	if tool_state == 2{ //walking
		sprite_index = sprite_get("rat_walk");
		if free == true or (life_timer > 0 && hsp == 0){
			sound_play(asset_get("sfx_ell_hover"), false, noone, 0.4);
			vsp = 2.5;
			tool_state = 3;
		} else{
			hsp = 3.5 * spr_dir;
		}
		if life_timer == 12{
			sound_play(sound_get("deploy"), false, noone, 0.1);
		}
		if life_timer == 25{//loops animations
			life_timer = 0;
			sound_play(sound_get("deploy"), false, noone, 0.1);
		}
	}
	if tool_state == 3{ //flying (it starts flying after it falls off of a ledge or goes next to a building)
		sprite_index = sprite_get("rat_fly")
		if vsp > -25{
			vsp = vsp - 0.5;
			hsp = hsp * 0.995;
		} else{
			sound_stop(asset_get("sfx_ell_hover"));
			death_timer = 300;
		}
		if life_timer == 25{//loops animations
			life_timer = 0;
		}
	}
	
	if tool_state > 1 && death_timer < 300{
		if life_timer == 0{
			rat_box = create_hitbox(AT_DSPECIAL, 1, x, y);
		}
		if !instance_exists(rat_box){
			death_timer = 400
		} else{
		rat_box.x = x;
		rat_box.y = y;
		}
	}
	
	if death_timer >= 300{
		sound_stop(asset_get("sfx_ell_hover"));
		player_id.rat_alive = false;
		instance_destroy();
		exit;
	}
}
// universal code ------------------------------------------------------------------------------------------------------------------------------------

//damage/repair code
if tool_type = 1 && tool_state < 10{ //set to tool_type = 1 if I only want it to hit the rat
    with pHitBox {
		if !(player_id == other.player_id){
			building_hit = 1; //Enemy hit
			if (building_hit == 1){
                if place_meeting(x,y,other){
					if damage > 0{ //only attacks that deal damage hurt it
						other.tool_state = 10;
						other.life_timer = 0;
						other.hsp = spr_dir * 0.6
						other.vsp = -2;
						other.spr_dir = other.spr_dir * -1
						sound_play(sound_effect)
						// spawn_hit_fx( x + hit_effect_x, y + hit_effect_y, hit_effect );
						sound_play(asset_get("sfx_shovel_hit_light1"));
						if transcendent == false{
							destroyed = true;
						}
					}
                }
            }
		} //else{ (maybe he can pick it up in the future? idk for now)
			// building_hit = 2; //Engineer pickup
			// if (building_hit == 2){
			// 	if place_meeting(x,y,other){
			// 		if (player_id.wrench == true && hbox_num == 1){//that engi is swinging his wrench
			// 			if player_id.metal_count > 0{ //if he has enough metal
			// 				player_id.metal_count = player_id.metal_count + 25;
			// 				spawn_hit_fx( other.x + 6, other.y +80, 305 );
			// 				sound_play(sound_get("repair_1"));
			// 			}
   //                 }
   //             }
   //         }
		//}
    }
}

if tool_state == 10{
	sound_stop(asset_get("sfx_ell_hover"));
	sprite_index = sprite_get("rat_damage")
	hsp = hsp * 0.95;
	vsp = vsp * 0.95;
	player_id.rat_alive = false;
	if life_timer >= 30{
		sound_play(asset_get("sfx_roll"));
		spawn_hit_fx( x, y, 14 );
		instance_destroy();
		exit;
	}
}

//destruction code
if (y > room_height){
    // sound_play(sound_get("demolition"));
    // spawn_hit_fx( x, y+86, 140 );
  //  if tool_type == 0{
		// player_id.toolbox_alive = false;
  //  } else{
		// player_id.rat_alive = false;
  //  }
	if tool_type == 1{
		player_id.rat_alive = false;
	}
	instance_destroy();
	exit;
}

// //self destruction code
// if (building_health >= 400){ //you see it sets the health to a crazy high amount so that I don't need new variables
// 	building_state = 200;
// 	life_timer = 0;
// 	image_index = 0;
// 	building_health = 300;
// 	frame_num = 4;
// }

// if (building_state = 200){
// 	sprite_index = sprite_get("detonate");
// 	sentry_collision = false;
// 	if (life_timer == 4){
// 		sound_play(sound_get("demolition"));
// 		scrap_ammo_drop = instance_create(x-40,y,"obj_article2");
// 		scrap_ammo_drop.ammo_type = 3;
// 		scrap_ammo_drop.ammo_amount = 25 *(1 + 1 * building_type);
// 		self_destruct = create_hitbox(AT_USPECIAL, 2, x , y + 94);
//     }
//     if (life_timer == 36){
// 		if building_type == 0{
// 			player_id.tp_alive = 0;
// 			player_id.tp_process = false;
// 		} else if building_type == 1{
// 			player_id.disp_alive = 0;
// 		}
// 		else if building_type == 2{
// 			player_id.sentry_alive = 0;
// 		}
// 		sound_stop(sound_get("tp_loop"));
// 		instance_destroy();
// 		exit;
//     }
// }




    