for (i = 0; i <= 1; i++) {
	if (i = 0) {
		curr_attack = AT_USTRONG;
	} else {
		curr_attack = AT_USTRONG_2;
	}
	
	set_attack_value(curr_attack, AG_CATEGORY, 0);
	set_attack_value(curr_attack, AG_SPRITE, sprite_get("ustrong"));
	set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
	set_attack_value(curr_attack, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

	set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 7);
	set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);

	set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 3);

	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 3);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 22);
	set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(curr_attack, 1);

	//Weak
	set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
	set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
	set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -80);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
	set_hitbox_value(curr_attack, 1, HG_WIDTH, 40);
	set_hitbox_value(curr_attack, 1, HG_HEIGHT, 90);
	set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 1, HG_DAMAGE, 11);
	set_hitbox_value(curr_attack, 1, HG_ANGLE,  90);
	set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 11);
	set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .8);
	set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, HFX_MAY_LEAF_HUGE);
}
