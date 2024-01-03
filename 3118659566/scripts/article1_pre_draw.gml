if free && state != 1 {
    ignores_walls = true;
    if spr_dir = 1 {
        draw_sprite_ext( sprite_get("mb_air_propeller"), propframes, x, y, 1, 1, 0, -1, 1 );
    } else {
        draw_sprite_ext( sprite_get("mb_air_propeller"), propframes, x + (2 * spr_dir), y, 1, 1, 0, -1, 1 );
    } 
}
if (state == 2) || (state == 3) || (state == 4)   {
    draw_sprite_ext( sprite_get("mb_hud"), (letters), x + (0 * spr_dir), y + 70, 1, 1, 0, -1, 1 );
}  

if state == 0 && state != 10 {
    draw_sprite_ext( sprite_get("mb_hud"), (letters), x + (0 * spr_dir), y + 70, 1, 1, 0, -1, mbopacity );
}