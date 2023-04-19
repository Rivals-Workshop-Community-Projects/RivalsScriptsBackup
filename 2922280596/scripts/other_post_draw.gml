if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && state_timer > 2 && window < 3)
    draw_sprite_ext(sprite_get("nspecialshot"),0, shoot_x, shoot_y, 1, 1, 0, c_white, 1);


#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);