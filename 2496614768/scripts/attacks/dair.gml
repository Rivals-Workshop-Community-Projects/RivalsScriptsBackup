set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("air_box"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR,4);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));	
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0.01);


set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));	
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 0.01);


set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 26);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));	
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 3, HG_SDI_MULTIPLIER, 0.01);


set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));	
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 4, HG_SDI_MULTIPLIER, 0.01);