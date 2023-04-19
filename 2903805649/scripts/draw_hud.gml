

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

