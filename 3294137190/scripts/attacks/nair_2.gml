set_attack_value(AT_NAIR_2, AG_CATEGORY, 1);
set_attack_value(AT_NAIR_2, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR_2, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR_2, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR_2, 1, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR_2, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko1"));
set_window_value(AT_NAIR_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_NAIR_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR_2, 2);

set_hitbox_value(AT_NAIR_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR_2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR_2, 1, HG_WIDTH, 94);
set_hitbox_value(AT_NAIR_2, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_NAIR_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_NAIR_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR_2, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NAIR_2, 2, HG_WIDTH, 132);
set_hitbox_value(AT_NAIR_2, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR_2, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR_2, 2, HG_ANGLE_FLIPPER, 6);