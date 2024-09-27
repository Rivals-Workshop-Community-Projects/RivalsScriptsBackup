set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Jab1
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

//Jab 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("bloodlight2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);

//Jab3
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("motor1"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 6);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_JAB, 9);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90); //?
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, true);;

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 62);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 67);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);




set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 77);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 98);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("Med Slash"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, true);;

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 93);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, BloodFX1);

set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 3);


set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 93);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 7, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 4);


set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 93);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 8, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 8, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 5);


set_hitbox_value(AT_JAB, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 9, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 9, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, -52);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 9, HG_WIDTH, 93);
set_hitbox_value(AT_JAB, 9, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 9, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 9, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 9, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 9, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_JAB, 9, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_JAB, 9, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_JAB, 9, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_JAB, 9, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_GROUP, 6);
