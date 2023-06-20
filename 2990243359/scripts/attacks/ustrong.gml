set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//Release
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("ustrong_swing"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

//Active 1
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Active 2
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 1);

//Active 3
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//Endlag Visual
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Endlag Whiff
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 11);

//Hand 1 (Out)
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 58);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 113);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

//Hand 1 (Up)
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 82);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

//Hand 2 (Up)
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -87);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 104);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

//Hand 2 (Behind)
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -49);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -52);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

//Hand 3 (Behind)
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -41);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 93);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

//Hand 3 (Up)
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, -24);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -87);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 66);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 39);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

//Trident 1 (Out)
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 34);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -67);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 69);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 141);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Trident 1 (Up)
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -124);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 77);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 47);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Trident 2 (Up)
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, -3);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -91);
set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 146);
set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 111);
set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 9, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 9, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 9, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Trident 3 (Behind)
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 10, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_X, -65);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USTRONG, 10, HG_WIDTH, 69);
set_hitbox_value(AT_USTRONG, 10, HG_HEIGHT, 120);
set_hitbox_value(AT_USTRONG, 10, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 10, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 10, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 10, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 10, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Trident 3 (Up)
set_hitbox_value(AT_USTRONG, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 11, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 11, HG_HITBOX_X, -17);
set_hitbox_value(AT_USTRONG, 11, HG_HITBOX_Y, -108);
set_hitbox_value(AT_USTRONG, 11, HG_WIDTH, 108);
set_hitbox_value(AT_USTRONG, 11, HG_HEIGHT, 74);
set_hitbox_value(AT_USTRONG, 11, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 11, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 11, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 11, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 11, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 11, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));