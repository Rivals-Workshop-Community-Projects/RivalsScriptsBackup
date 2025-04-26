dspecial_should_enhance = false
minion_attack_cache = -1;
switch attack {
    case AT_NSPECIAL:
        if free && move_cooldown[AT_NSPECIAL] == 0{
            attack = AT_EXTRA_1;
        }
        if move_cooldown[AT_NSPECIAL] != 0
        {
            if (!minion_spawn_position.active and instance_exists(minion_obj)) { //perform nspecial_2
                if minion_obj.state == PS_IDLE {
                    attack = AT_NSPECIAL_AIR
                }
                else if (minion_obj.state == PS_BURIED and minion_obj.incubation > minion_incubation_spawn_threshold) {
                    //spawn prematurely
                    attack = AT_NSPECIAL_2;    
                }

            }
            
            break;
        }
        
        minion_spawn_position.active = false;
        minion_spawn_position.timer = 0;
        minion_spawn_position.visited_players = [];
        minion_spawn_position.target_player = noone;
        minion_spawn_position.start_distance = 0;
        minion_spawn_position.current_distance = 0;
        minion_spawn_position.stop_distance = 0;
        minion_spawn_position.y_pos = 0;
    break;
    
    case AT_FSPECIAL:
        if free{
            attack = AT_FSPECIAL_AIR;
        }
    break
}