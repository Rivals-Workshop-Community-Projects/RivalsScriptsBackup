set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 10);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("jump2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -13);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_USPECIAL,6);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
//set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 27);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_EFFECT, 15 );
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
//set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 27);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 1);
//set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 20);
// set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip1"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

//GROUND CLEAN
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10)
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 2);
//set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 157 );

//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -60);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_LOCKOUT, 15);

//AIR CLEAN
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10)
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 2);
//set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 157 );

//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -60);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_LOCKOUT, 15);