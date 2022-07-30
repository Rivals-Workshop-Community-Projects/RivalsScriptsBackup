//set_attack

char_height = start_char_height;
height_timer = 0;

if attack == AT_FSPECIAL r2_grab_id = noone

strong_throw = false

if attack == AT_USPECIAL endlag_cancel = false

if attack == AT_DSPECIAL && free {
    attack = AT_DSPECIAL_AIR
}

if attack == AT_TAUNT {
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("r2_beep" + string(random_func(1, 5, true)+1)));
}

has_snapped = false