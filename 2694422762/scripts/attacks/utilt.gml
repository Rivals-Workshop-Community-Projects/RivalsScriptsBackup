set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);


set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTILT, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -48);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));