set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));


set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);


set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 16, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 16, HG_LIFETIME, 60);
set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 16, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 16, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, 16, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 16, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 16, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 16, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 16, HG_KNOCKBACK_SCALING, 0.06);
set_hitbox_value(AT_USPECIAL, 16, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 16, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_DESTROY_EFFECT, 1 );
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_SPRITE, sprite_get("berry"));
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 16, HG_IGNORES_PROJECTILES, true);


