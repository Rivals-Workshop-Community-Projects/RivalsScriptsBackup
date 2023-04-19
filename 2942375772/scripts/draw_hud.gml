if "notes" not in self exit;

draw_sprite_ext(sprite_get("hud_backer"), 0, temp_x+18,temp_y-20, 1, 1, 0, c_white, 1);

var i = 0;

while (i < array_length(notes) and notes[i] != -1) {
    draw_sprite(sprite_get("hud_notes"), notes[i], temp_x + 46 + (i*36),temp_y-22);
    
    if note_pointer != -1 {
        var t = ease_cubeOut(0, 30, floor(note_pointer_display_timer), 20)
        
        draw_sprite_ext(sprite_get("pointer"), 0, temp_x + 50 + (note_pointer*36),temp_y-64 + t,1,1,0,get_player_hud_color(player), 1)
    }
    
    i+=1;
}
