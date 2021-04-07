//
switch location {
    case 0:
    draw_rectangle_color(x + 500, 640, x + 483, y1 + 10, c_white,c_white,c_white,c_white, false)
    break;
    
    case 1:
    draw_rectangle_color(x - 500, 640, x - 485, y1 + 10, c_white,c_white,c_white,c_white, false)
    break;
    
    case 2:
    draw_rectangle_color(x1, y + 593, x2, y + 609, c_white,c_white,c_white,c_white, false);
    break;
}