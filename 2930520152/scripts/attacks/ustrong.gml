set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_swing_h"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sound_get("sfx_sword_groundhit"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 6);

//early

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 100);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 100);

//late

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_USTRONG, 3, HG_EFFECT, 100);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -60);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 47);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 93);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 100);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_EFFECT, 100);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -38);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 44);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 44);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 100);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_USTRONG, 5, HG_EFFECT, 100);

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 70);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -85);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 6, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_USTRONG, 6, HG_EFFECT, 100);