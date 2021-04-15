set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("air_box"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_weak"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);


set_num_hitboxes(AT_DAIR,2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 28);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));	
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_DRIFT_MULTIPLIER, 0.1);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.1);

