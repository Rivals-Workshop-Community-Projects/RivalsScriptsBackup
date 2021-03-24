set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(49, 1, AG_WINDOW_TYPE, 1); // startup
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("shing"));

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 20);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(49, 3, AG_WINDOW_TYPE, 1); // cutscene
set_window_value(49, 3, AG_WINDOW_LENGTH, 150);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(49, 4, AG_WINDOW_TYPE, 1); // endlag
set_window_value(49, 4, AG_WINDOW_LENGTH, 16);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_LIFETIME, 1);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 100);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, 0);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_WIDTH, room_width);
set_hitbox_value(49, 1, HG_HEIGHT, room_height);
set_hitbox_value(49, 1, HG_PRIORITY, 9);
set_hitbox_value(49, 1, HG_DAMAGE, 45);
set_hitbox_value(49, 1, HG_ANGLE, 30);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 30);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 66);
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 1, HG_TECHABLE, 0);
set_hitbox_value(49, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(49, 1, HG_TECHABLE, 1);
set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 3);
set_hitbox_value(49, 2, HG_LIFETIME, 1);
set_hitbox_value(49, 2, HG_HITBOX_X, 0);
set_hitbox_value(49, 2, HG_HITBOX_Y, 0);
set_hitbox_value(49, 2, HG_SHAPE, 1);
set_hitbox_value(49, 2, HG_WIDTH, room_width);
set_hitbox_value(49, 2, HG_HEIGHT, room_height);
set_hitbox_value(49, 2, HG_PRIORITY, 9);
set_hitbox_value(49, 2, HG_DAMAGE, 5);
set_hitbox_value(49, 2, HG_ANGLE, 270);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 300);
set_hitbox_value(49, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 2, HG_TECHABLE, 0);
set_hitbox_value(49, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(49, 2, HG_EXTRA_CAMERA_SHAKE, -1);