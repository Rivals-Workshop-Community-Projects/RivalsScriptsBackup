
//cursor position
cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);


is_bite = false;
if(get_synced_var(player) == 1){
    is_bite = true;
    set_ui_element(UI_HUD_ICON, sprite_get("hudb"));
    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurtb"));
    set_ui_element(UI_OFFSCREEN, sprite_get("offscreenb"));
}else{
    set_synced_var(player, 0);
    set_ui_element(UI_HUD_ICON, sprite_get("hud"));
    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
    set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
}

scratch_hover = false;
bite_hover = false;

s_hoverplay = false;
b_hoverplay = false;

arrow_float = 0;