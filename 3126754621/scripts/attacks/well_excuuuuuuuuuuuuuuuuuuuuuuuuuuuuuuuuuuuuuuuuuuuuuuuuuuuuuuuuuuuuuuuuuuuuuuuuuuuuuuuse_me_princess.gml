set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("dtaunt"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);

//well ex
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("excuse_me_start"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 0);

//cuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 480); //490
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 8);

//se me princess
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 57);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 19);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, sound_get("excuse_me_end"));
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 0);

//end
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 30);