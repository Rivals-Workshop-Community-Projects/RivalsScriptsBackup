//NSPECIAL APPLE

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 25);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 315);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_apple"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 311);




