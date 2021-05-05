set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);

set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("RI"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);







set_num_hitboxes(AT_DSPECIAL, 5);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6); 
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 136);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 136);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.03);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 3000);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 6); 
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.4);


set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3); 
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.4);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3); 
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.4);