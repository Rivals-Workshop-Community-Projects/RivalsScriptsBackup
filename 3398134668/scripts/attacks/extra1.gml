set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("super"));
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("super_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("Explosion2"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_EXTRA_1,1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 123);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 125);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("ElectricHit"));
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 1);