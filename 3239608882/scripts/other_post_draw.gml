
if (bio_TIMER > 0)
{
var width = 55;
var height = 7;
var origin_x = x - 20;
var origin_y = y - (char_height * 1.5);
var fill_color = c_purple;
var fill_width = max(floor((bio_TIMER / 300) * width));
    with (other_player_id) 
    {
        
        draw_rectangle_colour(origin_x, origin_y, origin_x + width, origin_y + height, c_black, c_black, c_black, c_black, false);
        draw_rectangle_colour(origin_x, origin_y, origin_x + fill_width, origin_y + height, fill_color, fill_color, fill_color, fill_color, false);
    }

}

if (bio_TIMER <= 0)
{
outline_color = [ 0, 0, 0 ];

}

if (bio_TIMER > 0)
{
outline_color = [ 39, 39, 134 ];
}