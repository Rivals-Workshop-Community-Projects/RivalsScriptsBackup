set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 4);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 84);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);