// Mc. Lazer

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("taunt"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("empty"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("supercombo"));

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, sound_get("lazercharge"));


set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, -12);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.75);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.75);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX, sound_get("lazerfire"));

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.75);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);



set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 800);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 1700);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT_X_OFFSET, -200);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_TECHABLE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_SDI_MULTIPLIER, 0.6);


set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 1700);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, -200);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 160);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 160);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_TECHABLE, 1);