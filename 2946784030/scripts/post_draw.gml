if !wario_anticheat{
    //draw_sprite_ext(sprite_get("wario_anticheat"), 0, (view_get_xview()) + 480, (view_get_yview() + 270), 1, 1, 0, c_white, 1);
}

//VB and GB Special Planes Alts

if state == PS_RESPAWN{
    if get_player_color(player) == 17{
        draw_sprite_ext(sprite_get("plat_gb"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
    }
    if get_player_color(player) == 24{
        draw_sprite_ext(sprite_get("plat_vb"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
    }
}