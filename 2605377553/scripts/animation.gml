if get_gameplay_time() == 4 {
    sprite_index = sprite_get("walk")
    visible = false;
    with(oPlayer) {
        if url == 2432114154 {
            other.nothanks =  true; 
        }
    }
} else if get_gameplay_time() == 5 {
    visible = true;
}