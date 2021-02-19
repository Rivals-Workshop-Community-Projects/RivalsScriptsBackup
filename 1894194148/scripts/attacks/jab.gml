//AR JAB
//spaghetti

set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//j1 0 - j2 4 - j3 11
//j1a j1r j2s j2a j2h j2r  j3s   j3a   j3h   j3r
//0-1 2-3 4-5 6-6 7-7 8-10 11-12 13-13 14-14 15-17

//set_window_value(AT_JAB, 0, AG_WINDOW_LENGTH, 2); //4
//set_window_value(AT_JAB, 0, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(AT_JAB, 0, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_JAB, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10); //12
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

//j2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3); //4
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 5); //6
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 13); //16
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//j3
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4); //5
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 10); //11
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 20); //23
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

//j1
//1 x:17 y:-37 w:20 h:12 priority
//2 x:28 y:-37 w:20 h:12

//j1 0 - j2 4 - j3 11
//j1a j1r j2s j2a j2h j2r  j3s   j3a   j3h   j3r
//0-1 2-3 4-5 6-6 7-7 8-10 11-12 13-13 14-14 15-17

set_num_hitboxes(AT_JAB, 8);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 38);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);//1.8
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1); //1.8
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//2nd hitbox remove'd

//j2
//3 x:37 y:-33 w:23 h:21 priority
//4 x:53 y:-33 w:23 h:21

//j1 0 - j2 4 - j3 11
//j1a j1r j2s j2a j2h j2r  j3s   j3a   j3h   j3r
//0-1 2-3 4-5 6-6 7-7 8-10 11-12 13-13 14-14 15-17

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 37);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 29);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 82);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 4);//1.8
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 1.2); //1.8
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//4th hitbox remove'd

//j3
//5 x:34 y:-49 w:70 h:29 priority
//6 x:68 y:-39 w:22 h:24 sweetspot!

//j1 0 - j2 4 - j3 11
//j1a j1r j2s j2a j2h j2r  j3s   j3a   j3h   j3r
//0-1 2-3 4-5 6-6 7-7 8-10 11-12 13-13 14-14 15-17

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -49);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 29);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 4); //6
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 80);//45);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 6);//2
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .35);//1.1
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sound_get("ARSlash")); //sfx_blow_medium1

set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 68);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -39);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 22);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 24);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 70);//64
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 6, HG_ANGLE_FLIPPER, 5);//6
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 6);//3
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, .35);//2
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_ice_back_air"));

//extras


//j2 extend
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 8);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -19);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 58);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 19);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 88);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 8, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 4);//1.8
set_hitbox_value(AT_JAB, 8, HG_HITSTUN_MULTIPLIER, 1); //1.8
set_hitbox_value(AT_JAB, 8, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));








