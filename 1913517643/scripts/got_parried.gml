//CALLED WHEN PARRIED

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) { //Refresh the music note projectile lifetime when parried
    my_hitboxID.length = get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == (1 || 3)){
    set_state(6);
} 

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    parry_lag = 70;
} 

with(obj_article2) {
    if (player_id == other.id){
        obj_article2.lifetime = 10;
    }
}

with(obj_article1) {
    if (player_id == other.id){
        obj_article1.state = 3;
        obj_article1.state_timer = 0;
    }

}
char_height = 52;
hasNote = 0;

