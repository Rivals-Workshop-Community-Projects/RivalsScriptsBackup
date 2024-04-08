if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftiltAcc"));
	set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftiltAcc_hurt"));
	
	set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
	
	set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("vc_lucario_attack01"));
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
	
	set_num_hitboxes(AT_FTILT, 1);
	
	set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 5);
	set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
	set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
	set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 64);
	set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 4);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 14);
	set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);
}
else
{
	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
	set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
	
	set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);
	
	set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	
	set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_num_hitboxes(AT_FTILT, 2);
	
	set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 54);
	set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -8);
	set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
	set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 32);
	set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 303);
	
	set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 64);
	set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 90);
	set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 90);
	set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .8);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 303);
}