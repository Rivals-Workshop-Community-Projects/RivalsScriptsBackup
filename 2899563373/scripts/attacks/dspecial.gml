set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_barrier_spawn"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DSPECIAL, 1);

//grrr remove yourself from my presence
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_magichit_medium1"));

//ping pong
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 92);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3); //7
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_magichit_weak1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);

//beeeeeaaamu
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 95);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 170);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 1); //7
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("sfx_magichit_weak1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 0);