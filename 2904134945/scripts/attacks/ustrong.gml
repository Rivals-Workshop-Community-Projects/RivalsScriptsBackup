set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0.3);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -25);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, spinfx);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 0.5);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 120);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, spinfx);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 0.5);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -134);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 92);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 92);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, bigicefx);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USTRONG, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DRIFT_MULTIPLIER, 1);