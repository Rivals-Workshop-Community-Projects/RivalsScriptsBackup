set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("swing_heavy_1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 3);

//behind or middle
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 74);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("hit_med_5"));

//front main hit
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 39);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 98);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);//7
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);//0.9
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("hit_strong_1"));

//ci
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -55);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 65);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 57);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);//7
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);//0.9
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("hit_strong_3"));










