set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,2);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, -90);
set_hitbox_value(AT_FSTRONG, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);