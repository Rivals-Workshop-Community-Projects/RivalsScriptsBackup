if(instance_exists(bubblearticle)){
if id.bubblearticle.state = 3{
    shader_start();
    var floored = (floor(bubblearticle.state_timer/bubblearticle.trap_lifetime * 100))
    draw_sprite_ext(sprite_get("ui_backing"), 0, bubblearticle.x - 56, bubblearticle.y - 98, 1, 1, 0, c_white, 1);
    if floored <= 97{
    draw_sprite_part_ext(sprite_get("ui_fill"), 0, 0, 0, 104 - floored, 14, bubblearticle.x - 56, bubblearticle.y - 98, 1, 1, c_white, 1);
    }
    if floored <= 97{
    draw_sprite_ext(sprite_get("ui_fill_2"), get_gameplay_time() / 8, bubblearticle.x + 39 - floored, bubblearticle.y - 98, 1, 1, 0, c_white, 1);
    }
    if floored >= 97 && floored < 100{
    draw_sprite_part_ext(sprite_get("ui_fill_2"), get_gameplay_time() / 8, 101 - floored, 0, 14 + floored, 14, bubblearticle.x + 42 - floored, bubblearticle.y - 98, 1, 1, c_white, 1);
    }
    if floored >= 100{
    draw_sprite_part_ext(sprite_get("ui_fill_2"), get_gameplay_time() / 8, 108 - floored, 0, 16 + floored, 14, bubblearticle.x + 44 - floored, bubblearticle.y - 98, 1, 1, c_white, 1);
    }
    draw_sprite_ext(sprite_get("ui_frame"), 0, bubblearticle.x - 58, bubblearticle.y - 100, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("ui_front"), 0, bubblearticle.x - 56, bubblearticle.y - 98, 1, 1, 0, c_white, 1);
    shader_end(); 
}
}
 

