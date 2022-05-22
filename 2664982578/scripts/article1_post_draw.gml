var col_w = c_white;
var col_b = c_black;

if(state == 0){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 6, y - 60, 1, 1, 0, get_player_hud_color(player), 1);
}

if(player_id.bomb_teleport){
    with(player_id){
        shader_start();
draw_sprite_ext(orb_idle, 0, other.x + 1, other.y + 15, 1, 1, 0, c_white, 1);   
}
}