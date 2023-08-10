//hitbox_init

if attack == AT_NSPECIAL && hbox_num == 1 {
    is_seed = true;
    trigger_vine = false;
    if player_id.attack == AT_NSPECIAL {
        
        if player_id.was_canceled {
            //vsp += 6
            //hsp -= 2*spr_dir
        }
        
        if player_id.up_down && !player_id.down_down { //angle upwards
            vsp -= 2;
        } else if player_id.down_down && !player_id.up_down{ //angle downwards
            vsp += 2;
        }
        
        if player_id.right_down && !player_id.left_down { //angle right
            hsp += 2;
        } else if player_id.left_down && !player_id.right_down{ //angle left
            hsp -= 2;
        }
    }
    
    age = player_id.timer;
    
    is_seed = true
    die = false
}

if attack == AT_DSPECIAL && hbox_num == 1 {
    arb_seeker = true
}

die = false

if attack == AT_EXTRA_1 && hbox_num == 1 {
    has_played = false
}