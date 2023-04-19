///#args attack // this line makes code editors not freak out for some reason

bounces = 0;
dfx = noone;
attack_hit = false;

sound_stop(sound_get("boom"));

has_frozen = false;

if (attack == AT_NSPECIAL) && (free && move_cooldown[AT_FSPECIAL] == 0) {
    attack = AT_NSPECIAL_2;
}

/*
if attack == AT_NSPECIAL {
    clear_button_buffer(PC_SPECIAL_PRESSED);
    early_up_down = false;
    early_right_down = false;
    early_left_down = false;
    early_special_down = false;
}
*/

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);