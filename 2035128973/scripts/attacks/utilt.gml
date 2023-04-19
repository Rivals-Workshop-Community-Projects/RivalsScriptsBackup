if (get_synced_var(player))
{
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utiltAcc"));
	set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utiltAcc_hurt"));
	
	set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack04"));
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	
	set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	
	set_num_hitboxes(AT_UTILT, 3);
	
	set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -20);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .45);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	
	set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
	set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
	set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 50);
	set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .45);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	
	set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
	set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 50);
	set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 50);
	set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 50);
	set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 270);
	set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .45);
	set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
else
{
	set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_boneless"));
	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_boneless_hurt"));
	
	set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);
	
	set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	
	set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	
	set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
	
	set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
	set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_num_hitboxes(AT_UTILT, 3);
	
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -20);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 44);
	set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
	set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
	
	set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
	set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -85);
	set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 80);
	set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 34);
	set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
	
	set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
	set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
	set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 34);
	set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -44);
	set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 52);
	set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 84);
	set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 270);
	set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 305);
}