set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_UAIR,2);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -104);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("sfx_sharphit_m"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 124);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("sfx_sharphit_s"));
set_hitbox_value(AT_UAIR, 2, HG_SDI_MULTIPLIER, 1)
set_hitbox_value(AT_UAIR, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);