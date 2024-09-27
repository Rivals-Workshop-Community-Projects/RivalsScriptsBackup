// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

var width = 200;
var height = 7;
var origin_x = temp_x + 10;
var origin_y = temp_y - 12;
var fill_color = c_red;
var fill_width = max(floor((meter / meter_max) * width));

//draw_debug_text(temp_x+100, temp_y-48, string(string(meter)))

//draw_debug_text(temp_x+100, temp_y-88, string(string(times_through)))

if (meter >= meter_max && current_time % 20 > 10) 
{
    draw_rectangle_colour(origin_x, origin_y, origin_x + fill_width, origin_y + height, fill_color, fill_color, fill_color, fill_color, false);
    // draw border
draw_rectangle_colour(origin_x, origin_y, origin_x + width, origin_y + height, c_white, c_white, c_white, c_white, false);
// draw background
draw_rectangle_colour(origin_x, origin_y, origin_x + width, origin_y + height, c_white, c_white, c_white, c_white, false);
    
} 
else
{
    draw_rectangle_colour(origin_x, origin_y, origin_x + fill_width, origin_y + height, fill_color, fill_color, fill_color, fill_color, false);
}

var temp_color = c_white;
if (Reved = false ) temp_color = c_gray;
draw_sprite_ext(sprite_get("heart"), 0, temp_x-40, temp_y-77, 2, 2, 0, temp_color, 1)

var temp_color = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("saw"), 0, temp_x+140, temp_y-58, 2, 2, 0, temp_color, 1);


// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);