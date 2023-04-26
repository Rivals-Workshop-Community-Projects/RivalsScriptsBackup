//update

with(hit_fx_obj){
    if(player_id == other){
        if(sprite_index == asset_get("moth_boom_small_spr")){
            depth = other.depth + 1;
        }
    }
}

if(!free || state == PS_RESPAWN || state == PS_DEAD || state_cat == SC_HITSTUN || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}