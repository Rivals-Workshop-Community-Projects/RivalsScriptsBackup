set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 6);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 128);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("slicew1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 128);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("slicew1"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 128);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("slicew1"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 128);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("slicew1"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 128);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 5, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("slicew1"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 120);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("sliceh1"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NAIR, 6, HG_HITSTUN_MULTIPLIER, 1);


