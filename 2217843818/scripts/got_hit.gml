var exists_3 = false;

with (asset_get("obj_article3")){
    if (player_id == other.id){
        exists_3 = true;
    }
}    

if (exists_3){
    with (obj_article3){
        if (player_id.player == other.player && state == 0){
            x = -1000;
        }
    }
}