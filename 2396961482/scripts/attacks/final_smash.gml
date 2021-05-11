set_attack_value(49, AG_SPRITE, sprite_get("finalsmash"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("finalsmash_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 12);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 40);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 16);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 150);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 10);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 6, AG_WINDOW_VSPEED, -14);

set_window_value(49, 7, AG_WINDOW_TYPE, 10);
set_window_value(49, 7, AG_WINDOW_LENGTH, 1);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 1, HG_LIFETIME, 5);
set_hitbox_value(49, 1, HG_HITBOX_X, 35);
set_hitbox_value(49, 1, HG_HITBOX_Y, -30);
set_hitbox_value(49, 1, HG_WIDTH, 60);
set_hitbox_value(49, 1, HG_HEIGHT, 60);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 8);
set_hitbox_value(49, 1, HG_ANGLE, 45);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(49, 2, HG_WINDOW, 4);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(49, 2, HG_LIFETIME, 5);
set_hitbox_value(49, 2, HG_HITBOX_X, 30);
set_hitbox_value(49, 2, HG_HITBOX_Y, -35);
set_hitbox_value(49, 2, HG_WIDTH, 80);
set_hitbox_value(49, 2, HG_HEIGHT, 80);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_DAMAGE, 8);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 190);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(49, 3, HG_WINDOW, 6);
set_hitbox_value(49, 3, HG_LIFETIME, 5);
set_hitbox_value(49, 3, HG_HITBOX_X, 30);
set_hitbox_value(49, 3, HG_HITBOX_Y, -40);
set_hitbox_value(49, 3, HG_WIDTH, 60);
set_hitbox_value(49, 3, HG_HEIGHT, 80);
set_hitbox_value(49, 3, HG_PRIORITY, 2);
set_hitbox_value(49, 3, HG_DAMAGE, 12);
set_hitbox_value(49, 3, HG_ANGLE, 90);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 3, HG_EXTRA_CAMERA_SHAKE, 1.1);
set_hitbox_value(49, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));