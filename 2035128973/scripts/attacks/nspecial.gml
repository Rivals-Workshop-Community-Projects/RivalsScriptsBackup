if (get_synced_var(player))
{
	set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("ftiltAcc"));
	set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
	set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("ftiltAcc_hurt"));
	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("vc_lucario_003"));
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("se_lucario_special_N06_s"));
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
	
	set_num_hitboxes(AT_NSPECIAL, 2);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -30);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 1000);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -30);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -36);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 4);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 30);
}
else
{
	set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
	set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("se_lucario_special_N06_s"));
	
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -2);
	
	set_num_hitboxes(AT_NSPECIAL, 2);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -26);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
	set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 100);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 30);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
	set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, aurabig_effect);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, aurabig_effect);
}