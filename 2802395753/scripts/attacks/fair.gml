set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("fair"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, -6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, -25);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 3, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 3, HG_HIT_LOCKOUT, 5);