set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("nspecial_air"))
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_FTHROW, 1);


set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X,  100);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 98);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true );


set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_X,  100);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 3, HG_WIDTH, 116);
set_hitbox_value(AT_FTHROW, 3, HG_HEIGHT, 116);
set_hitbox_value(AT_FTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTHROW, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FTHROW, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FTHROW, 3, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, true );


set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X,  100);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 76);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_FTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, true );


set_hitbox_value(AT_FTHROW, 19, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 19, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 19, HG_LIFETIME, 50);
set_hitbox_value(AT_FTHROW, 19, HG_HITBOX_X,  100);
set_hitbox_value(AT_FTHROW, 19, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 19, HG_WIDTH, 200);
set_hitbox_value(AT_FTHROW, 19, HG_HEIGHT, 200);
set_hitbox_value(AT_FTHROW, 19, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 19, HG_PRIORITY, 9);
set_hitbox_value(AT_FTHROW, 19, HG_DAMAGE, 10);
set_hitbox_value(AT_FTHROW, 19, HG_ANGLE, 40);
set_hitbox_value(AT_FTHROW, 19, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTHROW, 19, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTHROW, 19, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTHROW, 19, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_SPRITE, sprite_get("wavebig"));
set_hitbox_value(AT_FTHROW, 19, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTHROW, 19, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FTHROW, 19, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 19, HG_PROJECTILE_IS_TRANSCENDENT, true );

