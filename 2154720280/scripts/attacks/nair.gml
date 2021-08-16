set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);