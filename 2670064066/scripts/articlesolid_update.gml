

grav_lifetime--;

if (grav_lifetime == 499) {
    create_hitbox(AT_USPECIAL, 2, x, y - 115);
}

if (grav_lifetime > 0) {
    create_hitbox(AT_USPECIAL, 1, x, y - 115);
}

if (grav_lifetime < 0){
    instance_destroy();
}

    vsp = 9.9; //nice
    


