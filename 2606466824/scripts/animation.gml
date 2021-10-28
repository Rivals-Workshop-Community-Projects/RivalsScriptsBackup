//sprite_index = sprite_get("incin");

if ((state == PS_IDLE || state == PS_IDLE_AIR) && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && has_hit) {
	if (attack == AT_DATTACK && state_timer < 15) {
		sprite_index = sprite_get("dattack_popoff");
		image_index = round(state_timer / 6) + 3;
		if (image_index == 3) {
			draw_x = (((state_timer/3) % 2) * 2) - 2
		}
	}
}

if (attack == AT_DATTACK && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 4) {
	sprite_index = sprite_get("dattack_popoff");
	hurtboxID.sprite_index = sprite_get("dattack_popoff_hurt");
	image_index = round(window_timer / 6);
	if (image_index == 2) {
		draw_x = (((state_timer/3) % 2) * 2) - 2
	}
}


if (state == PS_IDLE && prev_state == PS_ATTACK_GROUND && has_hit && didFullJab == 1) {
	if (attack == AT_JAB && state_timer < 15) {
		sprite_index = sprite_get("jab_popoff");
		image_index = round((state_timer-2) / 6) + 4;
		if (state_timer < 7) {image_index = 4;}
	}
}

if (attack == AT_JAB && state == PS_ATTACK_GROUND && window == 10) {
	sprite_index = sprite_get("jab_popoff");
	hurtboxID.sprite_index = sprite_get("jab_popoff_hurt");
	image_index = round(window_timer / 6) + 1;
	if (window_timer > 13) {image_index = 4;}
}


if (state == PS_IDLE && prev_state == PS_ATTACK_GROUND && has_hit) {
	if (attack == AT_FSTRONG && state_timer < 35) {
		sprite_index = sprite_get("fstrong_popoff");
		if (state_timer < 20) {
			image_index = 8;
			draw_x = (((state_timer/3) % 2) * 2) - 2			
		} else {
			image_index = 8 + ((state_timer - 20)/5);
			draw_x = 0;
		}
	}
}

if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND && window > 6) {
	sprite_index = sprite_get("fstrong_popoff");
	hurtboxID.sprite_index = sprite_get("fstrong_popoff_hurt");
}

if (state == PS_IDLE && prev_state == PS_ATTACK_GROUND && has_hit) {
	if (attack == AT_USTRONG && state_timer < 22) {
		sprite_index = sprite_get("ustrong_popoff");
		if (state_timer < 4) {
			image_index = 3;		
		} else if (state_timer < 15) {
			image_index = 4;		
		} else if (state_timer < 18) {
			image_index = 5;		
		} else {
			image_index = 6;		
		}
	}
}

if (attack == AT_USTRONG && state == PS_ATTACK_GROUND && window > 4) {
	sprite_index = sprite_get("ustrong_popoff");
	hurtboxID.sprite_index = sprite_get("ustrong_popoff_hurt");
}

if (attack == AT_FTHROW && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	hurtboxID.sprite_index = sprite_get("fthrow_hurt");
}

if (attack == AT_UTHROW && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	hurtboxID.sprite_index = sprite_get("uthrow_hurt");
}

if (attack == AT_DTHROW && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	hurtboxID.sprite_index = sprite_get("dthrow_hurt");
}

if (attack == AT_NTHROW && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	hurtboxID.sprite_index = sprite_get("bthrow_hurt");
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	if (dattackBounce < 5) {
		hurtboxID.sprite_index = sprite_get("fspecial_hurt");	
	} else {
		hurtboxID.sprite_index = sprite_get("fspecial_althurt");
	}
	
	if (window == 1) {
		if (window_timer < 4) {
			image_index = 1;
		} else if (window_timer < 8) {
			image_index = 2;
		} else if (window_timer < 12) {
			image_index = 3;
		} else {
			image_index = 4;
		}
	}
}

if (state == PS_SPAWN && should_do_intro == true) {
    if (state_timer < 37 + (2*player) ) {
        sprite_index = sprite_get("null");
		draw_x = 0;
		draw_y = 0;
    } else if (state_timer < 52 + (2*player) ) {
        sprite_index = sprite_get("doublejump");
		image_index = 1+((state_timer - (2*player) - 37 )/4);
		draw_x = 0;
		draw_y = ((1+((state_timer - (2*player) - 37 )/4)) - 3) * 20;
		if (draw_y > 0) {draw_y = 0;}
    } else if (state_timer < 60 + (2*player) ) {
        sprite_index = sprite_get("landinglag");
		image_index = ((state_timer - (2*player) - 56)/2);
		draw_x = 0;
		draw_y = 0;
    } else {
        sprite_index = sprite_get("idle");
		draw_x = 0;
		draw_y = 0;
    }
}