//nthrow.gml
//nair2.



set_attack_value(AT_NTHROW, AG_CATEGORY, 1);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_LANDING_LAG, 6);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("nair"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 23);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 31);

set_num_hitboxes(AT_NTHROW,3);


set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 84);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 180);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 84);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 35);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 48);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 84);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_GROUP, 4);

