set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_NAIR, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Active
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_NAIR, 2, AG_ACTIVE_WINDOW, 1);

//Endlag
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 6);

//Active 1
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, 15);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 109);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, hfx_sword_small);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));

//Active 1 (Back)
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -70);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 41);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, hfx_sword_small);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));

//Active 2
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 77);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 86);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 202);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, hfx_sword_small);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));

//Active 2 (Bottom)
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, 32);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 133);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, hfx_sword_small);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));

//Active 3
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -126);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 186);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 113);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, hfx_sword_small);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));

//Active 3 (Front)
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 85);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -65);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 63);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 178);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, hfx_sword_small);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));