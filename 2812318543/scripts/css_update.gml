
if("css_va_type" not in self) exit;
if(!instance_exists(cursor_id)) exit;


x = floor(x);
y = floor(y);

if(get_instance_x(cursor_id) >= x + 166 && get_instance_x(cursor_id) <= x + 208) && (get_instance_y(cursor_id) >= y + 112 && get_instance_y(cursor_id) <= y + 138){
    suppress_cursor = true;
    css_button_highlight = true;
    if(menu_a_pressed){
        css_va_type++;
        if(css_va_type > 2){
            css_va_type = 0;
        }
        if(css_va_type == 1){
            sound_play(sound_get("vaen_z_hah"), false, noone, 1.1, 1);
        }else if(css_va_type == 2){
            sound_play(sound_get("vajp_z_hmph"), false, noone, 1.1, 1);
        }
        set_synced_var(player, css_va_type);
        sound_play(asset_get("mfx_change_color"));
    }
}else{
    css_button_highlight = false;
}