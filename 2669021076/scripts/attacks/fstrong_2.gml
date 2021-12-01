set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_2_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 9);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 76);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));