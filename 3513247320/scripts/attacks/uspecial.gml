var atk = AT_USPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 10); // 7
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_VSPEED, 0);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

set_num_hitboxes(atk, hit);