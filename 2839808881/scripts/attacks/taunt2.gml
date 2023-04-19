set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, asset_get("taunt2_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 5);