//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_UAIR)
	trigger_wavebounce();

if (attack == AT_NSPECIAL){ //Inhale Loop
    if (window == 2){
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
        	destroy_hitboxes();
			sound_stop(sound_get("inhale"));
            window_timer = 0;
            window = 5;
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

if (attack == AT_NSPECIAL) {/*
		if (((down_down) or (special_down)) and (window == 3) and (window_timer == 16)) or ((window == 3) and special_pressed and window_timer > 6) {
					window = 5
					window_timer = 0
				}*/
		if (window == 3) {
				if (window_timer == 0) {
						sound_stop(sound_get("inhale"))
				}
				grabbedid.x = x;
				grabbedid.y = y-12;
				grabbedid.visible = false
				
				if (window_timer > 10){
					if (left_down)
						spr_dir = -1;
					else if (right_down)
						spr_dir = 1;
				}
		}
		if (window == 4){
				if (window_timer == 0) and (grabbedid != noone) {
					grabbedid.grabbed = 0
					grabbedid.visible = true
					grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
					grabbedid = noone
				}
				//if (window_timer == 11) {
					//window = 7
				//	window_timer = 3
				//}
				if (free && window_timer == 1)
					vsp = -3;
		}
		/*if (window == 5) {
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
		}*/
}

if (attack = AT_DAIR) {
	if (window == 1 && window_timer == 1)
		dairSFX = true;
	
	if (window == 2 || (window == 1 && window_timer == 20)){
		soft_armor = 999;
	}
	if (window == 2 && window_timer > 15) {
		if (attack_pressed or special_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed or left_strong_pressed or jump_pressed) {
			window = 3;
			window_timer = 0;
		}
	}
	if (!free && dairSFX) {
		destroy_hitboxes();
		sound_play(sound_get("hit1"));
		dairSFX = false;
	}
	if (window == 3 && window_timer == 1){
		sound_play(sound_get("spin"), false, noone, 0.6, 1.1);
		destroy_hitboxes();
	}
	if (window > 3)
		soft_armor = 0;
}

if (attack == AT_UAIR) {
	can_fast_fall = false;
	hsp = clamp(hsp, -2, 2);
	vsp = clamp(vsp, -99, 16);
	if (window >= 2 && window <= 4)
		can_wall_jump = true;
	if (window == 4 && !hitpause){
		vsp += 2;
	}
	
	if (window == 4 && !free) {
		destroy_hitboxes();
		window = 5;
		window_timer = 0;
	}
}

for(i = 1; i < 10; i++){
	set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 1);
}

#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}