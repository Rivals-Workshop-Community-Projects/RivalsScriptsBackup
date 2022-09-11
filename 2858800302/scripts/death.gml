with(asset_get("obj_article1")){
    if (player_id == other.id){
        destroy_self = true;
    }
}

fspecial_charge = 0;
should_attack = false;

move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;