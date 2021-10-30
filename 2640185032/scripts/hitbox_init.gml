switch(attack){
    
    /*case AT_BAIR:
        if (hbox_num == 1){
            for (var i = 0; i < 20; i++){
                if((orig_player.spr_dir == 1 && i.x < orig_player.x) ||
                (orig_player.spr_dir == -1 && i.x > orig_player.x)){
                    can_hit[i] = false;
                }
            }
        }
    break;*/
    
    case AT_NSPECIAL:
    case AT_USPECIAL:
    case AT_FTILT:
    
        //rocc check
        if(hit_priority == 1) exit;
        
        if(hbox_num == 2){
            proj_angle = -30 * player_id.spr_dir;
        }
        spr_iceclock_back_sm = player_id.spr_iceclock_back_sm;
        spr_iceclock_hand_sm = player_id.spr_iceclock_hand_sm;
        sound_countdown = player_id.sound_countdown;
        sound_whoosh = player_id.sound_whoosh;
        orig_hsp = hsp;
        orig_vsp = vsp;
        break;
    
}