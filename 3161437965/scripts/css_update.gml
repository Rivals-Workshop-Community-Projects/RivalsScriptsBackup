//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

if ("css_anim_time" not in self) exit;

//button stuff
var is_cpu = (get_player_hud_color(player) == 8421504);
var cursor_x = get_instance_x(cursor_id);
var cursor_y = get_instance_y(cursor_id);
if (is_cpu) {
    if (cpu_is_hovered) {
        cursor_id = cursors[cpu_hovering_player];
        
        cursor_x = get_instance_x(cursor_id);
        cursor_y = get_instance_y(cursor_id);
        
        if cpu_hover_time < 10 cpu_hover_time++;
        if cpu_color_swap_time < 5 cpu_color_swap_time++;
        if (cursor_x != clamp(cursor_x, plate_bounds[0],plate_bounds[2]) || cursor_y != clamp(cursor_y, plate_bounds[1],plate_bounds[3])) {
            cpu_is_hovered = false;
            cursor_id = cursors[player];
        }
    } else {
        var hplayer = get_new_hovering_player()
        if cpu_hover_time > 0 cpu_hover_time--;
        if (hplayer != -1) {
            
            new_color = get_player_hud_color(hplayer);
            if cpu_hover_time > 0 {
                prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else {
                prev_color = new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cursors[hplayer];
        }
    }
}
else
{
    cursor_id = cursors[player];
    if cpu_hover_time > 0 cpu_hover_time--;
}
css_anim_time ++;
alt_fix = player;


icon_x_pos = x + 174;
icon_y_pos = y + 36;
preview_x = floor(x+10);
preview_y = floor(y+10);
if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;

    //swapping alt sound
    if (menu_rb_pressed || menu_lb_pressed)
    {
        sound_stop(asset_get("mfx_change_color"));
        sound_play(sound_get("mfx_move"));
    }
}


//button
if (instance_exists(cursor_id))
{
    if (cursor_x > skin_but_pos[0] && cursor_x < skin_but_pos[2] && cursor_y > skin_but_pos[1] && cursor_y < skin_but_pos[3])
    {
        if (press_delay == 0) skin_but_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_skin = !cur_skin;
            sound_stop(sound_get("sfx_save"));
            sound_play(sound_get("sfx_save"));

            set_synced_var(player, cur_skin);
            user_event(1);

            press_delay = 3;
            css_anim_time = 0;
            skin_but_state = 2;
        }
    }
    else
    {
        skin_but_state = 0;
        spr_set_button_state = 0;
        suppress_cursor = false;
    }
}

//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (skin_but_state == 2) skin_but_state = 2;
    press_delay --;
}

#define get_new_hovering_player
{
        for (var i = 1; i <= 4; i++) {
        var cx = get_instance_x(cursors[i]);
        var cy = get_instance_y(cursors[i]);
        if cx == clamp(cx, plate_bounds[0],plate_bounds[2]) && cy == clamp(cy, plate_bounds[1],plate_bounds[3]) {
            return i;
        }
    }
    return -1;
}