//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

if ("css_anim_time" not in self) exit; //prevents error spam on loading, as CSS update runs after CSS init for some reason

var sync = get_synced_var(player)

css_anim_time ++; //animates the css by counting up, similarly to a state_timer
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

//these values need to be updated every frame because when you come back to the CSS the window kinda pops up
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    init_shader();
    alt_prev = alt_cur;
}

// alt swap buttons
up_button_press_timer = max(0, up_button_press_timer-1);
//down_button_press_timer = max(0, down_button_press_timer-1);

suppress_cursor = false;
if alt_cur == playtester_alt or alt_cur == tournament_alt {
  if (instance_exists(cursor_id)) {
    var cursor_x = get_instance_x(cursor_id);
    var cursor_y = get_instance_y(cursor_id);
    var button_dir = 0;

    // check for button "collision"
    if (cursor_x > x + up_button_x && cursor_x < x + up_button_w
    &&  cursor_y > y + up_button_y && cursor_y < y + up_button_h) {
      button_dir = 1;
      if (menu_a_pressed) or (menu_b_pressed) {
        if menu_b_pressed {button_dir = -1;}
        up_button_state = 2;
        up_button_press_timer = 6;
      } else if up_button_press_timer <= 0 { up_button_state = 1 };
    } else {
      if up_button_press_timer <= 0 { up_button_state = 0 };
    }

    /* if (cursor_x > x + down_button_x && cursor_x < x + down_button_w
    &&  cursor_y > y + down_button_y && cursor_y < y + down_button_h) {
      button_dir = -1;
      if (menu_a_pressed) {
        down_button_state = 2;
        down_button_press_timer = 6;
      } else if down_button_press_timer <= 0 { down_button_state = 1 };
    } else {
      if down_button_press_timer <= 0 { down_button_state = 0 };
    } */
    // if a button is hovered...
    if button_dir != 0 {
      suppress_cursor = true;

      if (menu_a_pressed) or (menu_b_pressed) {
        var tens = floor(sync/10);
        var ones = sync-10*tens;
        if alt_cur == playtester_alt {
          ones = ones + button_dir;
          if ones >= total_playtesters {ones = 0} else if ones <= -1 {ones = total_playtesters-1}
        } else if alt_cur == tournament_alt {
          tens = tens + button_dir;
          if tens >= total_tournaments+1 {tens = 1} else if tens <= 0 {tens = total_tournaments}
        }
        sync = tens*10 + ones;
        // print('tens: ' + string(tens) + ', ones: ' + string(ones))
        sound_play(asset_get("mfx_forward"), false, noone, 0.75);

        set_synced_var(player, sync);
        init_shader();
        css_anim_time = 0;
      }
    }
  }
}
