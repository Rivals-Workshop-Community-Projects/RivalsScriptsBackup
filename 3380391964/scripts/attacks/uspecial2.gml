set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);


set_num_hitboxes(AT_USPECIAL_2, 0);