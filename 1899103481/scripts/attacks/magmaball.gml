set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_EXTRA_1, 1);

// IS THIS FILE EVEN USED??

// set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("magma_explosion"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("jab"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 5);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 18);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1);
// set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);