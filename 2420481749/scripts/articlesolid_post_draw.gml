//asdafg

if was_hit >= 8 && was_hit <= 14
{
    draw_sprite_ext( sprite_get("earthpillarwhite"), 0, draw_x+4, y, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillarwhite"), 1, draw_x+4, y+128, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillarwhite"), 1, draw_x+4, y+256, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillarwhite"), 1, draw_x+4, y+384, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillarwhite"), 1, draw_x+4, y+512, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillarwhite"), 1, draw_x+4, y+640, 2, 2, 0, c_white, 1);
}
else
{
    draw_sprite_ext( sprite_get("earthpillar"), 0, draw_x, y, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillar"), 1, draw_x, y+128, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillar"), 1, draw_x, y+256, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillar"), 1, draw_x, y+384, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillar"), 1, draw_x, y+512, 2, 2, 0, c_white, 1);
    draw_sprite_ext( sprite_get("earthpillar"), 1, draw_x, y+640, 2, 2, 0, c_white, 1);
}

