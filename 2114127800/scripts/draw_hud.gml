var temp_color = c_white;
var sprites = ["bar_0","bar_1","bar_2","bar_3"];
if (move_cooldown[AT_NSPECIAL] > 0) temp_color = c_gray;
shader_start();
draw_sprite_ext(sprite_get(sprites[charge_gauge]), get_gameplay_time()*0.18, temp_x + 165, temp_y - 34, 1, 1, 0, temp_color, 1);
shader_end();

var temp_color = c_white;
if (move_cooldown[AT_DSPECIAL] > 0) temp_color = c_gray;
shader_start();
draw_sprite_ext(sprite_get("blob"), 0, temp_x + 130, temp_y - 34, 1, 1, 0, temp_color, 1);
shader_end();

if (instance_exists(m_lava)){
var temp_color = c_white;
}
else{
temp_color = c_gray;
}
shader_start();
draw_sprite_ext(sprite_get("lava"), 0, temp_x + 95, temp_y - 34, 1, 1, 0, temp_color, 1);
shader_end();

user_event(11);