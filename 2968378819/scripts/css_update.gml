if "jestermode" not in self jestermode = false;

if get_instance_x(cursor_id) > x + 170 && get_instance_x(cursor_id) < x + 202 && get_instance_y(cursor_id) > y + 40 && get_instance_y(cursor_id) < y + 72 && !instance_exists(oTestPlayer){
    suppress_cursor = true;
    if menu_a_pressed{
        if jestermode = false{
            jestermode = true;
            sound_play(sound_get("JMMonkgrowl"));
        }
        else{
            jestermode = false;
            sound_play(asset_get("mfx_back"));
        }
    }
}

set_synced_var(player, jestermode);