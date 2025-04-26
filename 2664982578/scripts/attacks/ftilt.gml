set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 9);

//attack
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_FTILT, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 1);