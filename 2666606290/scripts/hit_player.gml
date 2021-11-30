// code for kamehameha

// if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1{
// create_hitbox( attack, 2, my_hitboxID.x, my_hitboxID.y );
// }

if !(instance_exists( field_obj )){
elec_charge += my_hitboxID.damage * 2;
}

if (my_hitboxID.effect == 11) &&
(attack != AT_USPECIAL &&
attack != AT_FSPECIAL &&
attack != AT_DSPECIAL &&
attack != AT_NSPECIAL)
{
    hit_player_obj.hitstop *= elecstun_multiplier;
    hit_player_obj.hitstop_full *= elecstun_multiplier;
}

