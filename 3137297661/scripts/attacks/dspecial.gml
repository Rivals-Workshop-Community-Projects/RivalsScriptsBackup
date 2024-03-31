atk = AT_DSPECIAL

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

//startup  w1
window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);

//self hit w2
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 45);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("gasglass"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);
