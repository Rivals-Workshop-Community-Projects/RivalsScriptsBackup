//use the image_blend

if(use_post_draw) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if(variant == "tossed sprite shader") {
	with(shader_owner) {
		shader_start();
		draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y, other.image_xscale, other.image_yscale, other.image_angle, other.image_blend, 1.0);
		shader_end();
	}
}