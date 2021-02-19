if(menu_timer > -1){
    menu_timer = -1;
}

if(attack == AT_FSPECIAL && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND)){
    if(multihit != noone){
        multihit.hitstop = 0;
    }
}

multihit = noone;
has_suplex = true;

if(attack == AT_NSPECIAL_2 && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND)){
    if(enemy_hitboxID.kb_value > 0){
        ultupper = 0;
        outline_color = [0, 0, 0];
        init_shader();
    }
}