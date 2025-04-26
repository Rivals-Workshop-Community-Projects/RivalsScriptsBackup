if "css_button_timer" not in self exit;

stance_select = get_synced_var(player);
css_button_timer++;

if (get_instance_x(cursor_id) > x + css_button[0] && get_instance_x(cursor_id) < x + css_button[0] + 40 && get_instance_y(cursor_id) > y + css_button[1] && get_instance_y(cursor_id) < y + css_button[1] + 40 && !instance_exists(oTestPlayer)){
    suppress_cursor = true;
    if (menu_a_pressed){
        stance_select = (stance_select + 1) % 2;
        css_button_timer = 0;
        sound_play(sound_get("sfx_taunt"));
    }
}

if (stance_select == 0){
        set_ui_element(UI_HUD_ICON, sprite_get("pizzaface_hud"));
	    set_ui_element(UI_HUDHURT_ICON, sprite_get("pizzaface_hurt_hud"));
        set_ui_element(UI_OFFSCREEN, sprite_get("pizzaface_offscreen"));
    } else {
        set_ui_element(UI_HUD_ICON, sprite_get("pizzahead_hud"));
	    set_ui_element(UI_HUDHURT_ICON, sprite_get("pizzahead_hurt_hud"));
        set_ui_element(UI_OFFSCREEN, sprite_get("pizzahead_offscreen"));
}
set_synced_var(player, stance_select);
