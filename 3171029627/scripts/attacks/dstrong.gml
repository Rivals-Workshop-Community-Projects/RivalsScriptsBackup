set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Release
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_GOTO, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CANCEL_FRAME, -99);

//Active Off-Ledge
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_DSTRONG, 3, AG_ACTIVE_WINDOW, 1);

//Endlag Off-Ledge
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 8);

//Active Stage
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_DSTRONG, 5, AG_ACTIVE_WINDOW, 1);

//Endlag Stage
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 6);

//Off-Ledge 1
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 67);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 87);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Off-Ledge 2
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 122);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 61);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 39);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Off-Ledge 3 (Tipper)
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 166);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 44);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 37);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, hfx_torment_large);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("dbd_weapon_hit1"));

//Stage 1
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 67);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 87);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Stage 2
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 122);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 61);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 39);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Stage 3 (Tipper)
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 170);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 59);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 53);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, hfx_torment_large);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("dbd_weapon_hit1"));