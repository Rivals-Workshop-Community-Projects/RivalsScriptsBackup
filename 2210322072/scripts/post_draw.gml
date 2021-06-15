shader_start();

if nshit > 3 {

        draw_sprite_ext(sprite_index, image_index , x , y - (get_gameplay_time() % 10)/2  , spr_dir*1.05, 1.05, 0 , -1 , 0.5 - (get_gameplay_time() % 10/30));
        draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir*1.05, 1.05, 0 , -1 , 0.2);
   
}

if soultimer < -350 {
    if soulfree == -1{
    if souldir = -1 {
    draw_sprite(sprite_get("dspecl"), state_timer / 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecr"), state_timer / 5, soulx, souly); 
    }
    } else {
    if souldir = -1 {    
       draw_sprite(sprite_get("dspecla"), state_timer / 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecra"), state_timer / 5, soulx, souly); 
    } 
    }
    
}


if karmatimer != 0 { 
    	  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  - random_func(1,2,true), y - 1 - vsp - random_func(2,2,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2 + random_func(1,2,true) , y + 1 - vsp*2 + random_func(2,2,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);
    
}

if soultimer < 0 && soultimer >= -350 {
     if get_gameplay_time() % 20 == 0 && soulfree == 1 {
    spawn_hit_fx (soulx,souly - 30, wh )
    spawn_hit_fx (soulx,souly - 30, bh )
    }
    
    
    
    if get_gameplay_time() % 20 == 0 && soulfree == -1 && soultimer < -300  {
    spawn_hit_fx (soulx,souly - 30, wh )
    spawn_hit_fx (soulx,souly - 30, bh )
    }
    
    

if soultimer % 3 == 0 {
    if soulfree == -1{
   if souldir = -1 {
    draw_sprite(sprite_get("dspecl"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecr"), 5, soulx, souly); 
    }
    
    }else {
    if souldir = -1 {
    draw_sprite(sprite_get("dspecla"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecra"), 5, soulx, souly); 
    }
    
    }
}


if soultimer > -340 {
        if soulfree == -1{
   if souldir = -1 {
    draw_sprite(sprite_get("dspecl"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecr"), 5, soulx, souly); 
    }
    
    }else {
    if souldir = -1 {
    draw_sprite(sprite_get("dspecla"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecra"), 5, soulx, souly); 
    }
    
    }
}

}

shader_end() 

