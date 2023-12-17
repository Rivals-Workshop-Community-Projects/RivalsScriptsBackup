//umbrellaleaf
var umbrellaleaf_packet_shader = c_gray;
var umbrellaleaf_recharge_yscale = ((ceil((300-umbrellaleaf_recharge)/15))/20)
var jackolantern_exists = false;

with (obj_article1){
    if (player_id == other.id){
        var exists = true;
    }
}

if (umbrellaleaf_recharge >= 300) && (!exists){
    umbrellaleaf_packet_shader = c_white;
}

shader_start();
draw_sprite_ext(sprite_get("umbrellaleaf_packet"), 0, temp_x+156, temp_y-46, 1, 1, 0, umbrellaleaf_packet_shader, 1);
shader_end();

draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+158, temp_y-44, 1, umbrellaleaf_recharge_yscale, 0, c_black, 0.5);

if (practice_mode && (umbrellaleaf_recharge < 300)){
    draw_debug_text(temp_x+30, temp_y - 16, "Taunt to refresh")
}