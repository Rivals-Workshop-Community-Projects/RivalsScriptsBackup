set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_1"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.4);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_FSPECIAL, 3);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 92);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);



set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 999);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 92);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 0.1);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 86);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_coin_capture"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 1);