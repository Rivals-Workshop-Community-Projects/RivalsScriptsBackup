set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_BODY_CELL, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_BODY_CELL, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, -3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_BODY_CELL, 12);