switch(get_player_color(player)){
    case 13:
        draw_sprite(sprite_get("css_icons"), 3, x+176, y+110);
        break;
    case 10:
    case 11:
    case 12:
    case 15:
    case 16:
        draw_sprite(sprite_get("css_icons"), 4, x+176, y+110);
        break;
    case 17:
        draw_sprite(sprite_get("css_icons"), 2, x+176, y+110);
        break;
    case 18:
        draw_sprite(sprite_get("css_icons"), 0, x+176, y+110);
        break;
    case 14:
        draw_sprite(sprite_get("css_icons"), 1, x+176, y+110);
        break;
}