if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_DAIR, AG_CATEGORY, 1);
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dairAcc"));
	set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 0);
	set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dairAcc_hurt"));
	
	set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
	set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack01"));
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("vc_lucario_attack04"));
	set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 5);
	
	set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 0);
	
	set_num_hitboxes(AT_DAIR, 2);
	
	set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
	set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 75);
	set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
	
	set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -13);
	set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 75);
	set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
	set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8);
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
}
else
{
	set_attack_value(AT_DAIR, AG_CATEGORY, 1);
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
	set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

	set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);

	set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

	set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 14);
	set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(AT_DAIR, 3);

	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 10);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 46);
	set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 30);
	set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
	set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);

	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -10);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 10);
	set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 80);
	set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);

	set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
	set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
	set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
	set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 20);
	set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 50);
	set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 80);
	set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 60);
	set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
	set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.4);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
}