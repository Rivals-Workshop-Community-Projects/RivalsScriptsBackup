///#args attack // this line makes code editors not freak out for some reason

if (instance_exists(pepsimachine) && attack == AT_DSPECIAL) {
    if (point_distance(x, y, pepsimachine.x, pepsimachine.y) < 46 && !free) {
        attack = AT_DSPECIAL_2;
    }
}

