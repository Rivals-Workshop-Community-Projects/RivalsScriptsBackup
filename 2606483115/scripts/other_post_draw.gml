//bleh
if !instance_exists(other_player_id) exit;
with(other_player_id){
    if("shrug_galega" not in self) exit;
}

//Overheat overlay
if(other_player_id.player == other_player_id.galega_players[0]){
    if(overheat > 0){
        draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites)*spr_dir, 1 + small_sprites, spr_angle, c_red, overheat / 150)
    }
}