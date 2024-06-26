if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrongAcc"));
	set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrongAcc_hurt"));
	
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("vc_lucario_attack06"));
	
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	
	set_num_hitboxes(AT_FSTRONG, 2);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 88);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
	set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 94);
	set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
	set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
	
	set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 128);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -31);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 94);
	set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 70);
	set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
}
else
{
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
	set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
	set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
	
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
	
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
	
	set_num_hitboxes(AT_FSTRONG, 2);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
	set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 80);
	set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, aurabig_effect);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 40);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 20);
	set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, aurabig_effect);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
}