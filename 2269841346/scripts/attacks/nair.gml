set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));


set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);



set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 4);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 42);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 46);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 17);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 22);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 17);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 46);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);