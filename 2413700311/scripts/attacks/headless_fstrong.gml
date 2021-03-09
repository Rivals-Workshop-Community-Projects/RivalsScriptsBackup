set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("headless_fstrong"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("headless_fstrong_hurt"));

//----------------------------------------------------------
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("fstr2"));

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_SFX, sound_get("fstr"));

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//-----------------------------------------------------------
set_num_hitboxes(AT_FSTRONG_2,1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, -1);