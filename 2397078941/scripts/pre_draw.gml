///


if nolan = 0 {
shader_start();

if attacking && attack == AT_USPECIAL && window > 2 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.1);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.1);
}

if attacking && attack == AT_USPECIAL && window == 2 && window_timer > 2 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.1);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.1);
}

if attacking && attack == AT_DSPECIAL {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.1);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.1);
}

gpu_set_blendmode(bm_add);
if attacking && attack == AT_USPECIAL && window > 1 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}

if attacking && attack == AT_DSPECIAL {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}
gpu_set_blendmode(bm_normal);

shader_end();
}
