set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 7);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 99); // 20
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2); // 3
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 99); // 20
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6); // 3
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
