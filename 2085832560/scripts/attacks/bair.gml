set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_OFF_LEDGE, 1);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 11);


set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 1)
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_BAIR, 6, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_BAIR, 6, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 4)
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_BAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_BAIR, 7, AG_WINDOW_SFX_FRAME, 12);


set_window_value(AT_BAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 8, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_BAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_BAIR, 4);


set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 170);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 150);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("Cava"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 9);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("Cava"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, 3.5);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, -11);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 0);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);


set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 7);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 105);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 85);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_BAIR, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_swing_mega_instant"));