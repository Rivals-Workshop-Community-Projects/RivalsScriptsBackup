set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("shadowfling"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sound_get("shadowrefresh"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,7);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USTRONG, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -101);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 127);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 125);
set_hitbox_value(AT_USTRONG, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USTRONG, 6, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_USTRONG, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USTRONG, 7, HG_IGNORES_PROJECTILES, 1);