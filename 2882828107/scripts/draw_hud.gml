//jackolantern
var jackolantern_packet_shader = c_gray;
var jackolantern_recharge_yscale = ((ceil((450-jackolantern_recharge)/22.5))/20)
var jackolantern_exists = false;

with (obj_article1){
    if (player_id == other.id){
        var jackolantern_exists = true;
    }
}

if (jackolantern_recharge >= 450) && (!jackolantern_exists){
    jackolantern_packet_shader = c_white;
}

shader_start();
draw_sprite_ext(sprite_get("jackolantern_packet"), 0, temp_x+156, temp_y-46, 1, 1, 0, jackolantern_packet_shader, 1);
shader_end();

draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+158, temp_y-44, 1, jackolantern_recharge_yscale, 0, c_black, 0.5);

//witchhazel
var witchhazel_packet_shader = c_gray;
var witchhazel_recharge_yscale = ((ceil((180-witchhazel_recharge)/9))/20)
var witchhazel_exists = false;

with (obj_article2){
    if (player_id == other.id){
        var witchhazel_exists = true;
    }
}

if (witchhazel_recharge >= 180) && (!witchhazel_exists){
    witchhazel_packet_shader = c_white;
}

shader_start();
draw_sprite_ext(sprite_get("witchhazel_packet"), 0, temp_x+94, temp_y-46, 1, 1, 0, witchhazel_packet_shader, 1);
shader_end();

draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+96, temp_y-44, 1, witchhazel_recharge_yscale, 0, c_black, 0.5);


if (practice_mode && (jackolantern_recharge < 450 || witchhazel_recharge < 180)){
    draw_debug_text(temp_x+94, temp_y - 60, "Taunt to refresh")
}