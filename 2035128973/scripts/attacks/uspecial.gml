if (get_synced_var(player))
{
	set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("walkturnAcc"));
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("walkturnAcc_hurt"));
	set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
	
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("se_lucario_special_H02"));
	
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
	
	set_num_hitboxes(AT_USPECIAL, 1);
	
	set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 10);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -33);
	set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 120);
	set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 120);
	set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
}
else
{
	set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
	
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
	
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	
	set_num_hitboxes(AT_USPECIAL, 0);
	
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 120);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -26);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -53);
	set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("boneProj"));
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("boneProj_mask"));
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, .25);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
	set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
}