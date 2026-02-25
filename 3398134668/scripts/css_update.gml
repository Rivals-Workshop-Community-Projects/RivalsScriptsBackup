//css_update.gml

if ("css_anim_time" not in self) exit; //prevents error spam on load

css_anim_time ++;
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}


var cursorPos = [get_instance_x(cursor_id)-cursorPosOffset, get_instance_y(cursor_id)-cursorPosOffset];
var onButton = (abs(cursorPos[0]-(buttonPos[0]-buttonOffset)) < buttonRadius && abs(cursorPos[1]-(buttonPos[1]-buttonOffset)) < buttonRadius);

if onButton{
    
    suppress_cursor = true;
    
    if menu_a_pressed{
        sound_play(sound_get("sfx_enableinput"), false, 0, 1, 1);
        if projectEWallJump == 0{
            projectEWallJump = 1;
        }
        else{
            projectEWallJump = 0;
        }
    }
    
}
else{
    suppress_cursor = false;
}

set_synced_var(player, projectEWallJump);
projectEWallJump = get_synced_var(player);