
shader_end();

draw_sprite_ext(arrow_sprite,0,x,y-arrow_offset,1,1,0,get_player_hud_color(original_player),1);

if(seen > 0){
    draw_sprite_ext(seen_sprite,0,x+25,y-35-arrow_offset,2*seen_x,2*seen_y,0,c_white,1);
    draw_sprite_ext(seen_sprite,2,x+25,y-35-arrow_offset,2*seen_x,2*seen_y,0,get_player_hud_color(eggpawn_target.player),1);
}