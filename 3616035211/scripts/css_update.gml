var cx = get_instance_x(cursor_id);
var cy = get_instance_y(cursor_id);
if cx == clamp(cx, x + 170, x + 202) && cy == clamp(cy, y + 44, y + 76) && !instance_exists(oTestPlayer){
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
set_synced_var(player, jestermode);

var alt_cur = get_player_color(player);
set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait" + (alt_cur == 13? "EXE": "")));
set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small" + (alt_cur == 13? "EXE": "")));
set_ui_element(UI_CHARSELECT, sprite_get("charselect" + (alt_cur == 13? "EXE": "")));