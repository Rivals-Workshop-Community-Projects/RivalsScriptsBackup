set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);


set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 4);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 94);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 94);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 96);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6 );
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7 );
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
