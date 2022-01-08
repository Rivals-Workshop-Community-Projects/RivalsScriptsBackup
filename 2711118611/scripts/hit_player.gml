var hitmove = my_hitboxID.attack;

if (hitmove == AT_FSPECIAL) {
    sword_two = hit_player_obj;
}

//if (hitmove == AT_NSPECIAL) {
//    attack_end();
//}

if (hitmove == AT_DSPECIAL && sword_two == hit_player_obj) {
    if (dspecial_hit == false) {
        var hbox = create_hitbox(AT_DSPECIAL, 2, hit_player_obj.x, hit_player_obj.y);
        dspecial_hit = true;
    }  
}