for (i = 0; i <= 1; i++) {
	if (i = 0) {
		curr_attack = AT_FAIR;
	} else {
		curr_attack = AT_FSPECIAL_AIR;
	}
	
	set_attack_value(curr_attack, AG_CATEGORY, 1);
	set_attack_value(curr_attack, AG_SPRITE, sprite_get("fair"));
	set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
	set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
	set_attack_value(curr_attack, AG_LANDING_LAG, 8);
	set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

	set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 3);

	set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

	set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
	set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 18);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


	set_num_hitboxes(curr_attack, 1);

	set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
	set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -45);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
	set_hitbox_value(curr_attack, 1, HG_WIDTH, 70);
	set_hitbox_value(curr_attack, 1, HG_HEIGHT, 90);
	set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
	set_hitbox_value(curr_attack, 1, HG_DAMAGE, 9);
	set_hitbox_value(curr_attack, 1, HG_ANGLE,  361);
	set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .45);
	set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, leak_vfx_big);
}