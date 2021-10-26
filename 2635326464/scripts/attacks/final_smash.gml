set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 1);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));

//Use 1
set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("starman_get"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(49, 0);

set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Starman");

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_WINDOW, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 5);
set_hitbox_value(49, 1, HG_HITBOX_X, 4);
set_hitbox_value(49, 1, HG_HITBOX_Y, -28);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_WIDTH, 88);
set_hitbox_value(49, 1, HG_HEIGHT, 64);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 7);
set_hitbox_value(49, 1, HG_ANGLE, 60);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(49, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_attack_value(49, AG_MUNO_ATTACK_MISC_ADD, "The hitbox loops btw. The move last for about 10 seconds.");