set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("hammer hit single"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

//hit 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//startup hit 2
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("hammer hit single"));

//hit 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);

//startup hit 3
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX, sound_get("hammer hit single"));

//hit 3
set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//that oughta do it!
set_window_value(AT_DSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_DSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 90);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_DSTRONG, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_DSTRONG, 4);

//finisher
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 170);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 0);

//hit 1
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 150);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 3);

//hit 2
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 150);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 3);

//sign
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("dstrong_sign"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSTRONG, 4, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);