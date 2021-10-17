set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_CATEGORY, 1);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY, 1);


//Opening window

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("badcall"));

//Looping window
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//Closing window

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("goodcall1"));