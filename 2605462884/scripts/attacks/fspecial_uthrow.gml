set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);

//cursor throw N ~ buffer before you throw/decide throw direction

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UTHROW, 1, AG_BODY_CELL, 26);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 2, AG_BODY_CELL, 23);