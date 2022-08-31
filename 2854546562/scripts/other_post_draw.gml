if (instance_exists(other_player_id)) {
    if (other_player_id.grabbed_id == self){
        draw_sprite(other_player_id.spr_wrap, 0, x, y);
    }
    
}
