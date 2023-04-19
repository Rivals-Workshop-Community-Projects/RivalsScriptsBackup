//NSPECIAL MILK

set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 35);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, -0.1);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterwarp_start"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_milk"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .3);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 6);




