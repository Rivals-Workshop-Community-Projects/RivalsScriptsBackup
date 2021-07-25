set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Jab1
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

//Jab 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);

//Jab 3
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 40);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_JAB, 9, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_CANCEL_FRAME, 3);

set_num_hitboxes(AT_JAB, 3);
//Jab info
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 20);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, -34);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, -20);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, sprite_get("bowjab"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, 0.29);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 25);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, -34);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_SPRITE, sprite_get("bowjab"));
set_hitbox_value(AT_JAB, 4, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);