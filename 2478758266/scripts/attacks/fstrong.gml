set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("swingb"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG,2);

set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 21);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("jabb"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 19);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 17);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("jabc"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);
