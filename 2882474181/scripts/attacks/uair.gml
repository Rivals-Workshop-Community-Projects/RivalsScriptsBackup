set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -2);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit_punch2"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -13);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -71);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 73);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 87);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("hit_punch2"));

// jon
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 7);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 50);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_UAIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("jon"));
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_VSPEED, 10);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_UNBASHABLE, 1);