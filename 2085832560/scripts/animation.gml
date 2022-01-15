///

if "in_adventure" in self {
if move_cooldown[AT_USPECIAL_GROUND] > 0 && window != 4 {
    image_index = 13
}

if move_cooldown[AT_FSPECIAL_2] > 0  {
    sprite_index = sprite_get("empty")
}

if move_cooldown[AT_NSPECIAL_2] > 0 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && attack != AT_TAUNT{
    sprite_index = sprite_get("uspecial")
    image_index = 5 + ( 5 - (move_cooldown[AT_NSPECIAL_2]/5) )
}

}