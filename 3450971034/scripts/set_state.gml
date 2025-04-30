///#args state
//  ^ this line up here makes gmedit not freak out

//set_state.gml
is_attacking = false;

//Rune Code

if(slowfall_rune){
    if(slowfalling && free && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && array_find_index(slowfallable_attacks, attack) > -1){
        set_attack(AT_USPECIAL);
    } else if(slowfalling){
        slowfalling = -1;
        if(!free || state == PS_DEAD || state == PS_RESPAWN){
            slowfalling = 0;
            slowfall_duration = slowfall_max;
        }
    }
}

if(plant_gang_rune){
    if(prev_state == PS_CROUCH) hud_offset = 0;
}
