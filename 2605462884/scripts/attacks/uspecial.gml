set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_PD_NOT_FORCE_BODY_CELL, 1);


set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 1, AG_BODY_CELL, 40);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("pick_up_softer_l"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_BODY_CELL, 40);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 3, AG_BODY_CELL, 40);

//set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 4, AG_BODY_CELL, 6);