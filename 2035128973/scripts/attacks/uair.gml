if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_UAIR, AG_CATEGORY, 1);
	set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uairAcc"));
	set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 0);
	set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uairAcc_hurt"));
	
	set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack02"));
	
	set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
	
	set_num_hitboxes(AT_UAIR,1);
	
	set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 7);
	set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -60);
	set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 74);
	set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 74);
	set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
}
else
{
	set_attack_value(AT_UAIR, AG_CATEGORY, 1);
	set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
	set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
	set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
	
	set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 10);
	
	set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
	
	set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_num_hitboxes(AT_UAIR, 3);
	
	set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -84);
	set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 120);
	set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 70);
	set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.8);
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 304);
	
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 58);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 90);
	set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 70);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 302);
	
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -58);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 90);
	set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 110);
	set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 302);
}