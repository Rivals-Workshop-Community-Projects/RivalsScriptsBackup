set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);

//cursor throw N ~ buffer before you throw/decide throw direction

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 1, AG_BODY_CELL, 26);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 2, AG_BODY_CELL, 26);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 3, AG_BODY_CELL, 26);

set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 4, AG_BODY_CELL, 26);