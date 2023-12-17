//other_post_draw.gml

if ("rhy_charred_id" in self) && rhy_charred_id != noone {
    with other_player_id shader_start()
    
    var time = get_gameplay_time()
    with other_player_id {
        var spr = sprite_get("charred_vfx")
    }
    
    draw_sprite_ext(spr, time/5, x, y, 1, 1, 0, c_white, 1)
    //draw_sprite_ext(spr, 3 + time/4, x + 10, y - (char_height/2), 1, 1, 0, c_white, 1)
    
    with other_player_id shader_end()
}
