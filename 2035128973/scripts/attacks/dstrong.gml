if (get_synced_var(player))
{
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongAcc"));
	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrongAcc_hurt"));
	
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
	
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("vc_lucario_attack07"));
	
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	
	set_num_hitboxes(AT_DSTRONG,1);
	
	set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 5);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
	set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 160);
	set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
	set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 30);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 3);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
}
else
{
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 14);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));

	set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

	set_num_hitboxes(AT_DSTRONG, 2);

	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -56);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -26);
	set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 100);
	set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 38);
	set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.85);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.85);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, aurabig_effect);
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);

	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 52);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -26);
	set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 100);
	set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 38);
	set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.85);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.85);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, aurabig_effect);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
}