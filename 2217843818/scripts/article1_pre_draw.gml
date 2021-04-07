if (!sans_gaming){
	if (state == 1){
		if (state_timer < chungus){
			draw_sprite( sprite_get("button_detection"), 0, x, y - 15 );
		}
	}
}
else{
	if (state == 1){
		if (state_timer < chungus){
			draw_sprite( sprite_get("button_detection2"), 0, x, y - 15 );
		}
	}
}