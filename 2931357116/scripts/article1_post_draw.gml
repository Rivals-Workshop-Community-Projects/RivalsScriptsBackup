if !inited switch type{
    case 0:
    draw_sprite_ext(sprite_get("hud_arrow"), 0, x, y - 30 - 6*ragnarok_lv, 1, 1, 0, get_player_hud_color(player), 1);
    break;
    case 1:
    draw_sprite_ext(sprite_get("hud_arrow"), 0, x + 1, y - 60, 1, 1, 0, get_player_hud_color(player), 1);
    break;
    case 2:
    draw_sprite_ext(sprite_get("hud_arrow"), 0, x + 1, y - 36, 1, 1, 0, get_player_hud_color(player), 1);
    break;
    case 3:
    if state = 3{
        draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_gray, 1);
    }
    draw_sprite_ext(sprite_get("hud_arrow"), 0, x, y - 60, 1, 1, 0, get_player_hud_color(player), 1);
    break;
}

//if !inited draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);