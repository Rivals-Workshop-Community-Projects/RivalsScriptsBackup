set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 256);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_crackle"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 4);