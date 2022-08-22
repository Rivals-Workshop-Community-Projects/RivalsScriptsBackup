var hud_color = get_player_hud_color(player_id.player);

var size_display = false;

if (spr_dir == 1){
    draw_sprite_ext( sprite_get("indicator"), 0, x - 6*spr_dir, y - 75, 1, 1, 0, hud_color, 1 );
}
else{
    draw_sprite_ext( sprite_get("indicator"), 0, x + 6*spr_dir, y - 75, 1, 1, 0, hud_color, 1 );
}
