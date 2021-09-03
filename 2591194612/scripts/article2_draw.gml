//

var offAlpha = abs(obj_stage_main.offNorm);
offAlpha = 1 - offAlpha * 2;
var alpha = offAlpha * (obj_stage_main.isDay ? alphaMaxDay : alphaMaxNight);
//TODO: more extreme falloff, so still go to 0 alpha but faster near 0

maskHeader();
draw_sprite_ext(sprite_get("ground_mask"), 0, 222, 180, 2, 2, 0, c_white, alpha);
maskMidder();

with (oPlayer) 
{
    if(state == PS_DEAD || state == PS_RESPAWN)break;
    
	//var rot = obj_stage_main.offNorm * -other.rotMax;
	if(obj_stage_main.isDay)
		var rot = point_direction(obj_stage_main.sun.x, obj_stage_main.sun.y, x, y);
	else
		var rot = point_direction(obj_stage_main.moon.x, obj_stage_main.moon.y, x, y);
	
	//shadows longer on morning/evening
	var stretch = abs(obj_stage_main.offNorm);
	var yScale = 0.5 + stretch * 1.75;
	var xScale = 1 - stretch * 0.75;
	
	//change pos based on rot to still connect feet on rot
	var yOff = lengthdir_x(10, rot) - 10;
	var yOff = lengthdir_y(10, rot) - 10;
	//TODO: every feet are at different pos, esp wide characters suck... use img width?
	
	rot += 90;
	rot -= 360;
	rot *= 0.666;
	draw_sprite_ext(sprite_index, image_index, x + yOff, y + yOff, 
                                            	spr_dir * xScale, -yScale, 
                                            	rot, c_black, 1);
}
maskFooter();


#define maskHeader
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);