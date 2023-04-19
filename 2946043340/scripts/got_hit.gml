//Resets the Grab Variables
if (hit_player_obj == beaded_player && enemy_hitboxID.type == 1 && enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0 && instance_exists(beaded_player)){
    marked_timer -= enemy_hitboxID.damage*2;
}