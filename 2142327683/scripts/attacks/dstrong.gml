set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("clover_dstrong"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG,3);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("clover_dstrong_hit"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 85);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("clover_dstrong_hit"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 198);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("clover_dstrong_hit_final"));