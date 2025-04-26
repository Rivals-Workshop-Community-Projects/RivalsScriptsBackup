// post_draw.gml

gpu_set_blendmode(bm_add);
shader_start();

if create_chair_flash_opacity > 0 {
  draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, spr_angle, c_white, create_chair_flash_opacity);
  create_chair_flash_opacity -= 0.05;
}

shader_end();
gpu_set_blendmode(bm_normal);
