//tfg

//draw_debug_text(x-100,y,"original_url = " + string (original_url));
//draw_debug_text(x-100,y+35,"free = " + string (free));
//draw_debug_text(x-100,y+55,"times_hit = " + string (times_hit));

if !(st = 5 || st = 8)
{
    /*
    if hit_exists == true
    {
        draw_debug_text(x-100,y+65,"kb_angle = " + string (ballhitbox.kb_angle));        
        draw_debug_text(x-100,y+105,"was_parried = " + string (ballhitbox.was_parried));  
    }
    draw_debug_text(x-100,y+85,"belongsto = " + string (belongsto));    */ 
    
    
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
    
    if hitstop == 0
    {
        if (spd >= 50)
        {
            var ball1 = draw_sprite_ext(sprite_get("ball"),belongsto,x,y,3.5,0.35,angle,c_white,1);
        }
        else if (spd >= 20) && (spd <= 49)
        {
            var ball2 = draw_sprite_ext(sprite_get("ball"),belongsto,x,y,1.6,0.8,angle,c_white,1);
        }
        else
        {
            var ball3 = draw_sprite(sprite_get("ball"),belongsto,x,y);
        }
    
    }
    else if hitstop > 0
    {
        
        if (x = stage_x || x = room_width - stage_x) 
        {
            var ball4 = draw_sprite_ext(sprite_get("ball"),belongsto,x,y,0.8,1.6,0,c_white,1);
        }
        
        else if (y = 250) || (y = stagefloor) 
        {
            var ball5 = draw_sprite_ext(sprite_get("ball"),belongsto,x,y,1.6,0.8,0,c_white,1);
        }
        else
        {
            var ball6 = draw_sprite_ext(sprite_get("ball"),belongsto,x,y,0.8,1.6,angle,c_white,1);
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
