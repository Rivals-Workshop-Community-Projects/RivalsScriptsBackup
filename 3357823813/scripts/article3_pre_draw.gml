//draw_sprite_ext(sprite_get("dspecial_proj_temp"), 0, x, y, 2*spr_dir, 2, 0, c_white, 1);
switch state {
	case 0:
		draw_sprite_ext(sprite_get("fx_dspecial_base"), (get_gameplay_time()*.25)%4, x, y, 2, 2, 0, c_white, 1);
	break;
	case 1:
		draw_sprite_ext(sprite_get("fx_dspecial_base"), (get_gameplay_time()*.25)%4, x, y, 2, 2, 0, c_white, 1);
	break;
	case 2:
		draw_fire_pillar(floor(lerp(0,3,floor(state_timer/2)*2/12)), 15, 2, lerp(0,2,state_timer/12));
		draw_fire_base(2);
		break;
	case 3:
		draw_fire_pillar(3, 20, 2);
		draw_fire_base(2);
		break;
	case 4:
		if state_timer < 30 {
			if state_timer < 4 {
				draw_fire_pillar(4, 0, 2);
			} else {
				draw_fire_pillar(floor(lerp(3,8,floor(state_timer/2)*2/30)), 10, lerp(2,1.5,floor(state_timer/2)*2/30));
			}
			draw_fire_base(2);
		} else {
			draw_fire_base(lerp(2,0,(floor(state_timer/2)*2-30)/30));
		}
		break;
}



#define draw_fire_pillar() {
	var _img_index = argument[0];
	var _spd = argument[1];
	var _scalex = argument[2];
	var _scaley = argument_count > 3 ? argument[3] : 2;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);

	draw_set_alpha(1);
		draw_sprite_ext(sprite_get("_pixel"), 0, x-_scalex*15, y-_scaley*128, _scalex*30, _scaley*128, 0, c_white, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);

	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
		draw_sprite_tiled_ext(sprite_get("dspecial_proj"), _img_index, x-_scalex*15, y-floor(get_gameplay_time()/2)*_spd, _scalex, 2, c_white, 1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
#define draw_fire_base() {
	var scaley = argument[0];
	draw_sprite_ext(sprite_get("fx_dspecial_base"), (get_gameplay_time()*.25+3)%4, x-22, y, 2, scaley, 0, c_white, 1);
	draw_sprite_ext(sprite_get("fx_dspecial_base"), (get_gameplay_time()*.25)%4, x, y, 2, scaley, 0, c_white, 1);
	draw_sprite_ext(sprite_get("fx_dspecial_base"), (get_gameplay_time()*.25+3)%4, x+22, y, 2, scaley, 0, c_white, 1);
}