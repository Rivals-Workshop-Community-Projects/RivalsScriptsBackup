switch(attack){
    
    case AT_FAIR:
        sound_play(sound_get("sfx_burn"), false, noone, 0.4, 1.0);
        break;
    
    case AT_BAIR:
        sound_play(asset_get("sfx_birdflap"), false, noone, 0.8, 1.0);
        break;
    
    case AT_DAIR:
        set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
        break;
    
    case AT_NSPECIAL:
        if(move_cooldown[AT_NSPECIAL] > 0){
            y -=2;
            vsp = -5;
            attack = AT_NSPECIAL_2;
            
            sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.75, 0.95);
        }
        break;
    
    case AT_FSPECIAL:
        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
        break;
    
    case AT_DSPECIAL:
        sound_play(asset_get("sfx_boss_final_charge"), false, noone, 0.5, 3);
        break;
}

for(var i = 1; i <= get_num_hitboxes(attack); i++){
    if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
        reset_hitbox_value(attack, i, HG_DAMAGE);
        reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
    }
}
//damage and kb buff
if(blue){
    for(var i = 1; i <= get_num_hitboxes(attack); i++){
        if(get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1){
            set_hitbox_value(attack, i, HG_DAMAGE, ceil(get_hitbox_value(attack, i, HG_DAMAGE) * blue_dmg_buff));
            if(attack != AT_FSPECIAL || i == 3){
                set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) + 1);
            }
            if(attack != AT_NAIR && attack != AT_UAIR && attack != AT_DTILT){
                set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, (get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) * (blue_kb_buff * 100))/100);
            }
        }
    }
}