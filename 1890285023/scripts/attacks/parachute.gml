set_attack_value(AT_PARACHUTE, AG_CATEGORY, 2);
set_attack_value(AT_PARACHUTE, AG_SPRITE, sprite_get("parachute"));
set_attack_value(AT_PARACHUTE, AG_HURTBOX_SPRITE, sprite_get("parachute_hurt"));
set_attack_value(AT_PARACHUTE, AG_NUM_WINDOWS, 2);

set_window_value(AT_PARACHUTE, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_PARACHUTE, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_PARACHUTE, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_PARACHUTE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_PARACHUTE, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_PARACHUTE, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_PARACHUTE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PARACHUTE, 2, AG_WINDOW_LENGTH, 120);
set_window_value(AT_PARACHUTE, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_PARACHUTE, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_PARACHUTE, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_PARACHUTE, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_PARACHUTE, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_PARACHUTE, 0);

set_hitbox_value(AT_PARACHUTE, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_PARACHUTE, 1, HG_WINDOW, 2);
set_hitbox_value(AT_PARACHUTE, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_PARACHUTE, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_PARACHUTE, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_PARACHUTE, 1, HG_WIDTH, 110);
set_hitbox_value(AT_PARACHUTE, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_PARACHUTE, 1, HG_SHAPE, 0);
set_hitbox_value(AT_PARACHUTE, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_PARACHUTE, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_PARACHUTE, 1, HG_ANGLE, 361);
set_hitbox_value(AT_PARACHUTE, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_PARACHUTE, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_PARACHUTE, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_PARACHUTE, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_PARACHUTE, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_PARACHUTE, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_PARACHUTE, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));