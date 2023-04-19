//other_post_draw.gml

if hornet_silked_id == other_player_id {
    with other_player_id shader_start()
    
    var time = get_gameplay_time()
    with other_player_id {
        var spr_back = sprite_get("silk_status_back")
        var spr_front = sprite_get("silk_status_front")
    }
    
    draw_sprite_ext(spr_front, time/4, x, y-(char_height/2), 1, 1, 0, c_white, 1)
    
    with other_player_id shader_end()
}

if hornet_wrapped_id == other_player_id {
    with other_player_id shader_start()
    
    with other_player_id {
        var spr = sprite_get("silk_wrap")
    }
    
    draw_sprite_ext(spr, 0, x, y-(char_height/2), 1, 1, 0, c_white, 1)
    with other_player_id shader_end()
}