set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("ftilt_gus"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_gus_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 21);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 61);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE_FLIPPER, 6);