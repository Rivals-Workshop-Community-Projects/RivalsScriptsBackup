//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

css_anim_time ++; //animates the css by counting up, similarly to a state_timer
alt_cur = get_player_color(player); //checks the current alt
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable


//these values need to be updated every frame because when you come back to the CSS the window kinda pops up
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x - 32);
preview_y = floor(y - 56);

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

jestermode = floor(get_synced_var(player) / 10);
shadelessmode = get_synced_var(player) % 10;

/*if get_instance_x(cursor_id) > x + 170 && get_instance_x(cursor_id) < x + 202 && get_instance_y(cursor_id) > y + 90 && get_instance_y(cursor_id) < y + 122 && !instance_exists(oTestPlayer){
    suppress_cursor = true;
    if menu_a_pressed{
        if shadelessmode = false{
            shadelessmode = true;
            sound_play(asset_get("sfx_watergun_splash"));
        }
        else{
            shadelessmode = false;
            sound_play(asset_get("mfx_back"));
        }
    }
}*/

set_synced_var(player, (jestermode * 10) + shadelessmode);
init_shader();