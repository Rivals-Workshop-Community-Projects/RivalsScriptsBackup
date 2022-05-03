///#args attack // this line makes code editors not freak out for some reason

if (instance_exists(pepsimachine) && attack == AT_DSPECIAL) {
    if (point_distance(x, y, pepsimachine.x, pepsimachine.y) < 46 && !free) {
        attack = AT_DSPECIAL_2;
    }
}




// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);

