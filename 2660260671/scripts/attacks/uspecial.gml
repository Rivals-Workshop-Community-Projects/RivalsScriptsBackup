set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("tornado"));;
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("skit"));;
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 29);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, smallhit );
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, smallhit);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("firespin"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.38);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.05);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, smallhit );

set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 78);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("fire_hit_small"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, smallhit );
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, smallhit);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 78);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 63);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("fire_hit_small"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, smallhit );
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, smallhit);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 78);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 63);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("fire_hit_small"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, smallhit );
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, smallhit);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 78);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 63);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("fire_hit_large"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, smallhit );
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, smallhit);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 1);