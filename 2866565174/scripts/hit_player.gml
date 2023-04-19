switch(my_hitboxID.attack){
    
    case AT_JAB: case AT_BAIR: case AT_UAIR:
        if my_hitboxID.hbox_num == 2 && sc_voltstate == 1{
            sc_voltstate = 0;
        }
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
    break;
    
    case AT_UTILT: case AT_NAIR:
        if my_hitboxID.hbox_num == 3 && sc_voltstate == 1{
            sc_voltstate = 0;
        }
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
    break;
    
    case AT_DTILT: case AT_FAIR:
        if sc_voltstate == 1{
            sc_voltstate = 0;
        }
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
    break;
    
    case AT_DATTACK:
    if my_hitboxID.hbox_num == 4 && sc_voltstate == 1{
            sc_voltstate = 0;
        }
        sc_multihit_controller[hit_player_obj.player] += 1;
        if sc_multihit_controller[hit_player_obj.player] == 1 || sc_multihit_controller[hit_player_obj.player] == 2  || sc_multihit_controller[hit_player_obj.player] == 4{
            hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
            hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        }
    break;
    
    case AT_DAIR:
    if my_hitboxID.hbox_num == 5 && sc_voltstate == 1{
            sc_voltstate = 0;
        }
        sc_multihit_controller[hit_player_obj.player] += 1;
        if sc_multihit_controller[hit_player_obj.player] == 1 || sc_multihit_controller[hit_player_obj.player] == 3 || sc_multihit_controller[hit_player_obj.player] == 5{
            hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
            hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        }
    break;
    
    case AT_FTILT:
        if hit_player_obj.sc_coinloss == 0{
            hit_player_obj.sc_coinloss += round(hit_player_obj.sc_coins / 4);
            if hit_player_obj.sc_coinloss >= 5{
                hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
                hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
            }
            if hit_player_obj.sc_coinloss >= 4{
                hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
                hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
            }
            if hit_player_obj.sc_coinloss >= 3{
                hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
                hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
            }
            if hit_player_obj.sc_coinloss >= 2{
                hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
                hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
            }
            if hit_player_obj.sc_coinloss >= 1{
                hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
                hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
            }
        }
    break;
    
    case AT_FSTRONG:
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
    break;
    
    case AT_USTRONG: case AT_DSTRONG:
        // command grab code
        //if this attack hasn't grabbed a player yet, grab the player we just hit.
        if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }

        //if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
        else {
            var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
            var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
            if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
        }
    break;
    
    case AT_USTRONG_2:
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
        hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
    break;
    
    case AT_DSTRONG_2:
        sc_multihit_controller[hit_player_obj.player] += 1;
        if sc_multihit_controller[hit_player_obj.player] == 1 || sc_multihit_controller[hit_player_obj.player] == 3 || sc_multihit_controller[hit_player_obj.player] == 5{
            hit_player_obj.sc_coindrop[hit_player_obj.sc_coindrop_pointer] = id;
            hit_player_obj.sc_coindrop_pointer = (hit_player_obj.sc_coindrop_pointer + 1) % 10;
        }
    break;
    
    /*case AT_USPECIAL:
        my_hitboxID.can_hit[hit_player_obj.player] = true;
    break;*/
    
}
