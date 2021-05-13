set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_VSPEED, -0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 55);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .02);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, sound_get("upb"));

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_USPECIAL_GROUND, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 500);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_MASK, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_ANIM_SPEED, .20);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, sound_get("bash"));