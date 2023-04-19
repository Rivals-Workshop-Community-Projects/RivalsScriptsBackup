if(get_synced_var(player) > 2 || get_synced_var(player) < 0){
    css_va_type = 0;
    set_synced_var(player, 0);
}else{
    css_va_type = get_synced_var(player);
}

css_button_highlight = false;