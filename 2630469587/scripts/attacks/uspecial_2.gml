//U-Special used while detached from Youmu.

set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("jump"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jump_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("jump_hurt"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("jump"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("airdash"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_USPECIAL_2, 0);