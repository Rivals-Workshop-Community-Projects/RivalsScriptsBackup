//animation.gml

if (sprite_index != sprite_get("uspecial")){
	uspec_past_window_1 = false;
}

if (state == PS_DASH_START && inside_monkey_ball){
	//sprite_index = sprite_get("dashstart_ball");
}


if (state == PS_DASH && inside_monkey_ball && state_timer > 31){
	dash_anim_change = true;
} else if (state != PS_DASH){
	dash_anim_change = false;
	dash_anim_change_again = false;
}

if (state == PS_DASH){
	if (dash_anim_change == true && dash_anim_change_again == false){
		if (state_timer > 31 && state_timer < 39){
			sprite_index = sprite_get("dashstart_ball");
			if (state_timer > 31 && state_timer < 34){
				image_index = 0;
			} else if (state_timer > 33 && state_timer < 36){
				image_index = 1;
			} else if (state_timer > 35 && state_timer < 38){
				image_index = 2;
			} else if (state_timer > 37){
				image_index = 3;
			}
		} else if (state_timer > 38){
			dash_anim_change_again = true;
		}
	}

	if (dash_anim_change == true && dash_anim_change_again == true){
		sprite_index = sprite_get("dash_ball")
		timer_for_dash_anim++;
		if (timer_for_dash_anim >= 1 && timer_for_dash_anim <= 3){
			image_index = 0;
		} else if (timer_for_dash_anim >= 4 && timer_for_dash_anim <= 6){
			image_index = 1;
		} else if (timer_for_dash_anim >= 7 && timer_for_dash_anim <= 9){
			image_index = 2;
		} else if (timer_for_dash_anim >= 10 && timer_for_dash_anim <= 12){
			image_index = 3;
		} else if (timer_for_dash_anim >= 13 && timer_for_dash_anim <= 15){
			image_index = 4;
		} else if (timer_for_dash_anim >= 16 && timer_for_dash_anim <= 18){
			image_index = 5;
		} else if (timer_for_dash_anim >= 19 && timer_for_dash_anim <= 21){
			image_index = 6;
		} else if (timer_for_dash_anim >= 22 && timer_for_dash_anim <= 24){
			image_index = 7;
		} else if (timer_for_dash_anim >= 25){
			timer_for_dash_anim = 0;
		}
		
		if (timer_for_dash_anim == 10
		|| timer_for_dash_anim == 22){
			//sound_play(sfx_monkey_ball_2_ball_roll, false, noone, 0.9, 1.9);
		}
		
	}
}

if (state == PS_FIRST_JUMP && inside_monkey_ball){
	sprite_index = sprite_get("jump_ball");
}

/*
if (attack == AT_NSPECIAL){
	if (inside_monkey_ball){
		hurtboxID.sprite_index = sprite_get("monkey_ball_hurt");
	} else {
		hurtboxID.sprite_index = sprite_get("aiai_hurtbox");
	}
}
*/

if (attack == AT_DSPECIAL){
	if (inside_monkey_ball){
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("monkey_ball_hurt"));
	} else {
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("aiai_hurtbox"));
	}
}

if (sprite_index == sprite_get("fspecial")){
	if (inside_monkey_ball){
		hurtboxID.sprite_index = sprite_get("monkey_ball_hurt");
	}
}