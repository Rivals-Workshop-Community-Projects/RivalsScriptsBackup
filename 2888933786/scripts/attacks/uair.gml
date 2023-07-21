set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("ground"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));


set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, sound_get("pop"));

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, 3);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_UAIR, 2);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -250);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 0);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("vfx"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, -6);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -190);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 260);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_UAIR, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_VSPEED, -2);