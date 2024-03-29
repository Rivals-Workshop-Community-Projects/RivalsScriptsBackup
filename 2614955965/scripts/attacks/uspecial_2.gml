set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));
//set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -7);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_USPECIAL_2, 11);

//set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 6, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 7, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 7, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_USPECIAL_2, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 8, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 8, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL_2, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 9, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_USPECIAL_2, 9, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 9, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL_2, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 10, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 10, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HIT_SFX, sound_get("hit1"));
//set_hitbox_value(AT_USPECIAL_2, 10, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 10, HG_TECHABLE, 1);

//set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 11, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 11, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_X, -9);
set_hitbox_value(AT_USPECIAL_2, 11, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 11, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 11, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 11, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_2, 11, HG_VISUAL_EFFECT, 196);
//set_hitbox_value(AT_USPECIAL_2, 11, HG_EFFECT, 11);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HIT_SFX, sound_get("hit3"));
//set_hitbox_value(AT_USPECIAL_2, 11, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_2, 11, HG_TECHABLE, 1);

