///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
//this script runs at on the first frame of an attack, sort of like an init.gml but for attack_update.gml

if (attack == AT_TAUNT && down_down) attack = AT_TAUNT_2;

if (attack == AT_DSPECIAL)
{
    if (instance_exists(artc_dspec)) window = 6;
    else window = 1;
}