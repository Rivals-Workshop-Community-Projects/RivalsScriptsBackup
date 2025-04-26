
switch (state) {
    case 1:
        draw_sprite_ext(sprite_get("a_notebl"), state_timer * 4 / state_end, x, y, 1, 1, sin(state_timer/6) * 5, noteblock_co, 1);
    break;
    case 2:
        draw_sprite_ext(sprite_get("a_notebl_bounce"), state_timer*5 / state_end, x, y, 1, 1, 0, noteblock_co, 1);
    break;
    case 99:
        draw_sprite_ext(sprite_get("a_notebl_die"), state_timer*2 / state_end, x, y, 1, 1, 0, noteblock_co, 1);
    break;
}
