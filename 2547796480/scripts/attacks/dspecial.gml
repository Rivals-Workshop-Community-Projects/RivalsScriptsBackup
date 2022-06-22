set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));


set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 7*4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));




set_num_hitboxes(AT_DSPECIAL, 0);


set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.06);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1 );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("bdrop"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("bdrop2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);