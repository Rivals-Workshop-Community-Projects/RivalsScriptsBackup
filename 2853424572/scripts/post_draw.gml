//post-draw

if (overlay == true){
        shader_start();
        draw_sprite_ext(overlay_spr, image_index, x-(16*spr_dir), y, 1*spr_dir, 1, 0, -1, .9)
        shader_end();
}
