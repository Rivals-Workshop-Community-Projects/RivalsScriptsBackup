set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_spring"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -7.5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 53);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("spring_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("spring_air"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("spring_air"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 136);