//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

css_anim_time ++; //animates the css by counting up, similarly to a state_timer
alt_cur = get_player_color(player); //checks the current alt
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

set_synced_var(player, css_port_select)

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
if (alt_prev != alt_cur)
{
    if (alt_prev > alt_cur)
    {
		css_anim_time = 0;
    }
    else
    {
		css_anim_time = 0;
    }
    alt_prev = alt_cur;
}

//these values need to be updated every frame because when you come back to the CSS the window kinda pops up
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

//rainbow alt stuff
if (alt_cur == 11 || alt_cur == 12) user_event(0);
//rainbow alt stuff
if (alt_cur == 11 || alt_cur == 12) user_event(0);

