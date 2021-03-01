set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 3);

//Close
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.05);

//Mid
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 104);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1.1);

//Far
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 128);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_FTILT, 3, HG_HITSTUN_MULTIPLIER, 1.05);
