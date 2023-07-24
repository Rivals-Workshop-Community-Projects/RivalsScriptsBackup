
if(!instance_exists(cursor_id)) exit;

//temp_x = floor(x + ((player - 1) * 238));
//temp_y = floor(y);

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);


scratch_hover = false;
bite_hover = false;

var dir_idle = (!left_down && !right_down && !up_down && !down_down);
//bite area
if((cursor_x > x + 10 && cursor_x < x + 90 && cursor_y > y + 10 && cursor_y < y + 94) || (cursor_x > x + 10 && cursor_x < x + 116 && cursor_y > y + 90 && cursor_y < y + 150)){
    bite_hover = true;
    if(b_hoverplay == false && !is_bite && !dir_idle){
        b_hoverplay = true;
        sound_play(asset_get("mfx_hover"));
    }
    suppress_cursor = true;
    if(menu_a_pressed && !is_bite){
        sound_play(sound_get("sfx_record1r"));
        is_bite = true;
        set_synced_var(player, 1);
        set_ui_element(UI_HUD_ICON, sprite_get("hudb"));
        set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurtb"));
        set_ui_element(UI_OFFSCREEN, sprite_get("offscreenb"));
    }
}else if(cursor_x > x + 10 && cursor_x < x + 210 && cursor_y > y + 10 && cursor_y < y + 150){
    scratch_hover = true;
    if(s_hoverplay == false && is_bite && !dir_idle){
        s_hoverplay = true;
        sound_play(asset_get("mfx_hover"));
    }
    suppress_cursor = true;
    if(menu_a_pressed && is_bite){
        sound_play(sound_get("sfx_record1"));
        is_bite = false;
        set_synced_var(player, 0);
        set_ui_element(UI_HUD_ICON, sprite_get("hud"));
        set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
        set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
    }
}

if(scratch_hover = false) s_hoverplay = false;
if(bite_hover = false) b_hoverplay = false;