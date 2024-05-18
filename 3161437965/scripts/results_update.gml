if(get_synced_var(player) == 420) saved_sync_var = 1;
if(get_synced_var(player) == 69) saved_sync_var = 0;
if("saved_sync_var" in self && "edited_winner_name" not in self){
    winner_name = winner_name + " <3";
    edited_winner_name = true;
}

if("saved_sync_var" in self) set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_frame_" + string( (floor((1 + image_index%44)/5.63) + 1) )));

if(end_charselect == true || end_rematch == true){
    if "saved_sync_var" in self set_synced_var(player, saved_sync_var);
}

init_shader();