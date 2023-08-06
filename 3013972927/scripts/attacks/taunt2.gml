atk = AT_TAUNT_2;

set_attack_value(atk, AG_SPRITE, sprite_get("waveland"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);