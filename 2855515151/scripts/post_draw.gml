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
	//draw_debug_text(hat_object.x - 8,hat_object.y + 8, string(hat_object.health) + "%");
	//Debug
	//draw_debug_text(hat_object.x - 8,hat_object.y + 32, string(hat_object.image_index));
	
	//Hat Health Bar
	/*
	RectDraw(hat_object.x - 20, hat_object.y + 18, hat_object.x + 20, hat_object.y + 26, c_black, 1)
	RectDraw(hat_object.x - 18, hat_object.y + 20, hat_object.x + 18, hat_object.y + 24, c_gray, 1)
	if (hat_object.health < hat_grab_start_health) {
		RectDraw(hat_object.x - 18, hat_object.y + 20, hat_object.x + -18 + (clamp(hat_object.health / hat_grab_start_health, 0, 1) * 36), hat_object.y + 24, c_white, 1)
	} else {
		RectDraw(hat_object.x - 18, hat_object.y + 20, hat_object.x + 18, hat_object.y + 24, c_yellow, 1)
	}
	*/
	draw_sprite_ext(sprite_get("meter_empty"), 0, hat_object.x, hat_object.y + 8, 1, 1, 0, c_white, 1)
	draw_sprite_part_ext(sprite_get("meter_full"), 0, 0, 0, clamp(hat_object.health / hat_grab_start_health, 0, 1) * 70, 10, hat_object.x - 35, hat_object.y + 12, 1, 1, c_white, 1)
} 


#define RectDraw(x1, y1, x2, y2, color, alpha)
{
	draw_set_alpha(alpha);
	draw_rectangle_color(x1, y1, x2, y2, color, color, color, color, false);
	draw_set_alpha(1);
}