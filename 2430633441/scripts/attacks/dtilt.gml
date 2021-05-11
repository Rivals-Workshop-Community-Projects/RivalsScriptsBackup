set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_propeller_dagger_release"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));


set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,3);

var i = 1;
set_hitbox_value(AT_DTILT, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, i, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, i, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, i, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, i, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, i, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, i, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, i, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, i, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, i, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, i, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, i, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, i, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, i, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_DTILT, i, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, i, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));
set_hitbox_value(AT_DTILT, i, HG_ANGLE_FLIPPER, 2);
i = 2;
set_hitbox_value(AT_DTILT, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, i, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, i, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, i, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, i, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, i, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, i, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, i, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, i, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, i, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, i, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, i, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, i, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, i, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, i, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, i, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));
set_hitbox_value(AT_DTILT, i, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, i, HG_ANGLE_FLIPPER, 2);
i = 3;
set_hitbox_value(AT_DTILT, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, i, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, i, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, i, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, i, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, i, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, i, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, i, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, i, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, i, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, i, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, i, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, i, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, i, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, i, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, i, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, i, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, i, HG_HIT_SFX, asset_get("sfx_ori_sein_fstrong_hit"));
set_hitbox_value(AT_DTILT, i, HG_HITBOX_GROUP, 2);