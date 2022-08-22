var bugs_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        bugs_out = true;
    }
}

if (bugs_out && my_hitboxID.attack != AT_JAB){
    with asset_get("obj_article1"){
        if (player_id == other.id && state == 0){
            spawn_hit_fx( x + 5, y - 20, 14);
            state = 2;
            with (other){
                move_cooldown[AT_DSPECIAL] = dspec_cooldown;
            }
        }
    }
}