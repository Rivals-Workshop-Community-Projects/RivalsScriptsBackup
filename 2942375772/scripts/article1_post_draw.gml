//draw_debug_text(x-94,y+38,`NOTE STORAGE : ${note_storage}`)

if visible {
    if (get_player_color(player_id.player) != 21){
    draw_sprite_ext(sprite_get("tambo"),0,x,y,draw_xscale,draw_yscale,0,cooldown_timer == 0 ? c_white : c_gray,1)
    } else {
        draw_sprite_ext(sprite_get("tambo-rt"),0,x,y,draw_xscale,draw_yscale,0,cooldown_timer == 0 ? c_white : c_gray,1)
    }

    var j = 0;
    var n = get_num_notes();
    
    var starting_pos = -9*n
    
    for (var j = 0; j < n; j++) {
        draw_sprite_ext(sprite_get("notes_small"), note_storage[j], x+ (j*20) + starting_pos, y-12,draw_xscale*1.2,draw_yscale*1.2,0,cooldown_timer == 0 ? c_white : c_gray,1);
    }
}

#define get_num_notes
var i = 0
while i != array_length(note_storage) and note_storage[i] != -1 {
    i++;
}

return i