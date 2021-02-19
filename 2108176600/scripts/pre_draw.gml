// pre-draw
shader_start();
with asset_get("obj_article2") {
    if player_id == other.id {
        //draw_sprite_ext(render_sprite,image_index,x,y,1,1,0,c_gray,.7);
        draw_sprite_part_ext(render_sprite,image_index,other.glitch_x*8+90,other.glitch_y*8+130,42,42,x+(-30+other.glitch_x*8+other.glitch_x_off-3)*spr_dir,y-100+other.glitch_y*8+other.glitch_y_off-3,spr_dir,1,c_gray,.7);
        draw_sprite_part_ext(render_sprite,image_index,other.glitch_xp*8+90,other.glitch_yp*8+130,42,42,x+(-30+other.glitch_xp*8+other.glitch_x_offp-3)*spr_dir,y-100+other.glitch_yp*8+other.glitch_y_offp-3,spr_dir,1,c_gray,.7);
        draw_sprite_part_ext(render_sprite,image_index,other.glitch_xpp*8+90,other.glitch_ypp*8+130,42,42,x+(-30+other.glitch_xpp*8+other.glitch_x_off-3)*spr_dir,y-100+other.glitch_ypp*8+other.glitch_y_off-3,spr_dir,1,c_gray,.7);
        //draw_sprite_part_ext(render_sprite,image_index, 90, 160, 64, 64, x, y, 1, 1, c_gray, .7);
    }
}
shader_end();