user_event(12);


if courage_active = true {
outline_color = [get_color_profile_slot_r(get_player_color(player), 5), get_color_profile_slot_g(get_player_color(player), 5), get_color_profile_slot_b(get_player_color(player), 5)];
} else {
outline_color = [ 0, 0, 0,];
}
init_shader();

if state == PS_RESPAWN {
    if spr_dir = 1 {
   shader_start();
   draw_sprite(sprite_get("plat_f"), 0, x, y);
    shader_end();
    }
    else if spr_dir = -1 {
        shader_start();
        shader_start();
    draw_sprite(sprite_get("plat_f"), 0, x, y);
    shader_end();
}}
    

//lmao nope
//if reverse = true {    outline_color = [50,143,24]} 
//if reverse = false {outline_color = [0,0,0]}

