set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);


//usts1 usts2 usta1 usta2 usta3 | ustantc ustatk4 usthold ustrcv1 ustrcv2
//0-2:3 3-3:1 4-4:1 5-8:4 9-9:1 | 10-10:1 11-11:1 12-14:3 15-16:2 17-17:1

var activate_friction = true;
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, activate_friction);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);//0.45

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, activate_friction);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);//0.45

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, activate_friction);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);//0.3

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);//16
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, activate_friction);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);//0.3

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, activate_friction);
set_window_value(AT_USTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);//0.3

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, sound_get("EnemySword"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 10);//14
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 10);//14
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 6);//8
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 5); 

//pop up
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 89);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 52);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 104);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);//4//8
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.4);//0.5//0.6
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("hit4"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -101);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 138);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 140);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);//5
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.25);//0.5
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("BadBlade"));

//second-to-last
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 13);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -113);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 123);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 57);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);//1
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 30);//20//340
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 4);//3//5
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 12);//6
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.8);//0.5
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("hit4"));

//final
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 73);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -74);//-74//-86
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 158);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 75);//75//54
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 4);//3
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);//79
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);//9
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.05);//0.94//0.98//1.1//1.05//1.0
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("hit1"));

//pop up extend
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 51);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 58);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 39);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("hit4"));









