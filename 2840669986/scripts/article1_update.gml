//article1_update - runs every frame the article exists

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

//if (place_meeting(x, y, asset_get("plasma_field_obj"))/* && !(state == 3 || state == 2)*/) {

if (x > room_width or y > room_height + 200){
	sound_play(asset_get("sfx_ell_cooldown"));
	player_id.move_cooldown[AT_DSPECIAL] = 60;
    instance_destroy();
    exit;
}
//print(vacuum_myself);
//Opponent Detection Code
with (asset_get("oPlayer")){
	if (collision_rectangle(x-400, y - 400, x+400, y + 400, other, 0, 1)){
		if (player != other.player_id.player){
			if (x > other.x){
				//print("On Right");
				other.opponentDirRelative = 1;
			} else if (x < other.x){
				//print("On Left");
				other.opponentDirRelative = -1;
			}
		}
	} else {
		if (player != other.player_id.player){
			other.opponentDirRelative = spr_dir;
		}
	}
}
if(spr_dir == 0){
	spr_dir = ogSprDir;
}
//FSpecial Interaction
if (state > -1 && state < 6){
	with (asset_get("pHitBox")){
    	if (place_meeting(x,y,other.id) && type == 1 && kb_value > 0 && other.fspecial_hop == false){
    		other.desired_hitstop = clamp(hitpause + damage * hitpause_growth * 0.05, 0, 20);
				if (attack == AT_FSPECIAL && player_id == other.player_id){
			        if (player_id.hitpause == false) {
			            player_id.old_vsp = player_id.vsp;
			            player_id.old_hsp = player_id.hsp;
			        }
			        player_id.hitpause = true;
			        player_id.has_hit = true;
			        if (player_id.hitstop < other.desired_hitstop) {
			            player_id.hitstop = other.desired_hitstop;
			            player_id.hitstop_full = other.desired_hitstop;
			        }
			        other.le_hit_effect = hit_effect;
					sound_play(pHitBox.sound_effect);
					with (other){spawn_hit_fx(x, y, le_hit_effect).pause = 7;}
					has_hit = true;
					//other.fspecial_hop = true;
					other.was_hit_by_fspec = true;
					other.was_hit_by_fspec_count = 0;
					other.was_hit_by_fspec_dir = player_id.spr_dir;
					if(spr_dir != player_id.spr_dir){
						//
					}
					with (player_id){
						window = 5;
						window_timer = 0;
						hsp = 0;
						vsp = 0;
						if (vacuum.spr_dir != spr_dir){
							vacuum.spr_dir = spr_dir;
						}
						destroy_hitboxes();
					}
				}
	    }
    
		if (place_meeting(x,y,other.id) && effect == 420 && attack == AT_FSPECIAL){
			other.sprite_index = sprite_get("spear_spin"); 
			other.image_index += .3;
			other.x = player_id.x;
			other.y = player_id.y-70;
			player_id.parasol_spear = true;
		}
	}
    
}

if (fspecial_hop = true){
	fspecial_hop_cont++;
	hsp = 1*spr_dir;
	vsp = -6;
	
	if (fspecial_hop_cont > 20){
		fspecial_hop = false;
		fspecial_hop_cont = 0;
	}
	
}

if (was_hit_by_fspec){
	if (player_id.hitpause == false){
		was_hit_by_fspec_count++;
		if (was_hit_by_fspec_count == 1){
			hsp = 14.5*was_hit_by_fspec_dir
			if (state != 0){
				hsp -= .5*was_hit_by_fspec_dir
			} else if (state == 0){
				vsp = -6.5
			}
		}
		if (state != 0){
			if (hsp != 0){
				hsp -= 1*was_hit_by_fspec_dir
			} else if (hsp == 0){
				was_hit_by_fspec = false;
			}
		} else if (state == 0){
			if (hsp != 1.5*spr_dir){
				hsp -= 1*was_hit_by_fspec_dir
			} else if (hsp == 1.5*spr_dir){
				was_hit_by_fspec = false;
			}
		}
	} else {
		hsp = 0;
		vsp = 0;
	}
} else {
	was_hit_by_fspec_count = 0;
}

//Nspecial Interactions
if (state > 1 && state < 4){
	with (asset_get("pHitBox")){
		var MaxAreaVar = 32;
		if ((place_meeting(x,y,other.id) && effect == 421 && attack == AT_NSPECIAL && player_id == other.player_id)
		|| ((collision_rectangle(x-MaxAreaVar, y+MaxAreaVar, x+MaxAreaVar, y-MaxAreaVar, other.id, true, true)) && effect == 421 && attack == AT_NSPECIAL && player_id == other.player_id)){
			spawn_hit_fx(x, y, 150);
			sound_play(player_id.sfx_star_allies_clean_pitch_water_charged);
			destroyed = true;
			other.nspecial_shot = true;
			other.state = 5;
			other.image_index = 0;
			other.throw_direction = other.spr_dir;
			other.should_change_dir = true;
			//water tier 3 rune
			with(other.player_id){
				if (nspecialProjDropletRune){
					var waterDroplet1 = create_hitbox(AT_NSPECIAL, 2, vacuum.x, vacuum.y-10);
					var waterDroplet2 = create_hitbox(AT_NSPECIAL, 3, vacuum.x, vacuum.y-10);
					var waterDroplet3 = create_hitbox(AT_NSPECIAL, 4, vacuum.x, vacuum.y-10);
				}
			}
		}
	}
}

//State 0: Just thrown
if (state == 0){
	
	if (state_timer == 0){
		throw_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y-20);
	}
	
	throw_hitbox.x = x;
	throw_hitbox.y = y-20;
	
	sprite_index = sprite_get("super_vac_spin");
	image_index += .3;
	
	if (state_timer > 10){
		if (vsp < 12){
			vsp += 0.75;
		}
	}
	
	if (!free){
		state = 1;
		state_timer = 0;
		image_index = 0;
		hsp = 0;
		sound_play(asset_get("sfx_shovel_hit_med2"));
		instance_destroy(throw_hitbox);
	}
	
	player_id.move_cooldown[AT_DSPECIAL] = 12;
	
}

//Landing
if (state == 1){
	player_id.move_cooldown[AT_DSPECIAL] = 3;
	sprite_index = sprite_get("super_vac_land");
	image_index += .5;
	
	if (image_index > 2){
		state = 2;
		image_index = 0;
	}
	
	if (free){
		state = 2;
		state_timer = 0;
	}
	
	//hsp = 0;
	vsp = 0;
}

if (state > 1){
	if (free){
		if (vsp < 10){
			vsp += 1;
		}
	}
}

//Idle Ground
if (state == 2){
	
	if (free){
		sprite_index = sprite_get("super_vac_fall");
	}
	else {
		sprite_index = sprite_get("super_vac_idle");	
	}

	if (free && fspecial_hop = false){
		//vsp = 5;
	}
	if (!free){
		//hsp = 0;
	}
	player_id.move_cooldown[AT_DSPECIAL] = 0;
}

//Vacuuming
if (state == 3){
	if(opponentDirRelative != 0){
		spr_dir = opponentDirRelative;
	}
	player_id.move_cooldown[AT_DSPECIAL] = 12;
	with (asset_get("pHitBox")){
    	if (place_meeting(x,y,other.id) && kb_value > 0){
    		other.desired_hitstop = clamp(hitpause + damage * hitpause_growth * 0.05, 0, 20);
				if (type != 2 && player_id != other.player_id){
				//print(type)
			        if (player_id.hitpause == false) {
			            player_id.old_vsp = player_id.vsp;
			            player_id.old_hsp = player_id.hsp;
			        }
			        player_id.hitpause = true;
			        player_id.has_hit = true;
			        if (player_id.hitstop < other.desired_hitstop) {
			            player_id.hitstop = other.desired_hitstop;
			            player_id.hitstop_full = other.desired_hitstop;
			        }
			        other.le_hit_effect = hit_effect;
					sound_play(pHitBox.sound_effect);
					with (other){spawn_hit_fx(x, y, le_hit_effect).pause = 7;}
					has_hit = true;
					other.state = 6;
					other.image_index = 0;
				}
	    }
    
		if (place_meeting(x,y,other.id) && effect == 420 && attack == AT_FSPECIAL){
			other.sprite_index = sprite_get("spear_spin"); 
			other.image_index += .3;
			other.x = player_id.x;
			other.y = player_id.y-70;
			player_id.parasol_spear = true;
		}
	}
    
	
	if (free && fspecial_hop = false){
		vsp = 5;
	}
	if (!free){
		//hsp = 0;
	}
	
	sprite_index = sprite_get("super_vac_inhale");
	
	if (image_index < 4 || image_index >= 12){
		image_index += .15;
	}
	if (image_index >= 4 && image_index < 12){
		image_index += .3;
	}

	if (image_index == 4.35 || image_index == 4.4){
		sound_play(player_id.sfx_star_allies_clean_vac_suck);
		suck_hitbox = create_hitbox(AT_DSPECIAL_2, 1, x+70*spr_dir, y-20);
		grab_hitbox = create_hitbox(AT_DSPECIAL_2, 2, x+40*spr_dir, y-20);
	}
	
	if (instance_exists(suck_hitbox) && instance_exists(grab_hitbox)){
		suck_hitbox.x = x+70*spr_dir;
		suck_hitbox.y = y-20;
		grab_hitbox.x = x+40*spr_dir;
		grab_hitbox.y = y-20;
	}
	
	if (image_index > 17){
		if (should_die_instantly == false){
			if (has_throw == 1){
				state = 6;
				state_timer = 0;
			}
			if (has_throw == 0){
				state = 2;
				state_timer = 0;
				has_throw = 1;
			}
		} else if (should_die_instantly == true){
			state = 6;
			state_timer = 0;
		}
	}
}

//Just grabbed
if (state == 4){
	player_id.move_cooldown[AT_DSPECIAL] = 4;
	if (free && fspecial_hop = false){
		vsp = 5;
	}
	if (!free){
		//hsp = 0;
	}
	instance_destroy(suck_hitbox);
	instance_destroy(grab_hitbox);
	sprite_index = sprite_get("super_vac_grab");
	image_index += .3;
	
	if (image_index > 6.6){
		image_index = 0;
		state = 5;
		state_timer = 0;
		if (has_throw == 1){
			has_throw = 2;
		}
		if (has_throw == 0){
			has_throw = 1;
		}
	}
}

//Throw opponent
if (state == 5){
	player_id.move_cooldown[AT_DSPECIAL] = 4;
	if (free && fspecial_hop = false){
		vsp = 5;
	}
	if (!free){
		//hsp = 0;
	}
	//Opponent is fired forward
	if (throw_direction == spr_dir){
		sprite_index = sprite_get("super_vac_fire");
		if(instance_exists(grabbed_player_id)){
			if(image_index < 6){
				if(image_index < 1){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x+60*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-24, 0.4);
				} else if(image_index >= 1 && image_index < 2){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x+58*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-26, 0.4);
				} else if(image_index >= 2 && image_index < 3){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x+54*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-28, 0.4);
				} else if(image_index >= 3 && image_index < 4){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x+50*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-30, 0.4);
				} else if(image_index >= 4 && image_index < 5){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x+48*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-34, 0.4);
				} else if(image_index >= 5 && image_index < 6){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x+42*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-38, 0.4);
				}
			}
		}
		if (vacuum_myself){
			var vacuum_self_increase_timer = .0;
			//print("self")
		} else {
			var vacuum_self_increase_timer = 0;
			//print("not self")
		}
		image_index += .3 + vacuum_self_increase_timer;
		//print(string(vacuum_myself));
		if (image_index == 6){
			if (nspecial_shot == false){
				player_id.hit_player_obj.invincible = false;
				player_id.visible = true;
				player_id.invincible = false;
				launch_hitbox = create_hitbox(AT_DSPECIAL_2, 3, x+30*spr_dir, y-30);
			}
			else {
				sound_play(asset_get("sfx_waterhit_heavy"));
				nspecial_proj1 = create_hitbox(AT_NSPECIAL, 2, x+30*spr_dir, y-30);
				nspecial_proj2 = create_hitbox(AT_NSPECIAL, 3, x+30*spr_dir, y-30);
				nspecial_proj3 = create_hitbox(AT_NSPECIAL, 4, x+30*spr_dir, y-30);
				nspecial_shot = false;
				has_throw++;
			}
		}
		if (image_index >= 11.6){
			grabbed_player_id = noone;
			nspecial_shot = false;
			if (has_throw == 2){
				state = 6;
				state_timer = 0;
			} else {
				state = 2;
				state_timer = 0;
			}
			
			if(shouldDieAfterFiring){
				shouldDieAfterFiring = false;
				state = 6;
				state_timer = 0;
			}
		}
	} else { //Backward
		if(instance_exists(grabbed_player_id)){
			if(image_index < 8){
				if(image_index < 1){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-4*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-28, 0.4);
				} else if(image_index >= 1 && image_index < 2){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-8*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-32, 0.4);
				} else if(image_index >= 2 && image_index < 3){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-12*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-40, 0.4);
				} else if(image_index >= 3 && image_index < 4){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-28*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-52, 0.4);
				} else if(image_index >= 4 && image_index < 5){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-45*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-45, 0.4);
				} else if(image_index >= 5 && image_index < 6){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-60*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-30, 0.4);
				} else if(image_index >= 6 && image_index < 7){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-60*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-30, 0.4);
				} else if(image_index >= 7 && image_index < 8){
					grabbed_player_id.x = lerp(grabbed_player_id.x, x-60*spr_dir, 0.4);
					grabbed_player_id.y = lerp(grabbed_player_id.y, y-30, 0.4);
				} 
			}
		}
		nspecial_shot = false;
		sprite_index = sprite_get("super_vac_fire_back");
		if (vacuum_myself){
			var vacuum_self_increase_timer = .0;
		} else {
			var vacuum_self_increase_timer = 0;
		}
		image_index += .3 + vacuum_self_increase_timer;
		if (image_index == 8.1){
			player_id.hit_player_obj.invincible = false;
			player_id.visible = true;
			player_id.invincible = false;
			launch_hitbox = create_hitbox(AT_DSPECIAL_2, 4, x-40*spr_dir, y-40);
		}//>
		if (image_index >= 13.5){
			grabbed_player_id = noone;
			if (has_throw == 2){
				state = 6;
				state_timer = 0;
			} else {
				state = 2;
				state_timer = 0;
			}
			
			if(shouldDieAfterFiring){
				shouldDieAfterFiring = false;
				state = 6;
				state_timer = 0;
			}
		}
	}
	
	
}

//State 6: Dying
if (state == 6){
	should_die_instantly = false;
	player_id.move_cooldown[AT_DSPECIAL] = 60;
	if (state_timer == 0){
		sound_play(asset_get("sfx_ell_cooldown"));
	}
	if (free && fspecial_hop = false){
		vsp = 5;
	}
	if (!free){
		//hsp = 0;
	}
	sprite_index = sprite_get("super_vac_despawn"); 
	image_index += .2;
	if (image_index > 6.6){
		instance_destroy();
    	exit;
	}
}

//Make time progress
state_timer++;