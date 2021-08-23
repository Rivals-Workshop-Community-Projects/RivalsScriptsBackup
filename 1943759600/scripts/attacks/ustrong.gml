set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 420); //This makes it cancel inside the gem field
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_USTRONG,3);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 37);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0.1);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 37);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 125);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 0.1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 69);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 69);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, olym_hit);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 1);


