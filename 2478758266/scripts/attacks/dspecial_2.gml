set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("pkfreeze"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("pkfreeze"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("pkfreeze_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -5);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("pkfreeze"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);




set_num_hitboxes(AT_DSPECIAL_2, 2);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -140);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 27);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, pkfreezeboom);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("pkfreezeice"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("pkfreezeice"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, sound_get("pkfreezehit"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, pkfreezeboomm );

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 56);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -105);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -122);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 35);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("colderstuff"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("colderstuff"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);