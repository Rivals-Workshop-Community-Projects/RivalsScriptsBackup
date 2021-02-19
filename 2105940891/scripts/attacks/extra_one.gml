set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .05);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .05);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);

//this is solely for Abyss Runes