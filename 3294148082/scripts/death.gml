// called when the character gets KO'd

//boxisthere = false
//set_hitbox_value(AT_DSPECIAL, 1, destroyed, true)
if get_match_setting(SET_PRACTICE) {
}


if instance_exists(dimentio1) {
    dimentio1.state = "leaving"
}
if instance_exists(dimentio2) {
    dimentio2.state = "leaving"
}
    clonetimer = maxclonetimer/2