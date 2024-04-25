var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

if "introTime" not in self exit;


switch (get_player_color(real_player)){

    case 1:

        set_ui_element(UI_HUD_ICON, sprite_get("hud_outlaw"));

    break;

    case 27:

        set_ui_element(UI_HUD_ICON, sprite_get("hud_blank"));
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_blank"));
        set_ui_element(UI_CHARSELECT, sprite_get("charselect_blank"));

    break;

    default:

        set_ui_element(UI_HUD_ICON, sprite_get("hud"));
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
        set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
        
    break;

}


var cursor_x = get_instance_x(cursor_id);
var cursor_y = get_instance_y(cursor_id);

//buttons
if (instance_exists(cursor_id)){

    if (cursor_x > button_pos[0] && cursor_x < button_pos[2] && cursor_y > button_pos[1] && cursor_y < button_pos[3]){

        suppress_cursor = true;

        if (press_delay == 0){
            button_state = 1;
        }

        if (menu_a_pressed){
            cur_skin ++;
            if (cur_skin > 19){
                cur_skin = 0;
            }

            set_synced_var(player, cur_skin);
            sound_play(asset_get("mfx_option"));

            press_delay = 3;
            button_state = 2;
        }
    } else {
        button_state = 0;
        spr_set_button_state = 0;
    }
}

//just so the button down will stay for a bit
if (press_delay > 0){

    if (button_state == 2){
        button_state = 2;
    }

    press_delay -= 1;
}