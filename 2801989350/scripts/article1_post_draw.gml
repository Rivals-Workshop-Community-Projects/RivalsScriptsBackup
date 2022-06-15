//article1_post_draw

switch (state) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
    case 17:
    case 18:
        draw_sprite_ext(sprite_get("pluxhud"), player-1, x, y-50, 2, 2, 0, c_white, 1);
    break;
    case 0.5:
    case 9:
        draw_sprite_ext(sprite_get("pluxhud"), player-1, x, y-50, 2, 2, 0, c_white, 0);    
    break;
}