
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.type == 2 && my_hitboxID.hbox_num==1) {
    old_vsp = vsp;
    old_hsp = hsp;
    hitstop = 10;
    hitpause = 1;
    hook.state = 1;
    hitten = 1;
    move_cooldown[AT_USPECIAL] = 0;
    hook.stuck_in_player = true;
}

if (my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_UAIR || (my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) {
    switch (charge) {
        case -1:
            hit_player_obj.orig_knock *= negative_kb_modifier;
            break;
        case 1:
            hit_player_obj.orig_knock *= positive_kb_modifier;
            break;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL_AIR) {
    my_hitboxID.parent.spr_dir *= -1;
    my_hitboxID.parent.hsp *= -my_hitboxID.parent.elasticity;
    my_hitboxID.parent.vsp *= -my_hitboxID.parent.elasticity;

    my_hitboxID.parent.spin -= 12 * sign(my_hitboxID.parent.spin);
}