if (balloonout = true){
    with(asset_get("obj_article1")){
        if (player_id == other.id){
        draw_set_color(c_white);
        draw_line_color(floor(x), floor(y), floor(player_id.x), floor(player_id.y - 32), c_white, c_white);
        } 
    }
}
