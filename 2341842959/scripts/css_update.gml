jestermode = floor(get_synced_var(player) / 10);
shadelessmode = get_synced_var(player) % 10;

if get_instance_x(cursor_id) > x + 170 && get_instance_x(cursor_id) < x + 202 && get_instance_y(cursor_id) > y + 44 && get_instance_y(cursor_id) < y + 76 && !instance_exists(oTestPlayer){
    suppress_cursor = true;
    if menu_a_pressed{
        if jestermode = false{
            jestermode = true;
            sound_play(sound_get("JMStinkerlaugh"));
        }
        else{
            jestermode = false;
            sound_play(asset_get("mfx_back"));
        }
    }
}

if get_instance_x(cursor_id) > x + 20 && get_instance_x(cursor_id) < x + 52 && get_instance_y(cursor_id) > y + 44 && get_instance_y(cursor_id) < y + 76 && !instance_exists(oTestPlayer){
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
}

set_synced_var(player, (jestermode * 10) + shadelessmode);
init_shader();