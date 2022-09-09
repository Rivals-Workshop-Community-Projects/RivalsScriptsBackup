//

if my_hitboxID.type == 1 && my_hitboxID.attack != AT_USPECIAL && my_hitboxID.attack != AT_FSPECIAL {
take_damage(player,-1,floor(my_hitboxID.damage/2))
}