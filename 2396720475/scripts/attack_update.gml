// attack_update.gml
// Called every frame, but only if the character is performing an attack

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (taunt_down && state == PS_ATTACK_GROUND && window == 2 && window_timer == 24){
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
			sound_play(sound_get("box3_sfx"));
			instance_destroy(Box);
		}
		
		Box = instance_create(x, y + 40, "obj_article_solid");
		Box.player_id = id;
		Box.player = player;
	}
}

// Allows for wall jumps during certain attacks
if (attack == AT_FSPECIAL || attack == AT_USPECIAL){
	can_wall_jump = true;
}


// Forward Special
if (attack == AT_FSPECIAL){	
	
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
	
	if (hsp == 0 && chargedash != 60 || has_hit || x < 0 || x > room_width){
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
	if (shield_pressed && window == 1 && window_timer < 12){
		window = 2;
		window_timer = 0;
	}
	
		needle_angle = floor(joy_dir / 22.5) * 22.5;

		angle = (needle_angle / 180) * -pi;

		if (window_timer == 15){
			needleland = false;
			needleplatform = instance_create(x, y - 15, "obj_article2")
			needleplatform.angle = needle_angle;
			needleplatform.player = player;
			needleplatform.player_id = id;
			needle_sprite = 0;
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
