/*
if ("bl_anim" in self)
{
	draw_debug_text(temp_x + 120, temp_y - 20, "anim index: "+string(bl_anim));
}
*/
shader_start()
if ("charge_store" in self){
	var w_light = (sin(get_gameplay_time()/20)+1)/2
	var w_white = ease_linear( 0,1, clamp(white_flash_timer,0,10),10)
	var h_cd = (move_cooldown[AT_FSPECIAL]==0)?0:0.5
	
	for(var i = 1; i <= charge_store_max; i += 1){
		var y_os = (i%2==0)?12:0
		draw_sprite_ext( sprite_get("hud_charge"), (charge_store >= i)?0:1, temp_x + 14 + (20*(i-1)), (temp_y-18)-y_os, 2, 2, 1, (charge_store >= i)?c_white:c_dkgray, 1-h_cd )
		if (charge_store >= i){
			if (w_white > 0){
				draw_sprite_ext( sprite_get("hud_charge"), 2, temp_x + 14 + (20*(i-1)), (temp_y-18)-y_os, 2, 2, 1, (charge_store >= i)?c_white:c_dkgray, w_white-h_cd )
			}
			gpu_set_blendmode(bm_add);
			draw_sprite_ext( sprite_get("hud_charge"), (charge_store >= i)?0:1, temp_x + 14 + (20*(i-1)), (temp_y-18)-y_os, 2, 2, 1, (charge_store >= i)?c_white:c_dkgray, w_light-(h_cd*1.5) )
			gpu_set_blendmode(bm_normal);
		}else{
			if (w_white > 0){
				draw_sprite_ext( sprite_get("hud_charge"), 3, temp_x + 14 + (20*(i-1)), (temp_y-18)-y_os, 2, 2, 1, -1, (w_white/1.5)-h_cd )
			}
		}
	}
	
	draw_sprite_ext( sprite_get("hud_wheel"), 3, temp_x + 186, temp_y-20, 2, 2, 1, (move_cooldown[AT_NSPECIAL]==0)?c_white:c_dkgray, 1 )
}
shader_end()