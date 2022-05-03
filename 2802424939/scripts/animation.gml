/*if (state == PS_IDLE_AIR and prev_state == PS_ATTACK_AIR)
{
    image_index = 5
}
*/
switch(attack)
{
    case AT_FSPECIAL:
        if (free)
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_air")); //animation code for landing lag
        else
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial")); //animation code for landing lag
        break;
}