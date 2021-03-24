set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 7);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("sfx_dstrong_hit"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 115);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("sfx_dstrong_hit"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

