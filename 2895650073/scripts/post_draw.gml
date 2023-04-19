//post-draw

if (state==PS_SPAWN){
	var timemax = 100;
	if (get_gameplay_time()<=timemax){
		if (state_timer<timemax){
			draw_sprite_ext( sprite_get("intro_f"), image_index, x, y, spr_dir, 1, 0, -1, 1 )
		}
	}
}

if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)){
	draw_sprite_ext( sprite_get("plat_f"), 0, x, y, spr_dir, 1, 0, -1, 1 ) 
}


shader_start()
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND/*just in case*/) && attack== AT_FSPECIAL){
	if (window == 3||window == 4){
		draw_sprite_ext( sprite_get("fspecial_duplicate"), image_index, x, y-34, spr_dir, 1, fsp_angle_str, -1, 1 );
	}
}
shader_end()