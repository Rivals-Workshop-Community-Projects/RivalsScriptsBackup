//debug

if (state >= 1) {
    switch(state) {
        case 1:
            var beam_scale = ease_linear(0, 1, scale_timer, state_len[state]/2);
        break;
        case 2:
            var beam_scale = 1;
        break;
        case 3:
            var beam_scale = ease_linear(1, 0, scale_timer, 20);
        break;
    }
    draw_sprite_ext(spr_beam_start[troll], 0, x+(16*dir), y+1, (1*dir), beam_scale, 0, c_white, 1);
    draw_sprite_ext(spr_beam_strip[troll], 0, x+(26*dir), y+1, (dir ? (room_width - x) : -x), beam_scale, 0, c_white, 1);
}
//draw_debug_text(x-67, y-108, string(bl_hitpause));
//draw_debug_text(x-67, y-88, string(blaster_hp));