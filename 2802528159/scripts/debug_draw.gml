//climb1 check lines
//draw_line_color(x, y - 40, x + 92 * spr_dir, y - 40, c_white, c_white);
//draw_line_color(x - 40, y, x - 40, y - 92 * spr_dir, c_white, c_white);
//draw_line_color(x, y + 40, x + 92 * -spr_dir, y + 40, c_white, c_white);
//draw_line_color(x + 40, y, x + 40, y + 92 * spr_dir, c_white, c_white);

//climb1 check lines
//draw_line_color(x + 92 * spr_dir, y - 1, x + 92 * spr_dir, y + 30, c_white, c_white);
//draw_line_color(x - (spr_dir? 0: 1), y, x - (spr_dir? 1: 2), y + 4, c_white, c_white);
//
//draw_line_color(x - 1, y - 92 * spr_dir, x + 30, y - 92 * spr_dir, c_white, c_white);
//draw_line_color(x - 1, y - (spr_dir? 1: 0), x + 4, y - (spr_dir? 1: 0), c_white, c_white);
//
//draw_line_color(x - 92 * spr_dir, y, x - 92 * spr_dir, y - 30, c_white, c_white);
//draw_line_color(x - (spr_dir? 2: 0), y - 1, x - (spr_dir? 1: 1), y - 4, c_white, c_white);
//
//draw_line_color(x, y + 92 * spr_dir, x - 30, y + 92 * spr_dir, c_white, c_white);
//draw_line_color(x + 1, y + (spr_dir? 0: -1), x - 4, y + (spr_dir? 0: -1), c_white, c_white);
//

//wall groundedness check
//draw_rectangle_color(x + wall_c[(wall%360)/90][0], y + wall_c[(wall%360)/90][1], x + wall_c[(wall%360)/90][2], y + wall_c[(wall%360)/90][3], c_white, c_white, c_white, c_white, 1);

//uspec wall checks
//0
//draw_rectangle_color(x, y - 1, x, y - 60, c_white, c_white, c_white, c_white, 1);
//1
//draw_rectangle_color(x - 1, y + 1, x, y, c_white, c_white, c_white, c_white, 0.6);
//draw_rectangle_color(x - 2, y, x - 30, y - 1, c_red, c_red, c_red, c_red, 0.6);
//2
//draw_rectangle_color(x - 29 * spr_dir, y, x + 30 * spr_dir, y - 1, c_white, c_white, c_white, c_white, 1);
//3
//draw_rectangle_color(x - 2, y + 1, x - 1, y, c_white, c_white, c_white, c_white, 0.6);
//draw_rectangle_color(x, y, x + 30, y - 1, c_red, c_red, c_red, c_red, 0.6);
//4
//draw_rectangle_color(x, y - 1, x - 2, y - 60, c_white, c_white, c_white, c_white, 1);
//5
//draw_rectangle_color(x - 1, y - 1, x, y - 64, c_black, c_black, c_black, c_black, 0.6);
//draw_rectangle_color(x + 1, y, x + 30, y - 1, c_red, c_red, c_red, c_red, 0.6);
//6
//draw_rectangle_color(x - 29 * spr_dir, y, x + 30 * spr_dir, y, c_white, c_white, c_white, c_white, 1);
//7
//draw_rectangle_color(x - 1, y - 1, x, y - 64, c_black, c_black, c_black, c_black, 0.6);
//draw_rectangle_color(x - 1, y, x - 30, y - 1, c_red, c_red, c_red, c_red, 0.6);

//collison box
//draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);