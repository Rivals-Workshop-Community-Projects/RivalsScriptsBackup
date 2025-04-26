
shader_start()
    

//intro anim
var percent = focused_fury ? min(1,shown_wrath_meter/focused_fury_max):min(1,shown_wrath_meter/40);
var offset = 60*percent
var color = focused_fury ? c_white: blood_color;

draw_sprite(sprite_get("hud_hotbar_small"), charged, x - 30, y - 96 - hud_offset);

if (shown_wrath_meter > 1) draw_rectangle_colour(x - 30, y - 94 - hud_offset, x - 30 + offset-1, y - 93 - hud_offset, color,  color, color,   color ,false)
shader_end()