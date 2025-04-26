set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_USTRONG,2,AG_WINDOW_LENGTH)-1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,2);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, get_window_value(AT_USTRONG,3,AG_WINDOW_LENGTH));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -48);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 8);

//sweetspot has higher priority cry about it
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, get_window_value(AT_USTRONG,3,AG_WINDOW_LENGTH));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.85);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -72);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 8);