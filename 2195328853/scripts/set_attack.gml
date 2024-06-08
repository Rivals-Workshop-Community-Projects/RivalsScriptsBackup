//set_attack

if (attack == AT_FSTRONG){
	reset_hitbox_value(AT_FSTRONG, 1, HG_WIDTH);reset_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT);
	reset_hitbox_value(AT_FSTRONG, 2, HG_WIDTH);reset_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT);
}

if (attack == AT_USTRONG){
	reset_hitbox_value(AT_USTRONG, 1, HG_WIDTH);reset_hitbox_value(AT_USTRONG, 1, HG_HEIGHT);
	reset_hitbox_value(AT_USTRONG, 2, HG_WIDTH);reset_hitbox_value(AT_USTRONG, 2, HG_HEIGHT);
}

if (attack == AT_UAIR){
	reset_hitbox_value(AT_UAIR, 2, HG_WIDTH);reset_hitbox_value(AT_UAIR, 2, HG_HEIGHT);
}

if (attack == AT_TAUNT){
	//taunt_timer = 0;
	reset_attack_value(AT_TAUNT, AG_NUM_WINDOWS);reset_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY);
	reset_attack_value(AT_TAUNT, AG_SPRITE);reset_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE);
    if ((left_down || right_down || down_down)){
    	set_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY, 0);
	    if (down_down){ //dance
	    	window = 3;set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
	    	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_dance"));set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_dance_hurt"));
	    }else if (left_down || right_down){ //pose
			window = 4;set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_pose"));//set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_pose_hurt"));
	    }
	}
}

muno_event_type = 2;
	user_event(14);