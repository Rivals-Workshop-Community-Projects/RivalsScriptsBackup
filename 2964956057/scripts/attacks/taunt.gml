var atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 3);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 12);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

set_num_hitboxes(atk, hitbox_num);