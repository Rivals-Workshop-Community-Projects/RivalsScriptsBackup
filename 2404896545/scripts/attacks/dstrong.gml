set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("one1"));

//Hit
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("two2"));

//Endlag
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG,2);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 52);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);