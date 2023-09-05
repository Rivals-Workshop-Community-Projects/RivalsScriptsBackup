atk = AT_TAUNT_2;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt2_hurt"));

window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 8);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);