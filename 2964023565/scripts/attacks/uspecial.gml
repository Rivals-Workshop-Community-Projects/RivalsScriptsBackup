set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 0);

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

// flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

// flutter start
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

// flutter
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

// atk endlag
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_leafy_hit2"));

set_num_hitboxes(AT_USPECIAL, 8);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);

//Flutter

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 20);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 20);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);