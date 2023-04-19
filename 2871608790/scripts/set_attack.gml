///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

if (attack == AT_DSPECIAL) attack = free ? AT_DSPECIAL_AIR : AT_DSPECIAL;