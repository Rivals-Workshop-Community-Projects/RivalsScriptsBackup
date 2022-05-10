set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("hammer_swing2"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("hammer_slam"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 62);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -94);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 98);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, heavy_effect);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("fstrong"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 76);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 116);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, heavy_effect);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fstrong"));