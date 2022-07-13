//article4_draw.gml
if !is_aether_stage() {
    if draw_challenge draw_sprite_ext(sprite_get("challenge"), 0, room_width/2, room_height/2, 1, 1, 0, c_white, draw_challenge_alpha)
    if draw_challenge draw_sprite_ext(sprite_get("challenge_arrow"), 0, room_width/2, round(room_height/2 + 2 + 2*dsin(player_id.pre_timer*10)), 1, 1, 0, c_white, draw_challenge_alpha)
}
if draw_name draw_sprite_ext(sprite_get("mantis_lords"), 0, room_width/2 - 320, room_height/2 + 170, 1, 1, 0, c_white, draw_name_alpha)
if draw_name_2 draw_sprite_ext(sprite_get("sisters_of_battle"), 0, room_width/2 - 320, room_height/2 + 170, 1, 1, 0, c_white, draw_name_alpha_2)