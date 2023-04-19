set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("blaze_kick_swing"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("pokken_swing5"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 8);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 99);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, zetter_hit1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("hit_fire"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 104);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, zetter_hit1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("hit_fire"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 108);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, zetter_hit1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("hit_fire"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 102);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, zetter_hit3);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("hit_fire_strong"));
//set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 105);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, zetter_hit1);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("hit_fire"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 110);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, zetter_hit1);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("hit_fire"));
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 120);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, zetter_hit3);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("hit_fire_strong"));
//set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 4);