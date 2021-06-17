set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//nas   naa1  nac1  naa2  nac2  nar
//0-1:2 2-2:1 3-3:1 4-4:1 5-5:1 6-7:2

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("swing1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, sound_get("swing3"));
//set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 6);//7
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 8);//16
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//nas   naa1  nac1  naa2  nac2  nar

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 68);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 123);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);//2
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 111);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("hit4"));

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 93);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 82);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);//4
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);//45
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("hit1"));





/*
//aerial
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 111);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.07);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//aerial
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 59);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 68);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 118);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.07);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 95);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 37);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 68);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.32);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 0.87);
set_hitbox_value(AT_NAIR, 3, HG_SDI_MULTIPLIER, 3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -21);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 19);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 39);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 47);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.32);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, 0.87);
set_hitbox_value(AT_NAIR, 4, HG_SDI_MULTIPLIER, 3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//grounded
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 27);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 26);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 111);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.07);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 5, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NAIR, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//grounded
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 59);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 68);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 118);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.07);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 6, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NAIR, 6, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
*/


























