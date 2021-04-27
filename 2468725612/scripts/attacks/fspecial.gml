set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fspecial"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 7);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 8);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_FSPECIAL, 16);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("fspecial_grab"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 8);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FSPECIAL, 12, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_Y, -29);

set_hitbox_value(AT_FSPECIAL, 13, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_Y, -92);
set_hitbox_value(AT_FSPECIAL, 13, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 13, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 13, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 13, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 13, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_FSPECIAL, 13, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 13, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FSPECIAL, 13, HG_HIT_SFX, sound_get("fspecial_hit"));
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 14, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 14, HG_WINDOW, 3);
//set_hitbox_value(AT_FSPECIAL, 14, HG_WINDOW_CREATION_FRAME, 1); //2 em Dittos
set_hitbox_value(AT_FSPECIAL, 14, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FSPECIAL, 14, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL, 14, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL, 14, HG_PRIORITY, 7);
set_hitbox_value(AT_FSPECIAL, 14, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_HIT_SFX, sound_get("fspecial_grab"));
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 14, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_FSPECIAL, 15, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 15, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 15, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 15, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITBOX_X, 74);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITBOX_Y, -116);
set_hitbox_value(AT_FSPECIAL, 15, HG_WIDTH, 15);
set_hitbox_value(AT_FSPECIAL, 15, HG_HEIGHT, 15);
set_hitbox_value(AT_FSPECIAL, 15, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 15, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 15, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 15, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL, 15, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 15, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 15, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 15, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL, 15, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_FSPECIAL, 15, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 15, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 15, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 15, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 15, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_FSPECIAL, 16, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 16, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 16, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 16, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 16, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 16, HG_HITBOX_Y, -96);
set_hitbox_value(AT_FSPECIAL, 16, HG_WIDTH, 130);
set_hitbox_value(AT_FSPECIAL, 16, HG_HEIGHT, 130);
set_hitbox_value(AT_FSPECIAL, 16, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 16, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 16, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 16, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 16, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_FSPECIAL, 16, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 16, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 16, HG_HITPAUSE_SCALING, 20);
set_hitbox_value(AT_FSPECIAL, 16, HG_VISUAL_EFFECT, 130);