//shakey shakey

//(done as an article to maintain order of fear shading)
//(also draw_x continues to be my nemesis as it now doesn't like being in animation.gml and affecting basecast)

with (oPlayer) {

	if (id != other.id && "eust_fearTime" in self) {
		if(eust_fearTime > 0){
			shader_start();
			draw_sprite_ext(sprite_index, image_index, x + eust_gotShook, y, spr_dir*(1 + small_sprites), 1 + small_sprites, 0, c_white, 1);
			init_shader();
			shader_end();
		}
	if("eust_getsSmashing" in self){
		if(eust_getsSmashing > 0 && eust_getsSmashing < 4){
			shader_start();
			draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*(1 + small_sprites), 1 + small_sprites, 0, c_white, 1);
			init_shader();
			shader_end();
			}
		}
	}
}

			