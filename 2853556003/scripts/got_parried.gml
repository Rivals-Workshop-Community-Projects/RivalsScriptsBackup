if(my_hitboxID.attack == AT_NSPECIAL){
    waterBomb.vsp *= -1
    waterBomb.hsp *= -1
    if(hit_player != player){
        waterBomb_charge_stun = 240
        thump = 4
    }else{
        waterBomb_charge_stun = 0
        thump = 4
    }
    sound_play(asset_get("mfx_back"))
    waterBomb.current_owner = hit_player
}

if(my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID.hbox_num == 2){
        hurricane.current_owner = hit_player
        hurricane.hsp *= -1
        if(hurricane.lifetime < 20){
            set_state(PS_PRATLAND)
            was_parried = true
            parry_lag = 30
        }
    }else{
        parriedID = hit_player
    }
}

if(ai == 1){
    if(attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        fspecial_waver -= 1.5
    }
    if(attack == AT_DATTACK && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ){
        dattack_waver -= 1.5
    }
    if(attack == AT_DTILT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        dattack_waver -= 1.5
    }
}