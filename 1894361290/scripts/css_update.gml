//css_update.gml

player_col = get_player_color(player)

cursor_x = get_instance_x(cursor_id) - x
cursor_y = get_instance_y(cursor_id) - y

if cursor_cooldown > 0 cursor_cooldown--

custom_slot = undefined;
for (var i = 0; i < array_length(custom_slots); i++) {
    if player_col == custom_slots[i] {
        custom_slot = true;
    }
}

//custom colour slot code
if custom_slot && !mute_lockout {
    //cursor hovering over icon
    if abs(icon_x - cursor_x + 14) < 14 && abs(icon_y - cursor_y + 14) < 14 {
        icon_hovering = true
        suppress_cursor = true
    } else {
        icon_hovering = false
    }
    
    if menu_a_pressed && cursor_cooldown == 0 { //button press
        cursor_cooldown = 6
        
        //icon press
        if icon_hovering {
            mute = !mute
            if mute sound_play(sound_get("pshh"))
            else sound_play(sound_get("wt_release"))
            
        }
    }
}

if mute_lockout {
    mute = true
}

set_synced_var(player, mute)