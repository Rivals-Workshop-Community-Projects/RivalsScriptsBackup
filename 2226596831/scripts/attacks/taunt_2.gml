set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("t"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);

//ts    tt    tth   tan   ta    tah   tar
//0-0:1 1-1:1 2-2:1 3-4:2 5-6:2 7-7:1 8-9:2

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("wii"));

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);