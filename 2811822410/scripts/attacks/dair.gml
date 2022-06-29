for (i = 0; i <= 1; i++) {
	if (i = 0) {
		curr_attack = AT_DAIR;
	} else {
		curr_attack = AT_DSPECIAL_AIR;
	}
	
	set_attack_value(curr_attack, AG_CATEGORY, 1);
	set_attack_value(curr_attack, AG_SPRITE, sprite_get("dair"));
	set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
	set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
	set_attack_value(curr_attack, AG_LANDING_LAG, 8);
	set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

	set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 7);

	set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 24);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(curr_attack, 3);

	//Weak
	set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 1, HG_SHAPE, 0);
	set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
	set_hitbox_value(curr_attack, 1, HG_WIDTH, 110);
	set_hitbox_value(curr_attack, 1, HG_HEIGHT, 50);
	set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 1, HG_DAMAGE, 9);
	set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
	set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, HFX_MAY_LEAF_BIG);

	//Spike
	set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 2, HG_SHAPE, 1);
	set_hitbox_value(curr_attack, 2, HG_LIFETIME, 1);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, 0);
	set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 0);
	set_hitbox_value(curr_attack, 2, HG_WIDTH, 30);
	set_hitbox_value(curr_attack, 2, HG_HEIGHT, 50);
	set_hitbox_value(curr_attack, 2, HG_PRIORITY, 6);
	set_hitbox_value(curr_attack, 2, HG_DAMAGE, 12);
	set_hitbox_value(curr_attack, 2, HG_ANGLE,  270);
	set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, HFX_MAY_LEAF_HUGE);
	
	//Weak
	set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 3, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 3, HG_SHAPE, 0);
	set_hitbox_value(curr_attack, 3, HG_LIFETIME, 3);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -25);
	set_hitbox_value(curr_attack, 3, HG_HITBOX_X, -45);
	set_hitbox_value(curr_attack, 3, HG_WIDTH, 50);
	set_hitbox_value(curr_attack, 3, HG_HEIGHT, 50);
	set_hitbox_value(curr_attack, 3, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 3, HG_DAMAGE, 9);
	set_hitbox_value(curr_attack, 3, HG_ANGLE,  70);
	set_hitbox_value(curr_attack, 3, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(curr_attack, 3, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(curr_attack, 3, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(curr_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(curr_attack, 3, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(curr_attack, 3, HG_VISUAL_EFFECT, HFX_MAY_LEAF_BIG);
}