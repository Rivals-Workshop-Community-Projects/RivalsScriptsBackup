// update.gml
// Used for gameplay mechanics
// Runs every frame

with(oPlayer){

	if ("mimikyu_curse" in self && mimikyu_curse_tick >= 3){
		mimikyu_curse = true;
	}
	if ("mimikyu_curse_tick" in self && mimikyu_curse){
		mimikyu_curse_tick = 3;
	}
	
	if (state == PS_DEAD || state == PS_RESPAWN){
		mimikyu_curse = false;
		mimikyu_curse_tick = 0;
	}
}

if (special_shadowball != noone){
	if (!instance_exists(special_shadowball)){
		special_shadowball = noone;
	}
}

// Runs init_shader so Mim tum are the right colors
if (state == PS_SPAWN && state_timer == 1){
	init_shader();
}

// Realigns mimikyu if they cancel uspecial
if ((attack == AT_USPECIAL && !atk_air && !atk_ground) || attack != AT_USPECIAL){
	draw_y = 0;
}

if (attack == AT_FSPECIAL_2){
	if (window == 2){
		vfx_pos1--;	
		vfx_pos2--;	
		vfx_pos3--;	
		vfx_pos4--;
		draw_indicator = false;
	}
	else {
		if (window_timer == 1){		
			vfx_pos1 = 15;
			vfx_pos2 = 5;
			vfx_pos2 = 5;
			vfx_pos3 = 10;
			vfx_pos4 = 20;
		}
	}
}

if (attack == AT_FSPECIAL_AIR){
	if (window == 3){
		vfx_pos1--;	
		vfx_pos2--;	
		vfx_pos3--;	
		vfx_pos4--;
		draw_indicator = false;
	}
	else {
		if (window_timer == 1){		
			vfx_pos1 = 15;
			vfx_pos2 = 5;
			vfx_pos3 = 10;
			vfx_pos4 = 20;
		}
	}
}

if (thunder_struck){
	attack = AT_DSPECIAL_AIR;
	window = 1;
	window_timer = 1;
	thunder_struck = false;
}

if (state == PS_WALL_JUMP){
	fspec_per_air = 2;
	uspec_per_air = 2;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

if (!free) move_cooldown[AT_DSPECIAL] = 0;

// Determines Fspecial Air Time Usage / Cooldown
if (fspec_per_air == 0){
	move_cooldown[AT_FSPECIAL] = 15
}

if (!free && fspec_per_air != 2){
	fspec_per_air = 2;
}

// Determines Uspecial Air Time Usage / Cooldown
if (uspec_per_air == 0){
	move_cooldown[AT_USPECIAL] = 15;
}

if (!free && uspec_per_air != 2){
	uspec_per_air = 2;
}

// Changes Parry animation on hit
if (parried){

	//parry animation frames - on hit
	dodge_active_frames = 3;
	dodge_recovery_frames = 4;

	if (state != PS_PARRY){
		parried = false;
		
		//parry animation frames - default
		// Play sound
		// Play Visual Effect
		dodge_active_frames = 1;
		dodge_recovery_frames = 3;
	}
}

/*
print(view_get_yview());

if (mim_wisp != noone){
	print(mim_wisp.y);
}
*/

if (mim_wisp != noone){
	with (mim_wisp){
		if (active){
			if (place_meeting(x, y, other) && !other.touched_wisp){
				other.touched_wisp = true;
				
				if (other.attack == AT_USPECIAL && (other.atk_air || other.atk_ground)){
					active = false;
					cooldown_timer = 150;
					spawn_hit_fx( x, y - 35, other.hfx_shadow_mid);
					state = 6;
				}
				
				if (other.attack == AT_FSPECIAL && other.window == 2 && (other.atk_air || other.atk_ground)){
					active = false;
					spawn_hit_fx( x, y - 35, other.hfx_shadow_mid);
					cooldown_timer = 150;
					state = 6;
				}
			}
			else {
				if (other.touched_wisp){
					other.touched_wisp = false;
				}			
			}
			
			if (other.attack == AT_USTRONG){
				// Only if Player is doing Up Strong
				if (place_meeting(x, y + 150, other) && !other.touched_wisp ){
					other.touched_wisp = true;
					
					if (other.attack == AT_USTRONG && other.window == 3 && other.window_timer >= 1 && (other.atk_air || other.atk_ground) && !other.has_hit_player){
						active = false;
						spawn_hit_fx( x, y - 35, other.hfx_shadow_mid);
						cooldown_timer = 150;
					}
					
				}
				else {
					if (other.touched_wisp){
						other.touched_wisp = false;
					}			
				}
			}
			
			if (!not_held && !(other.attack == AT_DSPECIAL_2 && (other.atk_air || other.atk_ground))){
				not_held = true;
			}
		}
	}
}


// Fspecial attacking random fx
if (attack == AT_FSPECIAL_2){
	if (atk_ground || atk_air){
	
		if (window <= 2){
			if (get_gameplay_time() % 5 == 0){
			
				var random_1 = random_func_2(1, 40, true);
				var random_2 = random_func_2(2, 40, true);
				
				// Clouds
				var hitfx_cloud = spawn_hit_fx(x + (60 * spr_dir) - (random_1 * spr_dir), y + 40 - (random_2), vfx_list[0]);
				hitfx_cloud.depth = -5;
			}
		
		}
		
		if (window == 2){
		
		
			// x + 110 * spr_dir, y - 40
			// x - 25 * spr_dir, y - 50
			// x - 25 * spr_dir, y + 60
			// x + 80 * spr_dir, y - 50
			// x + 80 * spr_dir, y + 60
			
			// pos_1       pos_2
			//       CLOUD
			// pos_3       pos_4
					
			if (vfx_pos1 <= 0){
				var ran_1 = random_func_2(3, 4, true);
				
				// Poofs
				if (ran_1 == 0){
					var hitfx_1 = spawn_hit_fx(x - 30 * spr_dir, y - 40, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_1 >= 1){
					var hitfx_1 = spawn_hit_fx(x - 25 * spr_dir, y - 50, vfx_list[ran_1 + 1]);
					
				}
				
				hitfx_1.spr_dir = spr_dir;
				vfx_pos1 = 30 + random_func_2(7, 20, true);
			}
			
			if (vfx_pos2 <= 0){
				var ran_2 = random_func_2(4, 4, true);
				
				// Poofs
				if (ran_2 == 0){
					var hitfx_2 = spawn_hit_fx(x + 110 * spr_dir, y - 40, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_2 >= 1){
					var hitfxv_2 = spawn_hit_fx(x + 100 * spr_dir, y - 50, vfx_list[ran_2 + 1]);
				}
				
				hitfx_2.spr_dir = spr_dir * -1;
				vfx_pos2 = 30 + random_func_2(8, 20, true);
			}
			
			if (vfx_pos3 <= 0){
				var ran_3 = random_func_2(5, 4, true);
				
				// Poofs
				if (ran_3 == 0){
					var hitfx_3 = spawn_hit_fx(x - 30 * spr_dir, y - 30, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_3 >= 1){
					var hitfx_3 = spawn_hit_fx(x - 25 * spr_dir, y - 40, vfx_list[ran_3 + 1]);
					
				}
				
				hitfx_3.spr_dir = spr_dir;
				hitfx_3.image_yscale = -1;
				vfx_pos3 = 30 + random_func_2(9, 20, true);
			}
					
			if (vfx_pos4 <= 0){
				var ran_4 = random_func_2(6, 4, true);
				
				// Poofs
				if (ran_4 == 0){
					var hitfx_4 = spawn_hit_fx(x + 110 * spr_dir, y - 30, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_4 >= 1){
					var hitfx_4 = spawn_hit_fx(x + 100 * spr_dir, y - 40, vfx_list[ran_4 + 1]);
					
				}
				
				hitfx_4.spr_dir = spr_dir * -1;
				hitfx_4.image_yscale = -1;
				vfx_pos4 = 30 + random_func_2(10, 20, true);
			}
		}
	}
}

if (attack == AT_FSPECIAL_AIR){
	if (atk_ground || atk_air){
		if (window == 3){
			
			// pos_1       pos_2
			//        Mim
			// pos_3       pos_4
					
			if (vfx_pos1 <= 0){
				var ran_1 = random_func_2(3, 4, true);
				
				// Poofs
				if (ran_1 == 0){
					var hitfx_1 = spawn_hit_fx(x - 80 * spr_dir, y - 40, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_1 >= 1){
					var hitfx_1 = spawn_hit_fx(x - 75 * spr_dir, y - 50, vfx_list[ran_1 + 1]);
					
				}
				
				hitfx_1.spr_dir = spr_dir;
				vfx_pos1 = 30 + random_func_2(7, 20, true);
			}
			
			if (vfx_pos2 <= 0){
				var ran_2 = random_func_2(4, 4, true);
				
				// Poofs
				if (ran_2 == 0){
					var hitfx_2 = spawn_hit_fx(x + 60 * spr_dir, y - 40, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_2 >= 1){
					var hitfxv_2 = spawn_hit_fx(x + 50 * spr_dir, y - 50, vfx_list[ran_2 + 1]);
				}
				
				hitfx_2.spr_dir = spr_dir * -1;
				vfx_pos2 = 30 + random_func_2(8, 20, true);
			}
			
			if (vfx_pos3 <= 0){
				var ran_3 = random_func_2(5, 4, true);
				
				// Poofs
				if (ran_3 == 0){
					var hitfx_3 = spawn_hit_fx(x - 80 * spr_dir, y - 30, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_3 >= 1){
					var hitfx_3 = spawn_hit_fx(x - 75 * spr_dir, y - 40, vfx_list[ran_3 + 1]);
					
				}
				
				hitfx_3.spr_dir = spr_dir;
				hitfx_3.image_yscale = -1;
				vfx_pos3 = 30 + random_func_2(9, 20, true);
			}
					
			if (vfx_pos4 <= 0){
				var ran_4 = random_func_2(6, 4, true);
				
				// Poofs
				if (ran_4 == 0){
					var hitfx_4 = spawn_hit_fx(x + 60 * spr_dir, y - 30, vfx_list[1]);
				}
			
				// Sparkles
				if (ran_4 >= 1){
					var hitfx_4 = spawn_hit_fx(x + 50 * spr_dir, y - 40, vfx_list[ran_4 + 1]);
					
				}
				
				hitfx_4.spr_dir = spr_dir * -1;
				hitfx_4.image_yscale = -1;
				vfx_pos4 = 30 + random_func_2(10, 20, true);
			}
		}
	}
}








// Literally just code to create variables for when the player is
// attacking cause I hate typing state == PS_ATTACK_AIR 
// for literally all of my code LOL

// Sets true if attacking on the ground
if (!atk_ground && state == PS_ATTACK_GROUND){
	atk_ground = true;
}

// Sets true if attacking in the air
if (!atk_air && state == PS_ATTACK_AIR){
	atk_air = true;
}

// Sets both to false if not attacking
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	atk_ground = false;
	atk_air = false;
}

// Particle Effects for Nspecial After it's gone through wisp and was parried (yeah I know it's very specific and dumb I agree)
with(pHitBox){
	if (player_id == other.id && attack == AT_NSPECIAL){
		if (hitbox_timer % 4 == 0){
			if (hbox_num == 2){
				instance_create( x, y + 30 - random_func( 3, 60, true ), "obj_article2");
			}
			else {
				instance_create( x, y + 15 - random_func( 3, 30, true ), "obj_article2");			
			}
		}
		
		if ("is_new_ball" in self && !is_new_ball){
			if (player_id.mim_wisp != noone && hitbox_timer > 1){
				with (player_id.mim_wisp){
					if (active){
						if (place_meeting(x, y, other)){
							state = 6;
							if (other.hbox_num <= 2){
								
								if (other.hbox_num == 2 && !other.is_new_ball){
									other.player_id.special_shadowball = create_hitbox(AT_NSPECIAL, 3, other.x, other.y);
									other.player_id.special_shadowball.player_id = other.player_id;
									other.player_id.special_shadowball.hitbox_timer = 0;
									other.player_id.special_shadowball.player = other.player;
									other.player_id.special_shadowball.hitbox_timer = -25;
									other.player_id.special_shadowball.hsp = other.hsp;
									sound_play(asset_get("sfx_zetter_shine_charged"));

									var new_hitfx = spawn_hit_fx( x, y - 35, player_id.hfx_shadow_mid);
							
									var shadowball_friend = instance_create(0, 0, "obj_article2");
									shadowball_friend.player_id = other.player_id.id;
									shadowball_friend.player = other.player_id.player;
									shadowball_friend.sprite_index = sprite_get("blank");
									shadowball_friend.state = 2;

									
									other.is_new_ball = true;
									instance_destroy(other);
									exit;
								}
								
								if (other.hbox_num == 1 && !other.is_new_ball){
									var new_hitfx = spawn_hit_fx( x, y - 35, player_id.hfx_shadow_small);

									var new_shadowball = create_hitbox(AT_NSPECIAL, 2, other.x, other.y);
									new_shadowball.player_id = other.player_id;
									new_shadowball.hitbox_timer = 0;
									new_shadowball.player = other.player;
									new_shadowball.hitbox_timer = -25;
									new_shadowball.hsp = other.hsp;
									sound_play(asset_get("sfx_zetter_shine_charged"));									
																		
									other.is_new_ball = true;
									instance_destroy(other);
									exit;
								}
							}
						}
					}
				}
			}
		}
	}
}



//intro
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 16) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.