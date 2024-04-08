if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_BAIR, AG_CATEGORY, 1);
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bairAcc"));
	set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 0);
	set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bairAcc_hurt"));
	
	set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("vc_lucario_attack04"));
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);
	
	set_num_hitboxes(AT_BAIR, 1);
	
	set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
	set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 80);
	set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 145);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
}
else
{
	set_attack_value(AT_BAIR, AG_CATEGORY, 1);
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
	set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);

	set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);
	set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);

	set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 1);

	set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(AT_BAIR, 2);

	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -42);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -34);
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
	set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
	set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7.5);
	set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.75);
	set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -24);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, aurabig_effect);
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

	set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 6);
	set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -50);
	set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -34);
	set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 70);
	set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 50);
	set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.4);
	set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
	set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, aura_effect);
	set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -24);
	set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
}