//get pale

with (oPlayer) {
	if (id != other.id && "eust_fearTime" in self) {
		if(eust_fearTime > 0){
			gpu_set_fog(1, c_white, 0, 1);
			draw_sprite_ext(sprite_index, image_index, x + eust_gotShook, y, spr_dir*(1 + small_sprites), 1 + small_sprites, 0, c_white, 0.55);
			gpu_set_fog(0, c_white, 0, 0);
		}
	}
}