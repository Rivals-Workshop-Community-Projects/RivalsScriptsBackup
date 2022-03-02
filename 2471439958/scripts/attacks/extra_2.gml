set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("sickles"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("sickles_hurt"));
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 0);


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 12);



set_num_hitboxes(AT_EXTRA_2, 1);


set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 110);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_CAMERA_SHAKE, 50);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, blood_effect);