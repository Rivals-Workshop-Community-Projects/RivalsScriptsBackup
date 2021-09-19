set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 4);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 2.02);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, .10);


set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 150);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 1.4);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("biglaunch"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_CAMERA_SHAKE, 4);