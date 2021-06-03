set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_bubblespray"));
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_UAIR,1);

set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 8);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 1, HG_FINAL_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 12);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("bubbles"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_GRAVITY, -0.1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
