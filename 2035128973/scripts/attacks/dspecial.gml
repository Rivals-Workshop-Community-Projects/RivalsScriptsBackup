if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecialAcc"));
	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecialAcc_hurt"));
	set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
	
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("teleport"));
	
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 9);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
	
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 9);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2); 
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
	
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
	
	
	set_num_hitboxes(AT_DSPECIAL, 2);
	
	set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 34);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -38);
	set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 58);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 32);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.7);
	set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	
	set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 9);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 12);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -16);
	set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 48);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 16);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 16);
	set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 361);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.7);
	set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 5);
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
else
{
	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 3);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -8);

	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 8);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 6);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 15);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 10);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 6);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 15);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 30);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));

	var temp_attack = AT_DSPECIAL;
	var temp_num = 1;

	set_num_hitboxes(temp_attack, 3);

	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 9000);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 15);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 50);
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, -75);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_HITPAUSE, -4);
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(temp_attack, temp_num, HG_GROUNDEDNESS, 2);
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(temp_attack, temp_num, HG_TECHABLE, 3);
	set_hitbox_value(temp_attack, temp_num, HG_FORCE_FLINCH, 1);

	temp_num += 1;

	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 9000);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 15);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 50);
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, -75);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_HITPAUSE, -4);
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(temp_attack, temp_num, HG_GROUNDEDNESS, 1);
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(temp_attack, temp_num, HG_FORCE_FLINCH, 1);

	temp_num += 1;

	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 5);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 15);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -13);
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 120);
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 30);
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 10);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .55);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .75);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, 0);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 4);
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);
	set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .90);
}