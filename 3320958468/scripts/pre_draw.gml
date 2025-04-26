//  pre_draw.gml

//============================================================================
//  Respawn platform

//shader_start();
//shader_end();

var game_time       = get_gameplay_time();
var plat_speed      = 0.20;

if (state == PS_RESPAWN) 
{
    draw_sprite_ext(sprite_get("platM"), game_time * plat_speed, x, y, 1, 1, 0, c_white, 1);
}

//============================================================================
//  Plunger Guard Visual Ranger

var range_x_offset  = 4;
var range_y_offset  = 2;

if !has_rune("O")
{
	var shortest_dist   = 100;  // Example radius for the turret's range
}

if has_rune("O")
{
	var shortest_dist   = 160;
}

if (instance_exists(plunger_guard))
{
    if (plunger_guard.state != 7)
    {
        if (!get_match_setting(SET_PRACTICE))
        {
            draw_set_alpha(0.20);
        }

        if (get_match_setting(SET_PRACTICE))
        {
            draw_set_alpha(0.25);
        }

        // Draw a circle with a white outline
        for (var i = -1; i <= 1; i++) 
        {
            for (var j = -1; j <= 1; j++) 
            {
                draw_circle_colour(plunger_guard.x - range_x_offset + i * 0.5, plunger_guard.y + range_y_offset + j * 0.5, shortest_dist, c_purple, c_purple, true);
            }
        }

        // Reset alpha to 1
        draw_set_alpha(1);
    }
}