switch(attack){
    
    case AT_NSPECIAL:
        if(my_hitboxID.hbox_num == 1){
        pipebomb.hsp *= -1.5;
        pipebomb.vsp *= -1.4;
        pipebomb.owner = hit_player_obj.player;
        }
        break;
}