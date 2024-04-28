for (i = 0; i <= 1; i++) {
	if (i = 0) {
		curr_attack = AT_UTILT;
	} else {
		curr_attack = AT_UTHROW;
	}
	
	set_attack_value(curr_attack, AG_CATEGORY, 2);
	set_attack_value(curr_attack, AG_SPRITE, sprite_get("utilt"));
	set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
	set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

	set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 8);
	set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 5);

	set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 8);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 12);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(curr_attack, 4);

	//Early
	set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 1, HG_SHAPE, 0);
	set_hitbox_value(curr_attack, 1, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -30);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
	set_hitbox_value(curr_attack, 1, HG_WIDTH, 60);
	set_hitbox_value(curr_attack, 1, HG_HEIGHT, 60);
	set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 1, HG_DAMAGE, 9);
	set_hitbox_value(curr_attack, 1, HG_ANGLE,  100);
	set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, leak_vfx_big);

	//Middle
	set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 2, HG_SHAPE, 0);
	set_hitbox_value(curr_attack, 2, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -80);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 40);
	set_hitbox_value(curr_attack, 2, HG_WIDTH, 60);
	set_hitbox_value(curr_attack, 2, HG_HEIGHT, 60);
	set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 2, HG_DAMAGE, 7);
	set_hitbox_value(curr_attack, 2, HG_ANGLE,  90);
	set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, leak_vfx_big);

	//Late
	set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 4);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 3, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 3, HG_SHAPE, 0);
	set_hitbox_value(curr_attack, 3, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -80);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_X, -10);
	set_hitbox_value(curr_attack, 3, HG_WIDTH, 90);
	set_hitbox_value(curr_attack, 3, HG_HEIGHT, 60);
	set_hitbox_value(curr_attack, 3, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 3, HG_DAMAGE, 7);
	set_hitbox_value(curr_attack, 3, HG_ANGLE,  90);
	set_hitbox_value(curr_attack, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(curr_attack, 3, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(curr_attack, 3, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(curr_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(curr_attack, 3, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(curr_attack, 3, HG_VISUAL_EFFECT, leak_vfx_big);
	
	//Late
	set_hitbox_value(curr_attack, 4, HG_WINDOW_CREATION_FRAME, 6);
	set_hitbox_value(curr_attack, 4, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 4, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 4, HG_SHAPE, 0);
	set_hitbox_value(curr_attack, 4, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 4, HG_HITBOX_Y, -40);
	set_hitbox_value(curr_attack, 4, HG_HITBOX_X, -30);
	set_hitbox_value(curr_attack, 4, HG_WIDTH, 60);
	set_hitbox_value(curr_attack, 4, HG_HEIGHT, 60);
	set_hitbox_value(curr_attack, 4, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 4, HG_DAMAGE, 4);
	set_hitbox_value(curr_attack, 4, HG_ANGLE,  70);
	set_hitbox_value(curr_attack, 4, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(curr_attack, 4, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(curr_attack, 4, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(curr_attack, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(curr_attack, 4, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(curr_attack, 4, HG_VISUAL_EFFECT, leak_vfx_big);
}