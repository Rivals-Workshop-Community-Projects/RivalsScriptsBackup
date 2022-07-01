set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);

//ts    tt    tth   tan   ta    tah   tar
//0-0:1 1-1:1 2-2:1 3-4:2 5-6:2 7-7:1 8-9:2

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("friend"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("sound_of_dog"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_TAUNT, 0); 
