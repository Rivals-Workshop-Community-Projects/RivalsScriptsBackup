set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("wild_kick"));

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_NSPECIAL, 16);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 2);;
set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 26);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 31);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 7, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 36);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 8, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 41);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 9, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 46);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 10, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 51);
set_hitbox_value(AT_NSPECIAL, 11, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 11, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 56);
set_hitbox_value(AT_NSPECIAL, 12, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 12, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 12, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 12, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 12, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 12, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 12, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_WINDOW_CREATION_FRAME, 61);
set_hitbox_value(AT_NSPECIAL, 13, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 13, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 13, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 13, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 13, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 13, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 13, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_WINDOW_CREATION_FRAME, 66);
set_hitbox_value(AT_NSPECIAL, 14, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 14, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 14, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 14, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 14, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 14, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 14, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 14, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 15, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 15, HG_WINDOW_CREATION_FRAME, 71);
set_hitbox_value(AT_NSPECIAL, 15, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 15, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 15, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 15, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 15, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 15, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 15, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 15, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 15, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 15, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 15, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 15, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 15, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 15, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 16, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 16, HG_WINDOW_CREATION_FRAME, 76);
set_hitbox_value(AT_NSPECIAL, 16, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 16, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 16, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 16, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 16, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 16, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 16, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 16, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 16, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 16, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 16, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 16, HG_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 16, HG_HIT_SFX, asset_get("sfx_blow_strong2"));
set_hitbox_value(AT_NSPECIAL, 16, HG_IGNORES_PROJECTILES, 1);

if has_rune ("O")
{
    set_hitbox_value(AT_NSPECIAL, 16, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_NSPECIAL, 16, HG_KNOCKBACK_SCALING, 1);
}