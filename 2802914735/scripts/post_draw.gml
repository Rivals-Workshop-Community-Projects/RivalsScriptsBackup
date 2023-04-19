//atac stujfawjkfa
if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
    if attack == AT_DSPECIAL {
        if window == 2 && !dspecial_failed{
            //draw_rectangle_color(x - 40, y + 5, x + 35, y + 30, c_yellow, c_yellow, c_yellow, c_yellow, false);   
            //draw_rectangle_color(x + 2, y + 5, x + 20, y + 30, c_green, c_green, c_green, c_green, false); 
            draw_sprite(sprite_get("dspecial_bar"),0,x-(4 * spr_dir),y+20);
            var dspec_x = ease_linear(-32-(4 * spr_dir),40-(4 * spr_dir),window_timer,window_length);
            draw_rectangle_color(x-3+dspec_x, y + 8, x+dspec_x, y + 31, c_gray, c_gray, c_gray, c_gray, false); 
        }
    }   
}

//debug stuff
if should_debug {
    draw_debug_text(x - 30, y + 15, "Window: "+string(window));
    draw_debug_text(x - 30, y + 30, "Window Timer: "+string(window_timer));
    draw_debug_text(x - 30, y + 45, "DSpecial Boost: "+string(has_touched_grass));
    draw_debug_text(x - 30, y + 60, "Cur Axes: "+string(axes_num));
    draw_debug_text(x - 30, y + 75, "Djumps: "+string(djumps));
    draw_debug_text(x - 30, y + 90, "Axe Type: "+string(axe_type));
    draw_debug_text(x - 30, y + 105, "Nspec Buffer: "+string(nspecial_buffer));
}