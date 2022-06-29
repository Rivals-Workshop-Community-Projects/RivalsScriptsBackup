for (i = 0; i <= 1; i++) {
	if (i = 0) {
		curr_attack = AT_DSTRONG;
	} else {
		curr_attack = AT_DSTRONG_2;
	}
	
	set_attack_value(curr_attack, AG_CATEGORY, 0);
	set_attack_value(curr_attack, AG_SPRITE, sprite_get("dstrong"));
	set_attack_value(curr_attack, AG_NUM_WINDOWS, 6);
	set_attack_value(curr_attack, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

	set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);

	set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 2);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 1);

	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 3);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 4);
	set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(curr_attack, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(curr_attack, 4, AG_WINDOW_SFX_FRAME, 3);

	set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 3);
	set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 6);

	set_window_value(curr_attack, 6, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 6, AG_WINDOW_LENGTH, 18);
	set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(curr_attack, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(curr_attack, 2);

	//Weak
	set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
	set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
	set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -10);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 55);
	set_hitbox_value(curr_attack, 1, HG_WIDTH, 100);
	set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
	set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 1, HG_DAMAGE, 10);
	set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
	set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 11);
	set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, HFX_MAY_LEAF_HUGE);

	//Weak
	set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 2, HG_WINDOW, 5);
	set_hitbox_value(curr_attack, 2, HG_SHAPE, 2);
	set_hitbox_value(curr_attack, 2, HG_LIFETIME, 3);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -10);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_X, -50);
	set_hitbox_value(curr_attack, 2, HG_WIDTH, 100);
	set_hitbox_value(curr_attack, 2, HG_HEIGHT, 20);
	set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 2, HG_DAMAGE, 10);
	set_hitbox_value(curr_attack, 2, HG_ANGLE,  110);
	set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 11);
	set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, HFX_MAY_LEAF_HUGE);
}