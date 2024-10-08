set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_orcane_fspecial"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 1, HG_EFFECT, has_rune("M"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 58);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_swish_weak"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 2, HG_EFFECT, has_rune("M"));

