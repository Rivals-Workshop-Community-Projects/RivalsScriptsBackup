set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("utilt2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 6);

set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));