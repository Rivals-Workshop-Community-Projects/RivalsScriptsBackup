set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 999);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false)
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("letterfly_vfx"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -4);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);

