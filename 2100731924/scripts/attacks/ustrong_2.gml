set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_2"));
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_2_hurt"));
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_USTRONG_2, 1);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));