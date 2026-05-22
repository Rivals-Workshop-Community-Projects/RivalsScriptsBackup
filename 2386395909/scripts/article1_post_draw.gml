//tfg

if !(st = 5 || st = 8)
{
    
    if draw_e = 1 //draws the negative effect
    {
        gpu_set_blendmode_ext_sepalpha(bm_inv_dest_colour,bm_inv_src_colour,bm_src_alpha,bm_src_alpha);
        gpu_set_colorwriteenable(true,true,true,true);
        draw_circle_color(x,y, size ,c_white,c_white,false);
        draw_set_alpha(1);
        gpu_set_blendmode(bm_normal);
    }
    
    if shoc2= 1 //makes the colors go bacc to normal
    { 
        gpu_set_blendmode_ext_sepalpha(bm_inv_dest_colour,bm_inv_src_colour,bm_src_alpha,bm_src_alpha);
        gpu_set_colorwriteenable(true,true,true,true);
        draw_circle_color(x,y, size2 ,c_white,c_white,false);
        draw_set_alpha(1);
        gpu_set_blendmode(bm_normal);
    }
    
    //draw_debug_text(x-100,y+55,"life = " + string (life));
    
    var wall1 = draw_sprite_ext(sprite_get("spr_wall"),0,stage_x-5,y,4,30,0,c_white,wall1a);
    var wall2 = draw_sprite_ext(sprite_get("spr_wall"),0,(room_width - stage_x)+5,y,4,30,0,c_white,wall2a);
    var wall3 = draw_sprite_ext(sprite_get("spr_wall"),0,x,245,30,4,0,c_white,wall3a);

    var spr = !jawBreakerMode ? sprite_get("ball") : sprite_get("candyball");

    if (hitstop == 0) {
        if (!jawBreakerMode){
            if (spd >= 50) {
                draw_sprite_ext(spr, belongsto, x, y, 3.5, 0.35, angle, c_white, 1);
            } else if (spd >= 20 && spd <= 49) {
                draw_sprite_ext(spr, belongsto, x, y, 1.6, 0.8, angle, c_white, 1);
            } else {
                draw_sprite(spr, belongsto, x, y);
            }
        }else{
            var sx   = 1;
            var sy   = 1;
            var ang = angle;
            
            if (hsp < 0) {
                sx  = -1;
                ang += 180;
            }
            draw_sprite_ext(spr, belongsto, x, y,sx, sy,ang,c_white,1);
        }

    } else if (hitstop > 0) {
        if (x == stage_x || x == room_width - stage_x) {
            draw_sprite_ext(spr, belongsto, x, y, 0.8, 1.6, 0, c_white, 1);
        } else if (y == 250 || y == stagefloor) {
            draw_sprite_ext(spr, belongsto, x, y, 1.6, 0.8, 0, c_white, 1);
        } else {
            draw_sprite_ext(spr, belongsto, x, y, 0.8, 1.6, angle, c_white, 1);
        }
    }

}
else if st == 5
{
    image_alpha = 1;
    image_speed = 0.5;
}

    /*draw_debug_text(x-100,y+55,"spd = " + string (spd));
    draw_debug_text(x-100,y+75,"hsp = " + string (hsp));
    draw_debug_text(x-100,y+95,"vsp = " + string (vsp));
    draw_debug_text(x-100,y+115,"nvsp = " + string (nvsp));
