set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_slash"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 8);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, rainbow_med);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -105);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, rainbow_med);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);



set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, rainbow_med);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 1);



set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);



set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, rainbow_larg);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 9);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 70);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 35);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 85);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, dark_med);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 8, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));