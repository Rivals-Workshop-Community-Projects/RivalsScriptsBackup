set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("bar_swing_heavy"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

//front
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

//top
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -102);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

//late
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, -90);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);