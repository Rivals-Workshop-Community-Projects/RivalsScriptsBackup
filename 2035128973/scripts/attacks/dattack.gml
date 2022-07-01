if (get_synced_var(player))
{
	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattackAcc"));
	set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattackAcc_hurt"));
	
	set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_owl2"));
	
	set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
	
	set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 12);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 7);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2); 
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
	
	set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
	
	set_num_hitboxes(AT_DATTACK, 2);
	
	set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 9);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 34);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -38);
	set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 58);
	set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 32);
	set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 0.7);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 5);
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DATTACK, 1, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	
	set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
	set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 9);
	set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 12);
	set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -16);
	set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 48);
	set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 16);
	set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
	set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 0.7);
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 5);
	set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DATTACK, 2, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
else
{
	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
	set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
	set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

	set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));

	set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

	set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 12);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 7);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2); 
	set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

	set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 13);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(AT_DATTACK, 1);

	set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 9);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 24);
	set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -25);
	set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 68);
	set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 38);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}