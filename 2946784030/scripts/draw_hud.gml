/*

//draw_debug_text(temp_x, temp_y-10, "Bike Speed:  " + string(wario_bike_speed));
//draw_debug_text(temp_x, temp_y-22, "Skid Time:  " + string(get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH)));

draw_debug_text(temp_x, temp_y-10, "State:  " + string(state));
draw_debug_text(temp_x, temp_y-22, "Bike Cooldown:  " + string(move_cooldown[AT_FSPECIAL]));
//draw_debug_text(temp_x, temp_y-70, "PBike Health:  " + string(bike_health));

if instance_exists(bike){
    draw_debug_text(temp_x, temp_y-34, "Bike State:  " + string(bike.state));
    draw_debug_text(temp_x, temp_y-46, "Bike Hitstop:  " + string(bike.hitstop));
    draw_debug_text(temp_x, temp_y-58, "Bike Health:  " + string(bike.health));
}

*/

shader_start();

if move_cooldown[AT_FSPECIAL] == 0 && !instance_exists(bike){
    draw_sprite_ext(wariobike_hud, 0, temp_x+144, temp_y-24, 2, 2, 0, c_white, 1);
}
if move_cooldown[AT_FSPECIAL] > 0 || instance_exists(bike){
    draw_sprite_ext(wariobike_hud, 0, temp_x+144, temp_y-24, 2, 2, 0, c_black, 1);
}

shader_end();