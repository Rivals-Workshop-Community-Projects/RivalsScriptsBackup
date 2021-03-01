// attack_update.gml
// Called every frame, but only if the character is performing an attack

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (taunt_down && attack == AT_TAUNT && state == PS_ATTACK_GROUND && window == 2 && window_timer == 24){
	window = 2;
	window_timer = 1;
}

if (taunt_down && attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND && window == 2 && window_timer == 50){
	window = 2;
	window_timer = 1;
}

	
// Down Special
if (attack == AT_DSPECIAL){
	if (state_timer == 11){
		move_cooldown[AT_DSPECIAL] = 200;
		if (instance_exists(needleplatform_solid)){
			needleplatform_solid.new_box = true;
		}
		
		box_health = 7;
		if (instance_exists(Box)){
			spawn_hit_fx(Box.x, Box.y, hit_small1);

			if (get_player_color(player) == 13 || get_player_color(player) == 11){
				sound_play(sound_get("squeak_sfx"));
			}
			else {
				sound_play(sound_get("box3_sfx"));			
			}

			instance_destroy(Box);
			Box = noone;
		}

		if (instance_exists(movingbox)){
			if (instance_exists(movingbox.boxhitbox)){
				instance_destroy(movingbox.boxhitbox);
			}
			instance_destroy(movingbox);
			movingbox = noone;
		}
		
		/*
		Box = instance_create(x, y + 40, "obj_article_solid");
		Box.player_id = id;
		Box.player = player;
		*/

		movingbox = instance_create(x, y + 40, "obj_article1");
		movingbox.player_id = id;
		movingbox.player = player;
		movingbox.state = 1;
		movingbox.hit_delay = 6;
		movingbox.kb_angle = 270;
		movingbox.bkb = 4;
		movingbox.kb_scaling = .4;
		movingbox.destroy_check = false;
		movingbox.owner = player;
		movingbox.health_check = true;
		movingbox.initial_spawn = true;
		
		if (get_player_color(player) == 12 || get_player_color(player) == 10){
			flag_destroy = false;
			movingbox.flag = true;
		}
		if (get_player_color(player) == 13){
			movingbox.sprite_index = sprite_get("plushy");
		}
		if (get_player_color(player) == 11){
			movingbox.sprite_index = sprite_get("macka");
		}
	}
}

// Allows for wall jumps during certain attacks
if (attack == AT_FSPECIAL || attack == AT_USPECIAL){
	can_wall_jump = true;
}

// Forward Special
if (attack == AT_FSPECIAL){	
	move_cooldown[AT_FSPECIAL] = 40;
	if (window == 2){
	
		if (shield_pressed){
			window = 6;
			window_timer = 0;		
		}
		
		if (special_down) { // Charge Shot
			if (window_timer == 19 && chargedash == 60){
				window = 6;
				window_timer = 0;
			}
			if (window_timer == 20){
				window_timer = 0;
			}
			if (chargedash < 60){
				chargedash += 1;
			}
		}		
		else { // Charge Release

		sound_play(sound_get("uspecial_sfx"));
		if (chargedash >= 0 && chargedash <= 20){ // Weak
				window = 3;
				window_timer = 0;
			}
			if (chargedash >= 20 && chargedash <= 40){ // Medium
				window = 4;
				window_timer = 0;
			}
			if (chargedash >= 40 && chargedash <= 60){ // Strong
				window = 5;
				window_timer = 0;
			}
		}
	}
	
	if (hsp == 0 && chargedash != 60 || (has_hit && window >= 3 && window <= 6) || x < 30 || x > room_width - 30){
		hsp = 0;
		
		if ((window == 3 && window_timer >= 4) || (window == 4 && window_timer >= 4) || (window == 5 && window_timer >= 4)){
			sound_play(sound_get("fspecial_hit_sfx"));
			window = 7;
			window_timer = 0;
		}
	}
	
	if (window >= 3 && window < 6){
		if (window_timer == 2){
			chargedash = 0;
		}	
		
		if ((window == 2 && window_timer >= 5) || (window == 3 && window_timer >= 8) || (window == 4 && window_timer >= 12) || (window == 5 && window_timer >= 15)){
			window = 6;
			window_timer = 0;
		}
	}
	
	if (window == 6 && window_timer == 16){
		if (!has_hit_player){
			window = 20;
		}
	}
}

// Tomo Needle Throw
if (attack == AT_USPECIAL){
	angle = (floor(joy_dir / 22.5) * 22.5 / 180) * -pi;
}

if (attack == AT_USPECIAL){
	if (window == 1 && window_timer == 1){
		usedUspecial_Again++;
	}
	if (!joy_pad_idle){
		needle_angle = floor(joy_dir / 22.5) * 22.5;
	}
	
		if ((needle_angle <= 22.5 || needle_angle >= 337.5) && needle_angle != 0){
			needle_angle = 0;
		}		
		if (needle_angle < 67.5 && needle_angle > 22.5){
			needle_angle = 45;
		}
		if (needle_angle <= 112.5 && needle_angle >= 67.5){
			needle_angle = 90;
		}
		if (needle_angle < 157.5 && needle_angle > 112.5){
			needle_angle = 135;
		}
		if (needle_angle <= 202.5 && needle_angle >= 157.5){
			needle_angle = 180;
		}
		if (needle_angle < 247.5 && needle_angle > 202.5){
			needle_angle = 225;
		}
		if (needle_angle <= 292.5 && needle_angle >= 247.5){
			needle_angle = 270;
		}
		if (needle_angle < 337.5 && needle_angle > 292.5){
			needle_angle = 315;
		}

		angle = (needle_angle / 180) * -pi;

		if (window_timer == 15){
			needleland = false;
			needleplatform = instance_create(x, y - 15, "obj_article2")
			needleplatform.angle = needle_angle;
			needleplatform.player = player;
			needleplatform.player_id = id;
			needle_sprite = 0;
			
			needle_hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
			needle_hitbox.length = 999;
		}
		
		if (window == 3 && state == PS_ATTACK_AIR){
			can_attack = true;
		}
}
else {
	if (!instance_exists(needleplatform) && instance_exists(needleplatform_solid)){
		needle_angle = 0;
		angle = 0;
	}
}
