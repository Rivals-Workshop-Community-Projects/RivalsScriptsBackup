set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_BAIR, 4);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 115);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -25);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -35);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 115);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 6);