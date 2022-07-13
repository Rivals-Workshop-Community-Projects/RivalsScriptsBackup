set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("uspecial_grapple"));
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("uspecial_grapple_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);

//swing
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//same as wallattack
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("bar_swing_med1"));
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED, -14);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.4);

set_num_hitboxes(AT_NSPECIAL_AIR, 5);

//multihit
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);

//launcher
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_GROUP, 3);

//initial swing
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_GROUP, 4);