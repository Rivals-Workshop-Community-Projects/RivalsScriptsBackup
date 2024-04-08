if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jabAcc"));
	set_attack_value(AT_JAB, AG_CATEGORY, 0);
	set_attack_value(AT_JAB, AG_NUM_WINDOWS, 10);
	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jabAcc_hurt"));
	
	set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	
	set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	
	set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
	set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 6);
	set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);
	
	set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
	set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 10);
	
	set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
	set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 5);
	set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 6);
	
	set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 3);
	set_window_value(AT_JAB, 8, AG_WINDOW_SFX, sound_get("vc_lucario_attack03"));
	
	set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 8);
	
	set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_JAB, 10, AG_WINDOW_TYPE, 0);
	set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 8);
	set_window_value(AT_JAB, 10, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_num_hitboxes(AT_JAB, 3);
	
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
	set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_JAB, 1, HG_ANGLE, 0);
	set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_JAB, 1, HG_EXTRA_CAMERA_SHAKE, -1);
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
	set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
	set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 2);
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
	set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
	set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 22);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_JAB, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 35);
	set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 8);
	set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
	set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
	set_hitbox_value(AT_JAB, 2, HG_EXTRA_CAMERA_SHAKE, -1);
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);
	set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);
	set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 2);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	
	set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_JAB, 3, HG_WINDOW, 9);
	set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
	set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
	set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -45);
	set_hitbox_value(AT_JAB, 3, HG_WIDTH, 40);
	set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 80);
	set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 12);
	set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
	set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 15);
	set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 0.4);
	set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.75);
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
else
{
	set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	
	set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	
	set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 13);
	set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
	set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 5);
	
	set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
	set_window_value(AT_JAB, 5, 27, .1);
	set_window_value(AT_JAB, 5, 28, 0);
	
	set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 11);
	set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_JAB, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
	set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
	set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 5);
	
	set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
	set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_JAB, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
	
	set_num_hitboxes(AT_JAB, 2);
	
	set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 35);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
	set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 55);
	set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
	
	set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
	set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 35);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
	set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 55);
	set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
	set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
}