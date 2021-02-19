//DEATH

with(obj_article2) {
    if (player_id == other.id){
        lifetime = 10;
    }

}

with(obj_article1) {
    if (player_id == other.id){
        state = 3;
        state_timer = 0;
    }

}

hasNote = 0;