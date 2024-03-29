for (i = 0; i <= 1; i++) {
	if (i = 0) {
		curr_attack = AT_NAIR;
	} else {
		curr_attack = AT_NTHROW;
	}
	
	set_attack_value(curr_attack, AG_CATEGORY, 1);
	set_attack_value(curr_attack, AG_SPRITE, sprite_get("nair"));
	set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
	set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
	set_attack_value(curr_attack, AG_LANDING_LAG, 6);
	set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

	set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 5);

	set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 5);

	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);

	set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 12);
	set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


	set_num_hitboxes(curr_attack, 3);

	set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 1, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -20);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
	set_hitbox_value(curr_attack, 1, HG_WIDTH, 120);
	set_hitbox_value(curr_attack, 1, HG_HEIGHT, 40);
	set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 1, HG_DAMAGE, 3);
	set_hitbox_value(curr_attack, 1, HG_ANGLE,  90);
	set_hitbox_value(curr_attack, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER,  .8);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, leak_vfx_small);


	set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 2, HG_WINDOW, 3);
	set_hitbox_value(curr_attack, 2, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -35);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 25);
	set_hitbox_value(curr_attack, 2, HG_WIDTH, 70);
	set_hitbox_value(curr_attack, 2, HG_HEIGHT, 70);
	set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 2, HG_DAMAGE, 5);
	set_hitbox_value(curr_attack, 2, HG_ANGLE,  45);
	set_hitbox_value(curr_attack, 2, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, 2);
	set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, leak_vfx_big);

	set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 3, HG_WINDOW, 3);
	set_hitbox_value(curr_attack, 3, HG_LIFETIME, 2);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -35);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_X, -35);
	set_hitbox_value(curr_attack, 3, HG_WIDTH, 70);
	set_hitbox_value(curr_attack, 3, HG_HEIGHT, 70);
	set_hitbox_value(curr_attack, 3, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 3, HG_DAMAGE, 5);
	set_hitbox_value(curr_attack, 3, HG_ANGLE,  135);
	set_hitbox_value(curr_attack, 3, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(curr_attack, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(curr_attack, 3, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_GROUP, 2);
	set_hitbox_value(curr_attack, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(curr_attack, 3, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(curr_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(curr_attack, 3, HG_VISUAL_EFFECT, leak_vfx_big);
}
