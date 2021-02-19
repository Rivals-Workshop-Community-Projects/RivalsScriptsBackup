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

// Code for article_2 and article_platform
if (needleland && instance_exists(needleplatform)){
	move_cooldown[AT_USPECIAL] = 0;
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

// Pulls Tomo to needle if needle lands
if (instance_exists(needleplatform_solid)){
	if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || state == PS_IDLE_AIR) && window == 1 && window_timer > 12 && can_zoop){		
		zipping = true;
		zip_hit = true;
		state = PS_IDLE_AIR;
		with (needleplatform_solid){
			other.hsp = 15 * dcos(point_direction( other.x, other.y, x, y));
			other.vsp = - 15 * dsin(point_direction( other.x, other.y, x, y));		
		}
	}
	
	if (zipping){

		has_airdodge = false;
		
		var distance =  x - needleplatform_solid.x;
		var wall = y - needleplatform_solid.y;

		if (wall >= -20 && wall <= 0 && distance >= -12 && distance <= 12){
			hsp = 0;
			vsp = 0;
			can_zoop = false;
			zipping = false;
		}
	
		if (prev_x = x && prev_y == y){
			hsp = 0;
			vsp = 0;
			can_zoop = false;
			zipping = false;
		}
		
		prev_x = x;
		prev_y = y;
		
		if (state_timer > 50){
			if (collision_line( x, y, needleplatform_solid.x, needleplatform_solid.y, asset_get("par_block"), true, true)){
				hsp = 0;
				vsp = 0;
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
	sound_play(sound_get("box3_sfx"));
	if (instance_exists(movingbox)){
		spawn_hit_fx(movingbox.x, movingbox.y, hit_small1);
		instance_destroy(movingbox);
	}
	if (instance_exists(Box)){
		spawn_hit_fx(Box.x, Box.y, hit_small1);
		instance_destroy(Box);
		Box = noone;
	}
	box_health = 7;
}

if (instance_exists(movingbox) && movingbox.destroy && movingbox.solid_timer == 0){
	if (Box == noone){
		Box = instance_create(movingbox.x, movingbox.y, "obj_article_solid");		
	}
	instance_destroy(movingbox.boxhitbox) 
	instance_destroy(movingbox);
}

if (create_moving){
	movingbox = instance_create(create_x, create_y, "obj_article1");
}

