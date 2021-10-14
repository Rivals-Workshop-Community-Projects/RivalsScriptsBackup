set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 8);


set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 107);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 5);

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 127);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 4, HG_EXTRA_HITPAUSE, 5);


set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 127);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 5, HG_EXTRA_HITPAUSE, 5);


set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 127);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 6, HG_EXTRA_HITPAUSE, 5);


set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 127);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 2, HG_EXTRA_HITPAUSE, 5);


set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 137);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, .85);


set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 54);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 127);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 8, HG_HITSTUN_MULTIPLIER, 1);

