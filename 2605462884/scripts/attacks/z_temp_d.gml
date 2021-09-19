set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_2, AG_PSEUDO_DYNAMIC, 1);
set_attack_value(AT_DSPECIAL_2, AG_PD_ITEM, sprite_get("mixels"));
set_attack_value(AT_DSPECIAL_2, AG_PD_LOC_X, 72);
set_attack_value(AT_DSPECIAL_2, AG_PD_LOC_Y, 72);
set_attack_value(AT_DSPECIAL_2, AG_PD_ROT, 0);

//hello. this file serves as like a template and test file for the "pseudo-dynamic" system.

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 1, AG_BODY_CELL, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_UP, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_DOWN, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_LEFT, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_RIGHT, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_ROTATE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_IN_FRONT, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_DIR, 0); //0 will be interpreted as 1

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 2, AG_BODY_CELL, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_UP, 90);
//set_window_value(AT_DSPECIAL_2, 2, AG_DOWN, 0);
//set_window_value(AT_DSPECIAL_2, 2, AG_LEFT, 0);
//set_window_value(AT_DSPECIAL_2, 2, AG_RIGHT, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_ROTATE, 140);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 3, AG_BODY_CELL, 1);
//set_window_value(AT_DSPECIAL_2, 3, AG_UP, 0);
//set_window_value(AT_DSPECIAL_2, 3, AG_DOWN, 0);
//set_window_value(AT_DSPECIAL_2, 3, AG_LEFT, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_RIGHT, 90);
set_window_value(AT_DSPECIAL_2, 3, AG_ROTATE, 100);

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 4, AG_BODY_CELL, 1);
//set_window_value(AT_DSPECIAL_2, 4, AG_UP, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_DOWN, 90);
//set_window_value(AT_DSPECIAL_2, 4, AG_LEFT, 0);
//set_window_value(AT_DSPECIAL_2, 4, AG_RIGHT, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_ROTATE, 90);

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 5, AG_BODY_CELL, 1);
//set_window_value(AT_DSPECIAL_2, 5, AG_UP, 0);
//set_window_value(AT_DSPECIAL_2, 5, AG_DOWN, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_LEFT, 90);
//set_window_value(AT_DSPECIAL_2, 5, AG_RIGHT, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_ROTATE, 30);