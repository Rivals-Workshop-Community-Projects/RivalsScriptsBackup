//post-draw
if ("char_height" not in self) exit;
if(state == PS_SPAWN){
tetrimino = 0;
comet = noone;
}





draw_sprite_ext(sprite_get("tetrinos_background"), 0 , temp_x+154, temp_y-42, 2, 2, 0, get_player_hud_color( player ), 1);

draw_sprite_ext(sprite_get("tetrinos_next"), 0 , temp_x+154, temp_y-42, 2, 2, 0, c_white, 1);


shader_start();
draw_sprite_ext(sprite_get("tetrinos_small_all"), tetrimino , temp_x+184, temp_y-12, 1, 1, 0, c_white, 1);

    





shader_end();

if(move_cooldown[AT_NSPECIAL] > 0){
draw_sprite_ext(sprite_get("comet_HUD"), 1 , temp_x+124, temp_y-36, 1, 1, 0, c_white, 1);
}else{
draw_sprite_ext(sprite_get("comet_HUD"), 0 , temp_x+124, temp_y-36, 1, 1, 0, c_white, 1);
    
}