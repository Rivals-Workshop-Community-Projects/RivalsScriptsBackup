//

if my_hitboxID.type == 1 && my_hitboxID.attack != AT_USPECIAL && my_hitboxID.attack != AT_FSPECIAL {
take_damage(player,-1,floor(my_hitboxID.damage/2))
}


if my_hitboxID.type == 1 && my_hitboxID.attack == AT_DTILT{
    take_damage(player,-1,floor(my_hitboxID.damage/2))
     move_cooldown[AT_JAB] = 5
      old_vsp = -4
        set_attack(AT_DTILT)
        window = 1
        window_timer = 15
}

