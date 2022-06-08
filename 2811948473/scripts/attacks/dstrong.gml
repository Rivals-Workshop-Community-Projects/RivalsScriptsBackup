set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("swipe5"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 4.5);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 144);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 17);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("snapcubefunnymoments"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.35);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0.03);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);