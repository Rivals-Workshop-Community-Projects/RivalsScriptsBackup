set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("motor1"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("spin"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get("motor1"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DATTACK, 6);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 81);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("bloodlight2"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 91);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 91);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 91);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 54);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 129);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 72);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, BloodFX2);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, sound_get("bloodmed2"));
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE_FLIPPER, 0);