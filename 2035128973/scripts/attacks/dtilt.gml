if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtiltAcc"));
	set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtiltAcc_hurt"));
	
	set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack01"));
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	
	set_num_hitboxes(AT_DTILT,1);
	
	set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
	set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 18);
	set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -20);
	set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 80);
	set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
	set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
	set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}
else
{
	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
	set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

	set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

	set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

	set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 11);
	set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(AT_DTILT, 1);

	set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 48);
	set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -11);
	set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 116);
	set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 22);
	set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .35);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}