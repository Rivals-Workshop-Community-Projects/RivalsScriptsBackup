//fspecial 2
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 6);

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 0);


set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, -25);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, -1);

set_attack_value(AT_FSPECIAL_2, AG_MUNO_ATTACK_NAME, "Install Fspecial Air Grab");