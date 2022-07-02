set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 4);


set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("ididitlikethis"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, sound_get("oeug"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.28);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("fsmashshot"))
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("fsmashshot"));

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 106);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 49);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 85);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("holy_mackerel1"));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_THROWS_ROCK, 1); //head

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0.28);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 18);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("fsmashsour"))
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("fsmashsour"));