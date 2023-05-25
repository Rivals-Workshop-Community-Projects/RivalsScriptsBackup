set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 100);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("bigheart"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.10);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, sound_get("appear"));

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_SFX, sound_get("stupidsexymolecule"));
set_window_value(AT_UTHROW, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_SFX, sound_get("poof"));

set_window_value(AT_UTHROW, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_UTHROW, 3);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -0);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("poof2"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0.03);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -0);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_SPRITE, sprite_get("poof2"));
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_AIR_FRICTION, 0.03);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -21);
set_hitbox_value(AT_UTHROW, 3, HG_WIDTH, 20);
set_hitbox_value(AT_UTHROW, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_UTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 3, HG_EFFECT, 1);
set_hitbox_value(AT_UTHROW, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_UTHROW, 3, HG_DAMAGE, 28);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTHROW, 3, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_HITPAUSE, 100);
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT, heartFX);
set_hitbox_value(AT_UTHROW, 3, HG_HIT_SFX, sound_get( "homerun" ));
set_hitbox_value(AT_UTHROW, 3, HG_ANGLE, 100);
set_hitbox_value(AT_UTHROW, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, 1);