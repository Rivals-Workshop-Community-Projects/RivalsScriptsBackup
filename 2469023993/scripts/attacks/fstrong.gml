set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("shadowfling"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("shadowrefresh"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,6);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_FSTRONG, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 63);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 63);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -30);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 63);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -30);

set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 74);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 127);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 59);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 37);
set_hitbox_value(AT_FSTRONG, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_FSTRONG, 6, HG_IGNORES_PROJECTILES, 1);