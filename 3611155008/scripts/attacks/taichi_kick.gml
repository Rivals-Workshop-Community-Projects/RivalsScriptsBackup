var atk = AT_EXTRA_2;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("airparry"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);

//kick active
set_window_value(atk, num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);

//back to idle air
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, num);