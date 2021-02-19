//post-draw
shader_start();
if mounted {
    //draw_sprite_part_ext(mounted_sprite,mounted_index,52,0,128,200,x-(0)*spr_dir,y-(102)+mounted_offset,spr_dir,1,c_white,1);
    draw_sprite_ext(mounted_sprite,mounted_index,x,y+mounted_offset,spr_dir,1,image_angle,c_white,1);
    
}
shader_end();