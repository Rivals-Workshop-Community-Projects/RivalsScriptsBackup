set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 3);
set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Clean");
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Late 1");
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 52);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Late 2");
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);