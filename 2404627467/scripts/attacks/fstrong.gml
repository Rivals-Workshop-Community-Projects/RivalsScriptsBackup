set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 4);

//Close
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.85);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));


//Close (Early)
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -48);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 134);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 60);

//Mid
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 112);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit3"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.1);

//Far
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 144);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 54);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

