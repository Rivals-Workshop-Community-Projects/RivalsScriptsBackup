
/*
draw_debug_text(x-2, y+50, string(bite()));

draw_debug_text(x-2, y+4, string(currentsprite));

draw_debug_text(x-20, y+16, "s = " + string(s_storedatk));
draw_debug_text(x-20, y+32, "s = " + string(b_storedwintim));
draw_debug_text(x+20, y+16, "b = " + string(b_storedatk));
draw_debug_text(x+20, y+32, "b = " + string(b_storedwintim));


with(asset_get("obj_article1")){
    if (player_id == other){
        draw_debug_text(x-20, y+5, "Window:" + string(window));
        draw_debug_text(x-20, y+20, "Window Timer:" + string(window_timer));
        draw_debug_text(x-20, y+35, "Scratch:" + string(is_bite));
    }
}

#define bite()
///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;