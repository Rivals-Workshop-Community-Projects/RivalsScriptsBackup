set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("uspecialsecondary"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("uspecialsecondary_hurt"));


//Teleporting back to the savepoint
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 1)
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES,4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("clover_uspecial_teleport_start"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 4)
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES,0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, sound_get("clover_uspecial_teleport"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_EXTRA_2, 0);