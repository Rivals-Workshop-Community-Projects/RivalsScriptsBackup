set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("strong_charge"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 8);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 94);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 180);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 86);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 8, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_TECHABLE, 0);