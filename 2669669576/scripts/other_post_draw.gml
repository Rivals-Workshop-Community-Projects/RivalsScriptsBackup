if("dreameater_sprite" not in other_player_id) exit;
if(other_player_id.shadowball_hit_timer > 0 and other_player_id.shadowball_hit_player == self){
    var status = other_player_id.dreameater_sprite;
    with(other_player_id)shader_start();
    draw_sprite_ext(status, floor((get_gameplay_time()/6)%6), x+14, y-32-char_height, 1, 1, 0, c_white, 1);
    with(other_player_id)shader_end();
}