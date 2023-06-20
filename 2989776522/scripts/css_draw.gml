alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable
alt_cur = get_player_color(player);

muno_event_type = 6;
user_event(14);

/*if(get_player_hud_color(player) != 8421504){
    draw_sprite_ext(sprite_get("css_button"), voicebutton, x+voice_button_pos[0], y+voice_button_pos[1], 2, 2, 0, c_white, 1);
}*/
draw_sprite_ext(sprite_get("css_button"), voicebutton, x+voice_button_pos[0], y+voice_button_pos[1], 2, 2, 0, c_white, 1);

cpu_hover_draw(); 

#define cpu_hover_draw()
    if (cpu_hover_time > 0) {
        var prog = min(cpu_hover_time/10, 1);
        var colprog = min(cpu_color_swap_time/5, 1);
        var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
        draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
        draw_set_alpha(prog);
        draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
        draw_set_alpha(1);
    }