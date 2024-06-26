if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_NAIR, AG_CATEGORY, 1);
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("jumpAcc"));
	set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 0);
	set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("jumpAcc_hurt"));
	
	set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack02"));
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	
	set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
	set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_num_hitboxes(AT_NAIR, 3);
	
	set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 95);
	set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 95);
	set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	
	set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
	set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
	
	set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 12);
	set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 100);
	set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 100);
	set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .2);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
	set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
	set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
}
else
{
	set_attack_value(AT_NAIR, AG_CATEGORY, 1);
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
	set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
	set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
	
	set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
	
	set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
	
	set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 13);
	set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 6);
	
	set_num_hitboxes(AT_NAIR, 4);
	
	set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 26);
	set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -16);
	set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 65);
	set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 55);
	set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 135);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .25);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, .6);
	
	set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 53);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -12);
	set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 58);
	set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 42);
	set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .2);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, .5);
	
	set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
	set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -24);
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -41);
	set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 80);
	set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 64);
	set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
	set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 10);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .25);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, .6);
	
	set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 4);
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
	set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 26);
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -27);
	set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 70);
	set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 60);
	set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
	set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 361);
	set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
	set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
	set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
}