//hitbox_update

//handle the Sausage
if (attack == AT_NSPECIAL && hbox_num == 2) {
    //make it go spinny
    proj_angle += (8 * spr_dir );
    //destroy on floors, but not platforms
    if (place_meeting(x, y, asset_get("solid_32_obj"))) {
        destroyed = true;
    }
}

//handle the Shrimp
if (attack == AT_NSPECIAL && hbox_num == 3) {
    //make it go spinny
    proj_angle += (12 * spr_dir );
    //destroy on floors, but not platforms
    if (place_meeting(x, y, asset_get("solid_32_obj"))) {
        destroyed = true;
    }
}

//handle the Steak
if (attack == AT_NSPECIAL && hbox_num == 4) {
    //make it go spinny
    proj_angle += (5 * spr_dir );
    //destroy on floors, but not platforms
    if (place_meeting(x, y, asset_get("solid_32_obj"))) {
        destroyed = true;
    }
}