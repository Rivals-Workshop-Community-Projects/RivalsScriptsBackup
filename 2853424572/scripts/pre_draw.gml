// pre-draw

if (afterimage == true){
        shader_start();
        draw_sprite_ext(afterimage_spr, image_index, x-(20*spr_dir), y, 1*spr_dir, 1, 0, -1, alpha)
        draw_sprite_ext(afterimage_spr, image_index, x-(35*spr_dir), y, 1*spr_dir, 1, 0, -1, alpha/2)
        draw_sprite_ext(afterimage_spr, image_index, x-(50*spr_dir), y, 1*spr_dir, 1, 0, -1, alpha/3)
        shader_end();
}

if (state == PS_RESPAWN){
        shader_start();
        draw_sprite(platback_spr, 0, x+64, y+56);
        shader_end();
}
