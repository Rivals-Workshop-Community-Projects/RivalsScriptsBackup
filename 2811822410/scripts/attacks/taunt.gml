if (!is_oc) { //Miku or not
	set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_dance"));
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

	set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 90);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 18);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt_sfx);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);

	set_num_hitboxes(AT_TAUNT, 0);
} else {
	set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_dance"));
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

	set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt_sfx);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

	set_num_hitboxes(AT_TAUNT, 0);
}