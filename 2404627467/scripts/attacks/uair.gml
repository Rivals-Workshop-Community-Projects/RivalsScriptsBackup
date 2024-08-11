set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 26);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 9);

//Early
//Close
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 59);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 74);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 74);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 121);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 78);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 74);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Clean
//Close
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 156);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 74);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -97);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 217);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 115);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 74);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -112);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 252);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 141);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 74);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Late
//Close
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, -16);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -4);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 44);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 106);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, -24);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, 13);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 62);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 62);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 106);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, -40);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, 48);
set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 112);
set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 69);
set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 106);
set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));