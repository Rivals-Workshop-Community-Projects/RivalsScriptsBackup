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

// #define draw_sprite_wave
// //
// //  Draws a sprite with wave-like distortion. The fractional part of the phase
// //  argument controls the wave cycle. A full cycle covers the [0..1] interval.
// //
// //      sprite      sprite index, real
// //      subimg      sprite subimage, real
// //      x,y         position, real
// //      axis        0 = horizontal wave, 1 = vertical wave, real
// //      wavelength  length of wave in pixels, real
// //      amplitude   height of wave in pixels, real
// //      phase       wave position offset, real
// //
// /// GMLscripts.com/license
// {
//     var sprite,image,posx,posy,axis,wavelength,amplitude,phase, alpha;
//     sprite     = argument0;
//     image      = argument1;
//     posx       = argument2;
//     posy       = argument3;
//     axis       = argument4;
//     wavelength = argument5;
//     amplitude  = argument6;
//     phase      = argument7;
//     alpha      = argument8;
 
//     var width,height,xoff,yoff,size,i,shift,sx,sy;
//     width  = sprite_get_width(sprite);
//     height = sprite_get_height(sprite);
//     xoff   = sprite_get_xoffset(sprite);
//     yoff   = sprite_get_yoffset(sprite);
//     if (axis) size = height else size = width;
    
 
//     for (i=0; i<size; i+=1) {
//         shift = amplitude*sin(2*pi*((i/wavelength)+phase));
//         if (axis) {
//             sx = shift-xoff+posx;
//             sy = i-yoff+posy;
//             draw_sprite_general(sprite,image,0,i,width,1,sx,sy,spr_dir,image_yscale,spr_angle,c_white,c_white,c_white,c_white,alpha);
//         }else{
//             sx = i-xoff+posx;
//             sy = shift-yoff+posy;
//             draw_sprite_general(sprite,image,i,0,1,height,sx,sy,image_xscale,image_yscale,spr_angle,c_white,c_white,c_white,c_white,alpha);
//         }
//     }
// }

