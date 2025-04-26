if "minion_obj" not in self exit;

shader_start()
var image = 0;

if !instance_exists(minion_obj) {
    var is_cooldown_zero = move_cooldown[AT_NSPECIAL] == 0;
    var is_spawn_targeting = minion_spawn_position.active
    
    image = is_cooldown_zero or is_spawn_targeting ? 0 : 3
}
else {
    image = 1 + !(minion_obj.state == PS_BURIED or minion_obj.state == PS_SPAWN)
}

var box_offset_x = 192
draw_sprite(sprite_get("hud_tombstone"), image, temp_x+box_offset_x-2, temp_y-14)

shader_end();

if image == 3 {
    var box_width = 32;
    var inner_box_width = 28;
    var box_height = 8;
    var inner_box_height = 2;
    var box_offset_y = -4;
    
    var amount = 1-(move_cooldown[AT_NSPECIAL] / minion_death_max_cooldown)
    draw_rectangle_color(temp_x - (box_width/2) + box_offset_x , temp_y - (box_height/2) + box_offset_y, temp_x + (box_width/2) + box_offset_x, temp_y + (box_height/2) + box_offset_y, c_black, c_black, c_black, c_black, false)
    draw_rectangle_color(temp_x - (inner_box_width/2) + box_offset_x, temp_y - (inner_box_height/2) + box_offset_y, temp_x + lerp(-inner_box_width/2, inner_box_width/2, amount) + box_offset_x, temp_y + (inner_box_height/2) + box_offset_y, c_white, c_white, c_white, c_white, false)
}