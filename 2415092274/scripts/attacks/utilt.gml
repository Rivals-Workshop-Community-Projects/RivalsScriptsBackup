// AR UTILT [WIP]

set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// uts   uta   uth   utr 
// 0-1:2 2-2:1 3-4:2 5-7:3

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 3);//8
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_land_light"));

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5);//3
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);//10//7
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 8);//17//9
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//1: x:-3 y:-80 w:38 h:38
//2: x:-2 y:-10 w:62 h:22 - low hit trying to connect to 1
//3: x:-9 y:-52 w:21 h:43 - arm

set_num_hitboxes(AT_UTILT, 5);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);//5
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);//89
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);//6//8
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.4);//.8
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);//3
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.2);//.6
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 2);//3
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);//1.2
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 2);//1
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_shine")); //sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);//5
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);//89
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 4);//6//8
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.4);//.8
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 3);//3
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.2);//.6
set_hitbox_value(AT_UTILT, 4, HG_EXTRA_HITPAUSE, 1);//3
set_hitbox_value(AT_UTILT, 4, HG_HITSTUN_MULTIPLIER, 1);//1.2
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 3);//1
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_boss_shine")); //sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);//5
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);//89
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 8);//6
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.4);//.8
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);//3
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.35);//.6
set_hitbox_value(AT_UTILT, 5, HG_EXTRA_HITPAUSE, 1);//3
set_hitbox_value(AT_UTILT, 5, HG_HITSTUN_MULTIPLIER, 1);//1.2
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 4);//1
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_boss_shine")); //sfx_blow_medium2"));

//this seems to be the body hit
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);//-2
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);//1
//set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 44);//62
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 8);//1
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);//1
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 4);//60
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 110);//60
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);//4.5
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.1);//0
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 4);//1.8
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);//2
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//1: x:-3 y:-80 w:38 h:38
//2: x:-2 y:-10 w:62 h:22 - low hit trying to connect to 1
//3: x:-9 y:-52 w:21 h:43 - arm
/*
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -9);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -42);//-52
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 31);//21
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 64);//44
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);//3
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 70);//40
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);//4
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.1);//.5
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 4);//1
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));*/











