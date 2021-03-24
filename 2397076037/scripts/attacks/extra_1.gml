set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("extra1_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("SpaceCutB"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_gus_land"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 6);





set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 22);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 2000);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true );

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 21);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 20);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_IS_TRANSCENDENT, true );
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 180);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 180);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_IS_TRANSCENDENT, true );
