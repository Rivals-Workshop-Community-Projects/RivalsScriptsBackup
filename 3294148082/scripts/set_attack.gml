//set_attack


if (attack == AT_DSPECIAL) {
  //  if !(magicmeter > dspecialcost){
//move_cooldown[AT_DSPECIAL] = 12
//sound_play(sound_get("CANT"),0,0,0.5,0.7)
//} else {
//magicmeter = magicmeter-dspecialcost
//}
}

if attack == AT_NSPECIAL {
    if (clonetimer >= maxclonetimer) or (instance_exists(dimentio1) and instance_exists(dimentio2)){
        
    } else {
        
move_cooldown[AT_NSPECIAL] = 12
if move_cooldown[AT_USPECIAL] <= 0 {
    attack = AT_USPECIAL 
}
    }
    
}

if (attack == AT_TAUNT) and up_down {

//attack = AT_EXTRA_2
}
if (attack == AT_TAUNT) and free {
move_cooldown[AT_TAUNT] = 3
}
if attack = AT_TAUNT and state = PS_ATTACK_GROUND and (down_down or up_down){
attack = AT_EXTRA_2
    }
//position_meeting(x, y, obj);
/*
if (attack == AT_DSPECIAL && free) {
    attack = AT_NSPECIAL;
}
*/