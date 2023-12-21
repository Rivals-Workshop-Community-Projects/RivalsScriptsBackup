atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

window_num = 1; //it's morbin' time
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 60);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 22);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_num_hitboxes(atk, 0);