if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_FAIR, AG_CATEGORY, 1);
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("jabAcc"));
	set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 0);
	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("jabAcc_hurt"));
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack03"));
	
	set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 0);
	set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
	
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 0);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
	
	set_num_hitboxes(AT_FAIR, 1);
	
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
	set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 40);
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -45);
	set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
	set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 80);
	set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 60);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 5);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
else
{
	set_attack_value(AT_FAIR, AG_CATEGORY, 1);
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
	set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

	set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
	set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);

	set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(AT_FAIR, 3);

	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 45); 
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
	set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 90);
	set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7.5);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .9);
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);

	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 1);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 40); 
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -10);
	set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 80);
	set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 75);
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 69);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

	set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
	set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30); 
	set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 50);
	set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 90);
	set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 69);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .3);
	set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);
}