set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));


set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

	
	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 44);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);





set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 2000);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 2000);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, .1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 20);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 280);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 280);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, .1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 2000);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 2000);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, .1);
set_hitbox_value(AT_USPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE, 5);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 280);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 280);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, .1);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
