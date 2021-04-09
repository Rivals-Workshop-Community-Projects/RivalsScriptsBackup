set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));


set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("SGL2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, sound_get("SGF"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, sound_get("SGF"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, sound_get("SGF"));
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_NAIR, 5, AG_WINDOW_HSPEED, -6);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX, sound_get("SGL"));
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NAIR, 6, AG_WINDOW_SFX, sound_get("SGL"));
set_window_value(AT_NAIR, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_NAIR, 6);


set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X,  0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X,  -10);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 330);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 2, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X,  10);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 350);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 3, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -74);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 56);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, 2);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 76);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 42);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NAIR, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -46);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 74);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 140);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NAIR, 6, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
