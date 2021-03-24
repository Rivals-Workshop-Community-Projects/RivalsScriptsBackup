set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialair"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_COOLDOWN, -9999);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 1);


set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("uspecialfrogspawn"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecialfrogthing"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 400);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 44);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("uspecialfrogopponentlaunch"));
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);