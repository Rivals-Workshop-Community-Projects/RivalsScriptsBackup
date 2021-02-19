set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1); // frame1
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1); // frame2 hitbox1
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, (asset_get("sfx_may_arc_cointoss")));

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1); // frame2 hitbox1
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NSPECIAL_2, 0);