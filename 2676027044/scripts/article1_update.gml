// article1_update.gml
// This is where all the data stuff is for how this object/article functions

switch(state){

	case 0:
		if (state_timer == 1){
			state = 1;
			active = true;
		}
	break;

	// Idle State
	case 1:
		life_timer--;
		
		if (life_timer <= 60){
			wisp_alpha = wisp_alpha - 0.01
		}
		
		if (life_timer <= 0){
			cooldown_timer = 1;
			active = false;
			state = 6;
		}
	break;

	// Travel Mode
	case 2:
	
		if (lock_angle == 0){

			orig_x = x;
			orig_y = y;

			var h = point_distance(x, y, lock_x, lock_y);
			var o = point_distance(lock_x, y, lock_x, lock_y);
			var c = o/h;

			if (c < 1 && c > -1){
				lock_angle = arcsin(c) * (180/pi);
			}
		}
		
		var neg_x = lock_x < x ? -1 : 1;
		var neg_y = lock_y < y ? -1 : 1;
		
		hsp = 7 * dcos(lock_angle) * neg_x;
		vsp = 7 * dsin(lock_angle) * neg_y;
		
		if (point_distance(x, y, lock_x, lock_y) < 5 || travel_timer >= 40){
		
			hsp = 0;
			vsp = 0;
			lock_angle = 0;
			state = 1;
		}
		
		travel_timer++;
		
	break;
	
	// Activation
	case 3:
			
		if (state_timer == 1){
			sound_play(sound_get("fire1"));
			sound_play(sound_get("fire2"));
			depth = -5;
			thunder_part_length = 68

			var child = instance_create(x, y + 56, "obj_article1");
			child.state = 4;
			child.state_timer = 10;
			child.explosion_timer = explosion_timer + 1;
			child.thunder_number = 1;
			child.thunder_anim_timer = thunder_anim_timer;
			child.thunder_parent = self;
		}
		
		if (explosion_timer == 20){
			wisp_explosion = create_hitbox(AT_DSPECIAL, 2, x, y - 40);
		}
		
		if (explosion_timer >= 40){
			player_id.mim_wisp = noone;
			instance_destroy();
			exit;
		}
		
		explosion_timer++;
		
	break;
	
	// Active Hitbox 1
	case 4:
		
		if (state_timer == 10){
			depth = -5;
			current_sprite_index = sprite_curse_segment;
			if (thunder_number < 5 && !place_meeting( x, y - 40, player_id)){
				var child = instance_create(x, y + 56, "obj_article1");
				child.state = 4;
				child.state_timer = 10;
				child.explosion_timer = explosion_timer + 1;
				child.thunder_anim_timer = thunder_anim_timer;
				child.thunder_number = thunder_number + 1;
				child.thunder_parent = self;
			}
			else {
			
				if (place_meeting( x, y - 40, player_id) && player_id.attack != AT_DSPECIAL_AIR){
					player_id.thunder_struck = true;
				}
				
				var child = instance_create(x, y, "obj_article1");		
				
				child.state = 5;
				child.state_timer = 10;
				child.explosion_timer = explosion_timer + 1;
				child.thunder_anim_timer = thunder_anim_timer;
				child.thunder_number = thunder_number + 1;
				child.ignores_walls = false;
				child.thunder_parent = self;
			}
		}
		
		if (explosion_timer == 20){
			wisp_explosion = create_hitbox(AT_DSPECIAL, 2, x, y - 40);
		}
		
		if (explosion_timer >= 40){
			instance_destroy();
			exit;
		}

		explosion_timer++;
	break;		
		
	// Bottom Wisp Hitbox
	case 5:
	
		if (state_timer == 10){
			current_sprite_index = sprite_curse_end;
		}	

		if (instance_exists(thunder_parent)){

			if (free && abs(thunder_parent.x - x) > 5){
				end_alpha = 0;
				x = thunder_parent.x;
				y = y - 80;
			}
			else {
				end_alpha = 1;
			}
		}
		else {
			instance_destroy();
			exit;
		}
		
		if (explosion_timer == 20 && thunder_number == 6){
			wisp_explosion = create_hitbox(AT_DSPECIAL, 3, x, y - 20);
		}
		
		if (explosion_timer == 15){
			part_length_change = true;
			// If End part is higher than segment, cut the segment based off the distance between the end and the segment

			try {
				if (instance_exists(thunder_parent)){
					if (y < thunder_parent.y){
						//print(abs(thunder_parent.y - y))
						thunder_parent.thunder_part_length = thunder_parent.thunder_part_length - abs(thunder_parent.y - y);
					}
				}
			}
			catch (_exception){}
			
			try {
				if (instance_exists(thunder_parent.thunder_parent)){
					if (y < thunder_parent.thunder_parent.y){
						//print(abs(thunder_parent.thunder_parent.y - (y)))
						thunder_parent.thunder_parent.thunder_part_length = thunder_parent.thunder_parent.thunder_part_length - abs(thunder_parent.thunder_parent.y - (y));
					}
				}
			}
			catch (_exception){}
			
			try {
				if (instance_exists(thunder_parent.thunder_parent.thunder_parent)){
					if (y < thunder_parent.thunder_parent.thunder_parent.y){
						//print(abs(thunder_parent.thunder_parent.thunder_parent.y - (y)))
						thunder_parent.thunder_parent.thunder_parent.thunder_part_length = thunder_parent.thunder_parent.thunder_parent.thunder_part_length - abs(thunder_parent.thunder_parent.thunder_parent.y - (y));
					}
				}
			}
			catch (_exception){}
			
			try {
				if (instance_exists(thunder_parent.thunder_parent.thunder_parent.thunder_parent)){	
					if (y < thunder_parent.thunder_parent.thunder_parent.thunder_parent.y){
						//print(abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y)))
						thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length = thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length - abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y));
					}
				}
			}
			catch (_exception){}
			
			try {
				if (instance_exists(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent)){
					if (y < thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y){
						//print(abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y)))
						thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length = thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length - abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y));
					}
				}
			}
			catch (_exception){}
			
			try {
				if (instance_exists(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent)){
					if (y < thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y){
						//print(abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y)))
						thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length = thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length - abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y));
					}
				}
			}
			catch (_exception){}
			
			try {
				if (instance_exists(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent)){
					if (y < thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y){
						//print(abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y)))
						thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length = thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_part_length - abs(thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.thunder_parent.y - (y));
					}
				}
			}
			catch (_exception){}
		}
		
		if (explosion_timer >= 40){
			player_id.mim_wisp = noone;
			instance_destroy();
			exit;
		}

		explosion_timer++;

	break;

	// Whiff/Hit
	case 6:
		vsp = 0;
		hsp = 0;
		wisp_alpha = 0.6;
		if (cooldown_timer <= 1){
			var hitfx = spawn_hit_fx(x, y - 35, player_id.hfx_fire3);
			player_id.mim_wisp = noone;
			instance_destroy();
			exit;
		}
	break;

	// Parried
	case 7:
		vsp = 0;
		hsp = 0;
		wisp_alpha = 0.6;
		if (cooldown_timer <= 1){
			var hitfx = spawn_hit_fx(x, y - 35, player_id.hfx_fire3);
			player_id.mim_wisp = noone;
			instance_destroy();
			exit;
		}
	break;

}

switch(active){

	case true:

		if (not_held && state < 3){
			if (current_sprite_index != sprite_curse_active && life_timer > 60){current_sprite_index = sprite_curse_active;}
			
			with(oPlayer){
/*
				// Disable these check if you want to test a curse with zero respect
				if (state_cat != SC_HITSTUN
				&& state != PS_AIR_DODGE
				&& state != PS_ROLL_BACKWARD
				&& state != PS_ROLL_FORWARD
				&& state != PS_TECH_GROUND
				&& state != PS_TECH_BACKWARD
				&& state != PS_TECH_FORWARD
				&& state != PS_WALL_TECH
				&& state != PS_SPAWN
				&& state != PS_RESPAWN){
*/
				// Polite Variant
				if (state_cat == SC_HITSTUN && !hitpause){
					if (place_meeting(x, y, other)){ // If any player is aligned with the wisp
						with(other){
							if (other != player_id){ // If any player but the wisp owner is aligned with wisp
								if (wisp_hitbox == noone){
									wisp_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y)
								}
							}
						}
					}
				}
			}
		
			if (!instance_exists(wisp_hitbox) && wisp_hitbox != noone){
				player_id.mim_wisp.active = false;
				player_id.mim_wisp.state = 6
				player_id.mim_wisp.cooldown_timer = 200;
			}
			
			if (place_meeting(x, y, asset_get("plasma_field_obj"))){
				player_id.mim_wisp.active = false;
				player_id.mim_wisp.state = 6
				player_id.mim_wisp.cooldown_timer = 1;
			}

		}
		
		if (state_timer % 13 == 0){
			var sparkles = instance_create( x - 30 + random_func( 2, 60, true ), y + 5 - random_func( 3, 10, true ), "obj_article2");
			sparkles.vsp = -3;
			if (random_func(4, 4, true) >= 2){
				sparkles.depth = -100;
			}
		}
	break;
	
	case false:

		if (state < 3 || state >= 6){
			if (current_sprite_index != sprite_curse_off && life_timer > 60){ current_sprite_index = sprite_curse_off;}
			
			if (cooldown_timer <= 0){
				wisp_hitbox = noone;
				active = true;
			}
			
			cooldown_timer--;

			if (state_timer % 24 == 0){
				var sparkles = instance_create( x - 15 + random_func( 2, 30, true ), y - 5 - random_func( 3, 10, true ), "obj_article2");
				sparkles.vsp = -3;
				if (random_func(4, 4, true) >= 2){
					sparkles.depth = -100;
				}
			}
		}
	break;
}

state_timer++;