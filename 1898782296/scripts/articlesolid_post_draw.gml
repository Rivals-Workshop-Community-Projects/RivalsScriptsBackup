//Door front frame
//draw_sprite_ext(front_frame,article_animation_frame,x,y,2 * spr_dir,2,0,c_white,1); 
draw_sprite_ext(sprite_get("dspecial_pole"),image_index, x, y-16, 2*spr_dir, image_yscale+5.5, 0, c_white, 1);
draw_sprite_ext(sprite_get("dspecial_shoes"),image_index, x, y + shoe_draw_mod, 2*spr_dir, 2, 0, c_white, 1);
draw_sprite_ext(sg_sprite,image_index, x, y + image_yscale, 2*spr_dir, 2, 0, c_white, 1);

//Position test guy
//draw_sprite_ext(sg_sprite,image_index, x, y + 10, spr_dir, 1, 0, c_white, 1);