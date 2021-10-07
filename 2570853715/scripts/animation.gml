if(get_player_color(player) == 16){
    if(attack == AT_FSTRONG and state == PS_ATTACK_GROUND){
        sprite_index = sprite_get("fstrong_dev");
    }
    
    if(attack == AT_DSTRONG and state == PS_ATTACK_GROUND){
        sprite_index = sprite_get("dstrong_dev");
    }
    
    if(state == PS_SPAWN){
        if(get_gameplay_time() < 28*2){
            sprite_index = sprite_get("intro");
            image_index = get_gameplay_time()/4%7;
        } else {
            sprite_index = sprite_get("idle");
        }
    }
}