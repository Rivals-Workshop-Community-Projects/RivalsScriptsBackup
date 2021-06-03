// pre-draw
shader_start()
if (state==PS_RESPAWN){
	draw_sprite_ext( sprite_get("plat_bg"), 0, x, y, 1, 1, 0, -1, 1 ) 
}


if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USTRONG && image_index = clamp(image_index, 4, 9)){
	draw_sprite_ext(spr_vfx_ustrong_spark, image_index - 4, spark_x, spark_y, spr_dir, 1, 0, c_white, 1);
}
shader_end()



//Turn on additive blending. (Personal choice as it makes things seem brighter)
//gpu_set_blendmode(bm_add)

//Loop through all particles and draw them if there are any to draw.
var i, part, len; 
i = 0;
part = afterimages;
len = ds_list_size(part);
if len != 0
{
    for (var i = 0; i < len; i++)
	{
	    var p = part[| i];
	    if (p != -1)
	    {
	    	var color;
	    	color = p.color;
	    	
	    	gpu_set_fog(1, color, 0,1)
	    	draw_sprite_ext(p.sprite,p.frame,p.position[@ 0],p.position[@ 1],p.scale[@ 0], p.scale[@ 1], 0, c_white, p.alpha);
	    	gpu_set_fog(0, c_white, 0,1)
	    }
	}
}

//Go back to normal blending after everything's done.
//gpu_set_blendmode(bm_normal)


