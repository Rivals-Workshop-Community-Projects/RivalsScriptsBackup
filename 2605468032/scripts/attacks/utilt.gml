set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTILT, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -122);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 32);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 47);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 134);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
