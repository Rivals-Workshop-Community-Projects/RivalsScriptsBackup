set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("vileplume_petaldance"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5); // 6
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 17);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6.25);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3); // 7, then 10
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1); // 2
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6); // 7

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10); // 7, then 10
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 3); // 2
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 7); // 7
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 5);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 48); // 64
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64); // 64
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2); // 6
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 48); // 64
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 64); // 64
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2); // 6
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 48); // 64
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 64); // 64
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 2); // 6
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 48); // 64
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 64); // 64
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2); // 6
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 114); // 64
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 50); // 64
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 7); // 6
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));