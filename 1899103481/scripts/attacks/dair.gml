set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
// set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -2);
// set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -2);
// set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -2);
// set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -1);


set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -16);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -16);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -16);

set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 5); // has to be same number as this hitbox!
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 52);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 139);