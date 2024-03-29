set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 39);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_waterhit_heavy"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 19);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_DSTRONG, 6);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, vfx_waterhit_light_big);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, vfx_waterhit_light_big);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, vfx_waterhit_light_big);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 36);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, vfx_waterhit_light_big);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, vfx_waterhit_light_big);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, vfx_waterhit_light_huge);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 16);



