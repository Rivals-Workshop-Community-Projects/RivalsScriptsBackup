set_attack_value(AT_BAIR, AG_CATEGORY, 2);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_new_test"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_new_test_hurt"));

/*set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//*/


set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//*/

set_num_hitboxes(AT_BAIR, 7);

//sweetspot
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 4);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 4);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 5);

//sour
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 24);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 5);

//leg
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 5);

//crackshoot 1
set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 1);

//crackshoot 2
set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 4);

//crackshoot 3
set_hitbox_value(AT_BAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, 28);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 8);

//besplode
set_hitbox_value(AT_BAIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_BAIR, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 10);
set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_BAIR, 7, HG_WIDTH, 44);
set_hitbox_value(AT_BAIR, 7, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 7, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 7, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 7, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 7, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_BAIR, 7, HG_HIT_LOCKOUT, 5);
/*set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -24);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 54);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 180-35);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -24);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 1);//*/