//B - Reversals

if (attack == AT_NSPECIAL){ //Inhale Loop
    if (window == 2){
	move_cooldown[AT_NSPECIAL] = 60
        if (special_down or attack_down){
            if (window_timer == 30) {
                window = 2;
                window_timer = 0;
            }
            with (asset_get("oPlayer")) {
                var centerY = y - char_height / 2;
                other.x_dist = (x - other.x) * other.spr_dir;
                other.y_dist = centerY - other.y + 20;
                other.math = 15 + char_height / 2 + exp(0.045*other.x_dist)/10;
                if(other.x_dist > 20 &&  150 > other.x_dist) {
                    if(other.math > abs(other.y_dist)) {
                        other.moveX = other.spr_dir * (150 - other.x_dist) / 25;
                        if(other.moveX >= 0) {
                            x -= ceil(other.moveX);
                        } else {
                            x -= floor(other.moveX);
                        }
                    }
                }
            }
            
        }
        else {
			sound_stop(sound_get("inhale"))
            window_timer = 0;
            window = 7;
			var Kirby = self
			with (asset_get("pHitBox")) {
				if attack == AT_NSPECIAL and player_id = Kirby {
					hitbox_timer = 22
				}
			}
        }
    }
    can_fast_fall = false;
}

if (attack == AT_NSPECIAL) {
		if (((down_down) or (special_down)) and (window == 3) and (window_timer == 16)) or ((window == 3) and special_pressed and window_timer > 6) {
					window = 5
					window_timer = 0
				}
		if (window == 3) {
				if (window_timer == 0) {
						sound_stop(sound_get("inhale"))
				}
				grabbedid.x = x;
				grabbedid.y = y-12;
				grabbedid.visible = false
		}
		if (window == 4){
				if (window_timer == 0) and (grabbedid != noone) {
					grabbedid.grabbed = 0
					grabbedid.visible = true
					grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
					grabbedid = noone
				}
				if (window_timer == 11) {
					window = 7
					window_timer = 3
				}
		}
		if (window == 5) {
		if (6 > (window_timer)) {
			grabbedid.x = x;
			grabbedid.y = y-12;
		}
		
		if (window_timer == 6) and (grabbedid != noone){
				grabbedid.grabbed = 0
				grabbedid.visible = true
				grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
				grabbedid = noone
		
		}
		}
		if (window == 6) and (window_timer == 12){
			window = 7
			window_timer = 10
		}
}

if (attack = AT_TAUNT) {
	if (window == 1) and (taunt_down){
		if current_ability != 0 {
		resetcolours = 1
		current_ability = 0;
		spawn_hit_fx( x, y-36, taunt_star );
		}
		}
}

if (attack = AT_DAIR) {
	if (window == 1 && window_timer == 1) {
		set_num_hitboxes(AT_DAIR, 1);
	}
	if (!free) {
		set_num_hitboxes(AT_DAIR, 0);
	}
	if (window == 2 && window_timer > 15) {
		if (attack_down or special_down or right_strong_down or strong_down or left_strong_down) {
			window = 3
		}
	}
}

if (attack == AT_UAIR) {
	if (window == 4 && !free) {
		window = 5
		window_timer = 0
	}
}