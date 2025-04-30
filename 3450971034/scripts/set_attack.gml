///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
is_attacking = true;
fspecial_reversed = false;

if (attack == AT_FSPECIAL && outline_color == prev_outline && (fspecial_charge >= fspecial_large_charge || fspecial_stacks > 0)) {
    outline_color = [0, 0, 0];
    init_shader();
}

// Rune Code

if(slowfall_rune){
    if(!uspecial_override){
        if(attack == AT_USPECIAL && slowfalling){
            clear_button_buffer(PC_JUMP_PRESSED);
            window = 5;
            b_reversed = true;
        } else if(array_find_index(slowfallable_attacks, attack) == -1) slowfalling = -1;
    } else if(attack == AT_USPECIAL && slowfalling) slowfalling = -1;
    uspecial_override = false;
}

if(pratless_uspecial_rune){
    if(pratless_uspecial_rune && attack == AT_USPECIAL && window == 1 && !uspecial_redeploy){
        uspecial_count++;
    }
    
    if(uspecial_prat_buffer && uspecial_count > 1 && (attack == AT_FAIR || attack == AT_UAIR || attack == AT_BAIR || attack == AT_NAIR || attack == AT_DAIR)){
        was_parried = true;
        parry_lag = prat_land_time;
    }
    uspecial_prat_buffer = false;
}

if(nspecial_windbox_rune){
    ptooieless_nspecial = instance_exists(ptooie_obj) && ptooie_obj.state != 0;
}