set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CANCEL_FRAME, -99);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CANCEL_FRAME, -99);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CANCEL_FRAME, -99);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_FSTRONG, 4, AG_ACTIVE_WINDOW, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 120);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 154);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, hfx_sword_large);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 148);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, hfx_sword_large);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);