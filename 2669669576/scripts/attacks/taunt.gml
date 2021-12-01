set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("gengar_laugh"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
var cur_window = 5
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_ANIM_FRAMES, 4);
cur_window++;
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_ANIM_FRAMES, 4);
cur_window++;
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, cur_window, AG_WINDOW_ANIM_FRAMES, 4);
