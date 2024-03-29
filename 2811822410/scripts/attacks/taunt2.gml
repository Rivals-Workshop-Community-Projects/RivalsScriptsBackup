if (!is_oc) {
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_leek"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_num_hitboxes(AT_TAUNT_2, 0);

} else {
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("a_game_taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 9);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
	/*
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 5);
	*/

	set_num_hitboxes(AT_TAUNT_2, 0);
}