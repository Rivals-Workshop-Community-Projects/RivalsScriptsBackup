var hud_color = get_player_hud_color(player_id.player);

if (state == 1){
    if (spr_dir == 1){
        draw_sprite_ext( sprite_get("indicator"), 0, x - 6*spr_dir, y - 36, 1, 1, 0, hud_color, 1 );
    }
    else{
        draw_sprite_ext( sprite_get("indicator"), 0, x + 6*spr_dir, y - 36, 1, 1, 0, hud_color, 1 );
    }
}