set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_explosion_medium"));
// set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_USTRONG,1);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 6);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.2); // no idea
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USTRONG, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("turret_proj"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));