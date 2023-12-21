switch(attack){
    
    case AT_FTILT:
        switch(hbox_num){
            case 3:
                if instance_exists(player_id.wren_wave){
                    //player_id = player_id.wren_wave;
                    kb_angle = ceil(point_direction(x, y, (player_id.wren_wave.x + (player_id.wren_wave.hsp + (2 * player_id.wren_wave.spr_dir))), ((player_id.wren_wave.y - 16) + player_id.wren_wave.vsp)));
                }
                break;
        }
        break;
    case AT_NSPECIAL_2:
        switch(hbox_num){
            case 2:
                if instance_exists(player_id.wren_enemy_riptide_id){
                    if player_id.wren_caught_cooldown == 0 and player_id.wren_enemy_riptide_id.wren_stacks > 2 and player_id.wren_enemy_riptide_id != noone{
                        can_hit[player_id.wren_enemy_riptide_id.player] = false;
                    }
                }
                break;
        }
        break;
    case AT_FSTRONG:
        switch(hbox_num){
            case 5:
            case 6:
                if has_hit{
                    can_hit[hit_player_obj.player] = false;
                }
                break;
        }
        break;
    case AT_USTRONG:
        switch(hbox_num){
            case 2:
            case 3:
                if has_hit{
                    can_hit[hit_player_obj.player] = false;
                }
                break;
        }
        break;
    case AT_DSPECIAL:
        // check if they were caught in the riptide
        /*
        if instance_exists(player_id.wren_enemy_riptide_id){
            if player_id.wren_caught_cooldown == 0 and player_id.wren_enemy_riptide_id.wren_stacks > 2 and player_id.wren_enemy_riptide_id != noone{
                can_hit[player_id.wren_enemy_riptide_id.player] = false;
            }
        }*/
        break;
}