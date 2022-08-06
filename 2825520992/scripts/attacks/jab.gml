set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 10);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Jab 1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);

//Jab 2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("sfx_spear_swing_4"));
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 7, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_CANCEL_FRAME, 2);

//Jab 3
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 23);


set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 24);


set_num_hitboxes(AT_JAB, 6);



set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 1.0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);



set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, .9);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);



set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);



set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);



set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);

;

set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 58);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 120);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 6, HG_SDI_MULTIPLIER, 1.0);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 2);

