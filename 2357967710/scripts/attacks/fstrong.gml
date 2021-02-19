set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_FSTRONG,0);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, -25);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 115);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 35);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
