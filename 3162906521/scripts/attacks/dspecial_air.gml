set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

//startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//active
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
// set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -6);
// set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));

//endlag
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DSPECIAL_AIR, 0);

//sweetspot
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
