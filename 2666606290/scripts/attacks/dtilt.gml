set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_jab2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8); // 10
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7); // 7
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));