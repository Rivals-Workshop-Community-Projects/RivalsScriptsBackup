// if bair_charge > 0 and window == 2 and attack == AT_BAIR
// {
// 	var lol = (get_gameplay_time()/1.5) mod (2*pi)
// 	var ratiod = (bair_charge/bair_max_charge)
// 	var t = (.25 + (ratiod)*.2)*sin(lol) + (ratiod*.5)
	
//     gpu_set_fog(1,charge_color,1,0)
//     gpu_set_blendmode(bm_add)	
// 	draw_sprite_ext(sprite_index,image_index,x, y,spr_dir,1,0,c_white,t)

// 	gpu_set_blendmode(bm_normal)
//     gpu_set_fog(0,c_white,0,0)
// }

//draw_debug_text(x,y+50,"timer : " + string(window_timer));
//draw_debug_text(x,y+20,"window : " + string(window));

//DinoBros'
if instance_exists(hat_object) {
	draw_debug_text(hat_object.x - 8,hat_object.y + 8, string(hat_object.health) + "%");
	//Debug
	//draw_debug_text(hat_object.x - 8,hat_object.y + 32, string(hat_object.image_index));
} 