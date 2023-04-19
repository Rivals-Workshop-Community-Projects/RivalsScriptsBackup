set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);



//death hitboxes

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 240);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("graze"));
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_SPRITE, sprite_get("p"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_MASK, sprite_get("p"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GRAVITY, .39);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_AIR_FRICTION, .05);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GROUND_FRICTION, .4);