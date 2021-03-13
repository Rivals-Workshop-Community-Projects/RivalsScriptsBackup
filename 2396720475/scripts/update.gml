// update.gml
// Used for gameplay mechanics
// Runs every frame

if (trailer_effect){
	spawn_hit_fx(Box.x + 6, Box.y, hit_small1);
	trailer_effect = false;
}

if (instance_exists(needleplatform)){
	move_cooldown[AT_USPECIAL] = 20;
}

if (usedUspecial_Again >= 2){
	move_cooldown[AT_USPECIAL] = 20;
}


if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
}
else { 
	if (!free){
		usedUspecial_Again = 0;
	}
}

if (tomoyai){
	
	if (yai_timer % bpm_steps == 0){
		sound_play(sound_get("metro"));
	}
	
	yai_timer++
	
	if (yai_timer == 192){
		yai_timer = 0;
	}
	
	if (attack == AT_EXTRA_3 && window == 2 && window_timer == 1){
		yai_x = yai_timer * 3.31;
		yai_shout_num += 1;
	}
}

if (instance_exists(needle_hitbox)){
	if (!instance_exists(needleplatform)){
		instance_destroy(needle_hitbox);
	}
	
	else {
		switch (needleplatform.image_angle){
			case 0:
				needle_hitbox.y = needleplatform.y;		
				needle_hitbox.x = needleplatform.x + 15;
			break;
			case 45:
				needle_hitbox.y = needleplatform.y - 15;		
				needle_hitbox.x = needleplatform.x + 15;
			break;
			case 90:
				needle_hitbox.y = needleplatform.y - 15;		
				needle_hitbox.x = needleplatform.x;
			break;
			case 135:
				needle_hitbox.y = needleplatform.y - 15;		
				needle_hitbox.x = needleplatform.x - 15;
			break;
			case 180:
				needle_hitbox.y = needleplatform.y;		
				needle_hitbox.x = needleplatform.x - 15;
			break;
			case 225:
				needle_hitbox.y = needleplatform.y + 15;
				needle_hitbox.x = needleplatform.x - 15 ;
			break;
			case 270:
				needle_hitbox.y = needleplatform.y + 15;		
				needle_hitbox.x = needleplatform.x;
			break;
			case 315:
				needle_hitbox.y = needleplatform.y + 15;		
				needle_hitbox.x = needleplatform.x + 15;
			break;
			case 360:
				needle_hitbox.y = needleplatform.y;		
				needle_hitbox.x = needleplatform.x+ 15;
			break;
		}
	}
}

// Code for article_2 and article_platform
if (needleland && instance_exists(needleplatform)){
//	needleland = false;
	usedUspecial = true;
	can_pull = true;
	sound_play(sound_get("needle2_sfx"));
	
	if (instance_exists(needleplatform_solid)){
		sound_play(sound_get("needle1_sfx"));
		instance_destroy(needleplatform_solid);
	}
	
	if (needleplatform.image_angle == 0){
		needleplatform_solid = instance_create(needleplatform.x - (1 * 50), needleplatform.y, "obj_article_platform")
	}
	if (needleplatform.image_angle == 180){
		needleplatform_solid = instance_create(needleplatform.x - (-1 * 50), needleplatform.y, "obj_article_platform")
	}
	
	needleplatform_solid.player = player;
	needleplatform_solid.player_id = id;
	needle_sprite = 0;
	needleplatform_solid.image_angle = needleplatform.image_angle;
	can_zoop = true;
	instance_destroy(needleplatform);
}

with(pHitBox){
	if (attack == AT_USPECIAL && destroyed){
		if (instance_exists(player_id.needleplatform)){
			instance_destroy(player_id.needleplatform);
			sound_play(sound_get("needle1_sfx"));
		}
	}
}

if(!free && usedUspecial){
	if (instance_exists(needleplatform_solid)){
		if (!place_meeting(x, y, needleplatform_solid) && state != PS_WAVELAND){ // If grounded and not on the needle platform, get recovery back
			
			if (instance_exists(Box)){ // If grounded and not on the box, get recovery back
				if (x > Box.x + 50 || x < Box.x - 50){
					usedUspecial = false;		
				}
			}
			else {
				usedUspecial = false;
			}
		}
	}
	else {
		if (x > get_stage_data( SD_X_POS ) && x < room_width - get_stage_data( SD_X_POS )){
			if (!instance_exists(Box)){
				usedUspecial = false;
			}
			else {
				usedUspecial = false;
			}
		}
	}
}

if (usedUspecial && !can_pull){
	move_cooldown[AT_USPECIAL] = 5;
}

// Pulls Tomo to needle if needle lands
if (instance_exists(needleplatform_solid)){
//	if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || state == PS_IDLE_AIR) && window == 1 && window_timer > 12 && can_zoop){		


if (can_zoop){
		zipping = true;
		zip_hit = true;
		if (can_pull){
		state = PS_IDLE_AIR;
			with (needleplatform_solid){
				if (instance_exists(other.Box)){ 
					if (point_distance( x, y, other.Box.x, other.Box.y) < 85){
						if (image_angle == 0){
							other.hsp = 10 * dcos(point_direction( other.x, other.y, x + 50, y));

							if (y <= other.y){
								other.vsp = clamp(- 14 * dsin(point_direction( other.x, other.y, x + 70, y - 60)), -7, -4);		
							}
							else {
								other.vsp = clamp(- 10 * dsin(point_direction( other.x, other.y, x + 70, y - 60)), -7, -4);
							}
						}
						else {
							other.hsp = 10 * dcos(point_direction( other.x, other.y, x - 50, y));				

							if (y <= other.y){
								other.vsp = clamp(- 14 * dsin(point_direction( other.x, other.y, x - 70, y - 60)), -7, -4);		
							}
							else {
								other.vsp = clamp(- 10 * dsin(point_direction( other.x, other.y, x - 70, y - 60)), -7, -4);						
							}
						}				
					}
					else {
						if (image_angle == 0){
							other.hsp = 10 * dcos(point_direction( other.x, other.y, x + 50, y));

							if (y <= other.y){
								other.vsp = - 16 * dsin(point_direction( other.x, other.y, x + 70, y - 60));		
							}
							else {
								other.vsp = - 10 * dsin(point_direction( other.x, other.y, x + 70, y - 60));						
							}
						}
						else {
							other.hsp = 10 * dcos(point_direction( other.x, other.y, x - 50, y));				

							if (y <= other.y){
								other.vsp = - 16 * dsin(point_direction( other.x, other.y, x - 70, y - 60));		
							}
							else {
								other.vsp = - 10 * dsin(point_direction( other.x, other.y, x - 70, y - 60));						
							}
						}				

					}
				}
				else {
					if (image_angle == 0){
						other.hsp = 10 * dcos(point_direction( other.x, other.y, x + 50, y));

						if (y <= other.y){
							other.vsp = - 16 * dsin(point_direction( other.x, other.y, x + 70, y - 60));		
						}
						else {
							other.vsp = - 10 * dsin(point_direction( other.x, other.y, x + 70, y - 60));						
						}
					}
					else {
						other.hsp = 10 * dcos(point_direction( other.x, other.y, x - 50, y));				

						if (y <= other.y){
							other.vsp = - 16 * dsin(point_direction( other.x, other.y, x - 70, y - 60));		
						}
						else {
							other.vsp = - 10 * dsin(point_direction( other.x, other.y, x - 70, y - 60));						
						}
					}								
				}
			}
		}
}
//	}
	
	if (zipping){
		if (attack_pressed || jump_pressed || special_pressed){
			can_zoop = false;
		}
		
		can_pull = false;

//		has_airdodge = false;
		
		var distance =  x - needleplatform_solid.x;
		var wall = y - needleplatform_solid.y;

		if (wall >= -20 && wall <= 0 && distance >= -12 && distance <= 12){
			hsp = 0;
//			vsp = 0;
			can_zoop = false;
			zipping = false;
		}
	
		if (prev_x = x && prev_y == y){
			hsp = 0;
//			vsp = 0;
			can_zoop = false;
			zipping = false;
		}
		
		prev_x = x;
		prev_y = y;
		
		if (state_timer > 50){
			if (collision_line( x, y, needleplatform_solid.x, needleplatform_solid.y, asset_get("par_block"), true, true)){
				hsp = 0;
//				vsp = 0;
				can_zoop = false;
				zipping = false;
				has_airdodge = true;
			}
		}
	
	}
}

// Runs init_shader
if (state == PS_SPAWN && state_timer == 1){
	init_shader();
}

// Fspecial Cooldown (AKA only 2 uses in the air)
if (attack == AT_FSPECIAL && state == PS_ATTACK_AIR && state_timer == 1){
	usedFspecial++;
}

// Sets cooldown when two Fspecials are used
if (usedFspecial == 2){
	move_cooldown[AT_FSPECIAL] = 18;
}

// Resets Fspecial Cooldown when landing
if (!free){
	usedFspecial = 0;	
}

// Box Article1 and Article_Solid code
if (instance_exists(movingbox) && create_moving){
	instance_destroy(Box);	
	Box = noone;
	create_moving = false;
}

if (box_health == 0){	
	move_cooldown[AT_DSPECIAL] = 80;

	if (get_player_color(player) == 13 || get_player_color(player) == 11){
		sound_play(sound_get("squeak_sfx"));
	}
	else {
		sound_play(sound_get("box3_sfx"));			
	}
	
	if (instance_exists(movingbox)){
		spawn_hit_fx(movingbox.x, movingbox.y, hit_small1);
		instance_destroy(movingbox);
	}
	if (instance_exists(Box)){
		spawn_hit_fx(Box.x, Box.y, hit_small1);
		instance_destroy(Box);
		Box = noone;
	}
	box_health = 10;
}

if (get_player_color(player) == 13 || get_player_color(player) == 11){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("squeak2_sfx"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("squeak2_sfx"));
}

if (create_moving){
	movingbox = instance_create(create_x, create_y, "obj_article1");
	if (boxfalling){
	
		boxfalling = false;		
		movingbox.player_id = id;
		movingbox.player = player;
		movingbox.state = 1;
		movingbox.hit_delay = 5;
		movingbox.kb_angle = 270;
		movingbox.bkb = 4;
		movingbox.kb_scaling = .4;
		movingbox.destroy_check = false;
		movingbox.owner = player;
		movingbox.health_check = true;
		movingbox.initial_spawn = true;

	}
	
	movingbox.hitfxowner = id;
	
	if (get_player_color(player) == 13){
		movingbox.sprite_index = sprite_get("plushy_spin");
	}
	if (get_player_color(player) == 11){
		movingbox.sprite_index = sprite_get("macka_spin");
	}
}

if (instance_exists(movingbox) && movingbox.destroy && movingbox.solid_timer == 0){
	
	if (Box == noone){
		Box = instance_create(movingbox.x, movingbox.y, "obj_article_solid");	
		Box.player_id = id;

		
		if (get_player_color(player) == 13){
			Box.sprite_index = sprite_get("plushy");
		}	
		if (get_player_color(player) == 11){
			Box.sprite_index = sprite_get("macka");
		}
		if (get_player_color(player) == 12 || get_player_color(player) == 10 || get_player_color(player) == 1 || SecretColor == 2){
			Box.flag = false;
		}		
		if (movingbox.flag){		
			Box.flag = true;
			movingbox.flag = false;
		}
	}
	instance_destroy(movingbox.boxhitbox) 
	instance_destroy(movingbox);
}


////////// Secret alt color code //////////

if (state == PS_PARRY && state_timer < 6){ // Turns off secret color during parry
	ColorLocked = false;
}
else {
	if (!ColorLocked && ColorLock = 1){
		ColorLocked = true;
	}
}

if (state == PS_SPAWN || was_reloaded){ // Checks if start of match or practice mode reload
	if (spawn_timer < 100 && ColorLock == 0 && jump_down){

		if (get_player_color(player) == 10){ // Color 11 Trans Secret Alt

			// Cotton Candy+ (This is the trans alt color, Tomo says Trans Rights)
			if (!up_down && down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				SecretColor = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
		}		
		
		if (get_player_color(player) == 8){ // Color 9 Pumpkin Secret Alt

			// THE - Alt color Down + Attack + Jump
			if (!up_down && down_down && !left_down && !right_down && !shield_down && attack_down && !special_down){
				SecretColor = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
		}		
		
		if (ColorLocked){
			sound_play(asset_get("mfx_confirm"));
		}
	}
}
