set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
// set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -2);
// set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_fist_explode"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -3);
// set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
// set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
// set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);
// set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7); // search kragg values
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
// set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 2);
