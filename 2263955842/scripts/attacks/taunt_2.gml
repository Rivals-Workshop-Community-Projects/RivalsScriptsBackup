// BAD APPLE TAUNT
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("badapple"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("paletaunt_hurt"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 23);


set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 28);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 70);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 160);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("apple"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_HSPEED, -4.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0.05);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);



