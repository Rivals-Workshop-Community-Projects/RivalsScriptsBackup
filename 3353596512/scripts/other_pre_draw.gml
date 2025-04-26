//predraws (draws behind) other players

//draw_debug_text(x, y + 32, string(zapped_timer))

if (zapped_timer > 0 && zapped_visual){
    if (zapped_timer % 3 == 0){
        draw_x = zapped_pos;
    }
}