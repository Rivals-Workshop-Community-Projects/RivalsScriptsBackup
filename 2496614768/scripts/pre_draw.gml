shader_start();




shader_end() 

if attacking {
	if attack == AT_TAUNT && window == 2 && window_timer < 5 {
			draw_debug_text(x - 60 ,y -82,"People's elbow.");
	}
}
if timebreak > 0 {
	    draw_set_alpha( min(0.2, timebreak/80) );
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}


gpu_set_blendmode(bm_add);
gpu_set_fog(1, c_white, 0, 1);
if timebreak > 0 && timebreak < 30 {
	    draw_set_alpha(  0.1 - timebreak/30 );
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}
gpu_set_fog(0, c_white, 0, 0);
gpu_set_blendmode(bm_normal);

col1 = GetColourPlayer(0)
col2 = GetColourPlayer(1)



if aid2 > 0 {
gpu_set_fog(1, col2, 0, 1);

draw_sprite_ext(ais2,aii2,aix2,aiy2,aisd2,1,0,-1,aid2/60)
  gpu_set_blendmode(bm_add);
draw_sprite_ext(ais2,aii2,aix2 + (1 - random_func(2,3,1))*4,aiy2,aisd2,1,0,-1,aid2/50)
  gpu_set_blendmode(bm_normal);
    
gpu_set_fog(0, c_white, 0, 0);
}

if aid1 > 0 {
gpu_set_fog(1, col1, 0, 1);


draw_sprite_ext(ais1,aii1,aix1,aiy1,aisd1,1,0,-1,aid1/60)
  gpu_set_blendmode(bm_add);
draw_sprite_ext(ais1,aii1,aix1 + (1 - random_func(1,3,1))*4,aiy1,aisd1,1,0,-1,aid1/50)  
  gpu_set_blendmode(bm_normal);
    
gpu_set_fog(0, c_white, 0, 0);
}


if get_player_color(player) == 9 {
    gpu_set_fog(1, col1, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2 ,y,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x - 2 ,y,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x ,y + 2,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x ,y - 2,spr_dir,1,0, -1, 0.5)
    gpu_set_fog(0, c_white, 0, 0);
    
    draw_sprite_ext(sprite_get("xiaoshine"), 0, x - 6*spr_dir - random_func(1,6,true) ,y + random_func(3,6,true),spr_dir,1,0, -1, 0.3)
    draw_sprite_ext(sprite_get("xiaoshine"), 0, x - 6*spr_dir + random_func(1,6,true) ,y + 6 + random_func(4,6,true),spr_dir,1,0, -1, 0.3)
}


if attacking {
    //if attack == AT_FSPECIAL && window == 1{
    //    shader_start();
    //       draw_sprite_ext(sprite_get("fspecaim"), 0, x + 80*spr_dir, y  - 40,spr_dir,1,0,-1, 0.3 - state_timer/30)
    //      gpu_set_blendmode(bm_add);
    //        draw_sprite_ext(sprite_get("fspecaim"), 0 , x + 80*spr_dir , y - 40,spr_dir,1,0,-1, 0.3 - state_timer/30)  
    //       gpu_set_blendmode(bm_normal);
    //    
    //    shader_end() 
    //}
    
    if attack == AT_USPECIAL && window >= 3{
        gpu_set_fog(1, col2, 0, 1);

        draw_sprite_ext(sprite_index, image_index, x - shsp , y - svsp,spr_dir,1,0,-1,1 - state_timer/40)
          gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - shsp , y - svsp,spr_dir,1,0,-1,1 - state_timer/40)  
          gpu_set_blendmode(bm_normal);
            
        gpu_set_fog(0, c_white, 0, 0);
        
        gpu_set_fog(1, col1, 0, 1);

        draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp*2,spr_dir,1,0,-1,1 - state_timer/40)
          gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp*2,spr_dir,1,0,-1,1 - state_timer/40)  
          gpu_set_blendmode(bm_normal);
            
        gpu_set_fog(0, c_white, 0, 0);
    }
    
    if attack == AT_DSPECIAL && window == 2{
                  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index, x  , y ,spr_dir,1,0,-1,1)  
          gpu_set_blendmode(bm_normal);
        
    }
}



//// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),
    get_color_profile_slot_g(get_player_color(player), _index),
    get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru

