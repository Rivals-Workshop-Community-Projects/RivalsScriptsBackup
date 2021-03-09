set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("headless_dstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 3);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("headless_dstrong_hurt"));

//----------------------------------------------------------
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, sound_get("fstr2"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));

set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 21);

set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_ANIM_FRAME_START, 22);

//-----------------------------------------------------------
set_num_hitboxes(AT_DSTRONG_2,1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 300);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, -1);