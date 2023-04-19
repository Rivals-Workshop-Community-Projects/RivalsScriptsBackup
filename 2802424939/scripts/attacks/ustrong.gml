set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USTRONG, AG_LANDING_LAG, 6);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -25);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -.5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, .25);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -.5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED, .25);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 8);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1)

set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("slash0"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USTRONG, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_USTRONG, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_USTRONG, 8, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 8, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, sound_get("slash5"));
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, 7);