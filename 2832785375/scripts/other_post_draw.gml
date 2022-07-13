//other_post_draw.gml
if arb_marked {
    with other_player_id shader_start()
    
    var time = get_gameplay_time()
    with other_player_id {
        var spr_back = sprite_get("mark_back")
        var spr_front = sprite_get("mark_front")
    }
    
    draw_sprite_ext(spr_front, time/6, x, y-(char_height/2), 1, 1, 0, c_white, 1)
    
    with other_player_id shader_end()
}