depth = 30;
if player_id.visible && (player_id.state == PS_RESPAWN || player_id.respawn_taunt > 0){
    var i = 0;
    repeat(5){
        draw_sprite_ext(sprite_get("tower"), 0, player_id.x, player_id.y + 78 + 180*i, 2, 2, 0, c_white, 1);
        i++;
    }
    draw_sprite_ext(sprite_get("roof"), 0, player_id.x, player_id.y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("base_plat"), 0, player_id.x, player_id.y, 2, 2, 0, c_white, 1);
}