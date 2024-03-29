set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FTILT, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 82);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 10);