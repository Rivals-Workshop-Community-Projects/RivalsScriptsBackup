set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("super-stomp"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 2);

set_num_hitboxes(AT_USTRONG, 2);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("burnerblank"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

// LINGERING SMOKE
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -46);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -96);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 96);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, sprite_get("uair_proj"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("slam"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);


