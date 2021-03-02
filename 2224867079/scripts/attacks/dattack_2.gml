/*
set_attack_value(AT_DATTACK_2, AG_SPRITE, sprite_get("red_dattack"));
set_attack_value(AT_DATTACK_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK_2, AG_AIR_SPRITE, sprite_get("red_dattack"));
set_attack_value(AT_DATTACK_2, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));

set_window_value(AT_DATTACK_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);

set_window_value(AT_DATTACK_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK_2, 1);

set_hitbox_value(AT_DATTACK_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK_2, 1, HG_WIDTH, 102);
set_hitbox_value(AT_DATTACK_2, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DATTACK_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DATTACK_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));