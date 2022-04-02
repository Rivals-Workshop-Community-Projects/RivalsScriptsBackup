//set_attack
/*
if attack == AT_DSPECIAL {
    //wt pickup
    if !holding_wt {
        with obj_article1 {
            if player_id == other.id && !other.has_picked_up {
                if near_player && !other.picking_wt && id == player_id.wt_closest {
                    with other {
                        if !free {
                            attack = AT_DTILT;
                            window_timer = 0;
                            window = 1;
                            picking_wt = true;
                            destroyID = other.id;
                            if (other.x - x)*spr_dir < 0 {
                                spr_dir *= -1;
                            }
                        } else {
                            picking_wt = true;
                            hold_colour = other.colour;
                            instance_destroy(other.id);
                        }
                    }
                    exit;
                }
            }
        }
    }
    
    //take out/put away
    if window_timer == 0 {
        if holding_wt && !picking_wt {
            window = 2;
            holding_wt = false;
        } else if num_wt < num_wt_max {
            window = 1;
            hold_colour = next_colour;
            holding_wt = true;
        }
    }
}
*/

if attack == AT_USPECIAL && goose_id != undefined && instance_exists(goose_id) && point_distance(x, y, goose_id.x, goose_id.y) < 80 {
    attack = AT_USPECIAL_2
}

if attack == AT_DSPECIAL {
    if special_counter == 1 && swap_timer == 0 {
        if goose_id != undefined && instance_exists(goose_id) {
            sound_play(asset_get("sfx_ori_ustrong_charge"))
            swap_timer = 70;
        }
    }
}