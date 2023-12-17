//other_pre_draw.gml
/*
with other_player_id shader_start()
var time = get_gameplay_time()
with other_player_id {
    var spr_back = sprite_get("mark_back")
    var spr_front = sprite_get("mark_front")
}

if arb_marked {
    draw_sprite_ext(spr_back, time/6, x, y-(char_height/2), 1, 1, 0, c_white, 1)
}

with other_player_id shader_end()
*/