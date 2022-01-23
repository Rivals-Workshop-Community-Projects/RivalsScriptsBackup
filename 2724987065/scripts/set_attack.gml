///#args attack // this line makes code editors not freak out for some reason

if phone_cheats[CHEAT_CANCEL] clear_button_buffer(PC_SPECIAL_PRESSED);

with oPlayer if dive_grabbed_id == other {
    other.dive_grabbed_x = 0;
    dive_grabbed_id = noone;
}

dived_someone = false;
aerial_hit = false;
created_plat = false;
made_boom = false;

if attack == AT_NSPECIAL && !free draw_y = 12;

if attack == AT_DSPECIAL && d_gauge == 1000 {
    d_gauge = 0;
    attack = AT_DSPECIAL_2;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);