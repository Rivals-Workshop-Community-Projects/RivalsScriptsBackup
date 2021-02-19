set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_LANDING_LAG, 4);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_STRONG_CHARGE_WINDOW, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 2);

// Falling hitbox
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Landing Hitbox
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));