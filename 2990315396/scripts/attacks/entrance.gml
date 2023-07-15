set_attack_value(AT_ENTRANCE, AG_SPRITE, sprite_get("entrance"));
set_attack_value(AT_ENTRANCE, AG_NUM_WINDOWS, 5);
set_attack_value(AT_ENTRANCE, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_ENTRANCE, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_ENTRANCE, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_ENTRANCE, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_ENTRANCE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_ENTRANCE, 1, AG_WINDOW_SFX, sound_get("sfx_killingblow"));
set_window_value(AT_ENTRANCE, 1, AG_WINDOW_SFX_FRAME, 59);

set_window_value(AT_ENTRANCE, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_ENTRANCE, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_ENTRANCE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_ENTRANCE, 2, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_ENTRANCE, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_ENTRANCE, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_ENTRANCE, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_ENTRANCE, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_ENTRANCE, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_ENTRANCE, 3, AG_WINDOW_SFX, asset_get("sfx_land_med"));
set_window_value(AT_ENTRANCE, 3, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_ENTRANCE, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_ENTRANCE, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_ENTRANCE, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_ENTRANCE, 4, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_ENTRANCE, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_ENTRANCE, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_ENTRANCE, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_ENTRANCE, 5, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_ENTRANCE, 0);
