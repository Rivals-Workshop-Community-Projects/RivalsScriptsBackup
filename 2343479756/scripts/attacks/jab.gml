set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("swing_weak_1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);//5
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.4);//0.1
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("hit_gen_2"));