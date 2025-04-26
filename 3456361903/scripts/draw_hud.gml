//draw hud
shader_start();
if ("spotlight" in self){
	draw_sprite( sprite_get("i_qbox"), spot_cd_on, temp_x + 192, temp_y - 14)
}
shader_end();

if ("bboost_counter" in self) {
	switch (bboost_counter) {
		case 1: draw_sprite( sprite_get("vfx_count1"), 8, temp_x+24, temp_y+5) break;
		case 2: draw_sprite( sprite_get("vfx_count2"), 8, temp_x+20, temp_y+5) break;
		case 3: draw_sprite( sprite_get("vfx_count3"), 9, temp_x+20, temp_y+5) break;
	}
}
