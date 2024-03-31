//set_attack.gml
if(k_combo == 2){
    switch(attack){
        case AT_FSPECIAL:
            attack = AT_FSPECIAL_2;
            k_combo = 0;
            k_combo_anim_timer = 0;
            k_combo_timer = 0;
            k_combo_perm = false;
        break;
        
        case AT_USPECIAL:
            attack = AT_USPECIAL_2;
            k_combo = 0;
            k_combo_anim_timer = 0;
            k_combo_timer = 0;
            k_combo_perm = false;
        break;
        
        case AT_TAUNT:
            if(jump_down && shield_down){
                attack = AT_TAUNT_2;
            }
        break;
        
        default: break;
    }
}
else{
    switch(attack){
        case AT_FAIR:
            if(left_strong_pressed || right_strong_pressed){
                attack = AT_FSTRONG;
            }
        break;
        
        case AT_BAIR:
            if(left_strong_pressed || right_strong_pressed){
                spr_dir *= -1;
                attack = AT_FSTRONG;
            }
        break;

        default: break;
    }
}
k_can_combo = false; 
k_grab_id = noone;
keep_jab = false;
glassbounce = false;
multi_kb_total = 0;
//note to self: no frame 1 hitboxes