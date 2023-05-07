if (ralsei_heart_active) {
	ralsei_heart_article_id.x = x;
	
	if (state == PS_CROUCH && state_timer > 1) {
		ralsei_heart_article_id.y = y + 16;
		hurtboxID.sprite_index = spr_ralsei_heart_hurtbox_crouch;
	}
	else {
		ralsei_heart_article_id.y = y;
		hurtboxID.sprite_index = spr_ralsei_heart_hurtbox;
	}
}
else {
	if (hurtboxID.sprite_index = spr_ralsei_heart_hurtbox) {
		switch (state) {
			case PS_ATTACK_AIR:
			case PS_ATTACK_GROUND:
				var prev_img_index = hurtboxID.image_index;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				hurtboxID.image_index = prev_img_index;
			break;
			case PS_CROUCH:
				hurtboxID.sprite_index = crouchbox_spr;
			break;
			default:
				hurtboxID.sprite_index = hurtbox_spr;
			break;
		}
	}
	if (ralsei_heart_article_id.image_alpha > 0) {
		ralsei_heart_article_id.x = x;
		ralsei_heart_article_id.y = y;
	}
}

switch (state){
	case PS_CROUCH:
		if (image_index >= 5) image_index = 5 + floor((image_index - 5) / 10);
		
		else if (state_timer < 20 && (prev_state == PS_IDLE || prev_state == PS_WALK || prev_state == PS_DASH) ) {
			image_index = floor(state_timer / 4);
			//if (state_timer == 4 && !hitpause) sound_play(asset_get("sfx_land_light"));
		}
	break;
	case PS_IDLE:
		if (ralsei_trigger) {
			attack = AT_EXTRA_2; state = PS_ATTACK_GROUND; state_timer = 1; knockback_adj = 10;
		}
		else if (state_timer < 12 && (prev_state == PS_IDLE || prev_state == PS_CROUCH)) {
			sprite_index = sprite_get("crouch");
			image_index = 6 + floor(state_timer / 4);
			//if (state_timer == 4 && !hitpause) sound_play(asset_get("sfx_land_light"));
		}
	break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		switch (attack) {
			case AT_DSTRONG:
				if (window == 2) image_index = 2 + floor((strong_charge / 6) mod 3);
			break;
			case AT_NAIR:
			case AT_NTHROW:
				if (window >= 2 && window <= 4) image_index += ralsei_nair_cycle * 4;
			break;
			case AT_EXTRA_1:
				if (ralsei_extra_move_dir == 0) {
					sprite_index = sprite_get("idle");
					image_index = window_timer * idle_anim_speed;
				}
				else {
					sprite_index = sprite_get("walk");
					image_index = window_timer * walk_anim_speed;
				}
			break;
		}
		
	break;
	case PS_PARRY:
		if (state_timer < 1) image_index = 1;
	break;
	
	case PS_SPAWN:
		if (ralsei_intro_animation == 0) {
			ralsei_intro_animation = 1;
			var benz = instance_create(x, y, "obj_article1");
			benz.spr_dir = spr_dir;
			benz.article_index = 6;
			benz.sprite_index = sprite_get("benz");
		}
		if (state_timer < 40) {
			sprite_index = sprite_get("roll_backward");
			image_index = floor(state_timer / 5);
		}
	break;
}