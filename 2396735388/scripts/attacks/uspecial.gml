set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 14);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .35);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, -100);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 115);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .2);
//set_hitbox_value(AT_USPECIAL, 3, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 115);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);

//ground startup

set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_GROUND, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_LANDING_LAG, 14);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GRAVITY, .35);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_USPECIAL_GROUND, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 135);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));